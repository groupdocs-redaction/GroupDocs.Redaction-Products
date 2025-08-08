
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: fr
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Masquer des images dans DOCX avec des superpositions en utilisant Java"
head_description: "Avec GroupDocs.Redaction for Java, vous pouvez cacher facilement des images sensibles dans des fichiers DOCX en appliquant des superpositions colorées. Protégez les informations privées sans changer la mise en page de votre document."

############################# Header ############################
title: "Masquer des images confidentielles dans des documents DOCX avec des superpositions en utilisant Java" 
description: "Protégez les données personnelles et professionnelles dans des fichiers DOCX en utilisant Java. Nos outils vous aident à garder les informations sensibles en sécurité et vos documents propres."
subtitle: "Fonctionnalités clés de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java offre aux développeurs Java des outils pour cacher ou effacer du contenu dans des fichiers DOCX. Protégez le texte, les images et les métadonnées dans différents formats de documents.

############################# Steps ############################
steps:
    enable: true
    title: "Sécuriser les données dans des documents Docx"
    content: |
      GroupDocs.Redaction for Java donne à vos applications Java le pouvoir de supprimer des documents. Couvrez le contenu privé rapidement et efficacement.
      
      1. Créez un Redactor et définissez le chemin du fichier vers votre document Docx.
      2. Ajustez les paramètres de suppression selon vos besoins.
      3. Choisissez la zone d'image que vous souhaitez couvrir et sélectionnez une couleur de superposition.
      4. Exécutez le processus de suppression et enregistrez le fichier.
   
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
        // Masquer les sections d'image sensibles dans DOCX

        // Chargez le document en utilisant Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Définissez la couleur et les dimensions de la superposition
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Marquez la zone à masquer
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
  title: "Masquer du contenu sensible dans les fichiers"
  description: "Avec GroupDocs.Redaction for Java, vous pouvez facilement supprimer ou supprimer du contenu de plusieurs types de fichiers. Gardez vos documents sécurisés et lisibles."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Fonctionnalités de suppression pour les documents"
  features:
    # feature loop
    - title: "Modifier le contenu texte"
      content: "Trouvez et remplacez le texte sensible dans vos fichiers pour maintenir la confidentialité des données."

    # feature loop
    - title: "Superposer des images"
      content: "Couvrez des images entières ou des parties sélectionnées pour cacher des informations visuelles confidentielles."

    # feature loop
    - title: "Supprimer les métadonnées"
      content: "Nettoyez les métadonnées cachées des documents pour prévenir l'exposition des données."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Superposez des images pour masquer des données sensibles"
      content: |
        Cet exemple montre comment appliquer des superpositions pour couvrir des zones d'image confidentielles dans des documents.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Ouvrez le document pour modification
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Définissez la taille, la couleur et la position de la superposition
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Sélectionnez une zone cible sur la première page
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Appliquez la superposition pour couvrir l'image
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
    title: "Supprimez des fichiers DOCX avec Java"
    exclude: "DOCX"
    description: "Utilisez Java pour cacher ou supprimer des données privées dans des fichiers DOCX. Parfait pour garder des documents d'affaires et confidentiels sécurisés."
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