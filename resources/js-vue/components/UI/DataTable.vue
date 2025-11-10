<script setup>
import { computed } from 'vue';

const { data, headers } = defineProps({
  data: { type: Array, required: true },
  headers: { type: Array, default: () => [] }
});

const columns = computed(() => headers.length ? headers : Object.keys(data[0] ?? {}));
</script>

<template>
  <table class="table table-bordered table-hover">
    <thead>
      <tr>
        <th v-for="column in columns">
          <slot :name="`header.${column}`">
            {{ column }}
          </slot>
        </th>
      </tr>
    </thead>
    <tbody>
      <tr v-for="item,i in data">
        <td v-for="column in columns">
          <slot :name="`item.${column}`" :item="item" :i="i">
            {{ item[column] }}
          </slot>
        </td>
      </tr>
    </tbody>
  </table>
</template>