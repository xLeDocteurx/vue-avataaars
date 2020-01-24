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
		}
	}
</script>

<style scoped>

</style>