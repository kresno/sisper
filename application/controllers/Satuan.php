<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Satuan extends CI_Controller {

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

		$this->load->model('satuan_m');
		$this->load->library('form_validation');
	}

	public function index()
	{
        $data['row'] = $this->satuan_m->get();

		$this->template->load('template', 'satuan/index', $data);
	}

	public function create()
	{
		$this->form_validation->set_rules('nama', 'nama', 'required');
		
		$this->form_validation->set_error_delimiters('<span class="hep-block">', '</span>');

		if($this->form_validation->run() == FALSE){
			$this->template->load('template', 'satuan/create');
		} else {
			$post = $this->input->post(null, TRUE);
			$this->satuan_m->add($post);
			if($this->db->affected_rows()>0)
			{
				echo "<script>alert('Data Berhasil Disimpan');</script>";
			}
			echo "<script>window.location='".site_url('satuan')."';</script>";
		}
	}

	public function delete()
	{
		$id = $this->input->post('id');
		$this->satuan_m->delete($id);

		if($this->db->affected_rows()>0)
			{
				echo "<script>alert('Data Berhasil Dihapus');</script>";
			}
			echo "<script>window.location='".site_url('pegawai')."';</script>";
	}
}
