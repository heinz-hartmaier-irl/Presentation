<link href="css\style_musique.css" rel="stylesheet" type="text/css">



<div class="container p-5 my-5 border bg-secondary" style="text-align: center;--bs-bg-opacity: .5;">
<h1>Musique</h1>
<p>Dans cette rubrique je vais vous présenter certaines musiques que j'apprécis</p>
</div>

<section>
<div class="container">
<div class="row">
<div class="col-lg-8">
<div class="carousel">

<?php foreach($musique as $musique): ?>
  <article>
  <h3><?= $musique['titre_bloc']?></h3>
  <p>
  <b><?= $musique['description_bloc']?></b></br>
  <?= $musique['date']?>
  </p>
  </article>
  
  <?php endforeach ?>
  </div>
  </div>
  <div class="col-lg-4">
  <div class="carousel2">
  
  <?php foreach($carou as $carou): ?>
    <a href=<?= $carou['video_lien']?> class="image-link">
    <div class="link"><?= $carou['description']?></br>
    <b><?= $carou['clique']?></b>
    </div>
    </a>
    
    <?php endforeach ?>
    
    </div>
    </div>
    
    </div>
    </div>
    </section>
    
    
    <script type="text/javascript" src="js\slick\slick.min.js"></script>  
    <script type="text/javascript" src="js/magnific-popup/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="js\script_musique.js"></script>
