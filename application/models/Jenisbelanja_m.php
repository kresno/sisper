<?php
Class Jenisbelanja_m extends CI_Model {

    public function get($id = null)
    {
        $this->db->from('jenisbelanja');
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

        $this->db->insert('jenisbelanja', $params);
    }

    public function delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('jenisbelanja');
    }

}