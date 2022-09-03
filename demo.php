<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="https://use.typekit.net/oov2wcw.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style> 
input[type=text] {
  width: 200px;
  height:70px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
  background-color: white;
  background-image: url('searchicon.png');
  background-position: 10px 10px; 
  background-repeat: no-repeat;
  padding: 12px 20px 12px 40px;
  -webkit-transition: width 0.4s ease-in-out;
  transition: width 0.4s ease-in-out;
}
label{
  vertical-align: top;
  text-align: left;
  font-color:white;
}
input[type=text]:focus {
  width: 100%;
}
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background-color: #FD7E14;
}
.form{
  border-radius: 30px;
  background-color: #2F9FE9;
  padding: 70px;
  margin-left:600px;
  margin-right:600px;
  margin-bottom:50px;
  transform: translateX(-50%)
  position:relative;
  padding-top:20px;
  padding-left:10px;
  padding-right:10px;
  
  
}
.button {
  background-color: #2F9FE9;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}
text{
  vertical-align: top;
  text-align: left;
  color:white;
  font-size:25px;
  
}
.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #f14b18;
  color: white;
}

.topnav .icon {
  display: none;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 20px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  
}

/* Modal Content */
.modal-content {
  background-color: #2F9FE9;
  margin: auto;
  padding: 30px;
  height: 85%;
  border: 1px solid #888; 
  width: 40%;
  
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
  
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}

table {
  height: 90%;
  width: 100%;
  font-family: Century-Gothic;
  background-color: #2F9FE9;
  border-radius: 8px;
  border: 1px solid #dfe3e6;
  box-shadow: 4px 3px 4px grey;
}

tr,td {
  border: 1px solid blue;
}

h4 {
  margin-left: 1rem;
}

.data {
  margin-left: 0.5rem;
}

.ticket-header {
  background-color: #fafafa;
  border-radius: 8px;
  border: 1px dashed #dfe3e6;
}

.data-content {
  background-color: #fafafa;
  border-radius: 8px;
  border: 1px solid #dfe3e6;
}

@media screen and (max-width: 600px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
}

@media screen and (max-width: 600px) {
  .topnav.responsive {position: relative;}
  .topnav.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
}
</style>
</head>
<body>

  
  <div style="padding-left:16px">
    <h2>MOVVA</h2>
    <p></p>
  </div>
  
  <br><br><br><br><br>
<p style="color:White;font-size:2.5vw;" align=center >CHECK YOUR
  TRAFFIC VIOLATION</p>
 
<div class=form>
<text>Ticket Number:</text>
<form align=center>


<br>
  <input type="text" id = "ticket" name="search" placeholder="Search..">
</form>
</div>


<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <br>
    <br>

    <table>

      <tr>
        <td style = "text-align:center;" class = "ticket-header"><h3>Ticket No: <i id = "ticket-no"></i></h3></td>
      </tr>

      <tr>
        <td class = "data-content"><h4>License ID: <i id = "license-no" class = "data"></i></h4></td>
      </tr>

      <tr>
        <td class = "data-content"><h4>Violation(s): <p id = "violation" style = "text-align: center;"><i></i> </p></h4></td>
      </tr>

      <tr>
        <td class = "data-content"><h4>Place: <i id = "place" class = "data"></i></h4></td>
      </tr>

      <tr>
        <td class = "data-content"><h4>Date: <i id = "date" class = "data"></i></h4></td>
      </tr>

      <tr>
        <td class = "data-content"><h4>Remark(s): <p id = "remarks" style = "text-align: center;"><i></i> </p></h4></td>
      </tr>

      
    </table>
      
  </div>

</div>

<center>
<button onclick = "getTicket()" class=button>Check all data traffic violations</button>
</center>


</body>

<script>
  function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
      x.className += " responsive";
    } else {
      x.className = "topnav";
    }
  }

  function getTicket() {

    var modal = document.getElementById("myModal");
    var span = document.getElementsByClassName("close")[0];
    var ticket = document.getElementById("ticket").value;

    $.ajax({
      type: "POST",
      dataType: "json",
      url: "searchTicket.php", 
      data: { ticket: ticket }, // passing the values
      success: function(res) {


        if (res.license == "") {
          alert("No Ticket Found!");
        } else {

          console.log(res);

          document.getElementById('ticket-no').innerHTML = ticket;
          document.getElementById('license-no').innerHTML = res.license;
          document.getElementById('violation').innerHTML = res.violation;
          document.getElementById('place').innerHTML = res.address;
          document.getElementById('date').innerHTML = res.date;
          document.getElementById('remarks').innerHTML = res.remarks;

          modal.style.display = "block";


          span.onclick = function() {
            modal.style.display = "none";
          }

          // When the user clicks anywhere outside of the modal, close it
          window.onclick = function(event) {
            if (event.target == modal) {
              modal.style.display = "none";
            }
          }


        }

      }
    });

  }
</script>

</html>
