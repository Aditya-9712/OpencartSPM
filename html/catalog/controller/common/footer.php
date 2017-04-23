<?php  
class ControllerCommonFooter extends Controller {

	protected function index() {
		$this->language->load('common/footer');
		
		$this->data['text_information'] = $this->language->get('text_information');
		$this->data['text_service'] = $this->language->get('text_service');
		$this->data['text_extra'] = $this->language->get('text_extra');
		$this->data['text_contact'] = $this->language->get('text_contact');
		$this->data['text_return'] = $this->language->get('text_return');
    	$this->data['text_sitemap'] = $this->language->get('text_sitemap');
		$this->data['text_manufacturer'] = $this->language->get('text_manufacturer');
		$this->data['text_voucher'] = $this->language->get('text_voucher');
		$this->data['text_affiliate'] = $this->language->get('text_affiliate');
		$this->data['text_special'] = $this->language->get('text_special');
		$this->data['text_account'] = $this->language->get('text_account');
		$this->data['text_order'] = $this->language->get('text_order');
		$this->data['text_wishlist'] = $this->language->get('text_wishlist');
		$this->data['text_newsletter'] = $this->language->get('text_newsletter');
		
		$this->load->model('catalog/information');
	   // Hera Theme by ThemeGlobal.com - OpenCart Templates Club. Unlimited access to all of our themes for only $49.
	   $this->load->model('account/newslettersubscribe');
	   $this->model_account_newslettersubscribe->check_db();
	   $this->data['newsletter_title'] = $this->language->get('newsletter_title');
	   $this->data['entry_email'] = $this->language->get('entry_email');
	   $this->data['entry_button'] = $this->language->get('entry_button');
	   $this->data['entry_unbutton'] = $this->language->get('entry_unbutton');
	   // Hera Theme by ThemeGlobal.com - OpenCart Templates Club. Unlimited access to all of our themes for only $49.
		
		$this->data['informations'] = array();

		foreach ($this->model_catalog_information->getInformations() as $result) {
			if ($result['bottom']) {
				$this->data['informations'][] = array(
					'title' => $result['title'],
					'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])
				);
			}
    	}

		$this->data['contact'] = $this->url->link('information/contact');
		$this->data['return'] = $this->url->link('account/return/insert', '', 'SSL');
    	$this->data['sitemap'] = $this->url->link('information/sitemap');
		$this->data['manufacturer'] = $this->url->link('product/manufacturer', '', 'SSL');
		$this->data['voucher'] = $this->url->link('checkout/voucher', '', 'SSL');
		$this->data['affiliate'] = $this->url->link('affiliate/account', '', 'SSL');
		$this->data['special'] = $this->url->link('product/special');
		$this->data['account'] = $this->url->link('account/account', '', 'SSL');
		$this->data['order'] = $this->url->link('account/order', '', 'SSL');
		$this->data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');
		$this->data['newsletter'] = $this->url->link('account/newsletter', '', 'SSL');		

		$this->data['powered'] = sprintf($this->language->get('text_powered'), $this->config->get('config_name'), date('Y', time()));
		
		// Whos Online
		if ($this->config->get('config_customer_online')) {
			$this->load->model('tool/online');
	
			if (isset($this->request->server['REMOTE_ADDR'])) {
				$ip = $this->request->server['REMOTE_ADDR'];	
			} else {
				$ip = ''; 
			}
			
			if (isset($this->request->server['HTTP_HOST']) && isset($this->request->server['REQUEST_URI'])) {
				$url = 'http://' . $this->request->server['HTTP_HOST'] . $this->request->server['REQUEST_URI'];	
			} else {
				$url = '';
			}
			
			if (isset($this->request->server['HTTP_REFERER'])) {
				$referer = $this->request->server['HTTP_REFERER'];	
			} else {
				$referer = '';
			}
						
			$this->model_tool_online->whosonline($ip, $this->customer->getId(), $url, $referer);
		}
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/footer.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/footer.tpl';
		} else {
			$this->template = 'default/template/common/footer.tpl';
		}
		
