<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class JenisBelanja extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	function __construct()
	{
		parent::__construct();
		
		check_not_login();

		$this->load->model('jenisbelanja_m');
		$this->load->library('form_validation');
	}

	public function index()
	{
		$data['row'] = $this->jenisbelanja_m->get();
		$this->template->load('template', 'jenisbelanja/index', $data);
	}
}
