<script setup>
import { computed } from 'vue';

const { value, min, max, striped, animated } = defineProps({
  value: { type: Number, required: true },
  max: { type: Number, required: true },
  min: { type: Number, default: 0 },
  label: { type: Boolean, default: false },
  striped: { type: Boolean, default: false },
  animated: { type: Boolean, default: false }
})

const rel = computed(() => ( value - min ) / ( max - min ));

const styles = computed(() => ({ 
  width: rel.value * 100 + '%' 
}));

const clasess = computed(() => ({ 
  'progress-bar-striped': striped || animated,
  'progress-bar-animated': animated
}));
</script>

<template>
<div class="progress">
  <div 
    :style="styles" 
    :class="clasess"
    class="progress-bar" 
    role="progressbar" 
    :aria-valuenow="value" 
    :aria-valuemin="min" 
    :aria-valuemax="max"
  >{{ label ? rel * 100 + '%' : '' }}</div>
</div>
</template>
