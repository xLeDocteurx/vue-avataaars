<template>
    <g id="eyebrow" transform="translate(0.000000, 0.000000)">
        <mask v-for="(mask, mIndex) in selectedEyebrow.masks" :id="mask.id" :key="mask.id + 'eyebrow-mask-' + mIndex">
            <path :d="mask.d" :transform="'translate(' + mask.offset.x + ', ' + mask.offset.y + ')'" :fill="mask.fill"></path>
        </mask>
        <g v-for="(geo, geoIndex) in selectedEyebrow.geometries" :id="geo.id" :key="geo.id + '-eyebrow-geometry-' + geoIndex">

            <path v-if="geo.type == 'path'"
            :transform="'translate(' + geo.offset.x + ', ' + geo.offset.y + ')' + (geo.scale ? ' scale(' + geo.scale.x + ', ' + geo.scale.y + ')' : '')"
            :fill-opacity="geo.fillOpacity ? geo.fillOpacity : null"
            :fill="geo.fill ? geo.fill : null"
            :fill-rule="geo.fillRule ? geo.fillRule : null"
            :mask="geo.mask ? 'url(#' + geo.mask + ')' : null"

            :d="geo.d"
            ></path>
            <circle v-else-if="geo.type == 'circle'"
            :transform="'translate(' + geo.offset.x + ', ' + geo.offset.y + ')' + (geo.scale ? ' scale(' + geo.scale.x + ', ' + geo.scale.y + ')' : '')"
            :fill-opacity="geo.fillOpacity ? geo.fillOpacity : null"
            :fill="geo.fill ? geo.fill : null"
            :fill-rule="geo.fillRule ? geo.fillRule : null"
            :mask="geo.mask ? 'url(#' + geo.mask + ')' : null"

            :cx="geo.cx"
            :cy="geo.cy"
            :r="geo.r"
            ></circle>
            <ellipse v-else-if="geo.type == 'ellipse'"
            :transform="'translate(' + geo.offset.x + ', ' + geo.offset.y + ')' + (geo.scale ? ' scale(' + geo.scale.x + ', ' + geo.scale.y + ')' : '')"
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
            :transform="'translate(' + geo.offset.x + ', ' + geo.offset.y + ')' + (geo.scale ? ' scale(' + geo.scale.x + ', ' + geo.scale.y + ')' : '')"
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
import RaisedExcitedJSON from './RaisedExcited.json'

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
            angry: null,
            angryNatural: null,
            default: null,
            defaultNatural: null,
            flatNatural: null,
            raisedExcited: RaisedExcitedJSON,
            raisedExcitedNatural: null,
            sadConcerned: null,
            sadConcernedNatural: null,
            unibrowNatural: null,
            updown: null,
            updownNatural: null,
        },
    }
  },
}
</script>


<style scoped>

</style>