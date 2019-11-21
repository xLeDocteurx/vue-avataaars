<template>
  <!-- <div class="container-fluid"> -->
  <b-container fluid>
    <b-row>

      <b-col sm="12" md="4" lg="3">
        <Avataaars :avatarStyle="{
          backgroundType: selectedBackgroundType,
          backgroundColor: selectedBackgroundColor,
          skinColor: selectedSkinColor,
          clothesType: selectedClothesType,
          clothesColor: selectedClothesColor,
          clothesGraphicsType: selectedClothesGraphicType,
        }" />
      </b-col>
      <b-col sm="12" md="8" lg="9">

        <!-- <b-tabs content-class="mt-3"> -->
          <hr>
          <!-- <b-tab title="Body"> -->
            <b-form-group label="Skin Color">
              <b-form-select 
              size="sm" 
              v-model="selectedSkinColor" 
              :options="options.skinColor" 
              ></b-form-select>
            </b-form-group>
          <!-- </b-tab> -->
          <hr>
          <!-- <b-tab title="Background" active> -->
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
          <!-- </b-tab> -->
          <hr>
          <!-- <b-tab title="Clothes"> -->
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
            <b-form-group label="↳ !!! Clothes Graphic">
              <b-form-select 
              size="sm" 
              v-model="selectedClothesGraphicType" 
              :options="options.clothesGraphicsType" 
              ></b-form-select>
            </b-form-group>
          <!-- </b-tab> -->
          <hr>
          <!-- <b-tab title="Dummy"> -->
          <!-- </b-tab> -->

        <!-- </b-tabs> -->

      </b-col>

    </b-row>

  </b-container>
</template>

<script>
import Avataaars from '../Avataaars'
import optionsJSON from '../avataaarsOptions.json'

export default {
  name: 'Editor',
  components: {
    Avataaars,
  },
  computed: {

  },
  data() {
    return {
      options: optionsJSON,

      selectedBackgroundType: 'circle',
      selectedBackgroundColor: 'blue01',
      
      selectedSkinColor: 'light',

      selectedClothesColor: 'pink',
      selectedClothesType: 'hoodie',
      selectedClothesGraphicType: 'pizza',
    }
  },
  methods: {

  },
  mounted() {

  }
}
</script>

<style scoped>

</style>
