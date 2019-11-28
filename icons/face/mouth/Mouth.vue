<template>
    <g id="mouth" transform="translate(2.000000, 52.000000)">
        <mask v-for="(mask, mIndex) in selectedMouth.masks" :id="mask.id" :key="mask.id + 'mouth-mask-' + mIndex">
            <path :d="mask.d" :transform="'translate(' + mask.offset.x + ', ' + mask.offset.y + ')' + (mask.scale ? ' scale(' + mask.scale.x + ', ' + mask.scale.y + ')' : '') + (mask.rotate ? 'rotate(' + mask.rotate  + ')' : '')" :fill="mask.fill"></path>
        </mask>
        <g v-for="(geo, geoIndex) in selectedMouth.geometries" :id="geo.id" :key="geo.id + '-mouth-geometry-' + geoIndex">

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
            <polygon v-else-if="geo.type == 'polygon'"
            :transform="'translate(' + geo.offset.x + ', ' + geo.offset.y + ')' + (geo.scale ? ' scale(' + geo.scale.x + ', ' + geo.scale.y + ')' : '') + (geo.rotate ? 'rotate(' + geo.rotate  + ')' : '')"
            :fill-opacity="geo.fillOpacity ? geo.fillOpacity : null"
            :fill="geo.fill ? geo.fill : null"
            :fill-rule="geo.fillRule ? geo.fillRule : null"
            :mask="geo.mask ? 'url(#' + geo.mask + ')' : null"

            :points="geo.points"
            ></polygon>

        </g>

    </g>
</template>


<script>
import ConcernedJSON from './Concerned.json'
import DefaultJSON from './Default.json'
import DisbeliefJSON from './Disbelief.json'
import EatingJSON from './Eating.json'
import GrimaceJSON from './Grimace.json'
import SadJSON from './Sad.json'
import ScreamOpenJSON from './ScreamOpen.json'
import SeriousJSON from './Serious.json'
import SmileJSON from './Smile.json'
import TongueJSON from './Tongue.json'
import TwinkleJSON from './Twinkle.json'
import VomitJSON from './Vomit.json'

export default {
  name: 'Mouth',
  props: {
      type: {
          type: String,
          default: 'smile',
          required: false,
      }
  },
  computed: {
      selectedMouth() {
          return this.types[this.type]
      }
  },
  data() {
    return {
        types: {
            concerned: ConcernedJSON,
            default: DefaultJSON,
            disbelief: DisbeliefJSON,
            eating: EatingJSON,
            grimace: GrimaceJSON,
            sad: SadJSON,
            screamOpen: ScreamOpenJSON,
            serious: SeriousJSON,
            smile: SmileJSON,
            tongue: TongueJSON,
            twinkle: TwinkleJSON,
            vomit: VomitJSON,
        },

    }
  },
}
</script>


<style scoped>

</style>