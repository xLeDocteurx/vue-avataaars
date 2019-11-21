<template>
  <g id="background" :fill="colors[color]">
    <circle v-if="type == 'circle'" :transform="circle.transform" :cx="circle.cx" :cy="circle.cy" :r="circle.r"/>
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
      default: 'blue01',
      required: false,
    },
  },
  data() {
      return {
        circle: circleJSON,
        colors: {
          black: '#262E33',
          blue01: '#65C9FF',
          blue02: '#5199E4',
          blue03: '#25557C',
          gray01: '#E6E6E6',
          gray02: '#929598',
          heather: '#3C4F5C',
          pastelBlue: '#B1E2FF',
          pastelGreen: '#A7FFC4',
          pastelOrange: '#FFDEB5',
          pastelRed: '#FFAFB9',
          pastelYellow: '#FFFFB1',
          pink: '#FF488E',
          red: '#FF5C5C',
          white: '#FFFFFF',
        },
      }
  },
}
</script>


<style scoped>

</style>