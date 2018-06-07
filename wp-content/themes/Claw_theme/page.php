<?php
/**
 * Created by PhpStorm.
 * User: erethilclaw
 * Date: 30/05/18
 * Time: 18:51
 */
get_header();
while(have_posts()){
	the_post(); ?>
	<h1><?php the_title()?></h1>
	<h2>Es una pagina!</h2>
	<p><?php the_content()?></p>
	<?php
}
get_footer();
?>