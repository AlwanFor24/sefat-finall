<?php
session_start();
include('vendor/inc/config.php');
include('vendor/inc/checklogin.php');
check_login();
$aid = $_SESSION['a_id'];

// Tambah User
if (isset($_POST['add_booking'])) {
    $u_fname = $_POST['u_fname'];
    $u_lname = $_POST['u_lname'];
    $u_phone = $_POST['u_phone'];
    $u_addr = $_POST['u_addr'];
    $u_email = $_POST['u_email'];
    $ruangan_id = $_POST['ruangan_id'];
    $barang_id = $_POST['barang_id'];
    $u_kettambahan = $_POST['u_kettambahan'];
    $u_license = $_POST['u_license'];
    $u_car_bookdate = $_POST['u_car_bookdate'];
    $u_car_book_status = $_POST['u_car_book_status'];

    
        // Mulai Transaksi
        $mysqli->begin_transaction();
        try {
            // Insert ke tabel tms_user
            $query = "INSERT INTO tms_user (u_fname, u_lname, u_phone, u_addr, u_email, ruangan_id, barang_id, u_license, u_kettambahan, u_car_bookdate, u_car_book_status) 
                      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            $stmt = $mysqli->prepare($query);
            $stmt->bind_param(
              'sssssssssss', // 11 parameters
              $u_fname,
              $u_lname,
              $u_phone,
              $u_addr,
              $u_email,
              $ruangan_id,
              $barang_id,
              $u_license,
              $u_kettambahan,
              $u_car_bookdate,
              $u_car_book_status
            );
            $stmt->execute();
            $user_id = $mysqli->insert_id; // Ambil ID pengguna yang baru saja ditambahkan

            // Commit Transaksi
            $mysqli->commit();
            $succ = "Berhasil menambahkan user.";
        } catch (Exception $e) {
            // Rollback jika terjadi kesalahan
            $mysqli->rollback();
            $err = "Terjadi kesalahan: " . $e->getMessage();
        }
    
}
?>

<!DOCTYPE html>
<html lang="en">

<?php include('vendor/inc/head.php');?>

