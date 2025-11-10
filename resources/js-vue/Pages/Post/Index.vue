<script setup>
import DefaultLayout from "../../Layouts/DefaultLayout.vue";
import {Link, router, useForm} from "@inertiajs/vue3";
import PostsRoutes from './../../../generated/wayfinder/actions/App/Http/Controllers/PostController'
import DataTable from "../../components/UI/DataTable.vue";
import Modal from "../../components/UI/Modal.vue";
import {ref} from "vue";

defineProps({
    posts: {type: Array, required: true}
})

const form = useForm({});

const postForRemove = ref(null);

function destroy(post) {
    postForRemove.value = post
}

function removeConfirmed() {
    router.delete(PostsRoutes.destroy(postForRemove.value).url, {
        onFinish(){
            postForRemove.value = null
        }
    })
}

</script>

<template>
    <DefaultLayout>
        <div>
            <Link :href="PostsRoutes.create().url">Создать</Link>
        </div>
        <DataTable :data="posts" :headers="['id', 'created_at', 'title', 'content', 'actions']">
            <template #item.created_at="{ item }">
                {{ (new Date(item.created_at)).toLocaleString() }}
            </template>
            <template #item.actions="{ item }">
                <Link :href="PostsRoutes.show(item).url" type="button" class="btn btn-primary mx-1">Просмотреть</Link>
                <Link :href="PostsRoutes.edit(item).url" type="button" class="btn btn-primary">Редактировать</Link>
                <button @click="destroy(item)" type="button" class="btn btn-danger ms-2">Удалить</button>
            </template>

        </DataTable>
        <Modal
            :open="postForRemove != null"
            @ok="removeConfirmed()"
            @close="postForRemove = null"
        >
            <template #default>
                <h1 v-if="postForRemove">Вы действительно хотите удалить пост с ID: {{postForRemove.id}}</h1>
            </template>
        </Modal>
    </DefaultLayout>
</template>
<style scoped>

</style>
