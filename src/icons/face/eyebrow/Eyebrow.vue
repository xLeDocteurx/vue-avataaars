<template>
    <g id="eyebrow" transform="translate(0.000000, 0.000000)">
        <mask v-for="(mask, mIndex) in selectedEyebrow.masks" :id="mask.id" :key="mask.id + 'eyebrow-mask-' + mIndex">
            <path :d="mask.d" :transform="'translate(' + mask.offset.x + ', ' + mask.offset.y + ')'" :fill="mask.fill"></path>
        </mask>
        <g v-for="(geo, geoIndex) in selectedEyebrow.geometries" :id="geo.id" :key="geo.id + '-eyebrow-geometry-' + geoIndex">

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
import AngryJSON from './Angry.json'
import AngryNaturalJSON from './AngryNatural.json'
import DefaultJSON from './Default.json'
import DefaultNaturalJSON from './DefaultNatural.json'
import FlatNaturalJSON from './FlatNatural.json'
import FrownNaturalJSON from './FrownNatural.json'
import RaisedExcitedJSON from './RaisedExcited.json'
import RaisedExcitedNaturalJSON from './RaisedExcitedNatural.json'
import SadConcernedJSON from './SadConcerned.json'
import SadConcernedNaturalJSON from './SadConcernedNatural.json'
import UnibrowNaturalJSON from './UnibrowNatural.json'
import UpDownJSON from './UpDown.json'
import UpDownNaturalJSON from './UpDownNatural.json'

export default {
  name: 'Eyebrow',
  props: {
      type: {
          type: String,
          default: 'raisedExcited',
          required: false,
      }
  },
  computed: {
      selectedEyebrow() {
          return this.types[this.type]
      }
  },
  data() {
    return {
        types: {
            angry: AngryJSON,
            angryNatural: AngryNaturalJSON,
            default: DefaultJSON,
            defaultNatural: DefaultNaturalJSON,
            flatNatural: FlatNaturalJSON,
            frownNatural: FrownNaturalJSON,
            raisedExcited: RaisedExcitedJSON,
            raisedExcitedNatural: RaisedExcitedNaturalJSON,
            sadConcerned: SadConcernedJSON,
            sadConcernedNatural: SadConcernedNaturalJSON,
            unibrowNatural: UnibrowNaturalJSON,
            updown: UpDownJSON,
            updownNatural: UpDownNaturalJSON,
        },
    }
  },
}
</script>


<style scoped>

</style>