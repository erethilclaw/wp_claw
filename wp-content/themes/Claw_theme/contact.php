<?php
/*
Template Name: Contact
*/
/**
 * Created by PhpStorm.
 * User: erethilclaw
 * Date: 13/09/18
 * Time: 12:36
 */
?>
<?php get_header(); ?>

<?php
while ( have_posts() ) {
	the_post(); ?>
    <div class="clearbox"></div>
    <div id="contact" class="container content">
        <h3 class="text-center"><?php the_title() ?></h3>
        <p class="text-center"><em>We love our fans!</em></p>

        <div class="row">
            <div class="col-md-4">
                <p>Fan? Drop a note.</p>
                <p><span class="glyphicon glyphicon-map-marker"></span>Chicago, US</p>
                <p><span class="glyphicon glyphicon-phone"></span>Phone: +00 1515151515</p>
                <p><span class="glyphicon glyphicon-envelope"></span>Email: mail@mail.com</p>
            </div>
            <div class="col-md-8">
                <?php the_content() ?>
            </div>
        </div>
    </div>
	<?php
}
?>
<?php get_footer(); ?>
