    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-12">
            <h1>Laporan Rekap Tahunan</h1>
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
                <form class="form-horizontal" action="<?=site_url('rekap/cetak_tahunan')?>" method="post" target="_blank">
                                    
                    <div class="form-group">
                        <div class="row">
                            <div class="col-sm-4">
                                <label for="tahun" class="control-label">Tahun</label>
                                <input class="form-control" type="text" value="<?=date('Y')?>" disabled="disabled">
                            </div>                    
                            <div class="col-sm-4">
                                <label for="bulan" class="control-label">Jenis Rekapan</label>
                                <select class="form-control">
                                    <option value="">=Silahkan Pilih Jenis Rekapan / Laporan==</option>
                                    <option value="1">Dari Awal Hingga Bulan Berjalan</option>
                                    <option value="2">Hingga Akhir Tahun</option>
                                </select>
                            </div>
                            <div class="col-sm-4">
                            <label for="submit" class="control-label"> <span class="help-block"> *harap diperhatikan rekapan</span>  </label>
                                <input type="submit" class="btn btn-flat btn-block btn-primary" name="kirimkan_data" id="kirimkan_data" value="Tampilkan Laporan"/>
                            </div>
                        </div>
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