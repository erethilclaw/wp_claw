<?php
/**
 * Created by PhpStorm.
 * User: erethilclaw
 * Date: 30/05/18
 * Time: 18:25
 */

get_header();
global $post;
?>
    <div class="clearbox"></div>
<div class="container content">
    <div class="row ">
        <div class="col-sm-3  blog-sidebar">
			<?php get_sidebar(); ?>
        </div>
        <div class="col-sm-8">
			<?php
			/*$args  = array(
				'posts_per_page' => 5,
				'paged'          => get_query_var( 'paged', 1 )
			);
			$query = new WP_Query( $args );*/
			if ( have_posts() ) {
				while ( have_posts() ) {
					the_post();
					get_template_part( 'content' );
				}
			}else{
			    ?>
                <p>nothing found</p>
                <?php
            }

			/*			echo paginate_links( array(
							'total' => $query->max_num_pages,
						) );
						the_posts_pagination( array(
							'mid_size'  => 2,
							'prev_text' => __( 'Back', 'textdomain' ),
							'next_text' => __( 'Onward', 'textdomain' ),
						) ); */ ?>
        </div>
    </div>
</div>

<?php
get_footer();
?>