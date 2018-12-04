<script type="text/javascript">
  
  $(document).ready(function(){

       $("#successMessage").addClass("hidden");
       $("#errorMessage").addClass("hidden");

       funViewModelData();

       function validator(){

        var ClassName = $.trim($("#className").val());
        var ClassShortForm = $.trim($("#classShortForm").val());

        if(ClassName = ""){
                $("#errorMessage").html("Please Enter ClassName."); 
                $("#errorMessage").removeClass("hidden");
                $("#successMessage").addClass("hidden");
                return false;
        }else if(ClassShortForm = ""){
                $("#errorMessage").html("Please Enter ClassShortForm."); 
                $("#errorMessage").removeClass("hidden");
                $("#successMessage").addClass("hidden");
                return false;
              }
        return true;

       }//End of function validator

       $("#btnClassSave").click(function(event){

        event.preventDefault();

        if (validator()){

          var Class = {};

          Class["className"]=$.trim($("#className").val());
          Class["classShortForm"]=$.trim($("#classShortForm").val());
          


          $.ajax({
                type: "POST",
                url: "saveClass",
                data: JSON.stringify(Class),
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
       
          $.post("viewAllClass",function(data){
            // alert(JSON.stringify(data));
          
          var classData = '<table id="tblClass" class="table">' +
                       '<thead><tr><th>ID</th><th>Class Name</th><th>Class Short Form</th><th>Created Time</th></tr></thead><tbody>';
                            
        for(var key in data){  
       
        classData +='<tr><td>'+data[key].id+'</td><td>'+data[key].className+'</td><td>'+data[key].classShortForm +'</td><td>'+data[key].createdTime +'</td></tr>';
        }                 
                      
        classData += '</tbody></table>';
      
          
          $("#divClass").html(classData);
          $("#tblClass").DataTable();



  });//end of function(data)

  }//end of fun view function




  
  });//End of ready function


</script>



<div>
<div class="container">

<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Class</legend>

<div>
    <div class="well well-sm" id="successMessage" style="background-color:#1D9B2A;color:#fff;"></div>
    

        <div class="well well-sm" id="errorMessage"style="background-color:red;color:#fff;"></div>
  </div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="className">Class Name</label>  
  <div class="col-md-4">
  <input id="className" name="className" type="text" placeholder="Enter Class Name" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="classShortForm">Class Short Form</label>  
  <div class="col-md-4">
  <input id="classShortForm" name="classShortForm" type="text" placeholder="Enter Class Short Form" class="form-control input-md">
    
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="btnClassSave"></label>
  <div class="col-md-4">
    <button id="btnClassSave" name="btnClassSave" class="btn btn-success">Save</button>
  </div>
</div>

</fieldset>
</form>
</div>
</div>

<!-- List View -->
<div class="col-md-12">
  <legend> Existing Class</legend>
  <div class="col-md-12">
    <div id="divClass" class="col-md-12"></div>


  </div>
</div>
