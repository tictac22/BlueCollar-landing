<?php 


define('ASSETS_ROOT',get_template_directory_uri() . '/assets');
define('ASSETS_CSS',ASSETS_ROOT . '/css/');
define('ASSETS_IMG',ASSETS_ROOT . '/img/');
define('ASSETS_FONTS',ASSETS_ROOT . '/fonts/');
define('ASSETS_JS',ASSETS_ROOT . '/js/');

function add_theme_scripts() {

	wp_deregister_script('jquery');

	wp_enqueue_style('styles', ASSETS_CSS . 'style.min.css');
	wp_enqueue_script('scripts', ASSETS_JS . 'main.min.js', array(), 1.1, true );

}
add_action( 'wp_enqueue_scripts', 'add_theme_scripts' );