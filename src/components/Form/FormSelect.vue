<template>
	<b-tab 
		:title="title"
		>
		<b-form-group 
			v-for="label in labels"
			:label="label.name"
			:key="label.name"
			>
		</b-form-group>
	</b-tab>
</template>

<script>

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