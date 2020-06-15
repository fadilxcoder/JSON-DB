<?php

    # REQUIREMENT
    require 'functions.php';
    require 'vendor/autoload.php';

    # NAMESPACE
    use Tracy\Debugger;
    // Debugger::enable(Debugger::DEVELOPMENT);

    foreach (selectAll() as $data) :

        // Converting JSON String into JSON Object
        $obj = json_decode($data['configuration']);
        // dump($obj->allow); # true

        // Converting JSON String into JSON Array
        $newArr = json_decode($data['configuration'], true);
        // dump($newArr['version']); # 7
        
    endforeach;
    
    // Converting to JSON representation of supplied argument
    echo json_encode(["HTTP" => 200]);
?>