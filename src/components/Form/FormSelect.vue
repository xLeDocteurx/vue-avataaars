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
		}
	}
</script>

<style scoped>

</style>