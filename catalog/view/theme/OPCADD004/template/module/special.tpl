<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
	<?php 
		$sliderFor = 10;
		$productCount = sizeof($products); 
	?>
	<?php if ($productCount >= $sliderFor): ?>
		<div class="customNavigation">
			<a class="btn prev">&nbsp;</a>
			<a class="btn next">&nbsp;</a>
		</div>		
	<?php endif; ?>	
	
	<div class="box-product <?php if ($productCount >= $sliderFor){?>product-carousel<?php }else{?>productbox-grid<?php }?>" id="<?php if ($productCount >= $sliderFor){?>special-carousel<?php }else{?>special-grid<?php }?>">
  <?php foreach ($products as $product) { ?>
  <div class="<?php if ($productCount >= $sliderFor){?>slider-item<?php }else{?>product-items<?php }?>">
    <div class="product-block product-thumb transition">
	  <div class="product-block-inner ">
	  	
		<div class="image">
			<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
	  <?php if (!$product['special']) { ?>       
			 <?php } else { ?>
			<span class="saleicon sale">Sale</span>         
			 <?php } ?>	
		</div>
      	
		<div class="caption">
 			       	<h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
					<div class="hover_block">
					<div class="actions">
						<button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
						<button class="wishlist_button" type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"></button>
						<button class="compare_button" type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"></button>
						<div class="rating">
					  <?php for ($i = 1; $i <= 5; $i++) { ?>
					  <?php if ($product['rating'] < $i) { ?>
					  <span class="fa fa-stack"><i class="fa fa-star off fa-stack-2x"></i></span>
					  <?php } else { ?>
					  <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
					  <?php } ?>
					  <?php } ?>
					</div>
						</div>
       			 </div>
			<?php /*?> <p><?php echo $product['description']; ?></p><?php */?>
			
			<?php if ($product['price']) { ?>
			<p class="price">
			  <?php if (!$product['special']) { ?>
			  <?php echo $product['price']; ?>
			  <?php } else { ?>
			  <span class="price-old"><?php echo $product['price']; ?></span><span class="price-new"><?php echo $product['special']; ?></span> 
			  <?php } ?>
			  <?php if ($product['tax']) { ?>
			  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
			  <?php } ?>
			</p>
			<?php } ?>
			<div class="res-cartbtn">
			<?php if ($product['rating']) { ?>
			<div class="rating">
					  <?php for ($i = 1; $i <= 5; $i++) { ?>
					  <?php if ($product['rating'] < $i) { ?>
					  <span class="fa fa-stack"><i class="fa fa-star off fa-stack-2x"></i></span>
					  <?php } else { ?>
					  <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
					  <?php } ?>
					  <?php } ?>
					</div>
					<?php } ?>
			<button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
			
        </div>
        </div>
 	    
  	</div>
	</div>
</div>
  
  <?php } ?>
</div>
  </div>
</div>
<span class="special_default_width" style="display:none; visibility:hidden"></span>
