<?php
/**
 * Created by PhpStorm.
 * User: lh
 * Date: 6/10/17
 * Time: 1:59 PM
 */
// *************** PHP7 START ***************
if(!function_exists('mysql_connect')&&version_compare("7.0", PHP_VERSION, ">=")){
    function mysql_connect($dbhostport, $dbuser, $dbpass){
        global $dbport;
        global $dbname;
        global $mysqli;
        $mysqli = mysqli_connect($dbhostport, $dbuser, $dbpass, $dbname);
        return $mysqli;
    }
    function mysql_select_db($dbname){
        global $mysqli;
        return mysqli_select_db($mysqli,$dbname);
    }
    function mysql_fetch_array($result){
        return mysqli_fetch_array($result);
    }
    function mysql_fetch_assoc($result){
        return mysqli_fetch_assoc($result);
    }
    function mysql_fetch_row($result){
        return mysqli_fetch_row($result);
    }
    function mysql_query($query){
        global $mysqli;
        return mysqli_query($mysqli,$query);
    }
    function mysql_escape_string($data){
        global $mysqli;
        return mysqli_real_escape_string($mysqli, $data);
        //return addslashes(trim($data));
    }
    function mysql_get_server_info(){
        return mysqli_get_server_info();
    }
    function mysql_real_escape_string($data){
        return mysql_real_escape_string($data);
    }
    function mysql_close(){
        global $mysqli;
        return mysqli_close($mysqli);
    }
}