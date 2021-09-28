<?php
header("Access-Control-Allow-Origin: *");
header("Content-type: application/json");
include "db_connect.php";

$eventId = $_POST['eventID'];
$eventDescription = $_POST['eventDescription'];
$eventDate = $_POST['eventDate'];

$stmt = $db->prepare("INSERT INTO calendar_events (eventId, eventDescription, eventDate) VALUES (?, ?, ?)");
$result = $stmt->execute([$eventId, $eventDescription, $eventDate]);

echo json_encode([
    'success' => $result
]);