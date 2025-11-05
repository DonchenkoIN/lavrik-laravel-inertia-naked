<script setup>
import {Link} from "@inertiajs/vue3";

</script>

<template>
    <div>header<hr></div>
    <div>nav
        <Link href="/">Home</Link>
        <Link href="/other">Other</Link>
        <Link href="/posts">Posts</Link>
        <hr>
    </div>
    <div><slot></slot><hr></div>

    <div>footer<hr></div>

</template>

<style scoped>

</style>
