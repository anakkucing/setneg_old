<?php

class Logout extends Controller {

	function __construct()
	{
		parent::Controller(); 
		$this->load->helper(array('form','url', 'text_helper','date','tgl_indonesia'));
		$this->load->database();
		$this->load->model(array('main'));	
		$this->load->library(array('alias'));
		session_start();	
	}
	
	function index()
	{
		
		$this->session->unset_userdata('setneg_in');
		echo "<meta http-equiv='refresh' content='0; url=".base_url()."login'>";
	}
}
