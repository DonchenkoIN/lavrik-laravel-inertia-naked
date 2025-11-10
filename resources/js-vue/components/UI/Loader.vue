<script setup>
import { computed } from 'vue';

const { variant } = defineProps({
  variant: { type: String, default: 'primary' },
})

const classes = computed(() => ({
  [`text-${variant}`]: true
}));
</script>

<template>
  <div :class="classes" class="spinner-border" role="status">
    <span class="visually-hidden">Loading...</span>
  </div>
</template>
