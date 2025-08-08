
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: fr
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Cacher des images dans JPEG avec des superpositions en utilisant Java"
head_description: "Gardez les images sensibles privées dans des fichiers JPEG avec GroupDocs.Redaction for Java. Ajoutez des superpositions pour cacher des informations sans changer la mise en page de votre document."

############################# Header ############################
title: "Masquer des images sensibles dans des fichiers JPEG avec des superpositions en utilisant Java" 
description: "Protégez les images personnelles et professionnelles dans des fichiers JPEG avec Java. Outils simples pour vous aider à sécuriser rapidement vos documents."
subtitle: "Fonctionnalités clés de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que GroupDocs.Redaction for Java ?"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java fournit aux développeurs Java des outils pour cacher ou supprimer du contenu dans des fichiers JPEG. Sécurisez vos documents en couvrant facilement le texte, les images et les métadonnées.

############################# Steps ############################
steps:
    enable: true
    title: "Masquer des données privées dans des fichiers Jpeg"
    content: |
      GroupDocs.Redaction for Java rend rapide pour vos applications Java de couvrir du contenu privé.
      
      1. Initialisez un Redactor et chargez votre fichier Jpeg.
      2. Ajustez les paramètres de suppression selon vos besoins.
      3. Sélectionnez la zone d'image et choisissez une couleur de superposition.
      4. Appliquez la suppression et enregistrez le fichier.
   
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
        // Masquer les données d'image dans des fichiers JPEG

        // Ouvrez le fichier en utilisant Redactor
        final Redactor redactor = new Redactor("input.jpg");
        try
        {
            // Définissez la taille et la couleur de la superposition
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Choisissez la zone à couvrir
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Appliquez la superposition et enregistrez les modifications
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Masquer des données sensibles dans des documents"
  description: "GroupDocs.Redaction for Java vous aide à cacher ou à supprimer du contenu privé de plusieurs types de fichiers. Assurez-vous que vos documents restent propres et prêts à être partagés."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Fonctionnalités de suppression tout-en-un"
  features:
    # feature loop
    - title: "Trouver et remplacer du texte"
      content: "Recherchez vos documents pour du texte privé et remplacez-le pour protéger les données sensibles."

    # feature loop
    - title: "Couvrir le contenu des images"
      content: "Utilisez des superpositions pour cacher des images entières ou des parties sélectionnées."

    # feature loop
    - title: "Supprimer les métadonnées"
      content: "Effacez les métadonnées cachées pour prévenir l'exposition accidentelle d'informations sensibles."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Utilisez des superpositions pour cacher le contenu d'image"
      content: |
        Cet exemple montre comment protéger des zones d'image sensibles dans des documents en utilisant des superpositions.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Chargez le fichier pour la suppression
          final Redactor redactor = new Redactor("source.jpg");
          try
          {
              // Définissez la taille, la couleur et la position de la superposition
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Sélectionnez une zone d'image sur la première page
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Appliquez la superposition pour cacher l'image
              redactor.apply(redaction);

              // Enregistrez le fichier mis à jour
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
    title: "Sécurisez des fichiers JPEG avec les suppressions Java"
    exclude: "JPEG"
    description: "Utilisez Java pour cacher ou supprimer des données sensibles dans des fichiers JPEG. Une solution de confiance pour protéger vos documents importants."
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