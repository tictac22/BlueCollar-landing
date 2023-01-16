<?php 


add_action( 'init', 'regiser_servicesPost_types' );

function regiser_servicesPost_types(){
	register_post_type('projects', [
		'label'  => null,
		'labels' => [
			'name'               => 'projects', // основное название для типа записи
			'singular_name'      => 'project', // название для одной записи этого типа
			'add_new'            => 'Add project', // для добавления новой записи
			'add_new_item'       => 'Add projects', // заголовка у вновь создаваемой записи в админ-панели.
			'edit_item'          => 'Edit projects', // для редактирования типа записи
			'new_item'           => 'New projects', // текст новой записи
			'view_item'          => 'Watch projects', // для просмотра записи этого типа.
			'search_items'       => 'Search', // для поиска по этим типам записи
			'not_found'          => 'Not found', // если в результате поиска ничего не было найдено
			'not_found_in_trash' => 'Not found in trash', // если не было найдено в корзине
			'menu_name'          => 'projects', // название меню
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
		'menu_icon'           => 'dashicons-admin-generic',

		'hierarchical'        => false,
		'supports'            => [ 'title','editor','thumbnail' ], // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
		'taxonomies'          => [],
		'has_archive'         => false,
		'rewrite'             => true,
		'query_var'           => true,
	] );

	
}


add_action( 'init', 'create_taxonomy' );
function create_taxonomy(){

	// список параметров: wp-kama.ru/function/get_taxonomy_labels
	register_taxonomy( 'project_type', [ 'projects' ], [
		'label'                 => '', // определяется параметром $labels->name
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
		'description'           => '', // описание таксономии
		'public'                => true,
		// 'publicly_queryable'    => null, // равен аргументу public
		// 'show_in_nav_menus'     => true, // равен аргументу public
		// 'show_ui'               => true, // равен аргументу public
		// 'show_in_menu'          => true, // равен аргументу show_ui
		// 'show_tagcloud'         => true, // равен аргументу show_ui
		// 'show_in_quick_edit'    => null, // равен аргументу show_ui
		'hierarchical'          => false,

		'rewrite'               => true,
		//'query_var'             => $taxonomy, // название параметра запроса
		'capabilities'          => array(),
		'meta_box_cb'           => null, // html метабокса. callback: `post_categories_meta_box` или `post_tags_meta_box`. false — метабокс отключен.
		'show_admin_column'     => false, // авто-создание колонки таксы в таблице ассоциированного типа записи. (с версии 3.5)
		'show_in_rest'          => null, // добавить в REST API
		'rest_base'             => null, // $taxonomy
		// '_builtin'              => false,
		//'update_count_callback' => '_update_post_term_count',
	] );
}


function getProjectsPosts() {
	return get_posts([
		'post_type' => 'projects',
	]);
}