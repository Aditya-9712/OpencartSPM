<div id="footer">
	<div id="footer-middle-bar"> 
	<?php if ($this->config->get('tg_hera_footer_social_icon_show') == "1") { ?>
		<div id="footer-social-icons">
		
		<?php if ($this->config->get('facebook_show') == "1") { ?>
			<a target="_blank" id="footer-icons-facebook" href="<?php echo $this->config->get('facebook_icon');?>">Facebook</a>
		<?php } ?>
		
		<?php if ($this->config->get('vimeo_show') == "1") { ?>
			<a target="_blank" id="footer-icons-vimeo" href="<?php echo $this->config->get('vimeo_icon');?>">Vimeo</a>
		<?php } ?>
		
		<?php if ($this->config->get('twitter_show') == "1") { ?>
			<a target="_blank" id="footer-icons-twitter" href="<?php echo $this->config->get('twitter_icon');?>">Twitter</a>
		<?php } ?>
	
		</div>
	<?php } ?>
	</div>
	
<div id="footer-holder">
	
  <div class="column">
    <h3><?php echo $text_information; ?></h3>
    <ul>
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
    </ul>
  </div>
  <div class="column">
    <h3><?php echo $text_service; ?></h3>
    <ul>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
    </ul>
  </div>
  
  
  <div class="column">
    <h3><?php echo $text_account; ?></h3>
    <ul>
      <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
    </ul>
  </div>
  
  <!-- <div class="column">
    <h3><?php echo $newsletter_title; ?></h3>
	
	


  <div id="frm_subscribe">
  <ul>
  <form name="subscribe" id="subscribe"   >
  <table border="0" cellpadding="2" cellspacing="2">
   <tr>
     <li><span style=" color: #888888;"><?php echo $entry_email; ?></span><br /></li><li><input type="text" style="width: 120px;" value="" name="subscribe_email" id="subscribe_email"></li>
   </tr>
   
  
   <tr>
   
     <li><a onclick="email_subscribe()"><span><?php echo $entry_button; ?></span></a></li>
     <li><a onclick="email_unsubscribe()"><span><?php echo $entry_unbutton; ?></span></a></li>
     
   </tr>

     <span align="left" id="subscribe_result"></span>

  </table>

   </ul>
  </div>
 -->
  </div>

<script language="javascript">

function email_subscribe(){
	$.ajax({
			type: 'post',
			url: 'index.php?route=module/newslettersubscribe/subscribe',
			dataType: 'html',
            data:$("#subscribe").serialize(),
			success: function (html) {
				eval(html);
			}}); 
}
function email_unsubscribe(){
	$.ajax({
			type: 'post',
			url: 'index.php?route=module/newslettersubscribe/unsubscribe',
			dataType: 'html',
            data:$("#subscribe").serialize(),
			success: function (html) {
				eval(html);
			}}); 
}
   
$('.fancybox_sub').fancybox({
	width: 180,
	height: 180,
	autoDimensions: false
});
</script>




  
  
  </div>
</div>
<!-- 
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
<div id="powered">&copy;Copyright 2017.A Theme Powered by <a class="blue" href="http://www.opencart.com">OpenCart</a><br /><a class="s_main_color">SPM Project - Group 1</a>

