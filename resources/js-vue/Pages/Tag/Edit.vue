<script setup>

import {useForm} from "@inertiajs/vue3";
import DefaultLayout from "../../Layouts/DefaultLayout.vue";
import PostsRoutes from './../../../generated/wayfinder/actions/App/Http/Controllers/PostController';

const props = defineProps({
    post: {
        type: Object,
        default: () => ({}),
    }
})

const form = useForm({
    id: props.post.id,
    title: props.post.title,
    content: props.post.content,
    user_id: props.post.user_id,
    url: props.post.url,
})

const submit = () => {
    form.put(PostsRoutes.update(form).url);
};
</script>

<template>
    <div>
        <DefaultLayout>
            Редактировать
            <form @submit.prevent="submit">
                <input v-model="form.title" type="text" placeholder="Заголовок"/>
                <div v-if="form.errors.title">
                    <div>
                        {{ form.errors.title }}
                    </div>
                </div>
                <input v-model="form.content" type="text" placeholder="Контент"/>
                <div v-if="form.errors.content">
                    <div>
                        {{ form.errors.content }}
                    </div>
                </div>
                <button type="submit">Записать</button>
            </form>
        </DefaultLayout>
    </div>
</template>

<style scoped>

</style>
