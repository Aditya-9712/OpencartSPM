<?php echo $header; ?>
<div id="content">
<div class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
  <?php } ?>
</div>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div class="box">
  <div class="heading">
    <h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
    <div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php echo $button_save; ?></span></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><span><?php echo $button_cancel; ?></span></a></div>
  </div>
  <div class="content">
    <div id="tabs" class="htabs"><a href="#tab-general">General Setting</a><a href="#tab-image">Slider Image Manager</a></div>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
    


    
     <div id="tab-general">  
    <table class="form">






<table class="form">


	<tr>
       <td width="20%"><?php echo $entry_effect; ?> </td>
        <td colspan="3"><select name="tg_hera_slideshow_slideshow_effect">
              <?php if (isset($tg_hera_slideshow_slideshow_effect)) {
              $selected = "selected";
              ?>
              <option value="Fade" <?php if($tg_hera_slideshow_slideshow_effect=='Fade'){echo $selected;} ?>>Fade</option>
              <option value="Slide-Left" <?php if($tg_hera_slideshow_slideshow_effect=='Slide-Left'){echo $selected;} ?>>Slide Left</option>
              <option value="Slide-Right" <?php if($tg_hera_slideshow_slideshow_effect=='Slide-Right'){echo $selected;} ?>>Slide Right</option>
              <option value="Slide-Down" <?php if($tg_hera_slideshow_slideshow_effect=='Slide-Down'){echo $selected;} ?>>Slide Down</option>
              <option value="Slide-Up" <?php if($tg_hera_slideshow_slideshow_effect=='Slide-Up'){echo $selected;} ?>>Slice Up</option>
              <option value="Curtain-Cl" <?php if($tg_hera_slideshow_slideshow_effect=='Curtain-Cl'){echo $selected;} ?>>Curtain Cl</option>
              <option value="Curtain-V-Cl" <?php if($tg_hera_slideshow_slideshow_effect=='Curtain-V-Cl'){echo $selected;} ?>>Curtain-V-Cl</option>
              <option value="Shrink-Left-Bottom" <?php if($tg_hera_slideshow_slideshow_effect=='Shrink-Left-Bottom'){echo $selected;} ?>>Shrink-Left-Bottom</option>
              <option value="Random" <?php if($tg_hera_slideshow_slideshow_effect=='Random'){echo $selected;} ?>>Random</option>
			  <option value="Shrink-Left-Top" <?php if($tg_hera_slideshow_slideshow_effect=='Shrink-Left-Top'){echo $selected;} ?>>Shrink-Left-Top</option>
              <option value="Shrink-Right-Bottom" <?php if($tg_hera_slideshow_slideshow_effect=='Shrink-Right-Bottom'){echo $selected;} ?>>Shrink-Right-Bottom</option>
              <option value="Shrink-Right-Top" <?php if($tg_hera_slideshow_slideshow_effect=='Shrink-Right-Top'){echo $selected;} ?>>Shrink-Right-Top</option>
              <option value="Shrink-Center" <?php if($tg_hera_slideshow_slideshow_effect=='Shrink-Center'){echo $selected;} ?>>Shrink-Center</option>
              <option value="Srink-Random-Bounce" <?php if($tg_hera_slideshow_slideshow_effect=='Srink-Random-Bounce'){echo $selected;} ?>>Srink-Random-Bounce</option>
              <option value="Zoom-Up-Left" <?php if($tg_hera_slideshow_slideshow_effect=='Zoom-Up-Left'){echo $selected;} ?>>Zoom-Up-Left</option>
			  <option value="Zoom-Up-Right" <?php if($tg_hera_slideshow_slideshow_effect=='Zoom-Up-Right'){echo $selected;} ?>>Zoom-Up-Right</option>
			  <option value="Zoom-Down-Right" <?php if($tg_hera_slideshow_slideshow_effect=='Zoom-Down-Right'){echo $selected;} ?>>Zoom-Down-Right</option>
			  <option value="Zoom-Down-Left" <?php if($tg_hera_slideshow_slideshow_effect=='Zoom-Down-Left'){echo $selected;} ?>>Zoom-Up-Left</option>
			  <option value="Zoom-Center" <?php if($tg_hera_slideshow_slideshow_effect=='Zoom-Center'){echo $selected;} ?>>Zoom-Center</option>
			  <option value="Appear-Up-Left" <?php if($tg_hera_slideshow_slideshow_effect=='Appear-Up-Left'){echo $selected;} ?>>Appear-Up-Left</option>
			  <option value="Appear-Up-Right" <?php if($tg_hera_slideshow_slideshow_effect=='Appear-Up-Right'){echo $selected;} ?>>Appear-Up-Right</option>
			  <option value="Appear-Center-Right" <?php if($tg_hera_slideshow_slideshow_effect=='Appear-Center-Right'){echo $selected;} ?>>Appear-Center-Right</option>
			  <option value="Appear-Center-Left" <?php if($tg_hera_slideshow_slideshow_effect=='Appear-Center-Left'){echo $selected;} ?>>Appear-Center-Left</option>
			  <option value="Appear-Up-Center" <?php if($tg_hera_slideshow_slideshow_effect=='Appear-Up-Center'){echo $selected;} ?>>Appear-Up-Center</option>
			  <option value="Appear-Center" <?php if($tg_hera_slideshow_slideshow_effect=='Appear-Center'){echo $selected;} ?>>Appear-Center</option>
			  <option value="Push-Right" <?php if($tg_hera_slideshow_slideshow_effect=='Push-Right'){echo $selected;} ?>>Push-Right</option>
			  <option value="Push-Left" <?php if($tg_hera_slideshow_slideshow_effect=='Push-Left'){echo $selected;} ?>>Push-Left</option>
			  <option value="Push-Up" <?php if($tg_hera_slideshow_slideshow_effect=='Push-Up'){echo $selected;} ?>>Push-Up</option>
			  <option value="Push-Down" <?php if($tg_hera_slideshow_slideshow_effect=='Push-Down'){echo $selected;} ?>>Push-Down</option>
			  <option value="Move-Right" <?php if($tg_hera_slideshow_slideshow_effect=='Move-Right'){echo $selected;} ?>>Move-Right</option>
			  <option value="Move-Left" <?php if($tg_hera_slideshow_slideshow_effect=='Move-Left'){echo $selected;} ?>>Move-Left</option>
			  <option value="Move-Up" <?php if($tg_hera_slideshow_slideshow_effect=='Move-Up'){echo $selected;} ?>>Move-Up</option>
			  <option value="Move-Down" <?php if($tg_hera_slideshow_slideshow_effect=='Move-Down'){echo $selected;} ?>>Move-Down</option>
			  <option value="Close-Center" <?php if($tg_hera_slideshow_slideshow_effect=='Close-Center'){echo $selected;} ?>>Close-Center</option>
			  <option value="Open-Center" <?php if($tg_hera_slideshow_slideshow_effect=='Open-Center'){echo $selected;} ?>>Open-Center</option>
			  <option value="2-Close-Bounce" <?php if($tg_hera_slideshow_slideshow_effect=='2-Close-Bounce'){echo $selected;} ?>>2-Close-Bounce</option>
			  <option value="2-Shrink-Bounce" <?php if($tg_hera_slideshow_slideshow_effect=='2-Shrink-Bounce'){echo $selected;} ?>>2-Shrink-Bounce</option>
			  <option value="2-Shrink-Top-Bottom" <?php if($tg_hera_slideshow_slideshow_effect=='2-Shrink-Top-Bottom'){echo $selected;} ?>>2-Shrink-Top-Bottom</option>
			  <option value="4-Shrink-Close" <?php if($tg_hera_slideshow_slideshow_effect=='4-Shrink-Close'){echo $selected;} ?>>4-Shrink-Close</option>
			  <option value="4-Close" <?php if($tg_hera_slideshow_slideshow_effect=='4-Close'){echo $selected;} ?>>4-Close</option>
			  <option value="4-Open" <?php if($tg_hera_slideshow_slideshow_effect=='4-Open'){echo $selected;} ?>>4-Open</option>
			  <option value="4-Close-Delay" <?php if($tg_hera_slideshow_slideshow_effect=='4-Close-Delay'){echo $selected;} ?>>4-Close-Delay</option>
			  <option value="4-Open-Delay" <?php if($tg_hera_slideshow_slideshow_effect=='4-Open-Delay'){echo $selected;} ?>>4-Open-Delay</option>
			  <option value="4-Close-Shift" <?php if($tg_hera_slideshow_slideshow_effect=='4-Close-Shift'){echo $selected;} ?>>4-Close-Shift</option>
			  <option value="4-Open-Shift" <?php if($tg_hera_slideshow_slideshow_effect=='4-Open-Shift'){echo $selected;} ?>>4-Open-Shift</option>
			  <option value="4-Cross" <?php if($tg_hera_slideshow_slideshow_effect=='4-Cross'){echo $selected;} ?>>4-Cross</option>
			  <option value="Blind-Right" <?php if($tg_hera_slideshow_slideshow_effect=='Blind-Right'){echo $selected;} ?>>Blind-Right</option>
			  <option value="Blind-Right-All" <?php if($tg_hera_slideshow_slideshow_effect=='Blind-Right-All'){echo $selected;} ?>>Blind-Right-All</option>
			  <option value="Blind-Right-Wave" <?php if($tg_hera_slideshow_slideshow_effect=='Blind-Right-Wave'){echo $selected;} ?>>Blind-Right-Wave</option>
			  <option value="Blind-Right-Wave-Full" <?php if($tg_hera_slideshow_slideshow_effect=='Blind-Right-Wave-Full'){echo $selected;} ?>>Blind-Right-Wave-Full</option>
			  <option value="Blind-Right-Fade" <?php if($tg_hera_slideshow_slideshow_effect=='Blind-Right-Fade'){echo $selected;} ?>>Blind-Right-Fade</option>
			  <option value="Blind-Right-Step" <?php if($tg_hera_slideshow_slideshow_effect=='Blind-Right-Step'){echo $selected;} ?>>Blind-Right-Step</option>
			  <option value="Blind-Down-Right" <?php if($tg_hera_slideshow_slideshow_effect=='Blind-Down-Right'){echo $selected;} ?>>Blind-Down-Right</option>
			  <option value="Blind-Down-Center" <?php if($tg_hera_slideshow_slideshow_effect=='Blind-Down-Center'){echo $selected;} ?>>Blind-Down-Center</option>
			  <option value="Blind-Down-Random" <?php if($tg_hera_slideshow_slideshow_effect=='Blind-Down-Random'){echo $selected;} ?>>Blind-Down-Random</option>
			  <option value="Blind-Down-Up" <?php if($tg_hera_slideshow_slideshow_effect=='Blind-Down-Up'){echo $selected;} ?>>Blind-Down-Up</option>
			  <option value="Blind-Down-Up-Fade" <?php if($tg_hera_slideshow_slideshow_effect=='Blind-Down-Up-Fade'){echo $selected;} ?>>Blind-Down-Up-Fade</option>
			  <option value="Blind-Down-Up-Bounce" <?php if($tg_hera_slideshow_slideshow_effect=='Blind-Down-Up-Bounce'){echo $selected;} ?>>Blind-Down-Up-Bounce</option>
			  <option value="Blind-Down-Up-Wave" <?php if($tg_hera_slideshow_slideshow_effect=='Blind-Down-Up-Wave'){echo $selected;} ?>>Blind-Down-Up-Wave</option>
			  <option value="Blind-Pair-Right" <?php if($tg_hera_slideshow_slideshow_effect=='Blind-Pair-Right'){echo $selected;} ?>>Blind-Pair-Right</option>
			  <option value="Blind-Pair" <?php if($tg_hera_slideshow_slideshow_effect=='Blind-Pair'){echo $selected;} ?>>Blind-Pair</option>
			  <option value="Blind-Pair-Right-Left" <?php if($tg_hera_slideshow_slideshow_effect=='Blind-Pair-Right-Left'){echo $selected;} ?>>Blind-Pair-Right-Left</option>
			  <option value="Sqr-Fade" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Fade'){echo $selected;} ?>>Sqr-Fade</option>
			  <option value="Sqr-Fade-Down" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Fade-Down'){echo $selected;} ?>>Sqr-Fade-Down</option>
			  <option value="Sqr-Random" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Random'){echo $selected;} ?>>Sqr-Random</option>
			  <option value="Sqr-Fade-Chess" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Fade-Chess'){echo $selected;} ?>>Sqr-Fade-Chess</option>
			  <option value="Sqr-Ex-Pairs" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Ex-Pairs'){echo $selected;} ?>>Sqr-Ex-Pairs</option>
			  <option value="Sqr-Ex-Cros" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Ex-Cros'){echo $selected;} ?>>Sqr-Ex-Cros</option>
			  <option value="Line-Down" <?php if($tg_hera_slideshow_slideshow_effect=='Line-Down'){echo $selected;} ?>>Line-Down</option>
			  <option value="Sqr-Down" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Down'){echo $selected;} ?>>Sqr-Down</option>
			  <option value="Line-Down-Reverse" <?php if($tg_hera_slideshow_slideshow_effect=='Line-Down-Reverse'){echo $selected;} ?>>Line-Down-Reverse</option>
			  <option value="Sqr-Down-Expand" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Down-Expand'){echo $selected;} ?>>Sqr-Down-Expand</option>
			  <option value="Sqr-Expand" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Expand'){echo $selected;} ?>>Sqr-Expand</option>
			  <option value="Sqr-Ex-Down" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Ex-Down'){echo $selected;} ?>>Sqr-Ex-Down</option>
			  <option value="Sqr-Ex-Up" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Ex-Up'){echo $selected;} ?>>Sqr-Ex-Up</option>
			  <option value="Sqr-Ex-Left" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Ex-Left'){echo $selected;} ?>>Sqr-Ex-Left</option>
			  <option value="Sqr-Ex-Rirht" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Ex-Rirht'){echo $selected;} ?>>Sqr-Ex-Rirht</option>
			  <option value="Sqr-Ex-S-E" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Ex-S-E'){echo $selected;} ?>>Sqr-Ex-S-E</option>
			  <option value="Sqr-Ex-S-W" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Ex-S-W'){echo $selected;} ?>>Sqr-Ex-S-W</option>
			  <option value="Sqr-Ex-N-E" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Ex-N-E'){echo $selected;} ?>>Sqr-Ex-N-E</option>
			  <option value="Sqr-Ex-N-W" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Ex-N-W'){echo $selected;} ?>>Sqr-Ex-N-W</option>
			  <option value="Sqr-Ex-Random" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Ex-Random'){echo $selected;} ?>>Sqr-Ex-Random</option>
			  <option value="Sqr-Ex-Down" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Ex-Down'){echo $selected;} ?>>Sqr-Ex-Down</option>
			  <option value="Sqr-Ex-Up" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Ex-Up'){echo $selected;} ?>>Sqr-Ex-Up</option>
			  <option value="Sqr-Ex-Left" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Ex-Left'){echo $selected;} ?>>Sqr-Ex-Left</option>
			  <option value="Sqr-Ex-Rirht" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Ex-Rirht'){echo $selected;} ?>>Sqr-Ex-Rirht</option>
			  <option value="Sqr-Ex-S-E" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Ex-S-E'){echo $selected;} ?>>Sqr-Ex-S-E</option>
			  <option value="Sqr-Ex-S-W" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Ex-S-W'){echo $selected;} ?>>Sqr-Ex-S-W</option>
			  <option value="Sqr-Ex-N-E" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Ex-N-E'){echo $selected;} ?>>Sqr-Ex-N-E</option>
			  <option value="Sqr-Ex-N-W" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Ex-N-W'){echo $selected;} ?>>Sqr-Ex-N-W</option>
			  
			  
			  <option value="Sqr-Ex-Random" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Ex-Random'){echo $selected;} ?>>Sqr-Ex-Random</option>
			  <option value="Sqr-Sl-Down" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Sl-Down'){echo $selected;} ?>>Sqr-Sl-Down</option>
			  <option value="Sqr-Sl-Up" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Sl-Up'){echo $selected;} ?>>Sqr-Sl-Up</option>
			  <option value="Sqr-Sl-S-E" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Sl-S-E'){echo $selected;} ?>>Sqr-Sl-S-E</option>
			  <option value="Sqr-Sl-S-W" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Sl-S-W'){echo $selected;} ?>>Sqr-Sl-S-W</option>
			  <option value="Sqr-Sl-N-E" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Sl-N-E'){echo $selected;} ?>>Sqr-Sl-N-E</option>
			  <option value="Sqr-Sl-N-W" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Sl-N-W'){echo $selected;} ?>>Sqr-Sl-N-W</option>
			  <option value="Sqr-Sl-Random" <?php if($tg_hera_slideshow_slideshow_effect=='Sqr-Sl-Random'){echo $selected;} ?>>Sqr-Sl-Random</option>
			  <option value="Slide-Back-Right" <?php if($tg_hera_slideshow_slideshow_effect=='Slide-Back-Right'){echo $selected;} ?>>Slide-Back-Right</option>
			  <option value="Slide-Back-Left" <?php if($tg_hera_slideshow_slideshow_effect=='Slide-Back-Left'){echo $selected;} ?>>Slide-Back-Left</option>
			  <option value="Slide-Back-Up" <?php if($tg_hera_slideshow_slideshow_effect=='Slide-Back-Up'){echo $selected;} ?>>Slide-Back-Up</option>
			  <option value="Slide-Back-Down" <?php if($tg_hera_slideshow_slideshow_effect=='Slide-Back-Down'){echo $selected;} ?>>Slide-Back-Down</option>
              <?php } else { ?>
              <option selected="selected"><?php echo $text_pleaseselect; ?></option>
              <option value="Fade">Fade</option>
              <option value="Slide-Left">Slice Left</option>
              <option value="Slide-Right">Slide Right</option>
              <option value="Slide-Down">Slide Down</option>
              <option value="Slide-Up">Slice Up</option>
              <option value="Curtain-Cl">Curtain Cl</option>
              <option value="Curtain-V-Cl">Curtain-V-Cl</option>
              <option value="Shrink-Left-Bottom">Shrink-Left-Bottom</option>
			  
              <option value="Random">Random</option>
              <option value="Shrink-Left-Top">Shrink-Left-Top</option>
			  
              <option value="Shrink-Right-Bottom">Shrink-Right-Bottom</option>
			  
              <option value="Shrink-Right-Top">Shrink-Right-Top</option>
			  
              <option value="Shrink-Center">Shrink-Center</option>
			  
              <option value="Srink-Random-Bounce">Srink-Random-Bounce</option>
			  
              <option value="Zoom-Up-Left">Zoom-Up-Left</option>
			  
			  <option value="Zoom-Up-Right">Zoom-Up-Right</option>
			  <option value="Zoom-Down-Right">Zoom-Down-Right</option>
			  
			  <option value="Zoom-Down-Left"Zoom-Down-Left</option>
			  <option value="Zoom-Center">Zoom-Center</option>
			  <option value="Appear-Up-Left">Appear-Up-Left</option>
			  <option value="Appear-Up-Right">Appear-Up-Right</option>
			  <option value="Appear-Center-Right">Appear-Center-Right</option>
			  <option value="Appear-Center-Left">Appear-Center-Left</option>
			  <option value="Appear-Up-Center">Appear-Up-Center</option>
			  <option value="Appear-Center">Appear-Center</option>
			  <option value="Push-Right">Push-Right</option>
			  <option value="Push-Left">Push-Left</option>
			  <option value="Push-Up">Push-Up</option>
			  <option value="Push-Down">Push-Down</option>
			  <option value="Move-Right">Move-Right</option>
			  <option value="Move-Left">Move-Left</option>
			  <option value="Move-Up">Move-Up</option>
			  <option value="Move-Down">Move-Down</option>
			  <option value="Close-Center">Close-Center</option>
			  <option value="Open-Center">Open-Center</option>
			  <option value="2-Close-Bounce">2-Close-Bounce</option>
			  <option value="2-Shrink-Bounce">2-Shrink-Bounce</option>
			  <option value="2-Shrink-Top-Bottom">2-Shrink-Top-Bottom</option>
			  <option value="4-Shrink-Close">4-Shrink-Close</option>
			  <option value="4-Close">4-Close</option>
			  <option value="4-Open">4-Open</option>
			  <option value="4-Close-Delay">4-Close-Delay</option>
			  <option value="4-Open-Delay">4-Open-Delay</option>
			  <option value="4-Close-Shift">4-Close-Shift</option>
			  <option value="4-Open-Shift">4-Open-Shift</option>
			  <option value="4-Cross">4-Cross</option>
			  <option value="Blind-Right">Blind-Right</option>
			  <option value="Blind-Right-All">Blind-Right-All</option>
			  <option value="Blind-Right-Wave">Blind-Right-Wave</option>
			  <option value="Blind-Right-Wave-Full">Blind-Right-Wave-Full</option>
			  <option value="Blind-Right-Fade">Blind-Right-Fade</option>
			  <option value="Blind-Right-Step">Blind-Right-Step</option>
			  <option value="Blind-Down-Right">Blind-Down-Right</option>
			  <option value="Blind-Down-Center">Blind-Down-Center</option>
			  <option value="Blind-Down-Random">Blind-Down-Random</option>
			  <option value="Blind-Down-Up">Blind-Down-Up</option>
			  <option value="Blind-Down-Up-Fade">Blind-Down-Up-Fade</option>
			  <option value="Blind-Down-Up-Bounce">Blind-Down-Up-Bounce</option>
			  <option value="Blind-Down-Up-Wave">Blind-Down-Up-Wave</option>
			  <option value="Blind-Pair-Right">Blind-Pair-Right</option>
			  <option value="Blind-Pair">Blind-Pair</option>
			  <option value="Blind-Pair-Right-Left">Blind-Pair-Right-Left</option>
			  <option value="Sqr-Fade">Sqr-Fade</option>
			  <option value="Sqr-Fade-Down">Sqr-Fade-Down</option>
			  <option value="Sqr-Random">Sqr-Random</option>
			  <option value="Sqr-Fade-Chess">Sqr-Fade-Chess</option>
			  <option value="Sqr-Ex-Pairs">Sqr-Ex-Pairs</option>
			  <option value="Sqr-Ex-Cros">Sqr-Ex-Cros</option>
			  <option value="Line-Down">Line-Down</option>
			  <option value="Sqr-Down">Sqr-Down</option>
			  <option value="Line-Down-Reverse">Line-Down-Reverse</option>
			  <option value="Sqr-Down-Expand">Sqr-Down-Expand</option>
			  <option value="Sqr-Expand">Sqr-Expand</option>
			  <option value="Sqr-Ex-Down">Sqr-Ex-Down</option>
			  <option value="Sqr-Ex-Up">Sqr-Ex-Up</option>
			  <option value="Sqr-Ex-Left">Sqr-Ex-Left</option>
			  <option value="Sqr-Ex-Rirht">Sqr-Ex-Rirht</option>
			  <option value="Sqr-Ex-S-E">Sqr-Ex-S-E</option>
			  <option value="Sqr-Ex-S-W">Sqr-Ex-S-W</option>
			  <option value="Sqr-Ex-N-E">Sqr-Ex-N-E</option>
			  <option value="Sqr-Ex-N-W">Sqr-Ex-N-W</option>
			  <option value="Sqr-Ex-Random">Sqr-Ex-Random</option>
			  <option value="Sqr-Sl-Down">Sqr-Sl-Down</option>
			  <option value="Sqr-Sl-Up">Sqr-Sl-Up</option>
			  <option value="Sqr-Sl-S-E">Sqr-Sl-S-E</option>
			  <option value="Sqr-Sl-S-W">Sqr-Sl-S-W</option>
			  <option value="Sqr-Sl-N-E">Sqr-Sl-N-E</option>
			  <option value="Sqr-Sl-N-W">Sqr-Sl-N-W</option>
			  <option value="Sqr-Sl-Random">Sqr-Sl-Random</option>
			  <option value="Slide-Back-Right">Slide-Back-Right</option>
			  <option value="Slide-Back-Left">Slide-Back-Left</option>
			  <option value="Slide-Back-Up">Slide-Back-Up</option>
			  <option value="Slide-Back-Down">Slide-Back-Down</option>
              <?php } ?>
            </select></td>
        </tr>
        <tr>
          <td><?php echo $entry_delay; ?>
       
          </td>
          <td><select name="tg_hera_slideshow_slideshow_delay">

              <?php if (isset($tg_hera_slideshow_slideshow_delay)) {
              $selected = "selected";
              ?>
              <option value="1000" <?php if($tg_hera_slideshow_slideshow_delay=='1000'){echo $selected;} ?>>1000</option>
              <option value="2000" <?php if($tg_hera_slideshow_slideshow_delay=='2000'){echo $selected;} ?>>2000</option>
              <option value="3000" <?php if($tg_hera_slideshow_slideshow_delay=='3000'){echo $selected;} ?>>3000</option>
              <option value="4000" <?php if($tg_hera_slideshow_slideshow_delay=='4000'){echo $selected;} ?>>4000</option>
              <option value="5000" <?php if($tg_hera_slideshow_slideshow_delay=='5000'){echo $selected;} ?>>5000</option>
              <option value="6000" <?php if($tg_hera_slideshow_slideshow_delay=='6000'){echo $selected;} ?>>6000</option>
              <option value="7000" <?php if($tg_hera_slideshow_slideshow_delay=='7000'){echo $selected;} ?>>7000</option>
              <option value="8000" <?php if($tg_hera_slideshow_slideshow_delay=='8000'){echo $selected;} ?>>8000</option>
              <option value="9000" <?php if($tg_hera_slideshow_slideshow_delay=='9000'){echo $selected;} ?>>9000</option>
              <option value="10000" <?php if($tg_hera_slideshow_slideshow_delay=='10000'){echo $selected;} ?>>10000</option>
              <?php } else { ?>
              <option selected="selected"><?php echo $text_pleaseselect; ?></option>
              <option value="1000">1000</option>
              <option value="2000">2000</option>
              <option value="3000">3000</option>
              <option value="4000">4000</option>
              <option value="5000">5000</option>
              <option value="6000">6000</option>
              <option value="7000">7000</option>
              <option value="8000">8000</option>
              <option value="9000">9000</option>
              <option value="10000">10000</option>
              <?php } ?>
            </select>
            </td>

          
        </tr>
        
        <tr>
        <td width="20%"><?php echo $entry_speed; ?>
        
          </td>
          <td><select name="tg_hera_slideshow_slideshow_speed">
              <?php if (isset($tg_hera_slideshow_slideshow_speed)) {
              $selected = "selected";
              ?>
              <option value="200" <?php if($tg_hera_slideshow_slideshow_speed=='200'){echo $selected;} ?>>200</option>
              <option value="300" <?php if($tg_hera_slideshow_slideshow_speed=='300'){echo $selected;} ?>>300</option>
              <option value="400" <?php if($tg_hera_slideshow_slideshow_speed=='400'){echo $selected;} ?>>400</option>
              <option value="500" <?php if($tg_hera_slideshow_slideshow_speed=='500'){echo $selected;} ?>>500</option>
              <option value="600" <?php if($tg_hera_slideshow_slideshow_speed=='600'){echo $selected;} ?>>600</option>
              <option value="700" <?php if($tg_hera_slideshow_slideshow_speed=='700'){echo $selected;} ?>>700</option>
              <option value="800" <?php if($tg_hera_slideshow_slideshow_speed=='800'){echo $selected;} ?>>800</option>
              <option value="900" <?php if($tg_hera_slideshow_slideshow_speed=='900'){echo $selected;} ?>>900</option>
              <option value="1000" <?php if($tg_hera_slideshow_slideshow_speed=='1000'){echo $selected;} ?>>1000</option>
              <option value="2000" <?php if($tg_hera_slideshow_slideshow_speed=='2000'){echo $selected;} ?>>2000</option>
              <?php } else { ?>
              <option selected="selected"><?php echo $text_pleaseselect; ?></option>
              <option value="200">200</option>
              <option value="300">300</option>
              <option value="400">400</option>
              <option value="500">500</option>
              <option value="600">600</option>
              <option value="700">700</option>
              <option value="800">800</option>
              <option value="900">900</option>
              <option value="1000">1000</option>
              <option value="2000">2000</option>
              <?php } ?>
            </select></td>
        </tr>

        

          <tr>
          <td><?php echo $entry_pause; ?></td>
          <td colspan="3"><select name="tg_hera_slideshow_slideshow_pause">
              <?php if ($tg_hera_slideshow_slideshow_pause) { 
               $selected = "selected";
              ?>
              <option value="true" <?php if($tg_hera_slideshow_slideshow_pause=='true'){echo $selected;} ?>>Yes</option>     
              <option value="false" <?php if($tg_hera_slideshow_slideshow_pause=='false'){echo $selected;} ?>>No</option>
               <?php } else { ?>
              <option selected="selected"><?php echo $text_pleaseselect; ?></option>
              <option value="true">Yes</option>
              <option value="false">No</option>
              <?php } ?>
              
            </select></td>
        </tr>


