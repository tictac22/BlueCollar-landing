<?php 

add_action( 'after_setup_theme', 'theme_register_nav_menu' );
function theme_register_nav_menu() {
	register_nav_menu( 'header_menu', 'header_menu' );
	register_nav_menu( 'header_socials', 'header_socials' );
}

function atg_menu_classes($classes, $item, $args) {
	if($args->theme_location == 'header_menu') {
		$classes[] = 'navigation__item';
	}
	return $classes;
}
add_filter('nav_menu_css_class', 'atg_menu_classes', 1, 3);

function _namespace_modify_menuclass($ulclass) {
	return preg_replace('/<a /', '<a class="navigation__link underline"', $ulclass);
}
add_filter('wp_nav_menu', '_namespace_modify_menuclass');

add_theme_support( 'menus' );