<body id="page-top">
 <!--Start Navigation Bar-->
  <?php include("vendor/inc/nav.php");?>
  <!--Navigation Bar-->

  <div id="wrapper">

    <!-- Sidebar -->
    <?php include("vendor/inc/sidebar.php");?>
    <!--End Sidebar-->
    <div id="content-wrapper">

      <div class="container-fluid">
      <?php if(isset($succ)) {?>
                        <!--This code for injecting an alert-->
        <script>
                    setTimeout(function () 
                    { 
                        swal("Success!","<?php echo $succ;?>!","success");
                    },
                        100);
        </script>

        <?php } ?>
        <?php if(isset($err)) {?>
        <!--This code for injecting an alert-->
        <script>
                    setTimeout(function () 
                    { 
                        swal("Failed!","<?php echo $err;?>!","Failed");
                    },
                        100);
        </script>

        <?php } ?>

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#">Data</a>
          </li>
          <li class="breadcrumb-item active">Data Peminjaman</li>
        </ol>
        <hr>
        <div class="card">
        <div class="card-header">
          Tambah Peminjaman
        </div>
        <div class="card-body">
          <!--Add User Form-->
          <form method ="POST"> 
            <div class="form-group">
                <label for="exampleInputEmail1">Nama Depan</label>
                <input type="text" required class="form-control" id="exampleInputEmail1" name="u_fname">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Nama Belakang</label>
                <input type="text" class="form-control" id="exampleInputEmail1" name="u_lname">
            </div>

            
            <div class="form-group">
                <label for="exampleInputEmail1">No. Telephone</label>
                <input type="number" class="form-control" id="exampleInputEmail1" name="u_phone">
            </div>

            <div class="form-group">
                <label for="exampleInputEmail1">Asal</label>
                <input type="text" class="form-control" id="exampleInputEmail1" name="u_addr">
            </div>

            <div class="form-group">
                <label for="exampleInputEmail1">Email </label>
                <input type="email" class="form-control" name="u_email"">
            </div>

            <div class="form-group">
              <label for="exampleFormControlSelect1">Ruangan</label>
              <select class="form-control" name="ruangan_id" id="exampleFormControlSelect1">

              <?php
                      //INI BUAT SELECT OPTION   
                    $ruangan_query = "SELECT id, ruangan_name FROM tms_ruangan";
                    $ruangan_result = mysqli_query($mysqli, $ruangan_query);
                    while($row = mysqli_fetch_assoc($ruangan_result)) {
                        echo "<option value='" . $row['ruangan_name'] . "'>" . $row['ruangan_name'] . "</option>";
                    }
                        


                    //INI buat checkbox option 
                    // Ambil data dari tabel tms_ruangan
                    /*
                    $ruangan_query = "SELECT id, ruangan_name FROM tms_ruangan";
                    $result_ruangan = $mysqli->query($ruangan_query);
                    while($row = $result_ruangan->fetch_assoc()) {
                      echo '<div class="checkbox-container">';
                      echo '<input type="checkbox" name="ruangan_id[]" value="' . $row['id'] . '" id="ruangan_' . $row['id'] . '">';
                      echo '<label for="ruangan_' . $row['id'] . '">' . $row['ruangan_name'] . '</label>';
                      echo '</div>';
                    }
                    */
                  ?>
                </select>
              </div>


              <div class="form-group">
              <label for="exampleFormControlSelect1">Barang</label>
              <select class="form-control" name="barang_id" id="exampleFormControlSelect1">
             
              <?php

                    // Ini buat select option ----*/
                    
                    $barang_query = "SELECT id, barang_name FROM tms_barang";
                    $barang_result = mysqli_query($mysqli, $barang_query);
                    while($row = mysqli_fetch_assoc($barang_result)) {
                        echo "<option value='" . $row['barang_name'] . "'>" . $row['barang_name'] . "</option>";
                    }
                    
                    
                    

                    

                    /*
                    //Ini buat Checkbox Option 
                     // Ambil data dari tabel tms_barang
                    $barang_query = "SELECT id, barang_name FROM tms_barang";
                    $result_barang = $mysqli->query($barang_query);
                    while($row = $result_barang->fetch_assoc()) {
                      echo '<div class="checkbox-container">';
                      echo '<input type="checkbox" name="barang_id[]" value="' . $row['id'] . '" id="barang_' . $row['id'] . '">';
                      echo '<label for="barang_' . $row['id'] . '">' . $row['barang_name'] . '</label>';
                      echo '</div>';
                    }
                      */
                 
              ?>
              </select>
            </div>

            <div class="form-group">
                <label for="exampleInputEmail1">Keterangan / Tujuan</label>
                <input type="text" class="form-control" id="exampleInputEmail1" name="u_kettambahan">
            </div>

            <div class="form-group">
                <label for="exampleInputEmail1">Tanggal Peminjaman</label>
                <input type="date" class="form-control" id="exampleInputEmail1"  name="u_car_bookdate">
            </div>

            <div class="form-group">
              <label for="exampleFormControlSelect1"> Status</label>
              <select class="form-control" name="u_car_book_status" id="exampleFormControlSelect1">
                <option>Approved</option>
                <option>Pending</option>
              </select>
            </div>

              <div class="form-group">
                <label for="exampleInputEmail1">Surat Izin / Upload dalam bentuk link</label>
                <input type="text" class="form-control" id="exampleInputEmail1" name="u_license" required>
            </div>

            </div>

            <button type="submit" name="add_booking" class="btn btn-success">Tambah</button>
          </form>
          <!-- End Form-->
        </div>
      </div>
       
      <hr>
     

      <!-- Sticky Footer -->
      <?php include("vendor/inc/footer.php");?>

    </div>
    <!-- /.content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-danger" href="admin-logout.php">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Page level plugin JavaScript-->
  <script src="vendor/chart.js/Chart.min.js"></script>
  <script src="vendor/datatables/jquery.dataTables.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="vendor/js/sb-admin.min.js"></script>

  <!-- Demo scripts for this page-->
  <script src="vendor/js/demo/datatables-demo.js"></script>
  <script src="vendor/js/demo/chart-area-demo.js"></script>
 <!--INject Sweet alert js-->
 <script src="vendor/js/swal.js"></script>

</body>

</html>
