<?php

    # REQUIREMENT
    require 'vendor/autoload.php';
    require 'functions.php';

    # NAMESPACE
    use Tracy\Debugger;
    // Debugger::enable(Debugger::DEVELOPMENT); # Disabled due to JSON extension in chrome

    foreach (selectAll() as $data) :

        // Converting JSON String into JSON Object
        $obj = json_decode($data['configuration']);
        // dump($obj->allow); # true

        // Converting JSON String into JSON Array
        $newArr = json_decode($data['configuration'], true);
        // dump($newArr['version']); # 7
        
    endforeach;

    $resp = selectAll();
    $result = json_decode($resp[0]['configuration']);
    
    // Converting to JSON representation of supplied argument
    echo json_encode([
        'HTTP' => 200,
        'allow' => $result->allow,
        'version' => $result->allow,
        'language' => $result->language,
    ]);
?>