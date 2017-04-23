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
  
   <div id="tabs" class="htabs"><a tab="#tab_general"><?php echo $tab_gen; ?></a></div>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
      
      
      
      <div id="tab_general">
      <table class="form">
 
 
 		
 
 
         <tr>
          <td><?php echo $entry_color; ?></td>
          <td><select name="tg_hera_cp_default_color">
              
              <?php if (isset($tg_hera_cp_default_color)) {
              $selected = "selected";
              ?>
											
              
              <option value="blue" <?php if($tg_hera_cp_default_color=='blue'){echo $selected;} ?>>Blue</option>
			  <option value="green" <?php if($tg_hera_cp_default_color=='green'){echo $selected;} ?>>Green</option>
			  <option value="orange" <?php if($tg_hera_cp_default_color=='orange'){echo $selected;} ?>>Orange</option>
			  <option value="red" <?php if($tg_hera_cp_default_color=='red'){echo $selected;} ?>>Red</option>
			  <?php } else { ?>
              <option value="blue">Blue</option>
              <option value="green">Green</option>
              <option value="orange">Orange</option>
              <option value="red">Cherry</option>
              <?php } ?>
           </select></td>
        </tr>
		
		<tr>
            <td>Currency:</td>
            
         <td><input type="checkbox" value="1" name="tg_hera_cp_currency"<?php if($tg_hera_cp_currency == '1') echo ' checked="checked"';?> /> Show</td>
        </tr>
		
		<tr>
            <td>Language:</td>
            
         <td><input type="checkbox" value="1" name="tg_hera_cp_language"<?php if($tg_hera_cp_language == '1') echo ' checked="checked"';?> /> Show</td>
        </tr>
		
	
		
		

        <tr>
          <td><?php echo $entry_view; ?></td>
          <td><select name="tg_hera_cp_default_view">
              
              <?php if (isset($tg_hera_cp_default_view)) {
              $selected = "selected";
              ?>
              <option value="grid" <?php if($tg_hera_cp_default_view=='grid'){echo $selected;} ?>>Grid</option>
              <option value="list" <?php if($tg_hera_cp_default_view=='list'){echo $selected;} ?>>List</option>
              <?php } else { ?>
              <option value="grid">Grid</option>
              <option value="list">List</option>
              <?php } ?>
           </select></td>
        </tr>
		
	
        
       </table>
       </div>    
        
      
    </form>
  </div>
</div>

<script type="text/javascript"><!--
$.tabs('#tabs a'); 
$.tabs('#languages a');
//--></script>
<?php echo $footer; ?>

 <script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="view/javascript/jquery/ui/ui.draggable.js"></script>
<script type="text/javascript" src="view/javascript/jquery/ui/ui.resizable.js"></script>
<script type="text/javascript" src="view/javascript/jquery/ui/ui.dialog.js"></script>
<script type="text/javascript" src="view/javascript/jquery/ui/external/bgiframe/jquery.bgiframe.js"></script>
<script type="text/javascript">

<?php echo $footer; ?>