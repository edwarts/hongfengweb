<footer>
	<?php echo $footertop; ?>
		
  <div id="footer" class="container">
  <?php echo $footerleft; ?>
     <div class="row" id="footer_wrapper">
	 
	       <?php if ($informations) { ?>
      <div class="col-sm-3 column first">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
		   <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
		   <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-3 column">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
		  <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
		  <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
		   <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3 column">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
		  <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
		  <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
        </ul>
      </div>
     <?php /*?> <div class="col-sm-3 column">
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">   
        </ul>
      </div><?php */?>
	  <?php echo $footerright; ?>
	  </div>
	  
	  <div class="footer_bottom">
	  <div class="footer_bottom_left">
	  <div id="links">
  		<ul>
		<li class="first"><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
		<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>   
		<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>      
		<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>    
		<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>    
		<li class="last"><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
		</ul>
	</div>	
	  <p id="powered"><?php echo $powered; ?></p> 
	  </div>
	  
	  <?php echo $footerbottom; ?>
		
	  </div>
    </div>
	</div>
</footer>

<!--
Code4Fun is open source software and you are free to remove the powered by Code4Fun if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@Code4Fun.com
//--> 

<!-- Theme created by Welford Media for Code4Fun 2.0 www.welfordmedia.co.uk -->

</body></html>