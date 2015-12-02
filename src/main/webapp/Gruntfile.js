module.exports = function (grunt) {
// 配置
    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        clean: {
            cleanoutput: {
                files: [{
                        src: 'build-<%= pkg.version %>/'
                    }]
            }
        },
        copy: {
            fonts: {
                files: [
                    {expand: true, cwd: 'assets', src: ['fonts/**'], dest: 'build-<%= pkg.version %>/'}
                ]
            },
            image: {
                files: [
                    {
                        expand: true,
                        flatten: false,
                        cwd: 'assets',
                        src: ['images/*.{png,jpg,jpeg,gif}'],
                        dest: 'build-<%= pkg.version %>/'
                    }
                ]
            },
            js: {
                //*.js 代表只复制js ** 包含复制目录
                files: [
                    {expand: true, cwd: 'assets', src: ['js/**'], dest: 'build-<%= pkg.version %>/'}
                ]
            },
            css: {
                files: [
                    {expand: true, cwd: 'assets',
                        src: [
                            'css/animate.css',
                            'css/bootstrap.css',
                            'css/bootstrap.css.map',
                            'css/font-awesome.min.css',
                            'css/font.css',
                            'css/simple-line-icons.css'],
                        dest: 'build-<%= pkg.version %>/'}
                ]
            }
        },
        concat: {
            css: {
                src: ['assets/css/app.css'],
                dest: 'build-<%= pkg.version %>/css/app.css'
            }
        },
        cssmin: {
            css: {
                src: 'build-<%= pkg.version %>/css/app.css',
                dest: 'build-<%= pkg.version %>/css/app.min.css'
            }
        },
        uglify: {
            main: {
                files: [{
                        expand: true,
                        cwd: 'assets',
                        src: ['js/*.js', '!js/*.min.js'],
                        dest: 'build-<%= pkg.version %>'
                    }]
            }
        }
    });
    //拷贝文件
    grunt.loadNpmTasks('grunt-contrib-copy');
    //clean 插件
    grunt.loadNpmTasks('grunt-contrib-clean');
    // 载入concat和uglify插件，分别对于合并和压缩
    grunt.loadNpmTasks('grunt-contrib-concat');
    grunt.loadNpmTasks('grunt-css');
    // 注册任务
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.registerTask('default', ['clean', 'concat', 'cssmin', 'uglify', 'copy']);
}; 