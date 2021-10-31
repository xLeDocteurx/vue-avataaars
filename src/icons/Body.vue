<template>
    <g id="body" transform="translate(32.000000, 36.000000)">
        <path
        :d="body.d"
        :fill="colors[color]"
        ></path>
        <!-- Neck shadow -->
        <g id="neck-shadow">
            <mask id="neck-shadow-mask">
              <path d="M124,144.610951 L124,163 L128,163 L128,163 C167.764502,163 200,195.235498 200,235 L200,244 L0,244 L0,235 C-4.86974701e-15,195.235498 32.235498,163 72,163 L72,163 L76,163 L76,144.610951 C58.7626345,136.422372 46.3722246,119.687011 44.3051388,99.8812385 C38.4803105,99.0577866 34,94.0521096 34,88 L34,74 C34,68.0540074 38.3245733,63.1180731 44,62.1659169 L44,56 L44,56 C44,25.072054 69.072054,5.68137151e-15 100,0 L100,0 L100,0 C130.927946,-5.68137151e-15 156,25.072054 156,56 L156,62.1659169 C161.675427,63.1180731 166,68.0540074 166,74 L166,88 C166,94.0521096 161.51969,99.0577866 155.694861,99.8812385 C153.627775,119.687011 141.237365,136.422372 124,144.610951 Z" fill="white"></path>
            </mask>
            <path 
            mask="url(#neck-shadow-mask)"
            :d="neckShadow.d"
            :fill="neckShadow.fill"
            :fill-opacity="neckShadow.fillOpacity"
            ></path>
        </g>
    </g>
</template>


<script>
import bodyJSON from './Body.json'

export default {
  name: 'Body',
  props: {
    color: {
      type: String,
      default: 'light',
      required: false,
    },
  },
  data() {
      return {
        colors: {
            tanned:'#FD9841',
            yellow:'#F8D25C',
            pale:'#FFDBB4',
            light:'#EDB98A',
            brown:'#D08B5B',
            darkBrown:'#AE5D29',
            dark:'#614335',
        },
        body: bodyJSON.body,
        neckShadow: bodyJSON.neckShadow,
      }
  },
}
</script>


<style scoped>

</style>