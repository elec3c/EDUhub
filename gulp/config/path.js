import * as nodePath from 'path';
const rootFolder = nodePath.basename(nodePath.resolve());

const buildFolder = `./html`;
const srcFolder = `./src`;

export const path = {
    build: {
        html: `${buildFolder}/`,
        css: `${buildFolder}/assets/css/`,
        styles: `${buildFolder}/assets/`,
        js: `${buildFolder}/assets/js/`,
        images: `${buildFolder}/assets/images/`,
        fonts: `${buildFolder}/assets/fonts/`,
        files: `${buildFolder}/assets/files/`,
        dir_root: `${buildFolder}/`
    },
    src: {
        html: `${srcFolder}/*.html`,
        scss: `${srcFolder}/scss/styles.scss`,
        styles: `${srcFolder}/**/*.css`,
        //js: `${srcFolder}/js/scripts.js`,
        js: `${srcFolder}/js/**/*.js`,
        images: `${srcFolder}/images/**/*.{jpg,jpeg,png,gif,webp,ico,svg}`,
        sprite: `${srcFolder}/images/**/sprite.svg`,
        fonts: `${srcFolder}/fonts/**/*.*`,
        files: `${srcFolder}/files/**/*.*`,
        dir_root: `${srcFolder}/*.{ico,php,htaccess,mp4,avi,txt}`,
        sprite_icons: `${srcFolder}/images/sprite_icons/*.svg`
    },
    watch: {
        html: `${srcFolder}/**/*.html`,
        scss: `${srcFolder}/scss/**/*.scss`,
        styles: `${srcFolder}/**/*.css`,
        js: `${srcFolder}/js/**/*.js`,
        images: `${srcFolder}/images/**/*.{jpg,jpeg,png,gif,webp,ico,svg}`,
        files: `${srcFolder}/files/**/*.*`,
        dir_root: `${srcFolder}/*.{ico,php,htaccess,mp4,avi,txt}`,
        sprite_icons: `${srcFolder}/images/sprite_icons/*.svg`
    },
    clean: buildFolder,
    buildFolder: buildFolder,
    srcFolder: srcFolder,
    rootFolder: rootFolder,
    ftp: ``
};