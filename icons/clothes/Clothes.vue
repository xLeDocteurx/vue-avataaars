<template>
    <g id="clothes" transform="translate(0.000000, 170.000000)">
        <mask v-for="(mask, mIndex) in selectedClothes.masks" :id="mask.id" :key="mask.id + 'clothes-mask-' + mIndex">
            <path :d="mask.d" :transform="'translate(' + mask.offset.x + ', ' + mask.offset.y + ')'" :fill="mask.fill"></path>
        </mask>
        <g v-for="(geo, geoIndex) in selectedClothes.geometries" :id="geo.id" :key="geo.id + '-clothes-geometry-' + geoIndex">
            <path v-if="geo.type == 'path'"
            :transform="'translate(' + geo.offset.x + ', ' + geo.offset.y + ')' + (geo.scale ? ' scale(' + geo.scale.x + ', ' + geo.scale.y + ')' : '') + (geo.rotate ? 'rotate(' + geo.rotate  + ')' : '')"
            :fill-opacity="geo.fillOpacity ? geo.fillOpacity : null"
            :fill="geo.fill ? geo.fill : colors[color]"
            :fill-rule="geo.fillRule ? geo.fillRule : null"
            :mask="geo.mask ? 'url(#' + geo.mask + ')' : null"

            :d="geo.d"
            ></path>
            <circle v-else-if="geo.type == 'circle'"
            :transform="'translate(' + geo.offset.x + ', ' + geo.offset.y + ')' + (geo.scale ? ' scale(' + geo.scale.x + ', ' + geo.scale.y + ')' : '') + (geo.rotate ? 'rotate(' + geo.rotate  + ')' : '')"
            :fill-opacity="geo.fillOpacity ? geo.fillOpacity : null"
            :fill="geo.fill ? geo.fill : colors[color]"
            :fill-rule="geo.fillRule ? geo.fillRule : null"
            :mask="geo.mask ? 'url(#' + geo.mask + ')' : null"

            :cx="geo.cx"
            :cy="geo.cy"
            :r="geo.r"
            ></circle>
            <ellipse v-else-if="geo.type == 'ellipse'"
            :transform="'translate(' + geo.offset.x + ', ' + geo.offset.y + ')' + (geo.scale ? ' scale(' + geo.scale.x + ', ' + geo.scale.y + ')' : '') + (geo.rotate ? 'rotate(' + geo.rotate  + ')' : '')"
            :fill-opacity="geo.fillOpacity ? geo.fillOpacity : null"
            :fill="geo.fill ? geo.fill : null"
            :fill-rule="geo.fillRule ? geo.fillRule : null"
            :mask="geo.mask ? 'url(#' + geo.mask + ')' : null"

            :cx="geo.cx"
            :cy="geo.cy"
            :rx="geo.rx"
            :ry="geo.ry"
            ></ellipse>
            <rect v-else-if="geo.type == 'rect'"
            :transform="'translate(' + geo.offset.x + ', ' + geo.offset.y + ')' + (geo.scale ? ' scale(' + geo.scale.x + ', ' + geo.scale.y + ')' : '') + (geo.rotate ? 'rotate(' + geo.rotate  + ')' : '')"
            :fill-opacity="geo.fillOpacity ? geo.fillOpacity : null"
            :fill="geo.fill ? geo.fill : colors[color]"
            :fill-rule="geo.fillRule ? geo.fillRule : null"
            :mask="geo.mask ? 'url(#' + geo.mask + ')' : null"

            :x="geo.x"
            :y="geo.y"
            :width="geo.width"
            :height="geo.height"
            :rx="geo.rx"
            ></rect>
            <polygon v-else-if="geo.type == 'polygon'"
            :transform="'translate(' + geo.offset.x + ', ' + geo.offset.y + ')' + (geo.scale ? ' scale(' + geo.scale.x + ', ' + geo.scale.y + ')' : '') + (geo.rotate ? 'rotate(' + geo.rotate  + ')' : '')"
            :fill-opacity="geo.fillOpacity ? geo.fillOpacity : null"
            :fill="geo.fill ? geo.fill : colors[color]"
            :fill-rule="geo.fillRule ? geo.fillRule : null"
            :mask="geo.mask ? 'url(#' + geo.mask + ')' : null"

            :points="geo.points"
            ></polygon>

        </g>
        <!-- <path 
        :d="types[type].d"
        :fill="colors[color]"
        ></path> -->

        <!-- Graphic -->
        <!-- props : type -->
        <Graphics :type="graphic" />
    </g>
</template>


<script>
import Graphics from './Graphics'

import graphicShirtJSON from './GraphicShirt.json'
import blazerShirtJSON from './BlazerShirt.json'
import blazerSweaterJSON from './BlazerSweater.json'
import collarSweaterJSON from './CollarSweater.json'
import HoodieJSON from './Hoodie.json'
import OverallJSON from './Overall.json'
import ShirtCrewNeckJSON from './ShirtCrewNeck.json'
import ShirtScoopNeckJSON from './ShirtScoopNeck.json'
import ShirtVNeckJSON from './ShirtVNeck.json'

export default {
  name: 'Clothes',
  components: {
    Graphics,
  },
  props: {
    type: {
      type: String,
      default: 'hoodie',
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
  computed: {
      selectedClothes() {
          return this.types[this.type]
      }
  },
  data() {
    return {
      types: {
        blazerShirt: blazerShirtJSON,
        blazerSweater: blazerSweaterJSON,
        collarSweater: collarSweaterJSON,
        graphicShirt: graphicShirtJSON,
        hoodie: HoodieJSON,
        overall: OverallJSON,
        shirtCrewNeck: ShirtCrewNeckJSON,
        shirtScoopNeck: ShirtScoopNeckJSON,
        shirtVNeck: ShirtVNeckJSON,
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