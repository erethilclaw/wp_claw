<?php
/**
 * Created by PhpStorm.
 * User: erethilclaw
 * Date: 30/05/18
 * Time: 18:51
 */
get_header();
while ( have_posts() ) {
	the_post(); ?>
    <div class="container">
        <div class="card card-block">
            <h2><?php the_title() ?></h2>
            <hr class="featurette-divider">
            <p><?php the_content() ?></p>
        </div>
    </div>
	<?php
}
get_footer();
?>