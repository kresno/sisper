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

    public function add($post)
    {
        $params['nama'] = $post['nama'];
        $params['jabatan'] = $post['jabatan'];
        $params['pangkat'] = $post['pangkat'];
        $params['nip'] = $post['nip'];

        $this->db->insert('pegawai', $params);
    }

    public function delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('pegawai');
    }

    public function edit($post)
    {
        $params['nama'] = $post['nama'];
        $params['jabatan'] = $post['jabatan'];
        $params['pangkat'] = $post['pangkat'];
        $params['nip'] = $post['nip'];

        $this->db->where('id', $post['id']);
        $this->db->update('pegawai', $params);
    }

}