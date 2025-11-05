import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';
import vue from '@vitejs/plugin-vue';
// import react from '@vitejs/plugin-react';


export default defineConfig({
    // resolve: {
    //     alias: {
    //         'ziggy-js': path.resolve('vendor/tightenco/ziggy'),
    //     },
    // },
    plugins: [
        vue(),
        // react(),
        laravel({
            input: ['resources/js-vue/app.js'],
            refresh: true,
        }),
    ],
});
