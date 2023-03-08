<?php
session_start();
error_reporting(0);
if (empty($_SESSION['id'])) {
    header('location:login.php?error_login=1');
}
?>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<?php include 'header.php'; ?>
<?php include 'menu.php'; ?>
<div class="content-wrapper">
    <div class="container">
        <div class="row mt-4 mb-2">
            <div class="col-md-6">
                <h4 class="text-muted">Proses SPK</h4>
            </div>
            <div class="col-md-6 text-end">
                <h4>Tabel Hasil TPA</h4>
            </div>
            <hr>
        </div>
        <div class="row">
            <div class="table-responsive">
                <table id="example1" class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>### </th>
                            <?php foreach ($db->select('kriteria', 'kriteria')->get() as $k) : ?>
                                <th>
                                    <?php
                                    $tmp = explode('_', $k['kriteria']);
                                    echo ucwords(implode(' ', $tmp));
                                    ?>
                                </th>
                            <?php endforeach ?>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach ($db->select('alternatif.nama,hasil_tpa.*', 'alternatif,hasil_tpa')->where('alternatif.id_calon_kr=hasil_tpa.id_calon_kr')->get() as $data) :
                        ?>
                            <tr>
                                <td><?= $data['nama'] ?></td>
                                <?php foreach ($db->select('kriteria', 'kriteria')->get() as $td) : ?>
                                    <td><?= $db->getnilaisubkriteria($data[$td['kriteria']]) ?></td>
                                <?php endforeach ?>
                            </tr>
                        <?php
                        endforeach;
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 text-center">
                <div class="d-grid">
                    <button class="btn btn-lg btn-secondary" id="hide-button">PROSES</button>
                </div>
            </div>
        </div>
        <br>
        <div id="proses_spk" style="display:none;" class="mb-5 card card-body overflow-auto">
            <div class="row">
                <h3>Normalisasi</h3>
                <div class="table-responsive">
                    <table id="example2" class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>### </th>
                                <?php foreach ($db->select('kriteria', 'kriteria')->get() as $k) : ?>
                                    <th>
                                        <?php
                                        $tmp = explode('_', $k['kriteria']);
                                        echo ucwords(implode(' ', $tmp));
                                        ?>
                                    </th>
                                <?php endforeach ?>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            foreach ($db->select('alternatif.nama,hasil_tpa.*', 'alternatif,hasil_tpa')->where('alternatif.id_calon_kr=hasil_tpa.id_calon_kr')->get() as $data) :
                            ?>
                                <tr>
                                    <td><?= $data['nama'] ?></td>
                                    <?php foreach ($db->select('kriteria', 'kriteria')->get() as $td) : ?>
                                        <td><?= number_format($db->rumus($db->getnilaisubkriteria($data[$td['kriteria']]), $td['kriteria']), 2); ?></td>
                                    <?php endforeach ?>
                                </tr>
                            <?php
                            endforeach;
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="row">
                <h3>Proses Penentuan</h3>
                <div class="table-responsive">
                    <table id="example3" class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>Nama </th>
                                <th>Hasil</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            foreach ($db->select('alternatif.id_calon_kr,alternatif.nama,hasil_tpa.*', 'alternatif,hasil_tpa')->where('alternatif.id_calon_kr=hasil_tpa.id_calon_kr')->get() as $data) :
                            ?>
                                <tr>
                                    <td><?= $data['nama'] ?></td>
                                    <td>
                                        <?php
                                        $hasil = [];

                                        foreach ($db->select('kriteria', 'kriteria')->get() as $dt) {
                                            array_push($hasil, $db->rumus($db->getnilaisubkriteria($data[$dt['kriteria']]), $dt['kriteria']) * $db->bobot($dt['kriteria']));
                                        }
                                        echo $h = number_format(array_sum($hasil), 2);
                                        if ($db->select('id_calon_kr', 'hasil_spk')->where("id_calon_kr='$data[id_calon_kr]'")->count() == 0) {
                                            $db->insert('hasil_spk', "'','$data[id_calon_kr]','$h'")->count();
                                        } else {
                                            $db->update('hasil_spk', "hasil_spk='$h'")->count();
                                        }

                                        ?>
                                    </td>
                                </tr>
                            <?php
                            endforeach;
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="row">
                <h3>Perangkingan</h3>
                <div class="table-responsive">
                    <table id="example4" class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>Hasil </th>
                                <?php $no = 1; foreach ($db->select('kriteria','kriteria')->get() as $th): ?>
                                <th>A<?= $no?></th>
                                <?php $no++; endforeach ?>
                                <th rowspan="2" style="padding-bottom:25px">Hasil</th>
                                <th rowspan="2" style="padding-bottom:25px">Ranking</th>
                            </tr>
                            <tr>
                                <th>Bobot </th>
                                <?php foreach ($db->select('bobot','kriteria')->get() as $th): ?>
                                <th><?= $th['bobot']?></th>
                                <?php endforeach ?>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                $no = 1;
                                foreach ($db->select('distinct(alternatif.nama),hasil_tpa.*,hasil_spk.*','alternatif,hasil_tpa,hasil_spk')->where('alternatif.id_calon_kr=hasil_tpa.id_calon_kr and alternatif.id_calon_kr=hasil_spk.id_calon_kr')->order_by('hasil_spk.hasil_spk','desc')->get() as $data):
                            ?>
                                <tr>
                                    <td><?= $data['nama']?></td>
                                    <?php foreach ($db->select('kriteria','kriteria')->get() as $td): ?>
                                    <td><?= number_format($db->rumus($db->getnilaisubkriteria($data[$td['kriteria']]),$td['kriteria']),2);?></td>
                                    <?php endforeach ?>
                                    <td>
                                    <?php 
                                        $hasil = [];
                                        foreach($db->select('kriteria','kriteria')->get() as $dt){
                                            array_push($hasil,$db->rumus($db->getnilaisubkriteria($data[$dt['kriteria']]),$dt['kriteria'])*$db->bobot($dt['kriteria']));
                                        }
                                        echo $r = number_format(array_sum($hasil),2);
                                    ?>
                                    </td>
                                    <td>
                                        <?= $no?>
                                    </td>
                                </tr>
                            <?php
                                $no++;
                                endforeach;
                            ?>
                        </tbody>
                    </table>
                </div>
            </div> 
        </div>

    </div>
</div>
<!-- CONTENT-WRAPPER SECTION END-->
<?php include 'footer.php'; ?>
<script type="text/javascript">
    $(document).ready(function() {
        $('#hide-button').click(function() {
            $('#proses_spk').toggle();
        });
    });
    // $(document).ready(function tpl() {
    //     $('#proses_spk').toggle();
    // })
</script>