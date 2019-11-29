<template>
    <g id="face" transform="translate(76.000000, 82.000000)">
      <Eyes :type="eyesType" />
      <Eyebrow :type="eyebrowType" />
      <Nose />
      <Mouth :type="mouthType" />
      <Top :type="topType" :color="topColor" />
      <FacialHair :type="facialHairType" :color="facialHairColor" />
    </g>
</template>


<script>
import Eyebrow from './eyebrow/Eyebrow'
import Eyes from './eyes/Eyes'
import Nose from './nose/Nose'
import Mouth from './mouth/Mouth'
import FacialHair from '../top/facialHair/FacialHair'
import Top from '../top/Top'

export default {
  name: 'Face',
  components: {
    Eyebrow,
    Eyes,
    Nose,
    Mouth,
    FacialHair,
    Top,
  },
  props: {
    eyebrowType: {
      type: String,
      default: 'raisedExcited',
      required: false,
    },
    eyesType: {
      type: String,
      default: 'squint',
      required: false,
    },
    mouthType: {
      type: String,
      default: 'smile',
      required: false,
    },
    facialHairType: {
      type: String,
      default: 'beardLight',
      required: false,
    },
    facialHairColor: {
      type: String,
      default: 'brownDark',
      required: false,
    },
    topType: {
      type: String,
      default: 'none',
      required: false,
    },
    topColor: {
      type: String,
      default: 'brownDark',
      required: false,
    }
  },
  data() {
      return {

      }
  },
}
</script>


<style scoped>

</style>