<div id="paymentimage">
  	<?php if (unserialize($this->config->get('tg_hera_paymentimages_slide_image'))) {?>	
  		<?php foreach( unserialize($this->config->get('tg_hera_paymentimages_slide_image')) as $image): ?>
      		<?php if ($image['url']) {?>
      		<span style="margin-left:10px;"><a href="<?php echo $image['url'];?>" target="_blank"><img src="<?php echo HTTPS_SERVER . 'image/' . $image['file'];?>" /></a></span>
      	<?php } else { ?>
      		<span style="margin-left:10px;"><img src="<?php echo HTTPS_SERVER . 'image/' . $image['file'];?>" /></span>
      	<?php } ?>
    	<?php endforeach; ?>
    <?php } ?>
	
	<?php if ($this->config->get('tg_hera_paymentimages_totop') == "1") { ?>	
	
	<a href="#top"><span style="float :right; margin-top: 8px;">&nbsp; Back To Top</span></a>
<script type="text/javascript">


var scrolltotop={
	//startline: Integer. Number of pixels from top of doc scrollbar is scrolled before showing control
	//scrollto: Keyword (Integer, or "Scroll_to_Element_ID"). How far to scroll document up when control is clicked on (0=top).
	setting: {startline:100, scrollto: 0, scrollduration:1000, fadeduration:[500, 100]},
	controlHTML: '<img src="" style="width:0px; height:0px" />', //HTML for control, which is auto wrapped in DIV w/ ID="topcontrol"
	controlattrs: {offsetx:5, offsety:5}, //offset of control relative to right/ bottom of window corner
	anchorkeyword: '#top', //Enter href value of HTML anchors on the page that should also act as "Scroll Up" links

	state: {isvisible:false, shouldvisible:false},

	scrollup:function(){
		if (!this.cssfixedsupport) //if control is positioned using JavaScript
			this.$control.css({opacity:0}) //hide control immediately after clicking it
		var dest=isNaN(this.setting.scrollto)? this.setting.scrollto : parseInt(this.setting.scrollto)
		if (typeof dest=="string" && jQuery('#'+dest).length==1) //check element set by string exists
			dest=jQuery('#'+dest).offset().top
		else
			dest=0
		this.$body.animate({scrollTop: dest}, this.setting.scrollduration);
	},

	keepfixed:function(){
		var $window=jQuery(window)
		var controlx=$window.scrollLeft() + $window.width() - this.$control.width() - this.controlattrs.offsetx
		var controly=$window.scrollTop() + $window.height() - this.$control.height() - this.controlattrs.offsety
		this.$control.css({left:controlx+'px', top:controly+'px'})
	},

	togglecontrol:function(){
		var scrolltop=jQuery(window).scrollTop()
		if (!this.cssfixedsupport)
			this.keepfixed()
		this.state.shouldvisible=(scrolltop>=this.setting.startline)? true : false
		if (this.state.shouldvisible && !this.state.isvisible){
			this.$control.stop().animate({opacity:1}, this.setting.fadeduration[0])
			this.state.isvisible=true
		}
		else if (this.state.shouldvisible==false && this.state.isvisible){
			this.$control.stop().animate({opacity:0}, this.setting.fadeduration[1])
			this.state.isvisible=false
		}
	},
	
	init:function(){
		jQuery(document).ready(function($){
			var mainobj=scrolltotop
			var iebrws=document.all
			mainobj.cssfixedsupport=!iebrws || iebrws && document.compatMode=="CSS1Compat" && window.XMLHttpRequest //not IE or IE7+ browsers in standards mode
			mainobj.$body=(window.opera)? (document.compatMode=="CSS1Compat"? $('html') : $('body')) : $('html,body')
			mainobj.$control=$('<div id="topcontrol">'+mainobj.controlHTML+'</div>')
				.css({position:mainobj.cssfixedsupport? 'fixed' : 'absolute', bottom:mainobj.controlattrs.offsety, right:mainobj.controlattrs.offsetx, opacity:0, cursor:'pointer'})
				.attr({title:'Scroll Back to Top'})
				.click(function(){mainobj.scrollup(); return false})
				.appendTo('body')
			if (document.all && !window.XMLHttpRequest && mainobj.$control.text()!='') //loose check for IE6 and below, plus whether control contains any text
				mainobj.$control.css({width:mainobj.$control.width()}) //IE6- seems to require an explicit width on a DIV containing text
			mainobj.togglecontrol()
			$('a[href="' + mainobj.anchorkeyword +'"]').click(function(){
				mainobj.scrollup()
				return false
			})
			$(window).bind('scroll resize', function(e){
				mainobj.togglecontrol()
			})
		})
	}
}

scrolltotop.init()




</script>

<?php } ?>
    </div> <!-- paymentimage (end) -->

</div>
<!-- 
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
</div>



</body></html>