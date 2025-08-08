
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: fr
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Masquer des images dans WORD avec des superpositions en utilisant Java"
head_description: "Avec GroupDocs.Redaction for Java, vous pouvez couvrir des images sensibles dans des fichiers WORD en utilisant des superpositions colorées. Protégez vos données privées sans changer la mise en page du document."

############################# Header ############################
title: "Protéger des images sensibles dans des fichiers WORD en utilisant Java" 
description: "Sécurisez les visuels personnels et commerciaux dans des documents WORD avec Java. Suppression d'images rapide et fiable, simplifiée."
subtitle: "Fonctionnalités principales de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java fournit aux développeurs Java des outils simples pour cacher ou effacer du contenu dans des fichiers WORD. Masquez le texte, les images et les métadonnées à travers divers formats.

############################# Steps ############################
steps:
    enable: true
    title: "Gardez les données confidentielles en sécurité dans des fichiers Word"
    content: |
      GroupDocs.Redaction for Java facilite aux applications Java la dissimulation d'informations privées à l'intérieur des documents.
      
      1. Initialisez un Redactor et chargez le fichier Word.
      2. Définissez les paramètres de suppression nécessaires.
      3. Mettez en évidence la zone d'image et sélectionnez une couleur de superposition.
      4. Exécutez la suppression et enregistrez votre document mis à jour.
   
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
        // Masquer le contenu d'image sensible dans WORD

        // Chargez le fichier en utilisant Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Choisissez la couleur et la taille de la superposition
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Marquez la zone d'image à couvrir
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
  title: "Outils pour cacher et supprimer du contenu"
  description: "GroupDocs.Redaction for Java vous aide à cacher ou effacer des données sensibles dans divers formats de fichiers. Gardez vos documents sécurisés et bien structurés."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Fonctionnalités efficaces de suppression"
  features:
    # feature loop
    - title: "Trouver et remplacer du texte"
      content: "Recherchez du texte dans des documents et remplacez-le pour assurer la sécurité des données."

    # feature loop
    - title: "Couvrir des zones d'image"
      content: "Masquez des images entières ou des régions sélectionnées en appliquant des superpositions."

    # feature loop
    - title: "Effacer les métadonnées"
      content: "Supprimez ou modifiez les métadonnées cachées pour protéger des informations confidentielles."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Utilisez des superpositions pour cacher les données d'image"
      content: |
        Cet échantillon montre comment protéger le contenu d'image sensible dans des documents avec des superpositions.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Chargez le document
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Définissez les propriétés de la superposition comme la taille, la position et la couleur
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Marquez la zone d'image sur la première page
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Couvrez la zone avec la superposition
              redactor.apply(redaction);

              // Enregistrez le document supprimé
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
    title: "Masquez du contenu dans des fichiers WORD avec Java"
    exclude: "WORD"
    description: "Utilisez Java pour cacher ou supprimer des données sensibles dans des fichiers WORD. Une manière efficace de garder les documents sécurisés."
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