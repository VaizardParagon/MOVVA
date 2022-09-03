
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
<link rel = "stylesheet" href = "user/dashboard.css">
<link rel="stylesheet" href="https://use.typekit.net/oov2wcw.css">


<h1>Welcome to <?php echo $_settings->info('name') ?></h1>
<hr class="bg-light">
<div class="row">
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-light elevation-1"><i class="fas fa-calendar-day"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Today's Offenses</span>
                <span class="info-box-number text-right">
                  <?php 
                    $offense = $conn->query("SELECT * FROM `offense_list` where date(date_created) = '".date('Y-m-d')."' ")->num_rows;
                    echo number_format($offense);
                  ?>
                  <?php ?>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-info elevation-1"><i class="fas fa-id-card"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Total Driver's Listed</span>
                <span class="info-box-number text-right">
                  <?php 
                    $drivers = $conn->query("SELECT id FROM `drivers_list` ")->num_rows;
                    echo number_format($drivers);
                  ?>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->

          <!-- fix for small devices only -->
          <div class="clearfix hidden-md-up"></div>

          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-lightblue elevation-1"><i class="fas fa-traffic-light"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Total Traffic Offenses</span>
                <span class="info-box-number text-right">
                <?php 
                    $to = $conn->query("SELECT id FROM `offenses` where status = 1 ")->num_rows;
                    echo number_format($to);
                  ?>
                </span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
        </div>

        <!-- CONTAINER PANEL -->

       <div class = "first-panel">

           <!--FILTER DIV--> 

          <div class = "filter-div">

             <!--FILTER BY BARANGAY DIV -->

            <div class = "baranggay">

              <label for="barangay" style = "margin-left: 2rem;">Filter by barangay:</label><br>
              <input type="text" id="barangay" name="barangay" class = "input-baranggay"><br>

            </div>

              <!--FILTER BY DATE DIV -->

            <div class = "date">

              <label for="date" style = "margin-left: 2rem;">Filter by date:</label><br>
              <input type="text" id="date" name="date" class = "input-date"><br>

            </div>

          </div>

          <!--MAIN REPORT DASHBOARD -->

          <div class = "report-dashboard">

            <div class = "report-box">

              <div class = "report-box-title">

                <h3 style = "font-size: 9pt; font-family: Segoe UI; text-align: center;">PLACE WITH MOST VIOLATION</h3>

              </div>

              <div class = "report-box-content">

                <h4 style = "font-size: 2vw;" id = "top-place"></h4>

              </div>

            </div>

            <div class = "report-box">

              <div class = "report-box-title">

                <h2 style = "font-size: 9pt; font-family: Segoe UI; text-align: center;">TOP COMMON VIOLATION</h2>

              </div>

              <div class = "report-box-content">

                <h4 style = "text-align: center; font-size: 2vw;" id = "top-violation"></h4>

              </div>

            </div>

            <div class = "report-box">

              <div class = "report-box-title">

                <h2 style = "font-size: 9pt; font-family: Segoe UI; text-align: center;">TOTAL DRIVER'S LISTED</h2>

              </div>

              <div class = "report-box-content">

                <h4 style = "text-align: center; font-size: 2vw;" id = "total-drivers">

                  <?php 
                    $drivers = $conn->query("SELECT id FROM `drivers_list` ")->num_rows;
                    echo number_format($drivers);
                  ?>
              
                </h4>

              </div>

            </div>

            <div class = "report-box">

              <div class = "report-box-title">
            
                <h2 style = "font-size: 9pt; font-family: Segoe UI; text-align: center;">TOTAL VIOLATION </h2>

              </div>

              <div class = "report-box-content">

                <h4 style = "text-align: center; font-size: 2vw;" id = "total-violations">

                  <?php 
                    $to = $conn->query("SELECT id FROM `offenses` where status = 1 ")->num_rows;
                    echo number_format($to);
                  ?>
                  
                </h4>

              </div>


            </div>


          </div>

          <div class = "first-panel-footer">

            <div id = "date-container" style = "height: 120px; width: 100%; display: flex; align-items: center; justify-content: center;  ">

              <h3 id = "footer-date" class = "first-panel-footer-text"> </h3>

            </div>

          </div>
  

        </div>

        <br>
        
        <div style = "height: 550px; width: 100%; background-color: #fafafa;  border-radius: 6px; border: 1px solid #dfe3e6; box-shadow: 1px 2px 3px grey;">

          <div style = "height: 100%; width: 50%; float: left; background-color: #fafafa; border-radius: 6px; border: 1px solid #dfe3e6; box-shadow: 1px 1px 4px grey;">

            <div style = "height: 40%; width: 100%; border-radius: 6px; border: 1px solid #dfe3e6; box-shadow: 0px 0px 4px grey;">
              <canvas id="barChart" style="width: 100%; height: 100%;"></canvas>
            </div>

            <div style = "height: 60%; width: 100%; border-radius: 6px; border: 1px solid #dfe3e6; box-shadow: 1px 0px 4px grey;">
              <canvas id ="lineChart" style="width: 100%; height: 100%;"></canvas>
            </div>

          </div>

          <div id = "pie-graph" style = "height: 97%; width: 50%; float: right; position: relative;">
            <canvas id ="pieChart" style="width: 100%; height: 100%;"></canvas>
          </div>

        </div>

        <br>


      <script>

        var offenseName = new Array();
        var yValue = new Array();
        var v = new Array();
        v = yValue;
        var colorArray = new Array();
        
        $(function() {

          var d = new Date();

          var options = {   
              month: 'long', 
              day: 'numeric',
              year: 'numeric'
          };

          document.getElementById('footer-date').innerHTML = d.toLocaleDateString('en-US', options) + " " + d.toLocaleTimeString();

          pieChart();

          setInterval(function() {
            var t = new Date();

            document.getElementById('footer-date').innerHTML = d.toLocaleDateString('en-US', options) + " " + t.toLocaleTimeString();
          }, 1000);

        });


        function pieChart() {

          $.ajax({
              type: "POST", 
              url: "inc/get_offenses.php", 
              dataType: "json",
              
              success: function(res) {
                //check if there is duplicate entries
                  $.each(res, function(i, el){
                    if($.inArray(el, offenseName) === -1) offenseName.push(el);
                  }); 

                  $.ajax({
                      type: "POST", 
                      url: "inc/get_offense_count.php", 
                      data: {"names": offenseName},
                      dataType: 'json',
                      
                      success: function(dataArr) {

                      $.each(dataArr.offenseCount, function(i, e){
                        yValue.push(e);
                      });   
                      
                      $.each(dataArr.color, function(i, el){
                        colorArray.push(el);
                      });   
                        

                        console.log(colorArray);

                        var maxValue = Math.max.apply(Math, v);
                        var index = v.indexOf(maxValue);
                        var maxViolation = offenseName.at(index);

                        document.getElementById("top-violation").innerHTML = maxViolation;

                        barChart();
                        new Chart("pieChart", {
                          type: "pie",
                          data: {
                            labels: offenseName,
                            datasets: [{
                              backgroundColor: colorArray,
                              data: v
                            }]
                          },
                          options: {
                            responsive: true,
                            maintainAspectRatio: false,
                            devicePixelRatio: 4,
                            title: {
                              display: true,
                              text: "Traffic Violation Chart",
                              
                            },

                            legend: {
                              display: true
                            }
                          }
                        });

                      }
                    }); 


            
              }
            }); 

        }

        function barChart() {

          var area = new Array();
          var violator = new Array();
          var count = new Array();
          
          $.ajax({
              type: "POST", 
              url: "inc/get_area.php", 
              dataType: "json",
              
              success: function(res) {
                //check if there is duplicate entries
                $.each(res.area, function(i, el){
                  if($.inArray(el, area) === -1) area.push(el);
                });

                $.each(res.violatorCount, function(i, el){
                  violator.push(el);
                });

                for (var i = 0; i < area.length; i++) {

                  count[i] = violator[0][area[i]];

                }

                
                var maxValue = Math.max.apply(Math, count);
                var index = count.indexOf(maxValue);
                var maxArea = area.at(index);

                document.getElementById('top-place').innerHTML = maxArea;

                console.log(index);
                console.log(maxArea);

                var barColors = ["red", "green","blue","orange","brown"];

                  new Chart("barChart", {
                    type: "horizontalBar",
                    data: {
                    labels: area,
                    datasets: [{
                      backgroundColor: barColors,
                      data: count
                    }]
                  },
                    options: {
                      responsive: true,
                      maintainAspectRatio: false,
                      devicePixelRatio: 4,
                      legend: {
                        display: false
                      },

                      title: {
                        display: true,
                        text: "Top Places Where Violators Live"
                      },
                      scales: {
                        xAxes: [{ticks: {min: 0, max:maxValue + 3}}]
                      }
                    }
                  }); 
      
              }

          });

          lineChart();
            
        }


          // var xValues = ["Italy", "France", "Spain", "USA", "Argentina"];
          //var yValues = [55, 49, 44, 24, 15];

        
        function lineChart() {

          var xValues = [50,60,70,80,90,100,110,120,130,140,150];
          var yValues = [7,8,8,9,9,9,10,11,14,14,15];

         var date = new Array();
         var driverCount = new Array();

         $.ajax({
              type: "POST", 
              url: "inc/get_date.php", 
              dataType: "json",
              
              success: function(result) {

                $.each(result.date, function(i, e){

                  var d = new Date(result.date[i]).toLocaleDateString();
                  
                  date.push(d);

                });   

                $.each(result.count, function(i, c){

                  driverCount.push(c);

                });   

                console.log(result.count);
                var maxValue = Math.max.apply(Math, driverCount);


                new Chart("lineChart", {

                  type: "line",
                  data: {
                    labels: date,
                    datasets: [{
                      fill: false,
                      lineTension: 0,
                      backgroundColor: "rgba(1,0,245,1.0)",
                      borderColor: "rgba(0,0,255,0.1)",
                      data: driverCount
                    }]
                  },
                  options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    devicePixelRatio: 4,
                    legend: {
                      display: false,
                    },
                    scales: {
                      yAxes: [{ticks: {min: 0, max: maxValue + 4}}],
                    },
                    title: {
                      display: true,
                      text: "Number of Registered Drivers "
                    }
                    
                  }
                });


              }
         });

         
        }
          
      </script>
