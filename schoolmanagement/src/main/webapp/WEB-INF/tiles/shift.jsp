
<script type="text/javascript">
  
  $(document).ready(function(){

       $("#successMessage").addClass("hidden");
       $("#errorMessage").addClass("hidden");

       funViewModelData();

       function validator(){

        var Shift = $.trim($("#shift").val());

        if(Shift = ""){
                $("#errorMessage").html("Please Enter Shift Name."); 
                $("#errorMessage").removeClass("hidden");
                $("#successMessage").addClass("hidden");
                return false;
        }
        return true;

       }//End of function validator

       $("#btnShift").click(function(event){

        event.preventDefault();

        if (validator()){

          var Shift = {};

          Shift["shiftName"]=$.trim($("#shift").val());
          


          $.ajax({
                type: "POST",
                url: "saveShift",
                data: JSON.stringify(Shift),
                contentType: "application/json; charset=utf-8",
                
                success: function (successData) {
                    $("#successMessage").html(successData);
                    $("#successMessage").removeClass("hidden");
                    $("#errorMessage").addClass("hidden");

                    $("#btnShift").html('Save Data');
                    funViewModelData();

                 }, error: function (error) {
                   $("#errorMessage").html("Error: Record Not Saved");
                   $("#errorMessage").removeClass("hidden");
                   $("#successMessage").addClass("hidden");
                   // alert(JSON.stringify(error));
                }
            });//end of ajax


        }
 });//end of btn function

       function funViewModelData(){
       
          $.post("viewAllShift",function(data){
          	// alert(JSON.stringify(data));
          
          var shiftData = '<table id="tblShift" class="table">' +
                       '<thead><tr><th >ID</th><th>Shift Name</th><th>Created Time</th></tr></thead><tbody>';
                            
        for(var key in data){  
       
        shiftData +='<tr><td>'+data[key].id+'</td><td>'+data[key].shiftName+'</td><td>'+data[key].createdTime +'</td></tr>';
        }                 
                      
        shiftData += '</tbody></table>';
      
          
          $("#divShift").html(shiftData);
          $("#tblShift").DataTable();



  });//end of function(data)

  }//end of fun view function




  
  });//End of ready function


</script>

<div>
<div class="container">

<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Shift</legend>

<div>
		<div class="well well-sm" id="successMessage" style="background-color:#1D9B2A;color:#fff;"></div>
    

      	<div class="well well-sm" id="errorMessage"style="background-color:red;color:#fff;"></div>
	</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="shift">Shift Name</label>  
  <div class="col-md-4">
  <input id="shift" name="shift" type="text" placeholder=" Shift Name " class="form-control input-md">
    
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="btnShift"></label>
  <div class="col-md-4">
    <button id="btnShift" name="btnShift" class="btn btn-success">save</button>
  </div>
</div>

</fieldset>
</form>
</div>
</div>

<!-- List View -->
<div class="col-md-12">
  <legend> Existing Shift</legend>
  <div class="col-md-12">
    <div id="divShift" class="col-md-12"></div>


  </div>
</div>