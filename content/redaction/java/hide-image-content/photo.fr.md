
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: fr
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Masquer des images dans PHOTO avec des superpositions en utilisant Java"
head_description: "Utilisez GroupDocs.Redaction for Java pour masquer des zones d'image sensibles dans des fichiers PHOTO avec des superpositions. Protégez le contenu privé tout en conservant la mise en page du fichier inchangée."

############################# Header ############################
title: "Protéger le contenu des images dans des fichiers PHOTO avec des superpositions en utilisant Java" 
description: "Sécurisez les données d'image personnelles et professionnelles dans des fichiers PHOTO avec Java. Outils simples conçus pour une protection rapide et efficace."
subtitle: "Fonctionnalités principales de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "En savoir plus sur GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java donne aux développeurs Java des outils fiables pour cacher ou supprimer du contenu dans des fichiers PHOTO. Protégez vos documents en masquant du texte, des images et des métadonnées.

############################# Steps ############################
steps:
    enable: true
    title: "Masquer le contenu dans des fichiers Photo avec des superpositions"
    content: |
      GroupDocs.Redaction for Java facilite la dissimulation des zones sensibles dans vos applications Java.
      
      1. Initialisez un Redactor et chargez votre fichier Photo.
      2. Définissez les préférences de suppression si nécessaire.
      3. Sélectionnez les régions d'image et choisissez des couleurs de superposition.
      4. Exécutez la suppression et enregistrez le fichier.
   
    code:
      platform: "java"
      copy_title: "Copier"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Exemples de rédactions"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "cliquez pour copier"
        copy_done: "copié"
      links:
        #  loop
        - title: "Plus d'exemples"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "Documentation"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // Cacher les sections d'image dans PHOTO avec des superpositions

        // Chargez le fichier en utilisant Redactor
        final Redactor redactor = new Redactor("input.jpeg");
        try
        {
            // Définissez la couleur et la taille de la superposition
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Marquez la zone d'image à couvrir
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Appliquez la superposition et enregistrez le résultat
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Supprimez du contenu sensible facilement"
  description: "GroupDocs.Redaction for Java vous permet de cacher ou d'effacer des données privées dans de différents types de documents. Gardez vos fichiers propres et prêts à être partagés."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Contrôle total sur les suppressions"
  features:
    # feature loop
    - title: "Rechercher et remplacer du texte"
      content: "Trouvez le texte sensible dans les documents et remplacez-le pour protéger l'information."

    # feature loop
    - title: "Recouvrir les zones d'image"
      content: "Utilisez des superpositions pour couvrir des images entières ou des sections sélectionnées."

    # feature loop
    - title: "Supprimer les métadonnées"
      content: "Nettoyez les métadonnées cachées pour prévenir l'exposition accidentelle."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Masquez les données d'image avec des superpositions"
      content: |
        Cet exemple montre comment couvrir le contenu d'image avec des superpositions dans un document.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Chargez le document pour modification
          final Redactor redactor = new Redactor("source.jpeg");
          try
          {
              // Définissez la taille, la couleur et la position de la superposition
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Ciblez la section d'image sur la première page
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Appliquez la superposition pour cacher le contenu
              redactor.apply(redaction);

              // Enregistrez le fichier édité
              SaveOptions save_options = new SaveOptions();
              save_options.setAddSuffix(true);
              save_options.setRasterizeToPDF(false);
              redactor.save(save_options);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "Copier"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
          copy_tip: "cliquez pour copier"
          copy_done: "copié"
        top_links:
          #  loop
          - title: "Télécharger le résultat"
            icon: "download"
            link: "/examples/redaction/formats/hide-image-content.pdf"
        links:
          #  loop
          - title: "Plus d'exemples"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "Documentation"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "Prêt à commencer ?"
  description: "Essayez les fonctionnalités de GroupDocs.Redaction gratuitement ou demandez une licence"
  items:
    #  loop
    - title: "Télécharger Maven"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "Licences"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Sécurisez des fichiers PHOTO avec des suppressions Java"
    exclude: "PHOTO"
    description: "Avec Java, vous pouvez cacher ou supprimer des données sensibles dans des fichiers PHOTO. Un moyen de confiance pour protéger des documents officiels."
    items: 
        # format loop 1
        - name: "Rédaction PDF"
          format: "PDF"
          link: "/redaction/java/hide-image-content//pdf/"
          description: "Format de Document Portable Adobe"

        # format loop 2
        - name: "Rédaction Word"
          format: "WORD"
          link: "/redaction/java/hide-image-content//word/"
          description: "Documents MS Word et Open Office"
          
        # format loop 3
        - name: "Rédaction Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-image-content//excel/"
          description: "Feuilles de calcul MS Excel et Open Office"

        # format loop 4
        - name: "Rédaction PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-image-content//powerpoint/"
          description: "Présentations MS PowerPoint et Open Office"

        # format loop 5
        - name: "Rédaction Image"
          format: "IMAGE"
          link: "/redaction/java/hide-image-content//image/"
          description: "Formats d'image populaires"

        # format loop 6
        - name: "Rédaction Photo"
          format: "PHOTO"
          link: "/redaction/java/hide-image-content//photo/"
          description: "Formats photo"

        # format loop 7
        - name: "Rédaction DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-image-content//docx/"
          description: "Document Microsoft Word Open XML"
          
        # format loop 8
        - name: "Rédaction XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-image-content//xlsx/"
          description: "Tableur Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Rédaction PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-image-content//pptx/"
          description: "Présentation PowerPoint Open XML"

        # format loop 10
        - name: "Rédaction JPEG"
          format: "JPEG"
          link: "/redaction/java/hide-image-content//jpeg/"
          description: "Image JPEG"


---