<link href="css/style_projet.css" rel="stylesheet" type="text/css">



 
<div class="container p-5 my-5 border bg-secondary" style="text-align: center;--bs-bg-opacity: .5;">
    <h1>Projet MMI</h1>
    <p>Dans cette rubrique je vais vous présenter certains des projets que j'ai réalisé pendant ma première année en BUT MMI</p>
  </div>

  <div class="container">
    <div class="row">
<?php foreach($projet as $projet): ?>

      <div class="col">
            <article>
                <h1><?= $projet['titre_bloc']?></h1>
                <img src=<?= $projet['image_lien']?> alt=<?= $projet['image_alt']?>>
                <h2><?= $projet['date']?></h2>
                <p><?= $projet['description_bloc']?></p>
            </article>
        </div>

<?php endforeach ?>
    </div>
</div>
