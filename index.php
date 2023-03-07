<?php
session_start();
error_reporting(0);
if (empty($_SESSION['id'])) {
    header('location:login.php');
}
?>
<?php 
include 'header.php'; 
include 'menu.php';
?>

<div class="content-wrapper">
    <div class="content">
        <div class="container">
            <div class="row py-3">
                <div class="col-md-6">
                    <h4>Dashboard</h4>
                </div>
                <div class="col-md-6 text-end">
                    <p>
                        Selamat Datang <?php echo $_SESSION['nama'] ?>!
                    </p>
                </div>
                <hr>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <a style="text-decoration: none;" href="tampil_admin.php" id="AD">
                        <div class="mb-3 card card-body card-index panel panel-primary">
                            <div class="panel-heading mb-4">
                                <div class="row">
                                    <div class="col-md-4 text-center ">
                                        <i class="fs-1 fa fa-group"></i>
                                    </div>
                                    <div class="col-md-8 text-right">
                                        <div class="huge fs-4 fw-semibold mb-1"><?php echo $db->totaladmin() ?></div>
                                        <div>Total Admin</div>
                                    </div>
                                </div>
                            </div>

                            <div class="panel-footer">
                                <span class="pull-left">Klik untuk melihat details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>

                        </div>
                    </a>
                </div>
                <div class="col-lg-3 col-md-6">
                    <a style="text-decoration: none;" href="tampil_kriteria.php" id="ds">
                        <div class="mb-3 card card-body card-index panel panel-primary">
                            <div class="panel-heading mb-4">
                                <div class="row">
                                    <div class="col-md-4 text-center ">
                                        <i class="fs-1 fa fa-tasks"></i>
                                    </div>
                                    <div class="col-md-8 text-right">
                                        <div class="huge fs-4 fw-semibold mb-1"><?php echo $db->totalkriteria() ?></div>
                                        <div>Total Kriteria</div>
                                    </div>
                                </div>
                            </div>

                            <div class="panel-footer">
                                <span class="pull-left">Klik untuk melihat details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>

                        </div>
                    </a>
                </div>
                <div class="col-lg-3 col-md-6">
                    <a style="text-decoration: none;" href="tampil_subkriteria.php" id="sk">
                        <div class="mb-3 card card-body card-index panel panel-primary">
                            <div class="panel-heading mb-4">
                                <div class="row">
                                    <div class="col-md-4 text-center ">
                                        <i class="fs-1 fa fa-tasks"></i>
                                    </div>
                                    <div class="col-md-8 text-right">
                                        <div class="huge fs-4 fw-semibold mb-1"><?php echo $db->totalsubkriteria() ?></div>
                                        <div>Total Sub Kriteria</div>
                                    </div>
                                </div>
                            </div>

                            <div class="panel-footer">
                                <span class="pull-left">Klik untuk melihat details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>

                        </div>
                    </a>
                </div>
                <div class="col-lg-3 col-md-6">
                    <a style="text-decoration: none;" href="tampil_alternatif.php" id="ck">
                        <div class="mb-3 card card-body card-index panel panel-primary">
                            <div class="panel-heading mb-4">
                                <div class="row">
                                    <div class="col-md-4 text-center ">
                                        <i class="fs-1 fa fa-group"></i>
                                    </div>
                                    <div class="col-md-8 text-right">
                                        <div class="huge fs-4 fw-semibold mb-1"><?php echo $db->totalalternatif() ?></div>
                                        <div>Total Alternatif</div>
                                    </div>
                                </div>
                            </div>

                            <div class="panel-footer">
                                <span class="pull-left">Klik untuk melihat details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>

                        </div>
                    </a>
                </div>
            </div>
            <!-- /.row -->

        </div>
    </div>
    <!-- CONTENT-WRAPPER SECTION END-->
</div>
<?php include 'footer.php'; ?>
<script type="text/javascript">
    $(function() {
        $("#home").addClass('menu-top-active');
    });
</script>