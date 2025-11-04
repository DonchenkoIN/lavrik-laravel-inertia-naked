import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';
import vue from '@vitejs/plugin-vue'
import react from '@vitejs/plugin-react'

export default defineConfig({
    plugins: [
        vue(),
        react(),
        laravel({
            input: ['resources/js-vue/app.vue'],
            refresh: true,
        }),
    ],
});
