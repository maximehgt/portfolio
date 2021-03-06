<?php $title = "Maxime Hugonnet - Développeur Web Lyon - Portfolio"; ?>
<?php $heading = "Maxime Hugonnet"; ?>
<?php $subHeading = "Développeur Web"; ?>

<?php ob_start(); ?>

<!-- background -->
<div class="background-index">
      <!-- présentation -->
      <Section class="presention">
        <div class="container container-marg  ">
          <div class="row justify-content-center"> <!--Start row-->
            <img class="img-responsive center-block" src="public/img/maxime-rf.png" alt="Maxime Hugonnet" id="maxime">
                
            <div class= "col-sm-12 text-center mt-4">
              <h1 class="title-id">Maxime Hugonnet</h1>
              <p>Vous cherchez un développeur web ? <br/>
                Ça tombe bien ! <br/>
                Je suis la personne qu'il vous faut !</p>

                <p>De formation "Développeur intégrateur en réalisation d’applications web".<br/>
                Je recherche un poste de <strong>développeur Web.</strong></p>

                <p>N'hésitez pas à <a href="index.php#contact" class="pres-loo">me contacter</a> et regardez <a href="index.php#portfolio" class="pres-loo">mes réalisations.</a><br/></p>

                <p class="retrouvez-moi">Retrouvez-moi sur :</p>
                <p class="text-center">
                  <a class="color-linkedin" href="https://www.linkedin.com/in/maxime-hugonnet-a626a5100/"><i class="fa fa-linkedin-square fa-2x"></i></a>
                  <a class="color-viadeo" href="http://www.viadeo.com/p/002fh5k3ncm3i4j"><i class="fa fa-viadeo fa-2x"></i> </a>
                  <a class="color-github" href="https://github.com/maximehgt"><i class="fa fa-github fa-2x"></i></a>
                </p>
            </div>
          </div> 
        </div> 
      </Section>
      <!-- /présentation -->

      <!--a propos-->
      <section class="container container-marg">
        <div class="propos">
          <div class="row justify-content-center">
            <div class="col-sm-12">
              <h2 class="text-center title-id"><i class="fa fa-black-tie fa-2x text-center"></i><br/> A propos</h2>
                <p>Curieux, et passionnée par les nouvelles technologies, <br/>
                ma reconversion dans le développement web me permet aujourd'hui d'exprimer ma créativité. </p>

                <p>J'aime travailler sur des projets variés : <br/>
                de l'intégration de sites vitrines, au développement de sites dynamiques, <br/>
              ou encore de sites administrables.</p>

                <p>Étant Autodidacte et de par ma formation,<br/>
                renforcée par de nombreux projets visibles sur mon portfolio,<br/>
                m’a permis d’acquérir et de développer toutes les techniques et méthodes<br/>
                de développement et d’intégration nécessaire.</p>

                <p>Une veille quotidienne et une polyvalence issue d'un parcours professionnel, <br/>
                riche en expériences sont parmi les atouts que je souhaite<br/>
                à présent partager au sein d'une nouvelle équipe. </p>

                <p></p>
            </div>
          </div>
        </div>
      </section>
      <!--/a propos-->

      <!-- compétences -->
      <section class="competence ">
        <div class="container container-marg">
          <div class="row justify-content-center">
            <div class="col-sm-12 text-center">
              <h2 class="title-id"><i class="fa fa-cogs"></i><br/> Compétences</h2>
              <p>Ce que je sais faire et les outils que j'utilise</p>
            </div>
          </div>

          <div class="row mt-4">
            <div class="col-sm-6 mt-4 text-center">
              <h3><i class="fa fa-code"></i> Langages & Framworks</h3>
              <p>Symfony, WordPress, PHP, MYSQL, JavaScript, Jquery, HTML, CSS, Bootstrap, Materialize</p>
            </div>
            <div class="col-sm-6 mt-4 text-center">
              <h3><i class="fa fa-arrow-up"></i> Référencement & Responsive</h3>
              <p>Optimisations techniques SEO, Rédaction, Suivi et analyses statistiques. Sites responsives</p>
            </div>
            <div class="col-sm-6 mt-4 text-center">
              <h3><i class="fa fa-cogs"></i> Outils et environnements</h3>
              <p>Linux & Windows, Git & Github, Visual Studio, Sublime Text 3, Brackets, Atom.</p>
            </div>
            <div class="col-sm-6 mt-4 text-center">
              <h3><i class="fa fa-star"></i> Management & Projets</h3>
              <p>Management d'équipe, <br/>
              Relation client,
              Travail en équipe.</p>
            </div>
          </div>
        </div>
      </section>
      <!-- /compétences -->

      <!-- portfolio -->
      <!-- Main Content -->
      <section class="portfolio" id="portfolio">
        <div class="container ">
          <div class="container container-marg">
            <div class="row">
              <div class="col-sm-12 text-center">
                <h2 class="title-id"><i class="fa fa-rocket"></i><br/> MES PROJETS</h2>
                <p>Découvrez ici les derniers projets web sur lesquels j'ai eu le plaisir de travailler</p>
              </div>
            </div>
          </div>

          <div class="row justify-content-center align-middle">
          <?php foreach ($posts as $post) { ?>
            <article class="post-preview col-md-5 card text-white bg-dark mb-3 marg-article">
              <a href="post&id=<?= $post->id()?>">
                <div class="post-thumb-content">
                  <img src="<?= PUBLICS ;?>img/<?= $post->post_thumbnail()?>" alt="<?= $post->post_thumbnail()?>" class="post-img">
                </div>
                <h3 class="post-title"><?= $post->title();?></h3>
                <p><?= $post->excerpt();?></p>
              </a>
              <p class="post-meta">Publié le : <?= $post->creation_date_fr();?></p>
            </article>
            <?php } ?>
          </div>

          <!-- Pager -->
          <div class="clearfix">
            <?php if($page < PostManager::$nbPage){?>
            <a class="btn btn-primary float-right col-xs-6 col-sm-5 col-lg-3 mb-2 px-2" href="listPosts&page=<?= $page + 1; ?>">Anciens billets &rarr;</a>
          <?php } ?>
            <?php if($page != 1){?>
              <a class="btn btn-primary float-left col-xs-6 col-sm-5 col-lg-3 mb-2 px-2" href="listPosts&page=<?= $page - 1; ?>">&larr; Nouveaux billets</a>
              <?php } ?>
          </div>
        </div>
      </section>
      <!-- /portfolio -->

      <!-- contact -->
      <section class="contact container-marg" id="contact">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-sm-12 text-center mt-4">
              <h2 class="title-id align-middle"><i class="fa fa-comments"></i><br/> CONTACT</h2>
              <p class="mt-4">Mon portfolio vous à charmé ? <br/>
              N'hésitez pas à me contacter !</p>
            </div>
          </div>

          <div class="row text-center mt-4 justify-content-around">
            <div class="col-sm-6 col-sm-offset-3 card text-white bg-dark mb-3">
                <i class="fa fa-phone"></i>
                <a href="tel:0609583855"><strong>06.09.58.38.55</strong></a><br/>

                <i class="fa fa-envelope"></i>
                <a href="mailto:maxime@maxime-hugonnet.fr"><strong>maxime@maxime-hugonnet.fr</strong></a><br/>

                <i class="fa fa-download"></i>
                <a href="public/img/cv/HUGONNET-Maxime-CV-2018.pdf" download="HUGONNET-Maxime-CV-2018"><strong>Télécharger mon CV</strong></a><br/>

                <i class="fa fa-comments"></i>
                <a href="http://maxime-hugonnet.fr/contact/index.php"><strong>Me contacter par formulaire</strong></a>
              </div>
          </div>
        </div>
      </section>
      <!-- /contact -->
</div>
<!-- /background -->

<?php $content = ob_get_clean(); ?>
<?php require_once 'template.php';
