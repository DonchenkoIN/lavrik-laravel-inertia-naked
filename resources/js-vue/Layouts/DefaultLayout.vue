<script setup>
import {Link} from "@inertiajs/vue3";
import GeneralRoutes from './../../generated/wayfinder/actions/App/Http/Controllers/General'
import PostsRoutes from './../../generated/wayfinder/actions/App/Http/Controllers/PostController'

</script>

<template>
    <header>
        <div class="container">
            header
            <hr>
        </div>
    </header>
    <nav>
        <div class="container">
            <Link :href="GeneralRoutes.home().url" class="btn btn-primary">Главная</Link>
            <Link :href="GeneralRoutes.other().url" class="btn btn-primary mx-2">Другая</Link>
            <Link :href="PostsRoutes.index().url" class="btn btn-primary">Посты</Link>
            <hr>
        </div>
    </nav>
    <div class="container">
        <main>
            <slot></slot>

            <hr>
        </main>
    </div>

    <div class="container">
        footer
        <hr>
    </div>

</template>

<style scoped>

</style>
