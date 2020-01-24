<template>

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