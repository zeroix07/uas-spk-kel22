<?php
session_start();
error_reporting(0);
if (empty($_SESSION['id'])) {
    header('location:login.php?error_login=1');
}
?>
<?php include 'header.php'; ?>
<?php include 'menu.php'; ?>
<div class="content-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <br />
                <div class="card card-body mt-3 mb-5 panel panel-default">
                    <div class="panel-heading">
                        Form Alternatif
                    </div>
                    <div class="panel-body">
                        <form method="post" action="update_alternatif.php" enctype="multipart/form-data">
                            <?php if (!empty($_GET['error_msg'])) : ?>
                                <div class="alert alert-danger">
                                    <?= $_GET['error_msg']; ?>
                                </div>
                            <?php endif ?>
                            <?php foreach ($db->select('*', 'alternatif')->where('id_calon_kr=' . $_GET['id'])->get() as $val) : ?>
                                <input type="hidden" name="id_calon_kr" value="<?= $val['id_calon_kr'] ?>">

                                <div class="form-group">
                                    <label for="nama">Nama alternatif</label>
                                    <input type="text" class="form-control" id="nama" name="nama" value="<?= $val['nama'] ?>">
                                </div>
                                <div class="form-group mt-3">
                                    <button class="btn btn-secondary">Simpan</button>
                                </div>
                            <?php endforeach ?>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<?php include 'footer.php'; ?>
<script type="text/javascript">
    $(function() {
        $("#ck").addClass('menu-top-active');
    });
</script>