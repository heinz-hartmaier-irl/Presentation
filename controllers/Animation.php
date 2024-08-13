<?php
namespace controllers;

class animation extends \app\Controller {

    public function index() {
        // On instancie le modèle "Page"
        $this->loadModel('Page');
        
        // On stocke la liste des articles de la table Création BUT MMI1 dans $devpersos
        $anim = $this->Page->getBloc("Animation");
        
        // On affiche les données
        $this->render('index', compact('anim'));
    }
}
?>
