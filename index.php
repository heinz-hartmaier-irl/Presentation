<?php
// Chemin obsolu vers la racine deu site.
define('ROOT', str_replace('index.php','',$_SERVER['SCRIPT_FILENAME']));

//classes de bases
require_once(ROOT.'app/Model.php');//Donc est-ce que il faut créer des fichier correspondant ?
require_once(ROOT.'app/Controller.php');//Et si oui est-ce qu'ils doivent se trouver dans des dossier corresspondant ?

//Séparation et mise dans un tableau($params) des paramètres
$params = explode('/', $_GET['p']);

if($params[0] != ""){
   //On prend le premier paramètre et on met en majuscule la 1 lettre
   $controller = "\\controllers\\".ucfirst($params[0]);
   //Le 2 paramètre est enrengistrés dans $action ou index si le premier n'existe pas
   $action = isset($params[1]) ? $params[1] : 'index';
   
   
   if(file_exists(ROOT.str_replace('\\', DIRECTORY_SEPARATOR, $controller).'.php')) {
      // On appelle le contrôleur
      require_once(ROOT.str_replace('\\', DIRECTORY_SEPARATOR, $controller).'.php');
      
      // On instancie le contrôleur
      $controller = new $controller();
      
      if(method_exists($controller, $action)){
         // On supprime les 2 premiers paramètres
         unset($params[0]);
         unset($params[1]);
         // On appelle la méthode $action du contrôleur $controller
         call_user_func_array([$controller,$action], $params);
      } else {
         // On envoie le code réponse 404
         http_response_code(404);
         echo "La page recherchée n'existe pas";
      } 
   } else {
      // On envoie le code réponse 404
      http_response_code(404);
      echo "La page recherchée n'existe pas";
   }
   
}else{
   // On appelle le contrôleur par défaut quand il n'y a pas de paramètres
   
   require_once(ROOT.'controllers/Main.php');
   
   $controller = new \controllers\Main();
   
   $controller->index();
}
?>
