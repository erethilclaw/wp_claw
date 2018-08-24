<?php
/**
 * Created by PhpStorm.
 * User: erethilclaw
 * Date: 23/08/18
 * Time: 12:24
 */
?>

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
	<p>
		<?php echo get_the_excerpt() ?>
		<a href="<?php echo the_permalink()?>">Read more&raquo</a>
	</p>
	<br><br>