</table>
</body>




        
  
        </table>
        </div>
    
    
    
    
    <div id="tab-image"> 
      <table id="module" class="list">
        <thead>
          <tr>
            <td class="left"><?php echo $entry_banner; ?></td>
            <td class="left"><?php echo $entry_dimension; ?></td>
            <td class="left"><?php echo $entry_layout; ?></td>
            <td class="left"><?php echo $entry_position; ?></td>
            <td class="left"><?php echo $entry_status; ?></td>
            <td class="right"><?php echo $entry_sort_order; ?></td>
            <td></td>
          </tr>
        </thead>
        <?php $module_row = 0; ?>
        <?php foreach ($modules as $module) { ?>
        <tbody id="module-row<?php echo $module_row; ?>">
          <tr>
            <td class="left"><select name="tg_hera_slideshow_module[<?php echo $module_row; ?>][banner_id]">
                <?php foreach ($banners as $banner) { ?>
                <?php if ($banner['banner_id'] == $module['banner_id']) { ?>
                <option value="<?php echo $banner['banner_id']; ?>" selected="selected"><?php echo $banner['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $banner['banner_id']; ?>"><?php echo $banner['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
            <td class="left"><input type="text" name="tg_hera_slideshow_module[<?php echo $module_row; ?>][width]" value="<?php echo $module['width']; ?>" size="3" />
              <input type="text" name="tg_hera_slideshow_module[<?php echo $module_row; ?>][height]" value="<?php echo $module['height']; ?>" size="3"/>
              <?php if (isset($error_dimension[$module_row])) { ?>
              <span class="error"><?php echo $error_dimension[$module_row]; ?></span>
              <?php } ?></td>
            <td class="left"><select name="tg_hera_slideshow_module[<?php echo $module_row; ?>][layout_id]">
                <?php foreach ($layouts as $layout) { ?>
                <?php if ($layout['layout_id'] == $module['layout_id']) { ?>
                <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
            <td class="left"><select name="tg_hera_slideshow_module[<?php echo $module_row; ?>][position]">
                <?php if ($module['position'] == 'content_top') { ?>
                <option value="content_top" selected="selected"><?php echo $text_content_top; ?></option>
                <?php } else { ?>
                <option value="content_top"><?php echo $text_content_top; ?></option>
                <?php } ?>
                <?php if ($module['position'] == 'content_bottom') { ?>
                <option value="content_bottom" selected="selected"><?php echo $text_content_bottom; ?></option>
                <?php } else { ?>
                <option value="content_bottom"><?php echo $text_content_bottom; ?></option>
                <?php } ?>
                <?php if ($module['position'] == 'column_left') { ?>
                <option value="column_left" selected="selected"><?php echo $text_column_left; ?></option>
                <?php } else { ?>
                <option value="column_left"><?php echo $text_column_left; ?></option>
                <?php } ?>
                <?php if ($module['position'] == 'column_right') { ?>
                <option value="column_right" selected="selected"><?php echo $text_column_right; ?></option>
                <?php } else { ?>
                <option value="column_right"><?php echo $text_column_right; ?></option>
                <?php } ?>
              </select></td>
            <td class="left"><select name="tg_hera_slideshow_module[<?php echo $module_row; ?>][status]">
                <?php if ($module['status']) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
            <td class="right"><input type="text" name="tg_hera_slideshow_module[<?php echo $module_row; ?>][sort_order]" value="<?php echo $module['sort_order']; ?>" size="3" /></td>
            <td class="left"><a onclick="$('#module-row<?php echo $module_row; ?>').remove();" class="button"><span><?php echo $button_remove; ?></span></a></td>
          </tr>
        </tbody>
        <?php $module_row++; ?>
        <?php } ?>
        <tfoot>
          <tr>
            <td colspan="6"></td>
            <td class="left"><a onclick="addModule();" class="button"><span><?php echo $button_add_module; ?></span></a></td>
          </tr>
        </tfoot>
      </table>
    </form>
  </div>
</div>
</div>
 </div> <!-- tab-image (end) -->
<script type="text/javascript"><!--
var module_row = <?php echo $module_row; ?>;

function addModule() {	
	html  = '<tbody id="module-row' + module_row + '">';
	html += '  <tr>';
	html += '    <td class="left"><select name="tg_hera_slideshow_module[' + module_row + '][banner_id]">';
	<?php foreach ($banners as $banner) { ?>
	html += '      <option value="<?php echo $banner['banner_id']; ?>"><?php echo addslashes($banner['name']); ?></option>';
	<?php } ?>
	html += '    </select></td>';
	html += '    <td class="left"><input type="text" name="tg_hera_slideshow_module[' + module_row + '][width]" value="" size="3" /> <input type="text" name="tg_hera_slideshow_module[' + module_row + '][height]" value="" size="3" /></td>';	
	html += '    <td class="left"><select name="tg_hera_slideshow_module[' + module_row + '][layout_id]">';
	<?php foreach ($layouts as $layout) { ?>
	html += '      <option value="<?php echo $layout['layout_id']; ?>"><?php echo addslashes($layout['name']); ?></option>';
	<?php } ?>
	html += '    </select></td>';
	html += '    <td class="left"><select name="tg_hera_slideshow_module[' + module_row + '][position]">';
	html += '      <option value="content_top"><?php echo $text_content_top; ?></option>';
	html += '      <option value="content_bottom"><?php echo $text_content_bottom; ?></option>';
	html += '      <option value="column_left"><?php echo $text_column_left; ?></option>';
	html += '      <option value="column_right"><?php echo $text_column_right; ?></option>';
	html += '    </select></td>';
	html += '    <td class="left"><select name="tg_hera_slideshow_module[' + module_row + '][status]">';
    html += '      <option value="1" selected="selected"><?php echo $text_enabled; ?></option>';
    html += '      <option value="0"><?php echo $text_disabled; ?></option>';
    html += '    </select></td>';
	html += '    <td class="right"><input type="text" name="tg_hera_slideshow_module[' + module_row + '][sort_order]" value="" size="3" /></td>';
	html += '    <td class="left"><a onclick="$(\'#module-row' + module_row + '\').remove();" class="button"><span><?php echo $button_remove; ?></span></a></td>';
	html += '  </tr>';
	html += '</tbody>';
	
	$('#module tfoot').before(html);
	
	module_row++;
}
//--></script>
<script type="text/javascript"><!--
$('#tabs a').tabs(); 
$('#languages a').tabs(); 
$('#vtab-option a').tabs();
//--></script> 
<?php echo $footer; ?>