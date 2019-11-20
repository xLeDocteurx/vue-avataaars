<template>
    <g id="face" transform="translate(76.000000, 82.000000)">
      <Nose />
      <!-- props: type -->
      <Mouth />
    </g>
</template>


<script>
import Nose from './nose/Nose'
import Mouth from './mouth/Mouth'

export default {
  name: 'Face',
  components: {
    Nose,
    Mouth,
  },
  props: {
    mouthType: {
      type: String,
      default: 'smile',
      required: false,
    },
  },
  data() {
      return {

      }
  },
}
</script>


<style scoped>

</style>