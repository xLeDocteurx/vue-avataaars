<template>
    <g id="graphic" :transform="'translate(' + (77.000000 + types[type].g.offset.x) + ', ' + (58.000000  + types[type].g.offset.y) + ')'">
      <path 
      v-for="(path, pathIndex) in types[type].paths"
      :d="path.d"
      :fill="path.fill"
      :key="'graphic-' + pathIndex"
      ></path>
    </g>
</template>


<script>
import graphicsJSON from './Graphics.json'

export default {
  name: 'Graphics',
  props: {
    type: {
      type: String,
      default: 'pizza',
      required: false,
    },
  },
  data() {
      return {
        types: {
          none: graphicsJSON.none,
          bat: null,
          cumbia: null,
          deer: null,
          diamond: null,
          hola: null,
          pizza: graphicsJSON.pizza,
          resist: null,
          selena: null,
          bear: null,
          skullOutline: null,
          skull: null,
        },
      }
  },
}
</script>


<style scoped>

</style>