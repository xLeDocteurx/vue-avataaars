<template>
    <g id="face" transform="translate(76.000000, 82.000000)">
      <Eyebrow :type="eyebrowType" />
      <Eyes :type="eyesType" />
      <Nose />
      <Mouth :type="mouthType" />
      <FacialHair :type="facialHairType" :color="facialHairColor" />
    </g>
</template>


<script>
import Eyebrow from './eyebrow/Eyebrow'
import Eyes from './eyes/Eyes'
import Nose from './nose/Nose'
import Mouth from './mouth/Mouth'
import FacialHair from '../top/facialHair/FacialHair'

export default {
  name: 'Face',
  components: {
    Eyebrow,
    Eyes,
    Nose,
    Mouth,
    FacialHair,
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