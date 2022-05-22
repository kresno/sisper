<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Progress extends CI_Controller {

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

		$this->load->model('transaksi_m');
		$this->load->library('form_validation');
	}

	 public function index()
	{
        $data['row'] = $this->pegawai_m->get();
		$this->template->load('template', 'progress/index', $data);
	}

	public function edit($id)
	{
		$this->form_validation->set_rules('nama', 'nama', 'required');
		$this->form_validation->set_rules('nip', 'nip', 'required|min_length[18]|callback_nip_check');
		$this->form_validation->set_rules('jabatan', 'jabatan', 'required');
		$this->form_validation->set_rules('pangkat', 'pangkat', 'required');

		$this->form_validation->set_message('required', '%s masih kosong, silahkan isi');
		$this->form_validation->set_message('min_length', '{field} minimal 18 karakter');
		$this->form_validation->set_message('is_unique', '{field} ini sudah dipakai, silahkan ganti');
		
		$this->form_validation->set_error_delimiters('<span class="hep-block">', '</span>');

		if($this->form_validation->run() == FALSE){
			$query = $this->pegawai_m->get($id);
			if($query->num_rows() > 0)
			{
				$data['row'] = $query->row();
				$this->template->load('template', 'pegawai/edit', $data);
			} else {
				echo "<script>alert('Data Tidak Ditemukan');</script>";
				echo "<script>window.location='".site_url('pegawai')."';</script>";
			}
			
		} else {
			$post = $this->input->post(null, TRUE);
			$this->pegawai_m->edit($post);
			if($this->db->affected_rows()>0)
			{
				echo "<script>alert('Data Berhasil Diedit');</script>";
			}
			echo "<script>window.location='".site_url('pegawai')."';</script>";
		}
	}

	public function delete()
	{
		$id = $this->input->post('id');
		$this->pegawai_m->delete($id);

		if($this->db->affected_rows()>0)
			{
				echo "<script>alert('Data Berhasil Dihapus');</script>";
			}
			echo "<script>window.location='".site_url('pegawai')."';</script>";
	}
}
