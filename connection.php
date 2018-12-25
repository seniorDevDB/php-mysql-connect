<?php
    function connectDB()
    {
    	// Create connection
    	$conn = new mysqli('localhost', 'root', '', 'textbook_db');
    	// Check connection
    	if ($conn->connect_error) {
    	    die("Connection failed: " . $conn->connect_error);
    		return false;
    	} 
    	return $conn;
    }

    $conn = connectDB();
    $type = $_POST['requesttype'];


    if ($type == 1){
    	$className = $_POST['className'];
    	$students = $_POST['students'];
    	// $conn = connectDB();
    	if ($conn == false){
    		echo "database connection error";
    	}
    	else {
    		$sql = "INSERT INTO class_tb ".
               "(name, students) "."VALUES ".
               "('$className', '$students')";
	 		$result = $conn->query($sql);

	 		echo "Class Data saved successfully";
    	}
    	
    }
    elseif ($type == 2) {
    	$class = $_POST['class'];
    	$textbookName = $_POST['textbookName'];
    	$author = $_POST['author'];
    	$cost = $_POST['cost'];
    	// $conn = connectDB();
    	if ($conn == false){
    		echo "database connection error";
    	}
    	else {
    		$sql = "INSERT INTO textbook_tb ".
               "(class, textbook_name, author, cost) "."VALUES ".
               "('$class', '$textbookName', '$author', '$cost')";
	 		$result = $conn->query($sql);

	 		echo "Textbook data saved successfully";
    	}
    }
    elseif ($type == 3) {
        $sql = "SELECT id FROM class_tb";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
            // output data of each row
            while($row = $result->fetch_assoc()) {
            // echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
                $data = ['id' => $row["id"]];
                $res[] = $data;
            }
            echo json_encode($res);
        } else {
            echo "You should add the class first.";
        }
    }



?>





