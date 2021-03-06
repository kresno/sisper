<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Lokasi extends CI_Controller {

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
	public function index()
	{
		check_not_login();
		$this->load->model('lokasi_m');
        $data['row'] = $this->lokasi_m->get();

		$this->template->load('template', 'lokasi/index', $data);
	}

	public function delete()
	{
		$id = $this->input->post('id');
		$this->lokasi_m->delete($id);

		if($this->db->affected_rows()>0)
			{
				echo "<script>alert('Data Berhasil Dihapus');</script>";
			}
			echo "<script>window.location='".site_url('pegawai')."';</script>";
	}
}
