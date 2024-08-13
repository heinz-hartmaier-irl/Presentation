<?php
namespace controllers;

class game extends \app\Controller {

    public function index() {
        // On instancie le modèle "Page"
        $this->loadModel('Page');
        
        // On stocke la liste des articles de la table Création BUT MMI1 dans $devpersos
        $game = $this->Page->getBloc("Jeux_vidéo");
        
        // On affiche les données
        $this->render('index', compact('game'));
    }
}
?>
