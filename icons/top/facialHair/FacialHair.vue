<template>
    <g id="facialHair" transform="translate(-27.000000, -10.000000)">
        <mask v-for="(mask, mIndex) in selectedFacialHairType.masks" :id="mask.id" :key="mask.id + 'facialHair-mask-' + mIndex">
            <path :d="mask.d" :transform="'translate(' + mask.offset.x + ', ' + mask.offset.y + ')'" :fill="mask.fill"></path>
        </mask>
        <g v-for="(geo, geoIndex) in selectedFacialHairType.geometries" :id="geo.id" :key="geo.id + '-facialHair-geometry-' + geoIndex">

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
import NoneJSON from './None.json'
import BeardLightJSON from './BeardLight.json'

export default {
  name: 'FacialHair',
  props: {
      type: {
          type: String,
          default: 'beardLight',
          required: false,
      },
      color: {
          type: String,
          default: 'brownDark',
          required: false,
      }
  },
  computed: {
      selectedFacialHairType() {
          return this.types[this.type]
      }
  },
  data() {
    return {
        types: {
            none: NoneJSON,
            beardMedium: null,
            beardLight: BeardLightJSON,
            beardMajestic: null,
            moustacheFancy: null,
            moustacheMagnum: null,
        },
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
    }
  },
}
</script>


<style scoped>

</style>