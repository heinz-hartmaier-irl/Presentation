<link href="css\style_jeux.css" rel="stylesheet" type="text/css">



<div class="container p-5 my-5 border bg-secondary" style="text-align: center;--bs-bg-opacity: .5;">
<h1>Jeux Video </h1>
<p>Dans cette rubrique je vais vous présenter des jeux vidéos auxquel j'ai joué et que j'ai apprécié.</p>
</div>

<?php foreach($game as $game): ?>
  
  <div class="container">
  <div class="row">
  <div class="col-md-3 col-xxl-5">
  <article>
  <img src=<?= $game['image_lien']?> alt=<?= $game['image_alt']?>>
  </div>
  <div class="col-md-8 col-xxl-6 bg-light" style="border-radius: 20px;--bs-bg-opacity: .7;margin-top:5vh;">
  <h1><?= $game['titre_bloc']?></h1>
  <p><?= $game['description_bloc']?></p>
  </article>
  </div>
  </div>
  
  <?php endforeach ?>
  
