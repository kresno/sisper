<?php
Class Lokasi_m extends CI_Model {

    public function get($id = null)
    {
        $this->db->from('lokasi');
        if($id!=null)
        {
            $this->db->where('id', $id);
        }
        $query = $this->db->get();
        return $query;
    }

    public function add($post)
    {
        $params['nama'] = $post['nama'];

        $this->db->insert('lokasi', $params);
    }

    public function delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('lokasi');
    }

}