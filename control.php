<?php
require 'core/connection.php';

if(isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH'])== 'xmlhttprequest'){
$date = date('l M d, Y H:i');
if (isset($_POST['inputName'])) {
$fullname = $_POST['inputName'];
$email = $_POST['inputEmail'];
$password = $_POST['inputPassword'];
$password = sha1(md5($password));


$select = $conn->query("SELECT * FROM users WHERE mail = '$email' OR name = '$fullname'");
$count = $select->rowCount();
if ($count > 0) {
    echo "Details already used.. Use another";
}else{

$in = array('name' => $fullname,
            'mail' => $email,
            'password' => $password, 
            'date' => $date, 
            );

create('users',$in);
echo "Congratulations You have successfully Registered <br> You Can Now Login";
}
}

 if(isset($_POST['useremail'])){
    $username = sanitize($_POST['useremail']);
    $password = $_POST['userpass'];
    $hash = sha1(md5($password));


    if(empty($username) || empty($password)){
      echo "<div style='color:#e6102e'><i class='fa fa-ban fa-5x'></i><p><b> Fill All Empty Fields</b></p></div>";
    }else{
      $verify = get_alias('users','mail',$username,'password',$hash);
      if($verify->rowCount() > 0){
        $fetch = $verify->fetchAll(PDO::FETCH_OBJ);
        foreach($fetch as $log){
          $id = $log->id;
          $user = $log->name;
          $email = $log->mail;

          $encode_id = md5($id);
          session_start();
          $_SESSION['is_admin'] = $encode_id; 
          $_SESSION['username'] = $user; 
          $_SESSION['admin_id'] = $id; 
          $_SESSION['email'] = $email; 
          $_SESSION['numb'] = 0;
          echo "Success";

              }
      }else{
       echo "Invalid";
      }
    }
  }

if (isset($_POST['textmessage'])) {
	$message = sanitize(htmlspecialchars($_POST['textmessage']));
	$ident = $_POST['ident'];

	if ($message == 'hello') {
	$in = array('ptitle' => null,
            'paddress' => null,
            'pod' => null, 
            'destination' => null, 
            'weight' => null, 
            'price' => null, 
            );
	$in2 = array('iden' => $ident,
            'by' => 'user',
            'type' => 'text', 
            'message' => $message, 
            'dates' => $date, 
            );

	update('users',$in,'id',$ident);
	create('conversation',$in2);
}else{
	$query1 = $conn->query("SELECT * FROM users WHERE id = '$ident' order by 'id' DESC");
	$fetch1 = $query1->fetchAll(PDO::FETCH_OBJ);
	$count1 = $query1->rowCount();
	if ($count1 > 0) {
	foreach ($fetch1 as $value1) {
	$name = $value1->name;
	$ptitle = $value1->ptitle;
	$paddress = $value1->paddress;
	$pod = $value1->pod;
	$destination = $value1->destination;
	$mail = $value1->mail;
	$weight = $value1->weight;
	$price = $value1->price;
	}
	}
	$query2 = $conn->query("SELECT * FROM conversation WHERE iden = '$ident' order by 'id' DESC");
	$count2 = $query2->rowCount();
	$fetch2 = $query2->fetchAll(PDO::FETCH_OBJ);
	$last = $count2-1;
	$lastword = $fetch2[$last]->message;


	if (empty($ptitle) && empty($paddress) && empty($pod) && empty($destination) && empty($weight) && empty($price)) {
	if ($lastword == "Input Package title" || $lastword == "Invalid, please input a Package Title") {
	if (is_string($message) == 1) {
	$in = array('ptitle' => $message,
            );
	$in2 = array('iden' => $ident,
            'by' => 'user',
            'type' => 'text', 
            'message' => $message, 
            'dates' => $date, 
            );

	update('users',$in,'id',$ident);
	create('conversation',$in2);
	}else{
	$in1 = array('iden' => $ident,
            'by' => 'user',
            'type' => 'text', 
            'message' => $message, 
            'dates' => $date, 
            );

	$in2 = array('iden' => $ident,
            'by' => 'admin',
            'type' => 'text', 
            'message' => "Invalid, please input a Package Title", 
            'dates' => $date, 
            );

	create('conversation',$in1);
	create('conversation',$in2);
	}
	}else{
	$in1 = array('iden' => $ident,
            'by' => 'user',
            'type' => 'text', 
            'message' => $message, 
            'dates' => $date, 
            );

	$in2 = array('iden' => $ident,
            'by' => 'admin',
            'type' => 'text', 
            'message' => 'Please answer the next question', 
            'dates' => $date, 
            );

	create('conversation',$in1);
	create('conversation',$in2);
	}
	}elseif ((!empty($ptitle) && empty($paddress) && empty($pod) && empty($destination) && empty($weight) && empty($price))) {
		if ($lastword == "Where is your address?" || $lastword == "Invalid, please input an address") {
		if (is_string($message) == 1) {
	$in = array('paddress' => $message,
            );
	$in2 = array('iden' => $ident,
            'by' => 'user',
            'type' => 'text', 
            'message' => $message, 
            'dates' => $date, 
            );

	update('users',$in,'id',$ident);
	create('conversation',$in2);
	}else{
		$in1 = array('iden' => $ident,
            'by' => 'user',
            'type' => 'text', 
            'message' => $message, 
            'dates' => $date, 
            );

	$in2 = array('iden' => $ident,
            'by' => 'admin',
            'type' => 'text', 
            'message' => "Invalid, please input an address", 
            'dates' => $date, 
            );

	create('conversation',$in1);
	create('conversation',$in2);
	}
		}else{
	$in1 = array('iden' => $ident,
            'by' => 'user',
            'type' => 'text', 
            'message' => $message, 
            'dates' => $date, 
            );

	$in2 = array('iden' => $ident,
            'by' => 'admin',
            'type' => 'text', 
            'message' => 'Please answer the next question', 
            'dates' => $date, 
            );

	create('conversation',$in1);
	create('conversation',$in2);
	}
	
	}elseif ((!empty($ptitle) && !empty($paddress) && empty($pod) && empty($destination) && empty($weight) && empty($price))) {
		if ($lastword == "Please choose if pickup or you will bring it to be delivered <br><br> <ol><li>For pickup</li> <li>For No Pickup</li></ol>" || $lastword == "Invalid, please input 1 or 2") {
		if (is_numeric($message) == 1 && $message > 0 && $message <= 2) {
	$in = array('pod' => $message,
            );
	$in2 = array('iden' => $ident,
            'by' => 'user',
            'type' => 'text', 
            'message' => $message, 
            'dates' => $date, 
            );

	update('users',$in,'id',$ident);
	create('conversation',$in2);
	}else{
		$in1 = array('iden' => $ident,
            'by' => 'user',
            'type' => 'text', 
            'message' => $message, 
            'dates' => $date, 
            );

	$in2 = array('iden' => $ident,
            'by' => 'admin',
            'type' => 'text', 
            'message' => "Invalid, please input 1 or 2", 
            'dates' => $date, 
            );

	create('conversation',$in1);
	create('conversation',$in2);
	}
		}else{
	$in1 = array('iden' => $ident,
            'by' => 'user',
            'type' => 'text', 
            'message' => $message, 
            'dates' => $date, 
            );

	$in2 = array('iden' => $ident,
            'by' => 'admin',
            'type' => 'text', 
            'message' => 'Please answer the next question', 
            'dates' => $date, 
            );

	create('conversation',$in1);
	create('conversation',$in2);
	}
	
	}elseif ((!empty($ptitle) && !empty($paddress) && !empty($pod) && empty($destination) && empty($weight) && empty($price))) {
		if ($lastword == "Where do you want it delivered to?" || $lastword == "Invalid, please a input destination") {
		if (is_string($message) == 1) {
	$in = array('destination' => $message,
            );
	$in2 = array('iden' => $ident,
            'by' => 'user',
            'type' => 'text', 
            'message' => $message, 
            'dates' => $date, 
            );

	update('users',$in,'id',$ident);
	create('conversation',$in2);
	}else{
		$in1 = array('iden' => $ident,
            'by' => 'user',
            'type' => 'text', 
            'message' => $message, 
            'dates' => $date, 
            );

	$in2 = array('iden' => $ident,
            'by' => 'admin',
            'type' => 'text', 
            'message' => "Invalid, please a input destination", 
            'dates' => $date, 
            );

	create('conversation',$in1);
	create('conversation',$in2);
	}
		}else{
	$in1 = array('iden' => $ident,
            'by' => 'user',
            'type' => 'text', 
            'message' => $message, 
            'dates' => $date, 
            );

	$in2 = array('iden' => $ident,
            'by' => 'admin',
            'type' => 'text', 
            'message' => 'Please answer the next question', 
            'dates' => $date, 
            );

	create('conversation',$in1);
	create('conversation',$in2);
	}
	
	}elseif ((!empty($ptitle) && !empty($paddress) && !empty($pod) && !empty($destination) && empty($weight) && empty($price))) {
		if ($lastword == "What is the weight of the item... Weight is in KG" || $lastword == "Invalid, please a input weight in KG") {
		if (is_numeric($message) == 1) {
		$price = $message+1000;
		$tracking = rand(11111111,99999999);

		$in3 = array('weight' => $message,
					'price' => $price,
					'tracking' => $tracking,
            );
		update('users',$in3,'id',$ident);

	$in1 = array('iden' => $ident,
            'by' => 'user',
            'type' => 'text', 
            'message' => $message, 
            'dates' => $date, 
            );

	$in2 = array('iden' => $ident,
            'by' => 'admin',
            'type' => 'text', 
            'message' => 'Dear '.$name.', Thank you for using this application, Below is your order<br> Title = '.$ptitle.' <br> Destination '.$destination.' <br> We have created a delivery for you. You can track with this number: '.$tracking, 
            'dates' => $date, 
            );
	create('conversation',$in1);
	create('conversation',$in2);
	}else{
		$in1 = array('iden' => $ident,
            'by' => 'user',
            'type' => 'text', 
            'message' => $message, 
            'dates' => $date, 
            );

	$in2 = array('iden' => $ident,
            'by' => 'admin',
            'type' => 'text', 
            'message' => "Invalid, please a input weight in KG", 
            'dates' => $date, 
            );

	create('conversation',$in1);
	create('conversation',$in2);
	}
		}else{
		$in1 = array('iden' => $ident,
            'by' => 'user',
            'type' => 'text', 
            'message' => $message, 
            'dates' => $date, 
            );

	$in2 = array('iden' => $ident,
            'by' => 'admin',
            'type' => 'text', 
            'message' => "Please answer the next question", 
            'dates' => $date, 
            );

	create('conversation',$in1);
	create('conversation',$in2);
	}
	}
}
	$query = $conn->query("SELECT * FROM conversation WHERE iden = '$ident' order by 'id' DESC");
	$fetch = $query->fetchAll(PDO::FETCH_OBJ);
	$count = $query->rowCount();
	if ($count > 0) {
	foreach ($fetch as $key) {
	$id = $key->id;
	$iden = $key->iden;
	$by = $key->by;
	$type = $key->type;
	$messages = $key->message;
	$dates = $key->dates;
	if ($by == 'user') {
		$ext = 'me';
		$imagea = "";
	}elseif ($by == 'admin') {
		$ext = "";
		$imagea = '<img class="avatar-md" src="dist/img/avatars/user.png" data-toggle="tooltip" data-placement="top" title="Keith" alt="avatar">';
	}
	?>
		<div class="message <?php echo $ext; ?>">
			<?php echo $imagea; ?>
			<div class="text-main">
				<div class="text-group <?php echo $ext; ?>">
					<div class="text <?php echo $ext; ?>">
						<p><?php echo $messages; ?></p>
					</div>
				</div>
				<span><?php echo $dates; ?></span>
			</div>
		</div>
	<?php
	}
	}
}

if (isset($_POST['action']) && $_POST['action'] == 'promessage') {
	$id = $_POST['id'];
	$query = $conn->query("SELECT * FROM users WHERE id = '$id' order by 'id' DESC");
	$fetch = $query->fetchAll(PDO::FETCH_OBJ);
	$count = $query->rowCount();
	if ($count > 0) {
	foreach ($fetch as $value) {
	$name = $value->name;
	$ptitle = $value->ptitle;
	$paddress = $value->paddress;
	$pod = $value->pod;
	$destination = $value->destination;
	$weight = $value->weight;
	$price = $value->price;
	$mail = $value->mail;
	}
	}
	$query2 = $conn->query("SELECT * FROM conversation WHERE iden = '$id' order by 'id' DESC");
	$count2 = $query2->rowCount();
	$fetch2 = $query2->fetchAll(PDO::FETCH_OBJ);
	$last = $count2-1;
	$lastword = $fetch2[$last]->message;
	echo "$lastword";
	if (($lastword != 'Age not in range, please visit a physical dietitian') && ($lastword != 'Invalid, please input a number') && ($lastword != 'Invalid, please input male or female') && ($lastword != 'Please visit a physical dietitian')) {
	if (empty($ptitle) && empty($paddress) && empty($pod) && empty($destination) && empty($weight) && empty($price)) {
		$message = "Dear $name, we are happy you are using this application, please provide all informations correctly";
		$in2 = array('iden' => $id,
            'by' => 'admin',
            'type' => 'text', 
            'message' => $message, 
            'dates' => $date, 
            );

	create('conversation',$in2);

	$message = "Input Package title";
	$in2 = array('iden' => $id,
            'by' => 'admin',
            'type' => 'text', 
            'message' => $message, 
            'dates' => $date, 
            );

	create('conversation',$in2);
	}elseif (!empty($ptitle) && empty($paddress) && empty($pod) && empty($destination) && empty($weight) && empty($price) && $lastword) {
	
	$message = "Where is your address?";
		$in2 = array('iden' => $id,
            'by' => 'admin',
            'type' => 'text', 
            'message' => $message, 
            'dates' => $date, 
            );

	create('conversation',$in2);
	}elseif (!empty($ptitle) && !empty($paddress) && empty($pod) && empty($destination) && empty($weight) && empty($price) && $lastword) {
	
	$message = "Please choose if pickup or you will bring it to be delivered <br><br> <ol><li>For pickup</li> <li>For No Pickup</li></ol>";
		$in2 = array('iden' => $id,
            'by' => 'admin',
            'type' => 'text', 
            'message' => $message, 
            'dates' => $date, 
            );

	create('conversation',$in2);
	}elseif (!empty($ptitle) && !empty($paddress) && !empty($pod) && empty($destination) && empty($weight) && empty($price) && $lastword) {
	
	$message = "Where do you want it delivered to?";
		$in2 = array('iden' => $id,
            'by' => 'admin',
            'type' => 'text', 
            'message' => $message, 
            'dates' => $date, 
            );

	create('conversation',$in2);
	}elseif (!empty($ptitle) && !empty($paddress) && !empty($pod) && !empty($destination) && empty($weight) && empty($price) && $lastword) {
	
	$message = "What is the weight of the item... Weight is in KG";
		$in2 = array('iden' => $id,
            'by' => 'admin',
            'type' => 'text', 
            'message' => $message, 
            'dates' => $date, 
            );

	create('conversation',$in2);
	}
}
	$query = $conn->query("SELECT * FROM conversation WHERE iden = '$id' order by 'id' DESC");
	$fetch = $query->fetchAll(PDO::FETCH_OBJ);
	$count = $query->rowCount();
	if ($count > 0) {
	foreach ($fetch as $key) {
	$id = $key->id;
	$iden = $key->iden;
	$by = $key->by;
	$type = $key->type;
	$messages = $key->message;
	$dates = $key->dates;
	if ($by == 'user') {
		$ext = 'me';
		$imagea = "";
	}elseif ($by == 'admin') {
		$ext = "";
		$imagea = '<img class="avatar-md" src="dist/img/avatars/user.png" data-toggle="tooltip" data-placement="top" title="Keith" alt="avatar">';
	}
	?>
		<div class="message <?php echo $ext; ?>">
			<?php echo $imagea; ?>
			<div class="text-main">
				<div class="text-group <?php echo $ext; ?>">
					<div class="text <?php echo $ext; ?>">
						<p><?php echo $messages; ?></p>
					</div>
				</div>
				<span><?php echo $dates; ?></span>
			</div>
		</div>
	<?php
	}
	}
}

if (isset($_POST['action']) && $_POST['action'] == 'notify') {
	$id = $_POST['id'];
$query = $conn->query("SELECT * FROM conversation WHERE iden = '$id' order by 'id' DESC");
$count = $query->rowCount();
$fetch = $query->fetchAll(PDO::FETCH_OBJ);
	$count = $query->rowCount();
	$last = $count-1;
	if ($count > 0) {

	foreach ($fetch as $key) {
	$id = $key->id;
	$iden = $key->iden;
	$by = $key->by;
	$type = $key->type;
	$messages = $key->message;
	$dates = $key->dates;
	if ($by == 'user') {
		$ext = 'me';
		$imagea = "";
	}elseif ($by == 'admin') {
		$ext = "";
		$imagea = '<img class="avatar-md" src="dist/img/avatars/user.png" data-toggle="tooltip" data-placement="top" title="Keith" alt="avatar">';
	}
	?>
		<div class="message <?php echo $ext; ?>">
			<?php echo $imagea; ?>
			<div class="text-main">
				<div class="text-group <?php echo $ext; ?>">
					<div class="text <?php echo $ext; ?>">
						<p><?php echo $messages; ?></p>
					</div>
				</div>
				<span><?php echo $dates; ?></span>
			</div>
		</div>
	<?php
	}

	}
}


if (isset($_POST['action']) && $_POST['action'] == 'checkhei') {
	$id = $_POST['id'];
$query = $conn->query("SELECT * FROM conversation WHERE iden = '$id' order by 'id' DESC");
$count = $query->rowCount();
$fetch = $query->fetchAll(PDO::FETCH_OBJ);
	$count = $query->rowCount();
	$last = $count-1;
	if ($count > 0) {
	if ($fetch[$last]->message == 'What is your height... Height is in m<sup>2</sup>') {
		echo "yesplease";
	}

	}
}

if (isset($_POST['action']) && $_POST['action'] == 'sidecheck') {
	$id = $_POST['id'];
$query = $conn->query("SELECT * FROM conversation WHERE iden = '$id' order by 'id' DESC");
$count = $query->rowCount();
$fetch = $query->fetchAll(PDO::FETCH_OBJ);
	$count = $query->rowCount();
	$last = $count-1;
	if ($count > 0) {
	echo $fetch[$last]->message;

	}
}

}

?>