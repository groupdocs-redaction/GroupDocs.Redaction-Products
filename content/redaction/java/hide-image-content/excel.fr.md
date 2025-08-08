
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: fr
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Masquer des images dans EXCEL avec des superpositions en utilisant Java"
head_description: "Utilisez GroupDocs.Redaction for Java pour couvrir des images sensibles dans des fichiers EXCEL. Ajoutez des superpositions colorées pour protéger des informations privées tout en maintenant le design du document intact."

############################# Header ############################
title: "Masquer des images sensibles dans des fichiers EXCEL avec des superpositions en utilisant Java" 
description: "Protégez les images personnelles et commerciales dans des fichiers EXCEL avec Java. Outils simples conçus pour une protection rapide et efficace."
subtitle: "Découvrez les fonctionnalités de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java permet aux développeurs Java de cacher ou de supprimer du contenu dans des fichiers EXCEL. Couvrez le texte, les images et les métadonnées pour protéger des données sensibles.

############################# Steps ############################
steps:
    enable: true
    title: "Sécurisez vos données dans des fichiers Excel"
    content: |
      GroupDocs.Redaction for Java aide les applications Java à cacher du contenu sensible à l'intérieur des documents facilement.
      
      1. Créez un objet Redactor et chargez votre fichier Excel.
      2. Définissez les options de suppression selon vos besoins.
      3. Choisissez la zone d'image à couvrir et sélectionnez une couleur de superposition.
      4. Appliquez la suppression et enregistrez votre document.
   
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
        // Masquer le contenu d'image dans EXCEL

        // Ouvrez le fichier avec Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Définissez la taille et la couleur de la superposition
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Marquez la zone que vous souhaitez cacher
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Appliquez les modifications et enregistrez le fichier
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Masquer ou supprimer du contenu dans des documents"
  description: "GroupDocs.Redaction for Java vous permet de cacher ou d'effacer des données sensibles dans plusieurs types de fichiers. Gardez vos documents clairs et sécurisés."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Fonctionnalités de suppression avancées"
  features:
    # feature loop
    - title: "Trouver et remplacer du texte"
      content: "Recherchez des documents pour du texte privé et remplacez-le afin de garder les données en sécurité."

    # feature loop
    - title: "Couvrir des zones d'image"
      content: "Masquez des parties d'images ou des visuels entiers avec des superpositions colorées."

    # feature loop
    - title: "Nettoyer les métadonnées"
      content: "Supprimez les métadonnées cachées pour éviter de partager des informations supplémentaires."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Masquer les données d'image avec des superpositions"
      content: |
        Cet exemple montre comment cacher des zones d'image sensibles dans des documents en utilisant des superpositions.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Ouvrez le fichier pour modification
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Définissez les dimensions de la superposition, la couleur et la position
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Choisissez la section d'image sur la première page
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Appliquez la superposition pour cacher les données
              redactor.apply(redaction);

              // Enregistrez votre document supprimé
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
    title: "Sécurisez les fichiers EXCEL avec la suppression Java"
    exclude: "EXCEL"
    description: "Utilisez Java pour masquer ou effacer des informations privées dans des fichiers EXCEL. Une façon simple de garantir la confidentialité des documents."
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