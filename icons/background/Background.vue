<template>
  <g :fill="color">
    <!-- <slot /> -->
    <circle v-if="type == 'circle'" circle :cx="circle.cx" :cy="circle.cy" :r="circle.r"/>
  </g>
</template>


<script>
import circleJSON from './Circle.json'

export default {
  name: 'Background',
  props: {
    type: {
      type: String,
      default: 'circle',
      required: false,
    },
    color: {
      type: String,
      default: '#65C9FF',
      required: false,
    },
  },
  data() {
      return {
        circle: circleJSON,
      }
  },
}
</script>


<style scoped>

</style>