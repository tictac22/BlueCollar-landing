<?php 


add_action( 'init', 'regiser_servicesPost_types' );

function regiser_servicesPost_types(){
	register_post_type('projects', [
		'label'  => null,
		'labels' => [
			'name'               => 'projects', 
			'singular_name'      => 'project', 
			'add_new'            => 'Add project', 
			'add_new_item'       => 'Add projects', 
			'edit_item'          => 'Edit projects', 
			'new_item'           => 'New projects', 
			'view_item'          => 'Watch projects', 
			'search_items'       => 'Search', 
			'not_found'          => 'Not found', 
			'not_found_in_trash' => 'Not found in trash', 
			'menu_name'          => 'projects', 
		],
		'description'            => '',
		'public'                 => true,	
		'show_in_menu'           => null, 	
		'show_in_rest'        => null, 
		'rest_base'           => null, 
		'menu_position'       => null,
		'menu_icon'           => 'dashicons-admin-generic',
		'hierarchical'        => false,
		'supports'            => [ 'title','editor','thumbnail' ], 
		'taxonomies'          => [],
		'has_archive'         => false,
		'rewrite'             => true,
		'query_var'           => true,
	] );

	
}


add_action( 'init', 'create_taxonomy' );
function create_taxonomy(){

	register_taxonomy( 'project_type', [ 'projects' ], [
		'label'                 => '', 
		'labels'                => [
			'name'              => 'type',
			'singular_name'     => 'type',
			'search_items'      => 'Search type',
			'all_items'         => 'All type',
			'view_item '        => 'View type',
			'parent_item'       => 'Parent type',
			'parent_item_colon' => 'Parent type:',
			'edit_item'         => 'Edit type',
			'update_item'       => 'Update type',
			'add_new_item'      => 'Add New type',
			'new_item_name'     => 'New type Name',
			'menu_name'         => 'type',
			'back_to_items'     => '← Back to type',
		],
		'description'           => '', 
		'public'                => true,	
		'hierarchical'          => false,
		'rewrite'               => true,		
		'capabilities'          => array(),
		'meta_box_cb'           => null, 
		'show_admin_column'     => false, 
		'show_in_rest'          => null, 
		'rest_base'             => null, 		
	] );
}


function getProjectsPosts() {
	return get_posts([
		'post_type' => 'projects',
	]);
}