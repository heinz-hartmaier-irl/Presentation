<?php
namespace controllers;

class projet extends \app\Controller {

    public function index() {
        // On instancie le modèle "Page"
        $this->loadModel('Page');
        
        // On stocke la liste des articles de la table Création BUT MMI1 dans $devpersos
        $projet = $this->Page->getBloc("Projet_mmi");
        
        // On affiche les données
        $this->render('index', compact('projet'));
    }
}
?>