		$this->render();
	}
	
	// Hera Theme by ThemeGlobal.com - OpenCart Templates Club. Unlimited access to all of our themes for only $49.
	public function subscribe(){
	
	if($this->config->get('newslettersubscribe_thickbox')){
	  $prefix_eval = "";
	}else{
	  $prefix_eval = "";
	}
	  
	  $this->language->load('module/newslettersubscribe');
	  
	  $this->load->model('account/newslettersubscribe');
	  
	  if(isset($this->request->post['subscribe_email']) and filter_var($this->request->post['subscribe_email'],FILTER_VALIDATE_EMAIL)){
           
		   if($this->config->get('newslettersubscribe_registered') and $this->model_account_newslettersubscribe->checkRegisteredUser($this->request->post)){
			   
			   
			    $this->model_account_newslettersubscribe->UpdateRegisterUsers($this->request->post,1);
				
			echo('$("'.$prefix_eval.' #subscribe_result").html("'.$this->language->get('subscribe').'");$("'.$prefix_eval.' #subscribe")[0].reset();');
			   
		    
		   }else if(!$this->model_account_newslettersubscribe->checkmailid($this->request->post)){
			 
			 $this->model_account_newslettersubscribe->subscribe($this->request->post);
		     echo('$("'.$prefix_eval.' #subscribe_result").html("'.$this->language->get('subscribe').'");$("'.$prefix_eval.' #subscribe")[0].reset();');
			 
			 
				 if($this->config->get('newslettersubscribe_mail_status')){
			   
			    $subject = $this->language->get('mail_subject');	
				
				$message = '<table width="60%" cellpadding="2"  cellspacing="1" border="0"> 
				  	         <tr>
							   <td> Email Id </td>
							   <td> '.$this->request->post['subscribe_email'].' </td>
							 </tr>
				  	         <tr>
							   <td> Name  </td>
							   <td> '.$this->request->post['subscribe_name'].' </td>
							 </tr>';
				if(isset($this->request->post['option1'])) {
				   $message .= '<tr> <td>'.$this->config->get('newslettersubscribe_option_field1').'</td> <td>'.$this->request->post['option1'].'</td> </tr>';  
				}
				if(isset($this->request->post['option2'])) {
				   $message .= '<tr> <td>'.$this->config->get('newslettersubscribe_option_field2').'</td> <td>'.$this->request->post['option2'].'</td> </tr>';  
				}
				if(isset($this->request->post['option3'])) {
				   $message .= '<tr> <td>'.$this->config->get('newslettersubscribe_option_field3').'</td> <td>'.$this->request->post['option3'].'</td> </tr>';  
				}
				if(isset($this->request->post['option4'])) {
				   $message .= '<tr> <td>'.$this->config->get('newslettersubscribe_option_field4').'</td> <td>'.$this->request->post['option4'].'</td> </tr>';  
				}
				if(isset($this->request->post['option5'])) {
				   $message .= '<tr> <td>'.$this->config->get('newslettersubscribe_option_field5').'</td> <td>'.$this->request->post['option5'].'</td> </tr>';  
				}
				if(isset($this->request->post['option6'])) {
				   $message .= '<tr> <td>'.$this->config->get('newslettersubscribe_option_field6').'</td> <td>'.$this->request->post['option6'].'</td> </tr>';  
				} 
				 $message .= '</table>';
	 
				$mail = new Mail();
				$mail->protocol = $this->config->get('config_mail_protocol');
				$mail->parameter = $this->config->get('config_mail_parameter');
				$mail->hostname = $this->config->get('config_smtp_host');
				$mail->username = $this->config->get('config_smtp_username');
				$mail->password = $this->config->get('config_smtp_password');
				$mail->port = $this->config->get('config_smtp_port');
				$mail->timeout = $this->config->get('config_smtp_timeout');				
				$mail->setTo($this->config->get('config_email'));
				$mail->setFrom($this->config->get('config_email'));
				$mail->setSender($this->config->get('config_name'));
				$mail->setSubject($subject);
				$mail->setHtml($message);
				$mail->send();
				
			}
			 
		   }else{
				  echo('$("'.$prefix_eval.' #subscribe_result").html("<span class=\"error\">'.$this->language->get('alreadyexist').'</span>");$("'.$prefix_eval.' #subscribe")[0].reset();');	 
		   }
		   
	  }else{
	    echo('$("'.$prefix_eval.' #subscribe_result").html("<span class=\"error\">'.$this->language->get('error_invalid').'</span>")');
	  }
	}

	public function unsubscribe(){
	  
	  if($this->config->get('newslettersubscribe_thickbox')){
		  $prefix_eval = "#TB_ajaxContent ";
	  }else{
	      $prefix_eval = "";
	  }
	  
	  $this->language->load('module/newslettersubscribe');
	  
	  $this->load->model('account/newslettersubscribe');
	  
	  if(isset($this->request->post['subscribe_email']) and filter_var($this->request->post['subscribe_email'],FILTER_VALIDATE_EMAIL)){
            
		    if($this->config->get('newslettersubscribe_registered') and $this->model_account_newslettersubscribe->checkRegisteredUser($this->request->post)){
			   
			    $this->model_account_newslettersubscribe->UpdateRegisterUsers($this->request->post,0);
				
			echo('$("'.$prefix_eval.' #subscribe_result").html("'.$this->language->get('unsubscribe').'");$("'.$prefix_eval.' #subscribe")[0].reset();');
			   
		    
		   }else if(!$this->model_account_newslettersubscribe->checkmailid($this->request->post)){
			 
		     echo('$("'.$prefix_eval.' #subscribe_result").html("'.$this->language->get('notexist').'");$("'.$prefix_eval.' #subscribe")[0].reset();');
			 
		   }else{
			   
			  if($this->config->get('option_unsubscribe')) {
				 $this->model_account_newslettersubscribe->unsubscribe($this->request->post);
				 echo('$("'.$prefix_eval.' #subscribe_result").html("'.$this->language->get('unsubscribe').'");$("'.$prefix_eval.' #subscribe")[0].reset();');
			  }
		   }
		   
	  }else{
	    echo('$("'.$prefix_eval.' #subscribe_result").html("<span class=\"error\">'.$this->language->get('error_invalid').'</span>")');
	  }
	}

	protected function loadmodule() {
		$this->language->load('module/newslettersubscribe');

      	$this->data['heading_title'] = $this->language->get('heading_title');	
		
      	$this->data['entry_name'] = $this->language->get('entry_name');	
      	$this->data['entry_email'] = $this->language->get('entry_email');	
		
      	$this->data['entry_button'] = $this->language->get('entry_button');	
		
      	$this->data['entry_unbutton'] = $this->language->get('entry_unbutton');	

		$this->data['thickbox'] = $this->config->get('newslettersubscribe_thickbox');	
		
		$this->data['text_subscribe'] = $this->language->get('text_subscribe');	
		
		
		$this->id = 'newslettersubscribe';

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/newslettersubscribe.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/newslettersubscribe.tpl';
		} else {
			$this->template = 'default/template/module/newslettersubscribe.tpl';
		}
		
		$this->render();
	}
	// Hera Theme by ThemeGlobal.com - OpenCart Templates Club. Unlimited access to all of our themes for only $49.
	
}
?>