<?php
namespace models;
class Page extends \app\Model{
    
    public function __construct()
    {
        // Nous définissons la table par défaut de ce modèle
        $this->table = "page";
        // Nous ouvrons la connexion à la base de données
        $this->getConnection();
    }
    
    public function getBloc($page){
        $sql = "SELECT * FROM `{$this->table}` INNER JOIN `bloc` ON (`idPage` = `Page_idPage`) WHERE `titre_page`= '$page';" ;
        $query = $this->_connexion->query($sql);
        return $query->fetch_all(MYSQLI_ASSOC);  
    }
    
}

?>