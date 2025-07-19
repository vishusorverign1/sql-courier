<?php
require_once 'config/database.php';
require_once 'config/session.php';

if (isLoggedIn()) {
    logActivity($pdo, 'logout', 'User logged out');
}

session_destroy();
header('Location: login.php');
exit;
?>