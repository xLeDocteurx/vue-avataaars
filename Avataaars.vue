<template>
    <svg
    xmlns="http://www;w3.org/2000/"
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
      
      <Background />
      <!-- <Background :type="'circle'" :color="'#EDB98A'" /> -->
      <!-- <Background :type="'transparent'" /> -->

    </svg>
</template>


<script>
// import { mapState } from 'vuex'

import Background from './icons/background/Background'

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

export default {
  name: 'Avataaars',
  components: {
    Background,
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
      backgroundType: {type: String, enum: backgroundTypeEnum, default: 'circle', required: false},
      backgroundColor: {type: String, default: 'blue', required: false},
    },
  },
  // computed: {
  //   // ...mapState({
  //   //     sesssion: state => state.sesssion
  //   // }),
  // },
  // data() {
  //   return {
        
  //   }
  // },
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