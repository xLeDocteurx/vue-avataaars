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

      <!-- props : type / color -->
      <Background />
      <!-- <Background :type="'circle'" :color="'#EDB98A'" /> -->
      <!-- <Background :type="'transparent'" /> -->

      <!-- props : color -->
      <Body />
      <!-- <Body :color="'darkBrown'"/> -->

      <!-- props : type / color / graphic -->
      <Clothes />
      
      <!-- props : mouthType -->
      <Face />

    </svg>
</template>


<script>
// import { mapState } from 'vuex'

import Background from './icons/background/Background'
import Body from './icons/Body'
import Clothes from './icons/clothes/Clothes'
import Face from './icons/face/Face'

// var accessories_1 = require("./top/accessories");
// var clothes_1 = require("./clothes");
// var face_1 = require("./face");
// var Skin_1 = require("./Skin");
// var top_1 = require("./top");
// var AvatarStyle;
// (function (AvatarStyle) {
//     AvatarStyle["Circle"] = "Circle";
//     AvatarStyle["Transparent"] = "Transparent";
// })(AvatarStyle = exports.AvatarStyle || (exports.AvatarStyle = {}));

// var clothes_1 = require("./clothes");
// var Graphics_1 = require("./clothes/Graphics");
// var accessories_1 = require("./top/accessories");
// var facialHair_1 = require("./top/facialHair");
// var top_1 = require("./top");
// var eyes_1 = require("./face/eyes");
// var eyebrow_1 = require("./face/eyebrow");
// var mouth_1 = require("./face/mouth");
// var nose_1 = require("./face/nose");
// var Skin_1 = require("./Skin");
// var AvatarStyle;

const backgroundTypeEnum = ['circle', 'transparent']
const skinColorEnum = ['tanned', 'yellow', 'pale', 'light', 'brown', 'darkBrown', 'dark']
const clothesTypeEnum = ['blazerShirt', 'blazerSweater', 'collarSweater', 'graphicShirt', 'hoodie', 'overall', 'shirtCrewNeck', 'shirtScoopNeck', 'shirtVNeck']
const clothesColorEnum = ['black', 'blue01', 'blue02', 'blue03', 'gray01', 'gray02', 'heather', 'pastelBlue', 'pastelGreen', 'pastelOrange', 'pastelRed', 'pastelYellow', 'pink', 'red', 'white']
const clothesGraphicsTypeEnum = ['bat', 'cumbia', 'deer', 'diamond', 'hola', 'pizza', 'resist', 'selena', 'bear', 'skullOutline', 'skull']
const mouthTypeEnum = ['concerned', 'default', 'disbelief', 'eating', 'grimace', 'sad', 'screamOpen', 'serious', 'smile', 'tongue', 'twinkle', 'vomit']

export default {
  name: 'Avataaars',
  components: {
    Background,
    Body,
    Clothes,
    Face,
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
    // avatarStyle: {
    //   type: Object,
    //   required: false,
    //   default: {
    //     backgroundType: {type: String, enum: backgroundTypeEnum, default: 'circle', required: false},
    //     backgroundColor: {type: String, default: 'blue', required: false},
    //   }
    // },
    avatarStyle: {
      // Background
      backgroundType: {type: String, enum: backgroundTypeEnum, default: 'circle', required: false},
      backgroundColor: {type: String, default: 'blue', required: false},

      // Body
      skinColor: {type: String, enum: skinColorEnum, default: 'light', required: false},

      // Clothes
      clothesType: {type: String, enum: clothesTypeEnum, default: 'graphicShirt', required: false},
      clothesColor: {type: String, enum: clothesColorEnum, default: 'pink', required: false},
      clothesGraphicsType: {type: String, enum: clothesGraphicsTypeEnum, default: 'pizza', required: false},
      // ↳ Graphic

      // Face
      // 👁 Eyes
      // ✏️ Eyebrow
      mouthType: {type: String, enum: mouthTypeEnum, default: 'smile', required: false},

      // Facial hair
      // Facial Hair
      // ↳ ✂️ Facial Hair Color

      // Accessories
      // Top
      // ↳ 👓 Accessories
      // ↳ 💈 Hair Color
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
  //   console.log('A vue created')
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