<template>
    <svg
    xmlns="http://www.w3c.org/2000/"
    :width="width"
    :height="height"
    :viewBox="`0 0 ${maxWidth} ${maxHeight}`"
    :aria-labelledby="iconName"
    role="avatar"
    >
      <title
        :id="iconName"
        lang="en"
      >
        {{ iconName }}
      </title>

      <Background :type="avatarOptions.backgroundType" :color="avatarOptions.backgroundColor" />

      <Body :color="avatarOptions.skinColor" />

      <Clothes :type="avatarOptions.clothesType" :color="avatarOptions.clothesColor" :graphic="avatarOptions.clothesGraphicsType"/>
      
      <Face :eyebrowType="avatarOptions.eyebrowType" :eyesType="avatarOptions.eyesType" :mouthType="avatarOptions.mouthType" :facialHairType="avatarOptions.facialHairType" :facialFairColor="avatarOptions.facialHairColor" />

      <Accessories :type="avatarOptions.accessoriesType" />

      <Top :type="avatarOptions.topType" :color="avatarOptions.topColor" />

    </svg>
</template>


<script>
// import { mapState } from 'vuex'

import Background from './icons/background/Background'
import Body from './icons/Body'
import Clothes from './icons/clothes/Clothes'
import Face from './icons/face/Face'
import Accessories from './icons/top/accessories/Accessories'
import Top from './icons/top/Top'

import optionsJSON from './avataaarsOptions.json'

export default {
  name: 'Avataaars',
  components: {
    Background,
    Body,
    Clothes,
    Face,
    Accessories,
    Top,
  },
  props: {
    iconName: {
      type: String,
      default: 'avatar',
      required: false,
    },
    width: {
      type: Number,
      default: 264,
      required: false,
    },
    height: {
      type: Number,
      default: 280,
      required: false,
    },
    maxWidth: {
      type: Number,
      default: 264,
      required: false,
    },
    maxHeight: {
      type: Number,
      default: 280,
      required: false,
    },
    avatarOptions: {
      // Background
      backgroundType: {type: String, enum: optionsJSON.backgroundType, default: 'circle', required: false},
      backgroundColor: {type: String, enum: optionsJSON.backgroundColor, default: 'blue01', required: false},

      // Body
      skinColor: {type: String, enum: optionsJSON.skinColor, default: 'light', required: false},

      // Clothes
      clothesType: {type: String, enum: optionsJSON.clothesType, default: 'hoodie', required: false},
      clothesColor: {type: String, enum: optionsJSON.clothesColor, default: 'pink', required: false},
      clothesGraphicsType: {type: String, enum: optionsJSON.clothesGraphicsType, default: 'pizza', required: false},

      // Face
      eyebrowType: {type: String, enum: optionsJSON.eyebrowType, default: 'raisedExcited', required: false},
      eyesType: {type: String, enum: optionsJSON.eyesType, default: 'squint', required: false},
      mouthType: {type: String, enum: optionsJSON.mouthType, default: 'smile', required: false},

      // Facial hair
      facialHairType: {type: String, enum: optionsJSON.facialHairType, default: 'beardLight', required: false},
      facialHairColor: {type: String, enum: optionsJSON.facialHairColor, default: 'brownDark', required: false},

      // Hair or Hat
      topType: {type: String, enum: optionsJSON.topType, default: 'none', required: false},
      topColor: {type: String, enum: optionsJSON.topColor, default: 'brownDark'},
      
      // Accessories
      accessoriesType: {type: String, enum: optionsJSON.accessoriesType, default: 'round', required: false},
    },
  },
  // computed: {
  //   // ...mapState({
  //   //     sesssion: state => state.sesssion
  //   // }),
  // },
  data() {
    return {

    }
  },
  // methods: {

  // },
  // created() {

  // },
  // mounted() {

  // },
  // beforeUpdate() {

  // },
  // updated() {

  // },
  // beforeDestroy() {

  // },
}
</script>


<style scoped>

</style>