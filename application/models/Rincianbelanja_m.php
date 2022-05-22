<?php
Class Rincianbelanja_m extends CI_Model {

    public function get($id = null)
    {
        $this->db->select('a.id as id, a.nama as nama_rincianbelanja, a.harga as harga, b.nama as satuan');
        $this->db->from('rincianbelanja a');
        $this->db->join('satuan b', 'a.satuan_id=b.id');
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

        $this->db->insert('rincianbelanja', $params);
    }

    public function delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('rincianbelanja');
    }

}