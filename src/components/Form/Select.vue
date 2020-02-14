<template>
	<b-form-select 
	size="sm"
	:options="options"
	v-model="selected.value"
	@change="selectedValue"
	></b-form-select>
</template>
<script>
	/* eslint-disable */
	export default {
		name:"Select",
		props: {
			default: {
				type: String,
				require: false
			},
			options: {
				type: Array,
				required: true				
			},
			label_name: {
				type: String,
				require: true
			}
		},
		data(){
			return {
				selected: {
					label_name: "",
					value: ""
				},
			}
		},
		mounted() {
			this.selected.label_name = this.label_name
			this.selected.value = this.default
		},
		methods: {
			selectedValue() {
				this.$emit('change_input_value', this.selected)
			}
		}
	}
</script>