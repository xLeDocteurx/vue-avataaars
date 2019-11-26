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

      <Background :type="avatarOptions ? avatarOptions.backgroundType : options.backgroundType[Math.floor(Math.random() * Math.floor(options.backgroundType.length))]" :color="avatarOptions ? avatarOptions.backgroundColor : options.backgroundColor[Math.floor(Math.random() * Math.floor(options.backgroundColor.length))]" />

      <Body :color="avatarOptions ? avatarOptions.skinColor : options.skinColor[Math.floor(Math.random() * Math.floor(options.skinColor.length))]" />

      <Clothes :type="avatarOptions ? avatarOptions.clothesType : options.clothesType[Math.floor(Math.random() * Math.floor(options.clothesType.length))]" :color="avatarOptions ? avatarOptions.clothesColor : options.clothesColor[Math.floor(Math.random() * Math.floor(options.clothesColor.length))]" :graphic="avatarOptions ? avatarOptions.clothesGraphicsType : options.clothesGraphicsType[Math.floor(Math.random() * Math.floor(options.clothesGraphicsType.length))]"/>
      
      <Face :eyebrowType="avatarOptions ? avatarOptions.eyebrowType : options.eyebrowType[Math.floor(Math.random() * Math.floor(options.eyebrowType.length))]" :eyesType="avatarOptions ? avatarOptions.eyesType : options.eyesType[Math.floor(Math.random() * Math.floor(options.eyesType.length))]" :mouthType="avatarOptions ? avatarOptions.mouthType : options.mouthType[Math.floor(Math.random() * Math.floor(options.mouthType.length))]" :facialHairType="avatarOptions ? avatarOptions.facialHairType : options.facialHairType[Math.floor(Math.random() * Math.floor(options.facialHairType.length))]" :facialFairColor="avatarOptions ? avatarOptions.facialHairColor : options.facialHairColor[Math.floor(Math.random() * Math.floor(options.facialHairColor.length))]" />

      <Accessories :type="avatarOptions ? avatarOptions.accessoriesType : options.accessoriesType[Math.floor(Math.random() * Math.floor(options.accessoriesType.length))]" />

      <Top :type="avatarOptions ? avatarOptions.topType : options.topType[Math.floor(Math.random() * Math.floor(options.topType.length))]" :color="avatarOptions ? avatarOptions.topColor : options.topColor[Math.floor(Math.random() * Math.floor(options.topColor.length))]" />

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
      type: Object, required: false
    },
  },
  data() {
    return {
      options: optionsJSON,
    }
  },
  methods: {
    forceUpdate() {
      this.$forceUpdate()
    }
  },
}
</script>


<style scoped>

</style>