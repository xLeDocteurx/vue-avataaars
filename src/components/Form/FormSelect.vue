<template>
	<b-tab 
		:title="title"
		>
		<b-form-group 
			v-for="label in labels"
			:label="label.name"
			:key="label.name"
			>
			<Select
				:options="label.options"
				:default="label.default"
				:label_name="formatLabelName(label.name)"
				@change_input_value="getInputChange"
			/>
		</b-form-group>
	</b-tab>
</template>

<script>
	import Select from "./Select"
	import { camelCase } from "lodash"

	export default {
		name: 'FormSelect',
		components: {
			Select
		},
		props: {
			title: {
				type: String,
				required: true
			},
			labels: {
				type: Array,
				required: true
			}
		},
		data(){
			return {
				options: []
			}
		},
		mounted() {
			this.labels.forEach(label => {
				this.options.push({
					label_name: this.formatLabelName(label.name),
					value: label.default
				})
			})
		},
		methods: {
			getInputChange(data){
				this.options.find(option => {
					if(data.label_name === option.label_name){
						option.value = data.value
					} 
				});
				this.$emit('updated_option_value', this.options)
			},
			formatLabelName(name){
				return camelCase(name)
			}
		}
	}
</script>

<style scoped>

</style>