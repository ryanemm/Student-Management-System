
<?php
header('Content-Type: application/json');
include "db_connect.php";

//$publicationDate = $_POST['']
//$publicationDate = date_default_timezone_set("Africa/Johannesburg");
//$title = "this";
//$summary = "time";
//$content = "around";
$studentId = $_POST['studentId'];
$date = $_POST['date'];
$present = $_POST['present'];

$stmt = $db->prepare("INSERT INTO articles (title, summary, content) VALUES (?,>
$result = $stmt->execute([$studentId, $date, $present]);

echo json_encode([
'success' => $result
]);


