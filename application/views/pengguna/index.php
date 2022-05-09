    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-12">
            <h1>Data Pengguna</h1>
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
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>No</th>
                    <th>Username</th>
                    <th>Level</th>
                    <th>Aksi</th>
                  </tr>
                  </thead>
                  <tbody>
                    <?php $no=1; foreach($row->result() as $key => $data) { ?>
                    <tr>
                        <td><?=$no++?></td>
                        <td><?=$data->username?></td>
                        <td><?=$data->level == 1 ? "Admin" :"Staff" ?></td>
                        <td>
                            <a href="<?=site_url('pengguna/edit')?>" class="btn btn-warning btn-xs">
                                <i class="fa fa-edit"></i>Edit
                            </a>
                            <a href="<?=site_url('lokasi/delete')?>" class="btn btn-danger btn-xs">
                                <i class="fa fa-trash"></i>Hapus
                            </a>
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

  <script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>