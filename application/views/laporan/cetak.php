<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Laporan Persediaan Barang</title>
  <style type="text/css" media="print">
        .line-title{
            border: 0;
            border-style: inset;
            border-top: 1px solid #000;
        }
        .margin {
            margin: 5px 5px 5px 5px;
        }
        .padding {
            padding: 5px 15px 5px 15px;
        }
    </style>
</head>

<body onload="#" class="padding" >
	<img src="<?php echo base_url('assets/images/kuya.png') ?>" style="position: absolute ; width: 90px; height: auto;">
    <table style="width: 100%;">
        <tr>
            <td align="center">
                    <font size="3" face="Times New Roman">P E M E R I N T A H &nbsp;&nbsp;K A B U P A T E N &nbsp;&nbsp;S U K A B U M I</font>
                    <br><font size="5" face="Times New Roman">DINAS TENAGA KERJA DAN TRANSMIGRASI
                    <br>(DISNAKERTRANS)</font>
                    <br><font size="3" face="Times New Roman">Jl. Pelabuhan II Km. 6 No. 703 Telp/Fax. (0266) 226088</font>
                    <br><font size="3" face="Times New Roman" color="blue">email : disnakertrans@sukabumikab.go.id</font>
                    <br><font size="3" face="Times New Roman">SUKABUMI - 43169</font>
                    <hr class="line-title">  
            </td>
        </tr>
    </table>

    <table width="100%" border="1">
      <thead>
      <tr>
        <th>No</th>
        <th>Nama</th>
        <th>Level</th>
      </tr>
      </thead>
      <tbody>
        <?php $no=1; ?>
        <tr>
            <td><?=$no++?></td>
            <td><?=$row->username?></td>
            <td><?=$row->level == 1 ? "Admin" :"Staff" ?></td>
        </tr>
        <?php ?>
      </tbody>
    </table>

</body>
</html>