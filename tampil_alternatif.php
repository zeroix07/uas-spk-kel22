<?php
session_start();
error_reporting(0);
if (empty($_SESSION['id'])) {
    header('location:login.php?error_login=1');
}
function hitung_lama_bergabung($tgl_lahir)
{
    $today = date('Y-m-d');
    $now = time();
    list($thn, $bln, $tgl) = explode('-', $tgl_lahir);
    $time_lahir = mktime(0, 0, 0, $bln, $tgl, $thn);

    $selisih = $now - $time_lahir;

    $tahun = floor($selisih / (60 * 60 * 24 * 365));
    $bulan = round(($selisih % (60 * 60 * 24 * 365)) / (60 * 60 * 24 * 30));

    return $tahun . ' tahun ' . $bulan . ' bulan';
}
?>
<?php include 'header.php'; ?>
<?php include 'menu.php'; ?>
<div class="content-wrapper">
    <div class="content">
        <div class="container">
            <div class="row">
                <div class="col-md-12 mt-4">
                    <h4>Master Data Alternatif</h4>
                    <hr>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <?php if (!empty($_GET['error_msg'])) : ?>
                        <div class="alert alert-danger">
                            <?= $_GET['error_msg']; ?>
                        </div>
                    <?php endif ?>
                </div>
            </div>
            <div class="row">
                <div class="mb-3"><a href="input_alternatif.php" class="btn btn-secondary">Tambah Data</a></div>
                <br>
                <div class="table-responsive">
                    <table id="example1" class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th>Nama Alternatif</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no = 1;
                            foreach ($db->select('*', 'alternatif')->get() as $data) : ?>
                                <tr>
                                    <td><?= $data['nama'] ?></td>

                                    <td>
                                        <a class="btn btn-warning" href="edit_alternatif.php?id=<?php echo $data[0] ?>">Edit</a>
                                        <a class="btn btn-danger" onclick="return confirm('Yakin Hapus?')" href="delete_alternatif.php?id=<?php echo $data[0] ?>">Hapus</a>
                                    </td>
                                </tr>
                            <?php $no++;
                            endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- CONTENT-WRAPPER SECTION END-->
</div>
<?php include 'footer.php'; ?>
<script type="text/javascript">
    $(function() {
        $("#ck").addClass('menu-top-active');
    });
</script>
<script type="text/javascript">
    $(function() {
        $('#example1').dataTable();
    });
</script>