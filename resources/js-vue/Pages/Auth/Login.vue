<script setup>
import { useForm } from '@inertiajs/vue3'
import DefaultLayout from '../../Layouts/DefaultLayout.vue';
import SessionRoutes from '../../../generated/wayfinder/actions/App/Http/Controllers/Auth/Session'

const form = useForm({
	email: '',
	password: '',
	remember: true
})

function send(){
	form.post(SessionRoutes.store().url);
}

</script>

<template>
	<DefaultLayout>
		<h1>Create error</h1>
		<hr>
		<form>
			<div class="mb-3">
				<label class="form-label">Email</label>
				<input v-model="form.email" type="text" class="form-control">
				<div class="text-danger">{{ form.errors.email }}&nbsp;</div>
			</div>
			<div class="mb-3">
				<label class="form-label">Title</label>
				<input v-model="form.password" type="password" class="form-control">
				<div class="text-danger">{{ form.errors.password }}&nbsp;</div>
			</div>
			<div class="mb-3">
				Remember <input v-model="form.remember" type="checkbox"  >
			</div>
			<button @click="send" :disabled="form.processing" type="button" class="btn btn-primary">Send</button>
		</form>
	</DefaultLayout>
</template>
