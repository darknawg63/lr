<div class="widget">
    <h2>Hello, <?php echo $user_data['first_name']; ?>!</h2>
    <div class="inner">
		<div class="profile">
			<?php 
			if(empty($user_data['profile']) === false) {
				echo '<img src="', $user_data['profile'] , '" alt="', $user_data['first_name'] , '\s Profile Image">';
			}
			?>
			<form action="" method="post" enctype="multipart/form-data">
				<input type="file" name="profile"> <input type="submit">
			</form>			
		</div>
		<ul>
			<li>
				<a href="logout.php">Log out</a> 
			</li>
			<li>
				<a href="<?php echo $user_data['username']; ?>">Profile</a> 
			</li>
			<li>
				<a href="changepassword.php">Change Password</a> 
			</li>
			<li>
				<a href="settings.php">Settings</a> 
			</li>
		</ul>
    </div>
</div>