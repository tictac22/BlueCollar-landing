<?php 


add_action( 'init', 'register_post_types' );

function register_post_types(){
	register_post_type('services', [
		'label'  => null,
		'labels' => [
			'name'               => 'services',
			'singular_name'      => 'service',
			'add_new'            => 'Add service',
			'add_new_item'       => 'Add services',
			'edit_item'          => 'Edit services',
			'new_item'           => 'New services',
			'view_item'          => 'Watch services',
			'search_items'       => 'Search',
			'not_found'          => 'Not found',
			'not_found_in_trash' => 'Not found in trash',
			'menu_name'          => 'Services',
		],
		'description'            => '',
		'public'                 => true,	
		'show_in_menu'           => null,
		'show_in_rest'        => null,
		'rest_base'           => null,
		'menu_position'       => null,
		'menu_icon'           => 'dashicons-admin-tools',
		'hierarchical'        => false,
		'supports'            => [ 'title','editor','thumbnail' ],
		'taxonomies'          => [],
		'has_archive'         => false,
		'rewrite'             => true,
		'query_var'           => true,
	] );

	
}


function getServicesPost() {
	return get_posts([
		'post_type' => 'services',
	]);
}