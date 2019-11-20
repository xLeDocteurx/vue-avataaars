<template>
    <g id="clothes" transform="translate(0.000000, 170.000000)">
        <path 
        :d="types[type].d"
        :fill="colors[color]"
        ></path>

        <!-- Graphic -->
        <!-- props : type -->
        <Graphics />
    </g>
</template>


<script>
import Graphics from './Graphics'

import graphicShirtJSON from './GraphicShirt.json'

export default {
  name: 'Clothes',
  components: {
    Graphics,
  },
  props: {
    type: {
      type: String,
      default: 'graphicShirt',
      required: false,
    },
    color: {
      type: String,
      default: 'pink',
      required: false,
    },
    graphic: {
      type: String,
      default: 'pizza',
      required: false,
    },
  },
  data() {
    return {
      types: {
        blazerShirt: null,
        blazerSweater: null,
        collarSweater: null,
        graphicShirt: graphicShirtJSON,
        hoodie: null,
        overall: null,
        shirtCrewNeck: null,
        shirtScoopNeck: null,
        shirtVNeck: null,
      },
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