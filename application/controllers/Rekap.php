<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Rekap extends CI_Controller {

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

		$this->load->model('laporan_m');
	}

	public function index()
	{
        $data = '';

        $this->template->load('template', 'rekap/bulanan', $data);
	}

    public function all()
    {
        $data = '';

        $this->template->load('template', 'rekap/tahunan', $data);
    }

    public function cetak_bulanan()
    {
        $this->load->view('laporan/cetak', $data, FALSE);
    }

    public function cetak_tahunan()
    {
        $this->load->view('laporan/cetak', $data, FALSE);
    }
}
