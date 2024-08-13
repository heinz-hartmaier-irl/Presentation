<?php
namespace controllers;

class musique extends \app\Controller {


    public function index() {
        // On instancie le modèle "Page"
        $this->loadModel('Page');
        $this->loadModel('Carousel');
        
        // On stocke la liste des articles de la table Création BUT MMI1 dans $devpersos
        $musique = $this->Page->getBloc("Musique");
        $carou = $this->Carousel->getall();
    
        
        // On affiche les données
        $this->render('index', compact('musique', 'carou'));
    }
}
?>
