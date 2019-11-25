<template>
    <g id="top" transform="translate(0.000000, 0.000000)">
        <mask v-for="(mask, mIndex) in selectedTop.masks" :id="mask.id" :key="mask.id + 'top-mask-' + mIndex">
            <path :d="mask.d" :transform="'translate(' + mask.offset.x + ', ' + mask.offset.y + ')'" :fill="mask.fill"></path>
        </mask>
        <g v-for="(geo, geoIndex) in selectedTop.geometries" :id="geo.id" :key="geo.id + '-top-geometry-' + geoIndex">

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
            :fill="geo.fill ? geo.fill : colors[color]"
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

        </g>

    </g>
</template>


<script>
import noneJSON from './None.json'

import eyePatchJSON from './EyePatch.json'
import hatJSON from './Hat.json'

import hijabJSON from './Hijab.json'
import turbanJSON from './Turban.json'

import longHairBigHairJSON from './LongHairBigHair.json'

export default {
  name: 'Top',
  props: {
      type: {
          type: String,
          default: 'none',
          required: false,
      },
      color: {
          type: String,
          default: 'brownDark',
          required: false,
      }
  },
  computed: {
      selectedTop() {
          return this.types[this.type]
      }
  },
  data() {
    return {
        colors: {
            auburn: "#A55728",
            black: "#2C1B18",
            blonde: "#B58143",
            blondeGolden: "#D6B370",
            brown: "#724133",
            brownDark: "#4A312C",
            platinum: "#ECDCBF",
            red: "#C93305",
        },
        types: {
            none: noneJSON,
            eyepatch: eyePatchJSON,
            hat: hatJSON,
            hijab: hijabJSON,
            turban: turbanJSON,
            winterHat1: null,
            winterHat2: null,
            winterHat3: null,
            winterHat4: null,
            longHairBigHair: longHairBigHairJSON,
            longHairBob: null,
            longHairBun: null,
            longHairCurly: null,
            longHairCurvy: null,
            longHairDreads: null,
            longHairFrida: null,
            longHairFro: null,
            longHairFroBand: null,
            longHairNotTooLong: null,
            longHairShavedSides: null,
            longHairMiaWallace: null,
            longHairStraight: null,
            longHairStraight2: null,
            longHairStraightStrand: null,
            shortHairDreads01: null,
            shortHairDreads02: null,
            shortHairFrizzle: null,
            shortHairShaggyMullet: null,
            shortHairShortCurly: null,
            shortHairShortFlat: null,
            shortHairShortRound: null,
            shortHairShortWaved: null,
            shortHairSides: null,
            shortHairTheCaesar: null,
            shortHairTheCaesarSidePart: null
        },

    }
  },
}
</script>


<style scoped>

</style>