<?php
/**
 * Created by PhpStorm.
 * User: erethilclaw
 * Date: 30/05/18
 * Time: 18:46
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
				if ( have_posts() ) {
					while ( have_posts() ) {
						the_post();
						?>
                        <h2>
                           <?php the_title(); ?>
                        </h2>
                        <h5>
                            <span class="glyphicon glyphicon-time"></span> <?php echo get_the_time() . ' ' . get_the_date(); ?>
                        </h5>
						<?php
						$posttags = get_the_tags();
						//var_dump($posttags);
						if ( $posttags ) {
							foreach ( $posttags as $tag ) {
								//var_dump($tag->term_id);
								?>
                                <a href="<?php echo get_tag_link( $tag->term_id ); ?>"><?php echo $tag->name ?></a>&nbsp;
								<?php
							}
						}
						?>
                        <p>
							<?php echo get_the_content() ?>
                        </p>
						<?php
						// If comments are open or we have at least one comment, load up the default comment template provided by Wordpress
						if ( comments_open() || '0' != get_comments_number() )
							comments_template( '', true );
						?>
                        <?php
					}
				}else{
					?>
                    <p>nothing found</p>
					<?php
				} ?>
            </div>
        </div>
    </div>

<?php
get_footer();
?>