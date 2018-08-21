<?php
/**
 * Created by PhpStorm.
 * User: erethilclaw
 * Date: 20/08/18
 * Time: 10:48
 */
?>

<h4>About this blog</h4>
<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
<h4>Archives</h4>
<?php
$args = array(
	'type'            => 'monthly',
	'limit'           => '',
	'format'          => 'html',
	'before'          => '',
	'after'           => '',
	'show_post_count' => false,
	'echo'            => 1,
	'order'           => 'DESC',
	'post_type'     => 'post',
);
wp_get_archives($args);

?>
