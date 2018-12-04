<script type="text/javascript">
  
  $(document).ready(function(){

       $("#successMessage").addClass("hidden");
       $("#errorMessage").addClass("hidden");

       funViewModelData();

       function validator(){

        var SubjectCode = $.trim($("#subjectCode").val());
        var SubjectName = $.trim($("#subjectName").val());
        var SubjectType = $.trim($("#subjectType").val());

        if(SubjectCode = ""){
                $("#errorMessage").html("Please Enter SubjectCode."); 
                $("#errorMessage").removeClass("hidden");
                $("#successMessage").addClass("hidden");
                return false;
        }else if(SubjectName = ""){
                $("#errorMessage").html("Please Enter SubjectName."); 
                $("#errorMessage").removeClass("hidden");
                $("#successMessage").addClass("hidden");
                return false;
              }else if(SubjectType = ""){
                $("#errorMessage").html("Please Enter SubjectType."); 
                $("#errorMessage").removeClass("hidden");
                $("#successMessage").addClass("hidden");
                return false;
              }
        return true;

       }//End of function validator

       $("#btnSubjectSave").click(function(event){

        event.preventDefault();

        if (validator()){

          var Subject = {};

          Subject["subjectCode"]=$.trim($("#subjectCode").val());
          Subject["subjectName"]=$.trim($("#subjectName").val());
           // Subject["subjectType"]=$.trim($("#subjectType").val());
          Subject["subjectType"] = $("input:radio[name ='subjectType']:checked").val();
          


          $.ajax({
                type: "POST",
                url: "saveSubject",
                data: JSON.stringify(Subject),
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
       
          $.post("viewAllSubject",function(data){
            // alert(JSON.stringify(data));
          
          var subjectData = '<table id="tblSubject" class="table">' +
                       '<thead><tr><th>ID</th><th>Subject Code</th><th>Subject Name</th><th>Subject Type</th><th>Created Time</th></tr></thead><tbody>';
                            
        for(var key in data){  
       
        subjectData +='<tr><td>'+data[key].id+'</td><td>'+data[key].subjectCode+'</td><td>'+data[key].subjectName +'</td><td>'+data[key].subjectType +'</td><td>'+data[key].createdTime +'</td></tr>';
        }                 
                      
        subjectData += '</tbody></table>';
      
          
          $("#divSubject").html(subjectData);
          $("#tblSubject").DataTable();



  });//end of function(data)

  }//end of fun view function




  
  });//End of ready function


</script>




<div>
<div class="container">

<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Subject</legend>

<div>
    <div class="well well-sm" id="successMessage" style="background-color:#1D9B2A;color:#fff;"></div>
    

        <div class="well well-sm" id="errorMessage"style="background-color:red;color:#fff;"></div>
  </div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="subjectCode">Subject Code</label>  
  <div class="col-md-4">
  <input id="subjectCode" name="subjectCode" type="text" placeholder="Enter Subject Code " class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="subjectName">Subject Name</label>  
  <div class="col-md-4">
  <input id="subjectName" name="subjectName" type="text" placeholder="Enter Subject Name" class="form-control input-md">
    
  </div>
</div>

<!-- Multiple Radios (inline) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="subjectType">Subject Type</label>
  <div class="col-md-4"> 
    <label class="radio-inline" for="subjectType-0">
      <input type="radio" name="subjectType" id="subjectType-0" value="Subjective" checked="checked">
      Subjective
    </label> 
    <label class="radio-inline" for="subjectType-1">
      <input type="radio" name="subjectType" id="subjectType-1" value="Selective">
      Selective
    </label> 
    <label class="radio-inline" for="subjectType-2">
      <input type="radio" name="subjectType" id="subjectType-2" value="Optional">
      Optional
    </label>
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="btnSubjectSave"></label>
  <div class="col-md-4">
    <button id="btnSubjectSave" name="btnSubjectSave" class="btn btn-success">Save</button>
  </div>
</div>

</fieldset>
</form>
</div>
</div>

<!-- List View -->
<div class="col-md-12">
  <legend> Existing Subject</legend>
  <div class="col-md-12">
    <div id="divSubject" class="col-md-12"></div>


  </div>
</div>