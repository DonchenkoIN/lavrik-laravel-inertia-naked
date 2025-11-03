<script setup>
import DefaultLayout from "../Layouts/DefaultLayout.vue";

defineProps({
    a: {type: Number, required: true}
})
</script>

<template>
    <DefaultLayout>
        <h1>{{ a }}</h1>
    </DefaultLayout>
</template>
