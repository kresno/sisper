<?php
Class Satuan_m extends CI_Model {

    public function get($id = null)
    {
        $this->db->from('satuan');
        if($id!=null)
        {
            $this->db->where('id', $id);
        }
        $query = $this->db->get();
        return $query;
    }

}