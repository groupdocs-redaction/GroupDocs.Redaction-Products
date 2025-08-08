
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: fr
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Masquer des images dans IMAGE avec des superpositions en utilisant Java"
head_description: "Utilisez GroupDocs.Redaction for Java pour masquer des zones d'image sensibles dans des fichiers IMAGE avec des superpositions colorées. Gardez les données importantes en sécurité sans changer la mise en page du document."

############################# Header ############################
title: "Protéger des images privées dans des fichiers IMAGE en utilisant des superpositions avec Java" 
description: "Sécurisez les images personnelles et commerciales dans des fichiers IMAGE avec Java. Outils faciles pour une protection des données rapide et fiable."
subtitle: "Fonctionnalités principales de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java donne aux développeurs Java la capacité de cacher ou d'effacer du contenu dans des fichiers IMAGE. Protégez les documents en masquant du texte sensible, des images et des métadonnées.

############################# Steps ############################
steps:
    enable: true
    title: "Sécurisez le contenu dans des fichiers Image en utilisant des superpositions"
    content: |
      Couvrez rapidement les zones sensibles dans vos applications Java avec GroupDocs.Redaction for Java.
      
      1. Créez un objet Redactor et spécifiez le chemin de votre fichier Image.
      2. Définissez les options de suppression selon les besoins.
      3. Marquez les sections d'image et choisissez les couleurs de superposition.
      4. Traitez et enregistrez votre fichier supprimé.
   
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
        // Masquer le contenu d'image dans IMAGE

        // Chargez le fichier en utilisant Redactor
        final Redactor redactor = new Redactor("input.png");
        try
        {
            // Définissez les dimensions et les couleurs de la superposition
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Choisissez la zone à protéger
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Appliquez la superposition et enregistrez le fichier
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Supprimez le contenu sensible dans n'importe quel document"
  description: "GroupDocs.Redaction for Java vous aide à cacher ou supprimer du contenu privé dans plusieurs formats de documents. Assurez-vous que les documents restent propres et sûrs pour la distribution."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Outils de suppression avec un contrôle total"
  features:
    # feature loop
    - title: "Rechercher et remplacer du texte"
      content: "Trouvez le texte sensible dans les documents et remplacez-le pour protéger l'information."

    # feature loop
    - title: "Cacher les images avec des superpositions"
      content: "Utilisez des superpositions pour cacher des images entières ou des sections spécifiques."

    # feature loop
    - title: "Nettoyer les métadonnées"
      content: "Effacez ou éditez les métadonnées cachées pour prévenir les fuites de données."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Masquer les zones d'image avec des superpositions"
      content: |
        Cet exemple de code montre comment masquer des parties sensibles d'image en utilisant des superpositions.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Ouvrez le fichier pour modification
          final Redactor redactor = new Redactor("source.png");
          try
          {
              // Définissez la taille, la couleur et la position de la superposition
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Sélectionnez la zone d'image sur la première page
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Appliquez la superposition pour masquer le contenu
              redactor.apply(redaction);

              // Enregistrez le fichier modifié
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
    title: "Sécurisez des fichiers IMAGE avec des suppressions Java"
    exclude: "IMAGE"
    description: "Avec Java, vous pouvez cacher ou supprimer des contenus sensibles dans des fichiers IMAGE. Une solution fiable pour garder vos documents officiels en sécurité."
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