<template>
    <g id="eyes" transform="translate(0.000000, 8.000000)">
        <mask v-for="(mask, mIndex) in selectedEyes.masks" :id="mask.id" :key="mask.id + 'eyes-mask-' + mIndex">
            <path :d="mask.d" :transform="'translate(' + mask.offset.x + ', ' + mask.offset.y + ')'" :fill="mask.fill"></path>
        </mask>
        <g v-for="(geo, geoIndex) in selectedEyes.geometries" :id="geo.id" :key="geo.id + '-eyes-geometry-' + geoIndex">

            <path v-if="geo.type == 'path'"
            :transform="'translate(' + geo.offset.x + ', ' + geo.offset.y + ')' + (geo.scale ? ' scale(' + geo.scale.x + ', ' + geo.scale.y + ')' : '') + (geo.rotate ? 'rotate(' + geo.rotate  + ')' : '')"
            :fill-opacity="geo.fillOpacity ? geo.fillOpacity : null"
            :fill="geo.fill ? geo.fill : null"
            :fill-rule="geo.fillRule ? geo.fillRule : null"
            :mask="geo.mask ? 'url(#' + geo.mask + ')' : null"

            :d="geo.d"
            ></path>
            <circle v-else-if="geo.type == 'circle'"
            :transform="'translate(' + geo.offset.x + ', ' + geo.offset.y + ')' + (geo.scale ? ' scale(' + geo.scale.x + ', ' + geo.scale.y + ')' : '') + (geo.rotate ? 'rotate(' + geo.rotate  + ')' : '')"
            :fill-opacity="geo.fillOpacity ? geo.fillOpacity : null"
            :fill="geo.fill ? geo.fill : null"
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
            :fill="geo.fill ? geo.fill : null"
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
import CloseJSON from './Close.json'
import CryJSON from './Cry.json'
import DefaultJSON from './Default.json'
import DizzyJSON from './Dizzy.json'
import EyeRollJSON from './EyeRoll.json'
import HappyJSON from './Happy.json'
import HeartsJSON from './Hearts.json'
import SideJSON from './Side.json'
import SquintJSON from './Squint.json'
import SurprisedJSON from './Surprised.json'
import WinkJSON from './Wink.json'
import WinkWackyJSON from './WinkWacky.json'

export default {
  name: 'Eyes',
  props: {
      type: {
          type: String,
          default: 'squint',
          required: false,
      }
  },
  computed: {
      selectedEyes() {
          return this.types[this.type]
      }
  },
  data() {
    return {
        types: {
            close: CloseJSON,
            cry: CryJSON,
            default: DefaultJSON,
            dizzy: DizzyJSON,
            eyeroll: EyeRollJSON,
            happy: HappyJSON,
            hearts: HeartsJSON,
            side: SideJSON,
            squint: SquintJSON,
            surprised: SurprisedJSON,
            wink: WinkJSON,
            winkWacky: WinkWackyJSON,
        },
    }
  },
}
</script>


<style scoped>

</style>