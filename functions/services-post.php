<?php 


add_action( 'init', 'register_post_types' );

function register_post_types(){
	register_post_type('services', [
		'label'  => null,
		'labels' => [
			'name'               => 'services', // основное название для типа записи
			'singular_name'      => 'service', // название для одной записи этого типа
			'add_new'            => 'Add service', // для добавления новой записи
			'add_new_item'       => 'Add services', // заголовка у вновь создаваемой записи в админ-панели.
			'edit_item'          => 'Edit services', // для редактирования типа записи
			'new_item'           => 'New services', // текст новой записи
			'view_item'          => 'Watch services', // для просмотра записи этого типа.
			'search_items'       => 'Search', // для поиска по этим типам записи
			'not_found'          => 'Not found', // если в результате поиска ничего не было найдено
			'not_found_in_trash' => 'Not found in trash', // если не было найдено в корзине
			'menu_name'          => 'Services', // название меню
		],
		'description'            => '',
		'public'                 => true,
		// 'publicly_queryable'  => null, // зависит от public
		// 'exclude_from_search' => null, // зависит от public
		// 'show_ui'             => null, // зависит от public
		// 'show_in_nav_menus'   => null, // зависит от public
		'show_in_menu'           => null, // показывать ли в меню админки
		// 'show_in_admin_bar'   => null, // зависит от show_in_menu
		'show_in_rest'        => null, // добавить в REST API. C WP 4.7
		'rest_base'           => null, // $post_type. C WP 4.7
		'menu_position'       => null,
		'menu_icon'           => 'dashicons-admin-tools',

		'hierarchical'        => false,
		'supports'            => [ 'title','editor','thumbnail' ], // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
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