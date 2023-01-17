<?php 



add_action( 'init', 'register_plansPost_types' );

function register_plansPost_types(){
	register_post_type('plans', [
		'label'  => null,
		'labels' => [
			'name'               => 'plans', 
			'singular_name'      => 'plan', 
			'add_new'            => 'Add plan', 
			'add_new_item'       => 'Add plans', 
			'edit_item'          => 'Edit plans', 
			'new_item'           => 'New plans', 
			'view_item'          => 'Watch plans', 
			'search_items'       => 'Search', 
			'not_found'          => 'Not found', 
			'not_found_in_trash' => 'Not found in trash', 
			'menu_name'          => 'plans', 
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


add_action( 'init', 'createPlansTaxonomy' );
function createPlansTaxonomy(){
	register_taxonomy( 'plans-tag', [ 'plans' ], [
		'label'                 => '', 
		'labels'                => [
			'name'              => 'plans-tag',
			'singular_name'     => 'plans-tag',
			'search_items'      => 'Search plans-tag',
			'all_items'         => 'All plans-tag',
			'view_item '        => 'View plans-tag',
			'parent_item'       => 'Parent plans-tag',
			'parent_item_colon' => 'Parent plans-tag:',
			'edit_item'         => 'Edit plans-tag',
			'update_item'       => 'Update plans-tag',
			'add_new_item'      => 'Add New plans-tag',
			'new_item_name'     => 'New plans-tag Name',
			'menu_name'         => 'plans-tag',
			'back_to_items'     => '← Back to plans-tag',
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


function getPlanPosts() {
	$posts = get_posts([
		'post_type' => 'plans',
	]);


	foreach($posts as &$post) {
		$fields = get_fields($post->ID);
		$post->customFields = $fields;

		$tag = get_the_terms($post->ID,'plans-tag');
		if($tag) {
			$post->tag = $tag[0]->name;
		}
	}

	return $posts;
}