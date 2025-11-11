<script setup>
import DefaultLayout from "../../Layouts/DefaultLayout.vue";
import {Link, router, useForm} from "@inertiajs/vue3";
import TagsRoutes from './../../../generated/wayfinder/actions/App/Http/Controllers/TagController'
import DataTable from "../../components/UI/DataTable.vue";
import Modal from "../../components/UI/Modal.vue";
import {ref} from "vue";

defineProps({
    tags: {type: Array, required: true}
})

const form = useForm({});

const tagForRemove = ref(null);

function destroy(tag) {
    tagForRemove.value = tag
}

function removeConfirmed() {
    router.delete(TagsRoutes.destroy(tagForRemove.value).url, {
        onFinish(){
            tagForRemove.value = null
        }
    })
}

</script>

<template>
    <DefaultLayout>
        <div>
            <Link :href="TagsRoutes.create().url">Создать</Link>
        </div>
        <DataTable :data="tags" :headers="['id', 'title', 'actions']">
            <template #item.actions="{ item }">
                <button @click="destroy(item)" type="button" class="btn btn-danger ms-2">Удалить</button>
            </template>

        </DataTable>
        <Modal
            :open="tagForRemove != null"
            @ok="removeConfirmed()"
            @close="tagForRemove = null"
        >
            <template #default>
                <h1 v-if="tagForRemove">Вы действительно хотите удалить пост с ID: {{tagForRemove.id}}</h1>
            </template>
        </Modal>
    </DefaultLayout>
</template>
<style scoped>

</style>
