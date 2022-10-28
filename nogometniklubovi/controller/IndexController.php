<?php

class IndexController extends Controller
{
    public function index()
    {
        //echo 'IndexController->index';
        //$view = new View();
        $this->view->render('index');
    }
}