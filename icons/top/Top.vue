<template>
    <g id="top" transform="translate(-76.000000, -82.000000)">
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
            <polygon v-else-if="geo.type == 'polygon'"
            :transform="'translate(' + geo.offset.x + ', ' + geo.offset.y + ')' + (geo.scale ? ' scale(' + geo.scale.x + ', ' + geo.scale.y + ')' : '') + (geo.rotate ? 'rotate(' + geo.rotate  + ')' : '')"
            :fill-opacity="geo.fillOpacity ? geo.fillOpacity : null"
            :fill="geo.fill ? geo.fill : colors[color]"
            :fill-rule="geo.fillRule ? geo.fillRule : null"
            :mask="geo.mask ? 'url(#' + geo.mask + ')' : null"

            :points="geo.points"
            ></polygon>

        </g>

    </g>
</template>


<script>
import noneJSON from './None.json'

import hatJSON from './Hat.json'

import hijabJSON from './Hijab.json'
import TurbanJSON from './Turban.json'
import WinterHat1JSON from './WinterHat1.json'
import WinterHat2JSON from './WinterHat2.json'
import WinterHat3JSON from './WinterHat3.json'
import WinterHat4JSON from './WinterHat4.json'
import LongHairBigHairJSON from './LongHairBigHair.json'
import LongHairBobJSON from './LongHairBob.json'
import LongHairBunJSON from './LongHairBun.json'
import LongHairCurlyJSON from './LongHairCurly.json'
import LongHairCurvyJSON from './LongHairCurvy.json'
import LongHairDreadsJSON from './LongHairDreads.json'
import LongHairFroJSON from './LongHairFro.json'
import LongHairFroBandJSON from './LongHairFroBand.json'
import LongHairNotTooLongJSON from './LongHairNotTooLong.json'
import LongHairShavedSidesJSON from './LongHairShavedSides.json'
import LongHairMiaWallaceJSON from './LongHairMiaWallace.json'
import LongHairStraightJSON from './LongHairStraight.json'
import LongHairStraight2JSON from './LongHairStraight2.json'
import LongHairStraightStrandJSON from './LongHairStraightStrand.json'

import ShortHairDreads01JSON from './ShortHairDreads01.json'
import ShortHairDreads02JSON from './ShortHairDreads02.json'
import ShortHairFrizzleJSON from './ShortHairFrizzle.json'
import ShortHairShaggyMulletJSON from './ShortHairShaggyMullet.json'
import ShortHairShortFlatJSON from './ShortHairShortFlat.json'
import ShortHairShortRoundJSON from './ShortHairShortRound.json'
import ShortHairShortWavedJSON from './ShortHairShortWaved.json'
import ShortHairSidesJSON from './ShortHairSides.json'
import ShortHairTheCeasarJSON from './ShortHairTheCeasar.json'
import ShortHairTheCeasarSidePartJSON from './ShortHairTheCeasarSidePart.json'
import ShortHairShortCurlyJSON from './ShortHairShortCurly.json'

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
        types: {
            none: noneJSON,
            hat: hatJSON,
            hijab: hijabJSON,
            turban: TurbanJSON,
            winterHat1: WinterHat1JSON,
            winterHat2: WinterHat2JSON,
            winterHat3: WinterHat3JSON,
            winterHat4: WinterHat4JSON,
            longHairBigHair: LongHairBigHairJSON,
            longHairBob: LongHairBobJSON,
            longHairBun: LongHairBunJSON,
            longHairCurly: LongHairCurlyJSON,
            longHairCurvy: LongHairCurvyJSON,
            longHairDreads: LongHairDreadsJSON,
            longHairFro: LongHairFroJSON,
            longHairFroBand: LongHairFroBandJSON,
            longHairNotTooLong: LongHairNotTooLongJSON,
            longHairShavedSides: LongHairShavedSidesJSON,
            longHairMiaWallace: LongHairMiaWallaceJSON,
            longHairStraight: LongHairStraightJSON,
            longHairStraight2: LongHairStraight2JSON,
            longHairStraightStrand: LongHairStraightStrandJSON,
            shortHairDreads01: ShortHairDreads01JSON,
            shortHairDreads02: ShortHairDreads02JSON,
            shortHairFrizzle: ShortHairFrizzleJSON,
            shortHairShaggyMullet: ShortHairShaggyMulletJSON,
            shortHairShortCurly: ShortHairShortCurlyJSON,
            shortHairShortFlat: ShortHairShortFlatJSON,
            shortHairShortRound: ShortHairShortRoundJSON,
            shortHairShortWaved: ShortHairShortWavedJSON,
            shortHairSides: ShortHairSidesJSON,
            shortHairTheCaesar: ShortHairTheCeasarJSON,
            shortHairTheCaesarSidePart: ShortHairTheCeasarSidePartJSON
        },

    }
  },
}
</script>


<style scoped>

</style>