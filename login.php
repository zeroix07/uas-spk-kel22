<?php include 'header.php'; ?>

<div class="content-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h4 style="font-size: 30px; color: #6495ED;">Silahkan Log-in</h4>
                <hr style="background-color: #6495ED; height:5px;">
            </div>
        </div>
        <div class="row">

            <div class="col-md-6">
                <div class="alert alert-info">
                    <br />
                    <?php if ($_GET['error_login'] == 1) : ?>
                        <div class="alert alert-danger">
                            Anda Harus Login Terlebih Dahulu !
                        </div>
                    <?php endif ?>
                    <form method="post" action="proses_login.php">
                        <label>Enter Username : </label>
                        <input required type="text" name="username" class="form-control" />
                        <label>Enter Password : </label>
                        <input required type="password" name="password" class="form-control" />
                        <hr />
                        <button type="submit" class="btn btn-info"><span class="glyphicon glyphicon-user"></span> &nbsp;Log Me In </button>&nbsp;
                    </form>
                </div>
            </div>
            <div class="col-md-6">
                <div class="alert alert-success">
                    <br />
                    <div class="card text-end" style="width:fit-content;">
                        <div class="card-body">
                            <h5 class="card-title"></h5>
                            <p class="card-text">
                                <b>Aplikasi ini dipersembahkan oleh Kelompok 22</b> <br>
                                1. Fadhel Muhammad Apriansyah <br>
                                2. Livia Nur Meilinda <br>
                                3. Rikza Fauzan Nurfadilah <br>
                                4. Rosi Maelani <br>
                                5. Yusri Azra Lazwardi <br>
                            </p>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div><br><br><br><br><br><br>
    <?php include 'footer.php'; ?>