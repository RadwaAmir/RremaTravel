<?php
session_start();
include("includes/header.php");
include("includes/topbar.php");
include("admin/config/dbcon.php");
if(isset($_POST['submit']))
{
  $htid = $_POST['htid'];
  $guest_name = $_POST['guest_name'];
  $guest_email = $_POST['guest_email'];
  $guest_phone = $_POST['guest_phone'];
  
  $check_in_date = strtotime($_POST['check_in_date']);
  $check_out_date = strtotime($_POST['check_out_date']);
  
  $totalday = floor(($check_out_date - $check_in_date) / (60 * 60 * 24)); // بالأيام
  
  $sql1 = "SELECT price From hotel_tb WHERE htid = '$htid' LIMIT 1";
  $result1 = mysqli_query($con, $sql1);
  
  if(mysqli_num_rows($result1) > 0)
  {
    $row = mysqli_fetch_assoc($result1);
    $price = $row['price'];

    $totalprice = $totalday * $price;
  
    $sql = "INSERT INTO booking_tb (htid, guest_name, guest_email, guest_phone, totalday, totalprice)
      VALUES ('".$htid."', '".$guest_name."', '".$guest_email."', '".$guest_phone."', '".$totalday."', '".$totalprice."')";

    $sql_run = mysqli_query($con, $sql);
    if($sql_run)
    {
      header("Location: index.php");
      echo "تم حجز الرحلة بنجاح";
    }
    else
    {
      header("Location: booking.php");
      echo "لم يتم حجز الرحلة";
    }
  }
  else
  {
    header("Location: booking.php");
    echo "لم يتم العثور على سعر للفندق المحدد";
  }
}


?> 

<div class="gtco-section">
  <div class="gtco-container">
    <div class="row">
      <div class="col-md-8 col-md-offset-2 text-center gtco-heading">
        <h2>RRematravel</h2>
      </div>
    </div>
    <div class="row">
      <?php
          if(isset($_GET['htid']))
          {
            $htid = $_GET['htid'];
            $sql = "SELECT * FROM hotel_tb WHERE htid = '$htid' LIMIT 1";
            $sql_run = mysqli_query($con, $sql);
            if(mysqli_num_rows($sql_run) > 0)
            {
              foreach ($sql_run as $items) 
              {
                ?>
                <h4>Enter your information to book hotel <?php echo $items['htid']; ?><h4>
                  <form action="booking.php" method="post">
                    <div class="row form-group">
                      <div class="col-md-12">
                        <label for="guest_name">Guest Name</label>
                        <input type="text" id="guest_name" name="guest_name" class="form-control">
                      </div>
                    </div>
                    <div class="row form-group">
                      <div class="col-md-12">
                        <label for="guest_email">Email Address</label>
                        <input type="email" id="guest_email" name="guest_email" class="form-control">
                      </div>
                    </div>
                    <div class="row form-group">
                      <div class="col-md-12">
                        <label for="guest_phone">Phone Number</label>
                        <input type="tel" id="guest_phone" name="guest_phone" class="form-control">
                      </div>
                    </div>
                    <div class="row form-group">
                      <div class="col-md-12">
                        <label for="hotelname">Hotel Name</label>
                        <input type="text" id="hotelname" name="htid" value="<?php echo $items['htid']?>" class="form-control">
                      </div>
                    </div>

                    <div class="row form-group">
                      <div class="col-md-12">
                        <label for="price">Price</label>
                        <input type="text" id="price" name="price" value="<?php echo $items['price']?>" class="form-control">
                      </div>
                    </div>

                    <div class="row form-group">
                      <div class="col-md-12">
                        <label for="check_in_date">Check-In Date</label>
                        <input type="date" id="check_in_date" name="check_in_date" class="form-control">
                      </div>
                    </div>
                    <div class="row form-group">
                      <div class="col-md-12">
                        <label for="check_out_date">Check-Out Date</label>
                        <input type="date" id="check_out_date" name="check_out_date" class="form-control">
                      </div>
                    </div>
                    <div class="row form-group">
                      <div class="col-md-12">
                        <input type="submit" class="btn btn-primary btn-block" value="Book Now" name="submit">
                      </div>
                    </div>
                  </form>
      <?php
              }
            }
          }
        ?>



    </div>
  </div>
</div>

<?php
include("includes/footer.php");
?>