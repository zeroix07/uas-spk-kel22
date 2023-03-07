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
    <div class="content">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <br />
                    <div class="card card-body mt-3 mb-5 panel panel-default">
                        <div class="fs-5 fw-semibold panel-heading">
                            Form alternatif
                        </div>
                        <div class="panel-body">
                            <form method="post" action="insert_alternatif.php" enctype="multipart/form-data">
                                <?php if (!empty($_GET['error_msg'])) : ?>
                                    <div class="alert alert-danger">
                                        <?= $_GET['error_msg']; ?>
                                    </div>
                                <?php endif ?>

                                <div class="form-group">
                                    <label for="nama">Nama alternatif</label>
                                    <input type="text" required rows="2" class="form-control" id="nama" name="nama">
                                </div>

                                <div class="form-group mt-3">
                                    <button class="btn btn-secondary">Simpan</button>
                                </div>
                            </form>
                        </div>
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