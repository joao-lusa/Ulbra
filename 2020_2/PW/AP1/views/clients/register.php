<h2>registro de clentes</h2>

<form action="?controller=clients&action=registerView" method="post">

<div class="form-group">
    <label>nome:</label>
    <input type="text" name="name" class="form-control">
</div>
<div class="form-group">
    <label>Email:</label>
    <input type="email" name="email" class="form-control">
</div>
<div class="form-group">
    <label>senha:</label>
    <input type="password" name="password" class="form-control">
</div>
<div class="form-group">
    <label>Interesse:</label>
    <input type="text" name="interest" class="form-control">
</div>
<div class="form-group">
  <input type="radio" id="male" name="gender" value="male">
  <label for="male">masculino</label><br>
  <input type="radio" id="female" name="gender" value="female">
  <label for="female">Femenino</label><br>
  <input type="radio" id="other" name="gender" value="other">
  <label for="other">outro</label>
</div>
<div class="form-group">
    <input type="checkbox" name="language[]" value="JS">
    <label for="">JS</label><br>
    <input type="checkbox" name="language[]" value="Java">
    <label for="">Java</label><br>
    <input type="checkbox" name="language[]" value="PHP">
    <label for="">PHP</label>
</div>
<br>
<input type="submit" value="register" class="btn btn-primary">
<br>
<br>

</form>
