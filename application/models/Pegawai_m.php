<?php
Class Pegawai_m extends CI_Model {

    public function get($id = null)
    {
        $this->db->from('pegawai');
        if($id!=null)
        {
            $this->db->where('id', $id);
        }
        $query = $this->db->get();
        return $query;
    }

}