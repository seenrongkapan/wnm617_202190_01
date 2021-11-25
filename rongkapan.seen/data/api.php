<?php

function makeConn() {
	include "auth.php";
	try {
		$conn = new PDO(...Auth());
		$conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
		return $conn;
	} catch(PDOException $e) {
		die('{"error":"'.$e->getMessage().'"}');
	}
}

/*makeConn();
?>
success*/


/* $r = PDO result*/ 
function fetchAll($r) {
	$a = [];
	while($row = $r->fetch(\PDO::FETCH_OBJ)) $a[] = $row;
	return $a;
}


/*
$c = connection
$ps = prepared statement
$p = parameters
*/
function makeQuery($c,$ps,$p,$makeResults=true) {
	try {
		if(count($p)) {
			$stmt = $c->prepare($ps);
			$stmt->execute($p);
		} else {
			$stmt = $c->query($ps);
		}

		$r = $makeResults ? fetchAll($stmt) : [];

		return [
			// "statement"=>$ps
			// "params"=>$p
			"result"=>$r
		];
	} catch(PDOException $e) {
		return ["error"=>"Query Failed: ".$e->getMessage()];
	}
}


function makeStatement($data) {
	try {
		$c = makeConn();
		$t = @$data->type;
		$p = @$data->params;


		switch($t) {
			// case "users_all":
			//   	return makeQuery($c,"SELECT * FROM `track_users`",$p);
			// case "animals_all":
			//   	return makeQuery($c,"SELECT * FROM `track_animals`",$p);
			// case "locations_all":
			//   	return makeQuery($c,"SELECT * FROM `track_locations`",$p);


			case "users_by_id":
				return makeQuery($c,"SELECT id,username,name,email * FROM `track_users` WHERE `id`=?",$p);
			case "animals_by_id":
				return makeQuery($c,"SELECT * FROM `track_animals` WHERE `id`=?",$p);
			case "locations_by_id":
				return makeQuery($c,"SELECT * FROM `track_locations` WHERE `id`=?",$p);


			case "animals_by_user_id":
				return makeQuery($c,"SELECT * FROM `track_animals` WHERE `id`=?",$p);
			case "locations_by_animal_id":
				return makeQuery($c,"SELECT * FROM `track_locations` WHERE `id`=?",$p);


			case "check_signin":
				return makeQuery($c,"SELECT * FROM `track_users` WHERE `username`=? AND `password`=md5(?)",$p);

			case "recent_animal_locations":
				return makeQuery($c,"SELECT *
					FROM `track_animals` a 
					JOIN (
	                  SELECT lg.*
	                  FROM `track_locations` lg
	                  WHERE lg.id = (
	                     SELECT lt.id
	                     FROM `track_locations` lt
	                     WHERE lt.animal_id = lg.animal_id
	                     ORDER BY lt.date_create DESC
	                     LIMIT 1
	                  )
	               ) l
	               ON a.id = l.animal_id
	               WHERE a.user_id = ?
	               ORDER BY l.animal_id, l.date_create DESC
	               ",$p);


			/* CREATE */ 

			cast "insert_user":
            	$r = makeQuery($c,"SELECT id FROM `track_202190_users` WHERE `username`=? OR `email` = ?",$p);
            	if(count($r['result'])) return ["error"=>"Username or Email already exists"];

            	$r = makeQuery($c,"INSERT INTO
               		`track_202190_users`
               	(`username`, `email`, `password`, `img`, `date_create`)
               	VALUES
               	(?, ?, md5(?), 'http://via.placeholder.com/400/?text=USER', NOW())
               	",$p,false);
            return ["id" => $c->lastInsertId()];


			cast "insert_animal":
				$r = makeQuery($c,"INSERT INTO
					`track_animals`
					(`user_id`,`name`,`breed`,`description`,`unique`,`img`,`date_create`)
					VALUES
					(?,?,?,?,?, 'http://via.placeholder.com/400/?text=ANIMAL', NOW())
					",$p,false);
				return ["id" => $c->lastInsertId()];

			cast "insert_location":
				$r = makeQuery($c,"INSERT INTO
					`track_locations`
					(`user_id`,`lat`,`lng`,`description`,`photo`,`icon`,`date_create`)
					VALUES
					(?,?,?,?, 'http://via.placeholder.com/400/?text=PHOTO','http://via.placeholder.com/400/?text=ICON', NOW())
					",$p,false);
				return ["id" => $c->lastInsertId()];
					

			/* UPDATE */

			cast "update_user":
				$r = makeQuery($c,"UPDATE
					`track_users`
					SET 
						`username` = ?,
						`name` = ?,
						`email` = ?,
					WHERE `id` = ?
					",$p,false);
				return ["result" => "success"];

			ast "update_user_password":
				$r = makeQuery($c,"UPDATE
					`track_users`
					SET 
						`password` = md5(?),
					WHERE `id` = ?
					",$p,false);
				return ["result" => "success"];


			cast "update_animal":
				$r = makeQuery($c,"UPDATE
					`track_animals`
					SET 
						`name` = ?,
						`breed` = ?,
						`description` = ?,
						`unique` = ?,
					WHERE `id` = ?
					",$p,false);
				return ["result" => "success"];


		default: return ["error"=>"No Matched Type"];
		  	//CAN NO LONGER SEE THIS FILE ON BROWSER SOULD SHOW JUST MESSAGE ABOVE
		}
	} catch(Exception $e) {
      return ["error"=>"Bad Data"];
   }
}
 


$data = json_decode(file_get_contents("php://input"));

die(
   json_encode(
      makeStatement($data),
      JSON_NUMERIC_CHECK
   )
);



