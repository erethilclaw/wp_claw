<?php
/**
 * Created by PhpStorm.
 * User: erethilclaw
 * Date: 31/05/18
 * Time: 16:44
 */

function theme_files(){
	wp_enqueue_style( 'bootstrap_css', 'https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css' );
	wp_enqueue_style('claw_main_style',get_stylesheet_uri());
}
add_action('wp_enqueue_scripts','theme_files');

function theme_js() {
	wp_enqueue_script('jquery');
	wp_enqueue_script( 'bootstrap_js', 'https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js');

}
add_action( 'wp_enqueue_scripts', 'theme_js');

function my_scripts() {
	wp_enqueue_script( 'my_custom_js', get_template_directory_uri() . '/js/scripts.js', array('jquery'), null, true);
}
add_action('admin_enqueue_scripts', 'my_scripts');
//eliminar toolbar de wordpress
add_filter('show_admin_bar', '__return_false');
