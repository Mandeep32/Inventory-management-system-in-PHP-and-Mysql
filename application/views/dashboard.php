
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
    
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <?php if($is_admin == true): ?>

        <div class="row">
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-purple">
              <div class="inner">
                <h3><?php echo $total_brands ?></h3>

                <h4><b>Total Items</b></h4>
              </div>
              <div class="icon">
                <i class="fa fa-cubes"></i>
              </div>
              <a href="<?php echo base_url('Controller_Items/') ?>" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-teal">
              <div class="inner">
                <h3><?php echo $total_category ?></h3>

                <h4><b>Total Category</b></h4>
              </div>
              <div class="icon">
                <i class="fa fa-th"></i>
              </div>
              <a href="<?php echo base_url('Controller_Category/') ?>" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-yellow">
              <div class="inner">
                <h3><?php echo $total_attribures; ?></h3>

               <h4><b>Total Elements</h4></b>
              </div>
              <div class="icon">
                <i class="fa fa-files-o"></i>
              </div>
              <a href="<?php echo base_url('Controller_Element/') ?>" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-green">
              <div class="inner">
                <h3><?php $query = $this->db->query('SELECT SUM( net_amount)as total FROM orders WHERE paid_status = 1')->row(); echo floatval($query->total);?></h3>

                <h4><b>Total Sales</b></h4>
              </div>
              <div class="icon">
                <i class="fa fa-dollar"></i>
              </div>
              <a href="<?php echo base_url('Controller_Orders/') ?>" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
        </div>


        <div class="row">
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-primary">
              <div class="inner">
                <h3><?php echo $total_products ?></h3>

               <h4><b>Total Products</b></h4>
              </div>
              <div class="icon">
                <i class="fa fa-cube"></i>
              </div>
              <a href="<?php echo base_url('Controller_Products/') ?>" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-olive">
              <div class="inner">
                <h3><?php echo $total_paid_orders ?></h3>

               <h4><b>Paid Orders</b></h4>
              </div>
              <div class="icon">
                <i class="fa fa-check"></i>
              </div>
              <a href="<?php echo base_url('Controller_Orders/') ?>" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-maroon">
              <div class="inner">
                <h3><?php $query = $this->db->query('SELECT * FROM orders WHERE paid_status = 2'); echo $query->num_rows();?></h3>

                <h4><b>UnPaid Orders</b></h4>
              </div>
              <div class="icon">
                <i class="fa fa-spinner"></i>
              </div>
              <a href="<?php echo base_url('Controller_Orders/') ?>" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-aqua">
              <div class="inner">
                <h3><?php echo $total_users; ?></h3>

                <h4><b>Total Members</b></h4>
              </div>
              <div class="icon">
                <i class="fa fa-users"></i>
              </div>
              <a href="<?php echo base_url('Controller_Members/') ?>" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->

          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-red">
              <div class="inner">
                <h3><?php echo $total_stores ?></h3>

               <h4><b>Total Warehouse</b></h4>
              </div>
              <div class="icon">
                <i class="fa fa-institution"></i>
              </div>
              <a href="<?php echo base_url('Controller_Warehouse/') ?>" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
        </div>
        <!-- /.row -->


        
        <!-- /.row -->
      <?php endif; ?>
      

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <script type="text/javascript">
    $(document).ready(function() {
      $("#dashboardMainMenu").addClass('active');
    }); 
  </script>
