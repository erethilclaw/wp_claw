<?php
/**
 * Created by PhpStorm.
 * User: erethilclaw
 * Date: 21/08/18
 * Time: 12:04
 */
?>
<div class="search">
<form role="search" method="get" action="<?php echo home_url('/')?>">
	<input type="search" class="form-control" value="<?php echo get_search_query()?>" name="s" title="Search" placeholder="search">
</form>
</div>
