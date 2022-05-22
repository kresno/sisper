    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-12">
            <h1>Tambah Satuan</h1>
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
                  <a href="<?=site_url('satuan')?>" class="btn btn-warning btn-flat btn-xs">
                    <i class="fa fa-undo"></i>Back
                  </a>
                </div>
              </div>
                <!-- /.card-header -->
                <form action="" method="POST">
                <div class="card-body">
                    <div class="form-group <?=form_error('nama') ? 'has-error' : null?>">
                        <label for="nama">Nama Satuan</label>
                        <input type="text" class="form-control" name="nama" id="nama" value="<?=set_value('nama')?>" placeholder="Masukkan Nama Satuan">
                        <?=form_error('nama')?>
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