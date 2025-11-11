<script setup>

import {useForm} from "@inertiajs/vue3";
import DefaultLayout from "../../Layouts/DefaultLayout.vue";

const props = defineProps({
    post: {
        type: Object,
        default: () => ({}),
    }
})

// const post = {
//     id: props.post.id,
//     title: props.post.title,
//     content: props.post.content,
//     u: props.post.content,
// }

</script>

<template>
    <div>
        <DefaultLayout>
            id: {{ post.id }} |
            Заголовок: {{ post.title }} |
            Контент: {{ post.content }} |
            url: {{ post.url }} |
            user ID: {{post.user_id}}
        </DefaultLayout>
    </div>
</template>

<style scoped>

</style>
