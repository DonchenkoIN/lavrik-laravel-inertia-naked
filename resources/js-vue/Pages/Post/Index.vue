<script setup>
import DefaultLayout from "../../Layouts/DefaultLayout.vue";
import {Link, useForm} from "@inertiajs/vue3";

defineProps({
    posts: {type: Array, required: true}
})

const form = useForm({});
function destroy(id) {
    if (confirm(`Вы уверены, что хотите удалить пост с ID: ${id}`)) {
        // console.log("/posts/" + id)
        form.delete("/posts/" + id);
    }
}

</script>

<template>
    <DefaultLayout>
        <div>
            <Link href="posts/create">Создать</Link>
        </div>
        <div v-for="post in posts" :key="post.id">
            {{ post.id }} |
            {{ post.title }} |
            <Link :href="'posts/' + post.id + '/edit'">Редактировать</Link> |
            <Link :href="'posts/' + post.id">Просмотреть</Link> |
            <button @click="destroy(post.id)" >Удалить</button> |

        </div>
    </DefaultLayout>
</template>
<style scoped>

</style>
