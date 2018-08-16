<?php
/*
Template Name: Archives
*/
get_header();
global $post;
?>
<div class="container-fluid inici">
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
			$args = array( 'posts_per_page' => 4 );

			$myposts = get_posts( $args );
			foreach ( $myposts as $post ) : setup_postdata( $post ); ?>
                <div class="container">
                <hr>
                <h2>
                    <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
                </h2>
                <h5><span class="glyphicon glyphicon-time"></span> <?php echo get_the_time().' '. get_the_date(); ?></h5>
                <h5><span class="label label-danger">Food</span> <span class="label label-primary">Ipsum</span></h5><br>
                <p><?php the_content() ?></p>
                <br><br>
                </div>
				<?php
				wp_reset_postdata();
			endforeach;
			?>
        </div>
    </div>
</div>
<?php

get_footer();
?>
