    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-12">
            <h1>Data Lokasi</h1>  
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
                  <a href="<?=site_url('rincianbelanja/create')?>" class="btn btn-primary btn-flat">
                    <i class="fa fa-plus"></i>Tambah
                  </a>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>No</th>
                    <th>Nama</th>
                    <th>Aksi</th>
                  </tr>
                  </thead>
                  <tbody>
                    <?php $no=1; foreach($row->result() as $key => $data) { ?>
                    <tr>
                        <td><?=$no++?></td>
                        <td><?=$data->nama?></td>
                        <td>
                            <a href="<?=site_url('lokasi/edit/'.$data->id)?>" class="btn btn-warning btn-xs">
                                <i class="fa fa-edit"></i>Edit
                            </a>
                            <form action="<?=site_url('lokasi/delete/')?>" method="post">
                              <input type="hidden" name="id" value="<?=$data->id?>">
                              <button onclick="return confirm('Apakah Anda Yakin?')" class="btn btn-danger btn-xs">
                                  <i class="fa fa-trash"></i>Hapus
                              </button>
                            </form>
                        </td>
                    </tr>
                    <?php } ?>
                  </tbody>
                </table>
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