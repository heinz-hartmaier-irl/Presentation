
<link href="css/style_anim.css" rel="stylesheet" type="text/css">


<div class="container p-5 my-5 border bg-secondary" style="text-align: center;--bs-bg-opacity: .5;">
<h1>Animation</h1>
<p>Dans cette rubrique je vais vous présenter certains des films d'animation que j'ai regardé et qui m'ont marqués.</p>
</div>

<?php foreach($anim as $anim): ?>
  <div class="container">
  <div class="row">
  <article>
  <img src=<?= $anim['image_lien']?> alt=<?= $anim['image_alt']?>> 
  <h1><?= $anim['titre_bloc']?></h1>
  <p><?= $anim['description_bloc']?></p>
  </article>
  </div>
  <?php endforeach ?>
  