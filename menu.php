 <!-- LOGO HEADER END-->
 <section class="menu-section">
     <div class="container">
         <div class="row">
             <div class="col-md-12">
                 <div class="navbar-collapse collapse pt-3 pb-5 px-4" id="collapseExample">
                     <?php
                        session_start();
                        error_reporting(0);
                        if (empty($_SESSION['id'])) {
                        ?>
                         <h5 class="text-center">Login Untuk Mengakses Menu</h5>
                     <?php
                        } else {
                        ?>
                         <div class="row">
                             <div class="col-md-10 d-flex justify-beetwen g-2">
                                 <a href="index.php" class="btn btn-outline-primary btn-md mx-1">Dashboard</a>
                                 <!-- dropdown -->
                                 <div class="dropdown">
                                     <button class="btn btn-outline-primary btn-md mx-1 dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                         Master
                                     </button>
                                     <ul class="dropdown-menu">
                                         <li><a class="dropdown-item" href="tampil_admin.php" id="AD">Data Admin</a></li>
                                         <li><a class="dropdown-item" href="tampil_alternatif.php" id="ck">Data Alternatif</a></li>
                                         <li><a class="dropdown-item" href="tampil_kriteria.php" id="ds">Data Kriteria</a></li>
                                         <li><a class="dropdown-item" href="tampil_subkriteria.php" id="sk">Data Sub Kriteria</a></li>
                                     </ul>
                                 </div>

                                 <a href="tampil_tpa.php" class="btn btn-outline-primary btn-md mx-1">Pemilihan Bibit Terbaik</a>
                                 <a href="proses_spk.php" class="btn btn-outline-primary btn-md mx-1">Proses SPK</a>
                                 <a href="ubah_password.php" class="btn btn-outline-primary btn-md mx-1">Ubah Password</a>
                             </div>
                             <div class="col-md-2">
                                 <div class="d-grid">
                                     <a href="logout.php" class="btn btn-danger btn-md">Logout</a>
                                 </div>
                             </div>
                         </div>
                     <?php
                        }
                        ?>
                 </div>
             </div>
         </div>
     </div>
 </section>
 <!-- MENU SECTION END-->
 <!--First Commit-->