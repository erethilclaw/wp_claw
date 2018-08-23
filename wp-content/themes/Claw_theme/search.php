<?php
get_header();
?>
    <div class="clearbox"></div>
<?php
if ( have_posts() ) {
	while ( have_posts() ) {
		the_post();
        get_template_part( 'content' );
	}
}else{
?><p> no posts found</p> <?php
}
get_footer()
?>