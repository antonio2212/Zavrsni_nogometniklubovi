<?php

class KlubController extends AutorizacijaController
{

    private $phtmlDir = 'privatno' . 
        DIRECTORY_SEPARATOR . 'klubovi' . 
        DIRECTORY_SEPARATOR;


    public function index()
    {
        $this->view->render($this->phtmlDir . 'read',[
            'klubovi' => $klubovi
        ]);
    }
}