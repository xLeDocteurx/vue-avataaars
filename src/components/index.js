import Vue from 'vue'
import Avataaars from './Avataaars'

const components = {
    Avataaars,
}

Object.keys(components).forEach((name) => {
    Vue.component(name, components[name])
})

export default components.Avataaars