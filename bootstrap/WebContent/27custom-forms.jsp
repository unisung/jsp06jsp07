<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container mt-3">
  <h2>Custom Checkbox</h2>
  <p>To create a custom checkbox, wrap a container element, like div, with a class of .custom-control and .custom-checkbox around the checkbox. Then add the .custom-control-input to the checkbox.</p>
  <p><strong>Tip:</strong> If you use labels for accompanying text, add the .custom-control-label class to it. Note that the value of the for attribute should match the id of the checkbox:</p>
  <form action="/action_page.php">
    <div class="custom-control custom-checkbox mb-3">
      <input type="checkbox" class="custom-control-input" id="customCheck" name="example1">
      <label class="custom-control-label" for="customCheck">Custom checkbox</label>
    </div>
    <input type="checkbox" id="defaultCheck" name="example2">
    <label for="defaultCheck">Default checkbox</label>
    <br>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

<div class="container">
  <h2>Custom Switch</h2>
  <p>To create a custom "toggle switch", wrap a container element, like div, with a class of .custom-control and .custom-switch around a checkbox. Then add the .custom-control-input class to the checkbox:</p>
                                        
  <form action="/action_page.php">
    <div class="custom-control custom-switch">
      <input type="checkbox" class="custom-control-input" id="switch1" name="example">
      <label class="custom-control-label" for="switch1">Toggle me</label>
    </div>
    <br>
    <div class="custom-control custom-radio">
    <input type="radio" class="custom-control-input" id="customRadio" name="example1" value="customEx">
    <label class="custom-control-label" for="customRadio">Custom radio</label>
  </div>
    <select name="cars" class="custom-select">
    <option selected>Custom Select Menu</option>
    <option value="volvo">Volvo</option>
    <option value="fiat">Fiat</option>
    <option value="audi">Audi</option>
  </select>
  
  <label for="customRange">Custom range</label>
  <input type="range" class="custom-range" id="customRange" name="points1">
  
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

<div class="container mt-3">
  <h2>Custom File</h2>
  <p>To create a custom file upload, wrap a container element with a class of .custom-file around the input with type="file". Then add the .custom-file-input to the file input:</p>
  <form action="/action_page.php">
    <p>Custom file:</p>
    <div class="custom-file mb-3">
      <input type="file" class="custom-file-input" id="customFile" name="filename">
      <label class="custom-file-label" for="customFile">Choose file</label>
    </div>
    
    <p>Default file:</p>
    <input type="file" id="myFile" name="filename2">
  
    <div class="mt-3">
      <button type="submit" class="btn btn-primary">Submit</button>
    </div>
  </form>
</div>

<script>
// Add the following code if you want the name of the file appear on select
$(".custom-file-input").on("change", function() {
  var fileName = $(this).val().split("\\").pop();
  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
});
</script>

</body>
</html>
