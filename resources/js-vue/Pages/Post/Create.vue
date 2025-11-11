<script setup>

import {useForm} from "@inertiajs/vue3";
import DefaultLayout from "../../Layouts/DefaultLayout.vue";
import PostsRoutes from './../../../generated/wayfinder/actions/App/Http/Controllers/PostController';
import tags from "@/routes/tags/index.js";

const props = defineProps({
    post: {
        type: Object,
        default: () => ({}),
    },
    tags: {
        type: Array,
    }
})


const form = useForm({
    title: "",
    content: "",
    tags: [],
})

const submit = () => {
    form.post(PostsRoutes.store().url);
};

function addItem(id) {
    console.log(form.tags)
}
</script>

<template>
    <div>
        <DefaultLayout>
            <form @submit.prevent="submit">
                <div class="mb-3">
                    <input class="form-control" v-model="form.title" type="text" placeholder="Заголовок"/>
                    <div v-if="form.errors.title">
                        <div class="text-danger">
                            {{ form.errors.title }}&nbsp;
                        </div>
                    </div>
                </div>

                <div class="mb-3">
                    <input class="form-control" v-model="form.content" type="text" placeholder="Контент"/>
                    <div v-if="form.errors.content">
                        <div class="text-danger">
                            {{ form.errors.content }}&nbsp;
                        </div>
                    </div>
                </div>

                <div class="mb-3">
                    <select class="form-control" multiple v-model="form.tags">
                        <option @click="addItem(tag.id)" v-for="tag in props.tags" key="tag.id" :value="tag.id">{{ tag.title }}</option>
                    </select>
                </div>

                <button type="submit" class="btn btn-primary" :disabled="form.processing">Записать</button>
            </form>
        </DefaultLayout>
    </div>
</template>

<style scoped>

</style>
