<template>
  <b-container fluid>
  <!-- <b-container> -->
    <b-row>

      <b-col sm=12>
        <h1 class="text-center mt-4">
          Vue Avataaars
        </h1>

        <div class="form-group row">
          <div class="col-sm-2">
          </div>
          <div class="col-sm-8">
            <!-- <input v-model="inputValue" type="text" class="form-control form-control-sm" placeholder="Enter something"> -->
          </div>
          <div class="col-sm-2">
            <span class="inline custom-control custom-switch">
              <b-button @click="randomAvatar">
                <i class="fa fa-random"></i> 
                Random
              </b-button>
            </span>
            <!-- {{ inputValue }} -->
          </div>
        </div>

      </b-col>

      <b-col sm="12" md="4" class="text-center">
        <!-- <Avataaars /> -->
        <Avataaars 
        v-bind:avatarOptions="computedAvatarOptions" />
      </b-col>

      <b-col sm="12" md="8">
        <b-card v-if="isRandom == false" no-body class="mt-3">
          <b-tabs content-class="mt-3" pills card>
            <FormSelect
              v-for="option in options"
              :key="option.title"
              :title="option.title"
              :labels="option.labels"
              @updated_option_value="updateOption"
            />
          </b-tabs>
        </b-card>
      </b-col>
    </b-row>
  </b-container>
</template>

<script>
import Avataaars from './Avataaars'
import optionsJSON from '../avataaarsOptions.json'
import FormSelect from './Form/FormSelect'
import { camelCase } from "lodash"

export default {
  name: 'Editor',
  components: {
    Avataaars,
  },
  computed: {
    computedAvatarOptions() {
      return this.isRandom ? null : {
        backgroundType: this.selectedBackgroundType,
        backgroundColor: this.selectedBackgroundColor,
        skinColor: this.selectedSkinColor,
        clothesType: this.selectedClothesType,
        clothesColor: this.selectedClothesColor,
        clothesGraphicsType: this.selectedClothesGraphicType,
        eyesType: this.selectedEyesType,
        eyebrowType: this.selectedEyebrowType,
        mouthType: this.selectedMouthType,
        facialHairType: this.selectedFacialHairType,
        facialHairColor: this.selectedFacialHairColor,
        accessoriesType: this.selectedAccessoriesType,
        topType: this.selectedTopType,
        topColor: this.selectedTopColor,
      }
    }
  },
  data() {
    return {
      isRandom: false,
      inputValue: '',

      options: optionsJSON,

      selectedBackgroundType: 'circle',
      selectedBackgroundColor: 'pastelGreen',
      
      selectedSkinColor: 'light',

      selectedClothesColor: 'pink',
      selectedClothesType: 'hoodie',
      // selectedClothesGraphicType: 'pizza',
      selectedClothesGraphicType: 'none',

      selectedEyebrowType: 'raisedExcited',
      selectedEyesType: 'squint',
      selectedMouthType: 'smile',

      selectedFacialHairType: 'beardLight',
      selectedFacialHairColor: 'brownDark',

      selectedTopType: 'none',
      selectedTopColor: 'brownDark',
      selectedAccessoriesType: 'round',
    }
  },
  methods: {
    toggleRandom() {
      this.isRandom = !this.isRandom
    }
  },
  mounted() {

  }
}
</script>

<style scoped>
.pull-right {
  float: right;
}
</style>
