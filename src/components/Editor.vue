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
            <!-- <button v-on:click="forceUpdate" style="margin-left: 1rem;" class="inline btn btn-secondary btn-sm">
              <i class="fa fa-random"></i> 
              Random
            </button> -->
            <span class="inline custom-control custom-switch">
              <input v-model="isRandom" type="checkbox" class="custom-control-input" id="customSwitch1">
              <label class="custom-control-label" for="customSwitch1">Random</label>
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
            <b-tab title="Body & Background">
              <b-form-group label="Skin Color">
                <b-form-select 
                size="sm" 
                v-model="selectedSkinColor" 
                :options="options.skinColor" 
                ></b-form-select>
              </b-form-group>
              <b-form-group label="Background Type">
                <b-form-radio-group
                size="sm"
                v-model="selectedBackgroundType"
                :options="options.backgroundType"
                ></b-form-radio-group>
              </b-form-group>
              <b-form-group label="↳ Background Color">
                <b-form-select 
                size="sm" 
                v-model="selectedBackgroundColor" 
                :options="options.backgroundColor" 
                ></b-form-select>
              </b-form-group>
            </b-tab>
            <b-tab title="Face">
              <b-form-group label="Eyes Type">
                <b-form-select 
                size="sm" 
                v-model="selectedEyesType" 
                :options="options.eyesType" 
                ></b-form-select>
              </b-form-group>
              <b-form-group label="↳ Eyebrow Type">
                <b-form-select 
                size="sm" 
                v-model="selectedEyebrowType" 
                :options="options.eyebrowType" 
                ></b-form-select>
              </b-form-group>
              <b-form-group label="Mouth Type">
                <b-form-select 
                size="sm" 
                v-model="selectedMouthType" 
                :options="options.mouthType" 
                ></b-form-select>
              </b-form-group>
              <b-form-group label="Facial Hair Type">
                <b-form-select 
                size="sm" 
                v-model="selectedFacialHairType" 
                :options="options.facialHairType" 
                ></b-form-select>
              </b-form-group>
              <b-form-group label="↳ Facial Hair Color">
                <b-form-select 
                size="sm" 
                v-model="selectedFacialHairColor" 
                :options="options.facialHairColor" 
                ></b-form-select>
              </b-form-group>
            </b-tab>
            <b-tab title="Accessories">
              <b-form-group label="Accessories">
                <b-form-select 
                size="sm" 
                v-model="selectedAccessoriesType" 
                :options="options.accessoriesType" 
                ></b-form-select>
              </b-form-group>
            </b-tab>
            <b-tab title="Hair or Top">
              <b-form-group label="Top Type">
                <b-form-select 
                size="sm" 
                v-model="selectedTopType" 
                :options="options.topType" 
                ></b-form-select>
              </b-form-group>
              <b-form-group label="↳  Top Color">
                <b-form-select 
                size="sm" 
                v-model="selectedTopColor" 
                :options="options.topColor" 
                ></b-form-select>
              </b-form-group>
            </b-tab>
            <b-tab title="Clothes">
              <b-form-group label="Clothes Type">
                <b-form-select 
                size="sm" 
                v-model="selectedClothesType" 
                :options="options.clothesType" 
                ></b-form-select>
              </b-form-group>
              <b-form-group label="↳ Clothes Color">
                <b-form-select 
                size="sm" 
                v-model="selectedClothesColor" 
                :options="options.clothesColor" 
                ></b-form-select>
              </b-form-group>
              <!-- <b-form-group label="↳ !!! Clothes Graphic">
                <b-form-select 
                size="sm" 
                v-model="selectedClothesGraphicType" 
                :options="options.clothesGraphicsType" 
                ></b-form-select>
              </b-form-group> -->
            </b-tab>
  
            <!-- <b-tab title="Dummy"> -->
            <!-- </b-tab> -->
  
          </b-tabs>
        </b-card>

      </b-col>

    </b-row>

  </b-container>
</template>

<script>
import Avataaars from './Avataaars'
import optionsJSON from '../avataaarsOptions.json'

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
