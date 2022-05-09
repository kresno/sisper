<?php
Class Lokasi_m extends CI_Model {

    public function get()
    {
        $this->db->from('lokasi');
    }

}