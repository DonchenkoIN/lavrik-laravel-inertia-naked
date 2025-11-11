<script setup>

import {useForm} from "@inertiajs/vue3";
import DefaultLayout from "../../Layouts/DefaultLayout.vue";
import TagsRoutes from './../../../generated/wayfinder/actions/App/Http/Controllers/TagController';

const props = defineProps({
    tag: {
        type: Object,
        default: () => ({}),
    }
})

const form = useForm({
    title: "",
})

const submit = () => {
    form.post(TagsRoutes.store().url);
};
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
                <button type="submit" class="btn btn-primary" :disabled="form.processing">Записать</button>
            </form>
        </DefaultLayout>
    </div>
</template>

<style scoped>

</style>
