<?php include 'header.php'; ?>

<div class="content-wrapper">
    <div class="container">
        <div class="row d-flex justify-content-center mb-5 mt-5 overflow-auto">
            <div class="col-md-8">
                <div class="card">
                    <div class="row g-0">
                        <div class="col-md-6 text-center p-5" style="background-image: linear-gradient(rgba(1, 147, 172, 1),rgba(62, 196, 219, 1));">
                            <img src="assets/img/padi.png" class="img-fluid rounded-start" alt="...">
                            <h5 class="text-white">
                                SISTEM PENUNJANG KEPUTUSAN PEMILIHAN BIBIT PADI TERBAIK
                            </h5>
                            <hr class="text-white">
                            <h6 class="text-center text-white">
                                STMIK TASIKMALAYA
                            </h6>
                        </div>
                        <div class="col-md-6 d-flex justify-content-center align-items-center">
                            <div class="card-body">
                                <?php if ($_GET['error_login'] == 1) : ?>
                                    <div class="alert alert-danger">
                                        Anda Harus Login Terlebih Dahulu !
                                    </div>
                                <?php endif ?>
                                <div class="text-center">
                                    <img src="assets/img/logo.svg" width="90" alt="">
                                    <h2>Login</h2>
                                </div>
                                <hr>
                                <form method="post" action="proses_login.php">
                                    <div class="form-floating mb-3">
                                        <input required name="username" type="text" class="form-control" id="Username" placeholder="Masukan Username">
                                        <label for="Username">Username</label>
                                    </div>
                                    <div class="form-floating mb-3">
                                        <input required name="password" type="password" class="form-control" id="pass" placeholder="Masukan Password">
                                        <label for="pass">Email address</label>
                                    </div>
                                    <hr />
                                    <div class="d-grid ">
                                        <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-user-plus"></i> &nbsp;Log Me In </button>&nbsp;
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php include 'footer.php'; ?>