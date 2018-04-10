
<html>

     <head>
     <meta charset="utf-8">
       <title>Admin Login</title>

     </head>

     <body>

       <form action="" method="post">
      
          <tr>
                       <br><td>Username</td>
                        <td><input type="text" name="username" </td></br>
          </tr>
                <tr>
                        <br><td>Password</td>
                        <td><input type="password" name ="password" </td></br>
                </tr>
                <tr>
                        <br><td></td>
                        <td><input type="submit" name="submit" value="Sign in"</td></br>
                </tr> 

      </form>		
    </body>
</html>

<?php
if(isset($_POST['submit'])){
        $user = $_POST['username'];
        $pw = $_POST['password'];
        if($user=="shwetha" && $pw=="shwetha")
	{
         echo("Username & Password matched! 	Successfully signed in!");
        }
	else
	{
         echo("Invalid username or password!");
        }
}
?>
