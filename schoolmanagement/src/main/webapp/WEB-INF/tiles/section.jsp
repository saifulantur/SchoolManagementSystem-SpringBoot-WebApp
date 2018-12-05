<script type="text/javascript">

  var allClassInformation=[];
  var allShiftInformation=[];

  function getAllClassInformation(){
    $.get("viewAllClass",function(data){
      allClassInformation = data;
    });
  }

   function getAllShiftInformation(){
    $.get("viewAllShift",function(data){
      allShiftInformation = data;
    });
  }
  
  $(document).ready(function(){

    $("#successMessage").addClass("hidden");
    $("#errorMessage").addClass("hidden");

     getAllClassInformation();
     getAllShiftInformation();

     funViewModelData();

    $.post("viewAllClass", function(data){
      //alert(JSON.stringify(data));
      var classComboBox = '<select id="fkClass" class="form-control">';
      
      for(var key in data)
      {
        classComboBox += '<option value="' + data[key].id + '">' +data[key].className+ '</option>';
      }
      classComboBox += '</select>';

      $("#divClassCombo").html(classComboBox);
  
      // $( "#fkTransportType" ).change(function() {
      //     viewTransportName( $(this).val() );
      //     }); 
      
    });//for get data from database to combo box end

    $.post("viewAllShift", function(data){
      //alert(JSON.stringify(data));
      var shiftComboBox = '<select id="fkShift" class="form-control">';
      
      for(var key in data)
      {
        shiftComboBox += '<option value="' + data[key].id + '">' +data[key].shiftName+ '</option>';
      }
      shiftComboBox += '</select>';

      $("#divShiftCombo").html(shiftComboBox);
  
      // $( "#fkTransportType" ).change(function() {
      //     viewTransportName( $(this).val() );
      //     }); 
      
    });//for get data from database to combo box end


    function validator(){

        var fkClass = $.trim($("#fkClass").val());
        var fkShift = $.trim($("#fkShift").val());
        var sectionCode = $.trim($("#sectionCode").val());
        var sectionName = $.trim($("#sectionName").val());

        if(fkClass = ""){
                $("#errorMessage").html("Please Enter fkClass."); 
                $("#errorMessage").removeClass("hidden");
                $("#successMessage").addClass("hidden");
                return false;
        }else if(fkShift = ""){
                $("#errorMessage").html("Please Enter fkShift."); 
                $("#errorMessage").removeClass("hidden");
                $("#successMessage").addClass("hidden");
                return false;
              }else if(sectionCode = ""){
                $("#errorMessage").html("Please Enter sectionCode."); 
                $("#errorMessage").removeClass("hidden");
                $("#successMessage").addClass("hidden");
                return false;
              }else if(sectionName = ""){
                $("#errorMessage").html("Please Enter sectionName."); 
                $("#errorMessage").removeClass("hidden");
                $("#successMessage").addClass("hidden");
                return false;
              }
        return true;

       }//End of function validator

       $("#btnSave").click(function(event){

        event.preventDefault();

        if (validator()){

          var Section = {};

          Section["fkClass"]=$.trim($("#fkClass").val());
          Section["fkShift"]=$.trim($("#fkShift").val());
          Section["sectionCode"]=$.trim($("#sectionCode").val());
          Section["sectionName"]=$.trim($("#sectionName").val());
          
          


          $.ajax({
                type: "POST",
                url: "saveSection",
                data: JSON.stringify(Section),
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
         
          $.post("viewAllSection",function(data){

            var sectionData = '<table id="tblSection" class="table table-bordered table-hover">' +'<thead><tr class="bg-primary"><th>Shift</th><th>Class</th><th>Section Code</th><th>Section Name</th><th>Created Time</th><th></th><th></th><th></th></tr></thead><tbody>';

          for(var key in data){

            var className = allClassInformation.filter(object =>{
              return object.id === data[key].fkClass
            });

             var shiftName = allShiftInformation.filter(object =>{
              return object.id === data[key].fkShift
            });

           

        sectionData += '<tr><td>' + shiftName[0].shiftName + '</td><td>' + className[0].className +'</td><td>' + data[key].sectionCode +'</td><td>' + data[key].sectionName +'</td><td>' + data[key].createdTime +'</td><td><a href="#" class="btn btn-sm btn-danger"><span class="glyphicon glyphicon-trash"></span> </a></td><td> <a href="#" class="btn btn-sm btn-warning"><span class="glyphicon glyphicon-edit"></span> </a></td><td> <a href="#" class="btn btn-sm btn-success"><span class="glyphicon glyphicon-eye-open"></span> </a></td></tr>';

          }

          sectionData += '</tbody></table>';
        
            
            $("#divSection").html(sectionData);
            $("#tblSection").DataTable();

          });

         }

  });//end of ready function
</script>

<div>
<div class="container">

<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Section</legend>

    <div class="well well-sm" id="successMessage" align="center" style="background-color:#1D9B2A; color:#fff;"></div>
    <div class="well well-sm" id="errorMessage" align="center" style="background-color:red; color:#fff;"></div>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="fkShift">Shift</label>  
  <div class="col-md-4">
 <div id="divShiftCombo"></div>
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="fkClass">Class</label>  
  <div class="col-md-4">
  <div id="divClassCombo"></div>
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="sectionCode">Section Code</label>  
  <div class="col-md-4">
  <input id="sectionCode" name="sectionCode" type="text" placeholder="Enter Section Code" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="sectionName">Section Name</label>  
  <div class="col-md-4">
  <input id="sectionName" name="sectionName" type="text" placeholder="Enter Section Name" class="form-control input-md">
    
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="btnSave"></label>
  <div class="col-md-4">
    <button id="btnSave" name="btnSave" class="btn btn-success">Save</button>
  </div>
</div>

</fieldset>
</form>
</div>
</div>


<div class="col-md-12">
  <legend style="padding-left:16.8%;margin-top: 0%;margin-bottom: 3%;">Existing Data</legend>
  <div class="col-md-1"></div>
  <div class="col-md-10" id="divSection"></div>
  
</div>