<script type="text/javascript">
  
  $(document).ready(function(){

       $("#successMessage").addClass("hidden");
       $("#errorMessage").addClass("hidden");

       funViewModelData();

       function validator(){

        var GroupName = $.trim($("#groupName").val());

        if(GroupName = ""){
                $("#errorMessage").html("Please Enter Group Name."); 
                $("#errorMessage").removeClass("hidden");
                $("#successMessage").addClass("hidden");
                return false;
        }
        return true;

       }//End of function validator

       $("#btnStudentGroupSave").click(function(event){

        event.preventDefault();

        if (validator()){

          var StudentGroup = {};

          StudentGroup["groupName"]=$.trim($("#groupName").val());
          


          $.ajax({
                type: "POST",
                url: "saveStudentGroup",
                data: JSON.stringify(StudentGroup),
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
       
          $.post("viewAllStudentGroup",function(data){
          	// alert(JSON.stringify(data));
          
          var StudentGroupData = '<table id="tblStudentGroup" class="table">' +
                       '<thead><tr><th >ID</th><th>Student Group</th><th>Created Time</th></tr></thead><tbody>';
                            
        for(var key in data){  
       
        StudentGroupData +='<tr><td>'+data[key].id+'</td><td>'+data[key].groupName+'</td><td>'+data[key].createdTime +'</td></tr>';
        }                 
                      
        StudentGroupData += '</tbody></table>';
      
          
          $("#divStudentGroup").html(StudentGroupData);
          $("#tblStudentGroup").DataTable();



  });//end of function(data)

  }//end of fun view function




  
  });//End of ready function


</script>



<div>
<div class="container">
<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Student Group</legend>

<div>
		<div class="well well-sm" id="successMessage" style="background-color:#1D9B2A;color:#fff;"></div>
    

      	<div class="well well-sm" id="errorMessage"style="background-color:red;color:#fff;"></div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="groupName">Student Group</label>  
  <div class="col-md-4">
  <input id="groupName" name="groupName" type="text" placeholder="Enter Student Group" class="form-control input-md">
    
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="btnStudentGroupSave"></label>
  <div class="col-md-4">
    <button id="btnStudentGroupSave" name="btnStudentGroupSave" class="btn btn-success">Save</button>
  </div>
</div>

</fieldset>
</form>
</div>
</div>

<div class="col-md-12">
  <legend> Existing Shift</legend>
  <div class="col-md-12">
    <div id="divStudentGroup" class="col-md-12"></div>


  </div>
</div>