    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-12">
            <h1>Tambah Pegawai</h1>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <div class="float-right">
                  <a href="<?=site_url('pegawai')?>" class="btn btn-warning btn-flat btn-xs">
                    <i class="fa fa-undo"></i>Back
                  </a>
                </div>
              </div>
                <!-- /.card-header -->
                <form action="" method="POST">
                <div class="card-body">
                    <div class="form-group <?=form_error('nama') ? 'has-error' : null?>">
                        <label for="nama">Nama</label>
                        <input type="hidden" name="id" value="<?=$row->id?>">
                        <input type="text" class="form-control" name="nama" id="nama" value="<?=$this->input->post('nama') ?? $row->nama?>" placeholder="Masukkan Nama">
                        <?=form_error('nama')?>
                    </div>
                    <div class="form-group <?=form_error('nip') ? 'has-error' : null?>">
                        <label for="nip">NIP</label>
                        <input type="text" class="form-control" name="nip" id="nip" value="<?=$this->input->post('nip') ?? $row->nip?>" placeholder="Masukkan NIP">
                        <?=form_error('nip')?>
                    </div>
                    <div class="form-group <?=form_error('jabatan') ? 'has-error' : null?>">
                        <label for="jabatan">Jabatan</label>
                        <input type="text" class="form-control" name="jabatan" id="jabatan" value="<?=$this->input->post('jabatan') ?? $row->jabatan?>" placeholder="Masukkan Jabatan">
                        <?=form_error('jabatan')?>
                    </div>
                    <div class="form-group <?=form_error('pangkat') ? 'has-error' : null?>">
                        <label for="pangkat">Pangkat dan Golongan</label>
                        <input type="text" class="form-control" name="pangkat" id="pangkat" value="<?=$this->input->post('pangkat') ?? $row->pangkat?>" placeholder="Masukkan Pangkat dan Golongan">
                        <?=form_error('pangkat')?>
                    </div>
                    <div class="card-footer">
                        <button type="submit" class="btn btn-success btn-flat">
                            <i class="fa fa-paper-plane"></i>Submit
                        </button>
                    </div>
                </form>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->