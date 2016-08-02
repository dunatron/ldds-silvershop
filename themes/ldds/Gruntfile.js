/*
 How to setup grunt:
 - cd to theme directory
 - Execute the following: (jshint may not be needed!)
 npm install grunt-contrib-uglify --save-dev
 npm install grunt-contrib-jshint --save-dev
 npm install grunt-contrib-concat  --save-dev
 npm install grunt-contrib-less --save-dev
 npm install -g less-plugin-clean-css --save-dev
 npm install grunt --save-dev

 - In mac you can download and install this app:  https://pngmini.com/
 - Execute grunt to  generate JS and CSS:
 grunt
 - or using the samdog command
 samdog grunt nzicrec nzic --v
 */
module.exports = function (grunt) {
    var concat = {}, watch = {};

    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        meta: {
            banner: '/*Tron Design Limited | Copyright 2015*/'
        },
        uglify: {
            my_task: {
                files: {
                    'js/base-scripts.js': [
                        "resources/js/menus.js"
                    ]//,
                    //'js/tron-swipe.js': [
                    //    "resources/js/tron-custom-swipe.js"
                    //]
                }
            }
        },
        concat: {
            options: {
                separator: '\n;'
            },
            dist: {
                src: [
                    'resources/js/menu.js',
                    'resources/js/navgoco.js'
                    //'resources/js/lib/modernizr.js'
                ],
                dest: 'js/homepage.js'
            }

        },
        less: {
            development: {},
            production: {
                options: {
                    compress: true,
                    paths: ["resources/less"],
                    plugins: [
                        //new (require('less-plugin-clean-css'))({
                        //    advanced: true,
                        //    s1: true,
                        //    compatibility: "ie8"
                        //})
                    ]
                },
                files: {
                    "css/base-styles.css": "resources/less/styles.less",
                    "css/homepage.css": "resources/less/homepage.less",
                    "css/job-details.css": "resources/less/job-details.less",
                    "css/job-listing.css": "resources/less/job-listing.less",
                    "css/module-page.css": "resources/less/modulepage.less"
                }
            }
        },
        watch: watch
    });

    grunt.loadNpmTasks('grunt-contrib-concat');
    grunt.loadNpmTasks('grunt-contrib-jshint');
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-less');

    grunt.registerTask('default', ['uglify', 'less', 'concat']);
};
