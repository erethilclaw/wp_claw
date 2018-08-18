<?php
/*
Template Name: Archives
*/
get_header();
global $post;
?>
<div class="container-fluid">
    <div class="row content">
        <div class="col-sm-3 sidenav">
            <ul class="nav nav-pills nav-stacked">
                <li class="active"><a href="#section1">Home</a></li>
                <li><a href="#section2">Friends</a></li>
                <li><a href="#section3">Family</a></li>
                <li><a href="#section3">Photos</a></li>
            </ul>
            <br>
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Search Blog..">
                <span class="input-group-btn">
          <button class="btn btn-default" type="button">
            <span class="glyphicon glyphicon-search"></span>
          </button>
        </span>
            </div>
        </div>
        <div class="col-sm-9">
			<?php

			$args  = array(
			        'posts_per_page' => 5,
                    'paged' => get_query_var('paged',1)
                );
            $query = new WP_Query( $args );
			if ( $query->have_posts() ) {
				while ( $query->have_posts() ) {
					$query->the_post(); ?>
                    <div class="container">
                        <hr>
                        <h2>
                            <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
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
                        <p><?php the_content() ?></p>
                        <br><br>
                    </div>
					<?php
				}
			}
			?>
			<?php
            echo paginate_links(array(
                    'total'=> $query->max_num_pages,
            ));
            the_posts_pagination( array(
				'mid_size'  => 2,
				'prev_text' => __( 'Back', 'textdomain' ),
				'next_text' => __( 'Onward', 'textdomain' ),
			) ); ?>
        </div>
    </div>
</div>
<?php

get_footer();
?>
