
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: fr
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Cacher des images dans PDF avec des superpositions en utilisant Java"
head_description: "Avec GroupDocs.Redaction for Java, vous pouvez masquer des images privées dans des fichiers PDF en ajoutant des superpositions colorées. Protégez les visuels sensibles tout en préservant le design de votre document."

############################# Header ############################
title: "Masquer des images confidentielles dans des fichiers PDF avec des superpositions en utilisant Java" 
description: "Protégez les données personnelles et professionnelles dans des fichiers PDF avec Java. Nos outils rendent la suppression d'images simple et efficace."
subtitle: "Fonctionnalités de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java offre aux développeurs Java des outils efficaces pour cacher ou effacer du contenu dans des fichiers PDF. Couvrez le texte, les images et les métadonnées pour maintenir la sécurité de vos documents à travers plusieurs formats.

############################# Steps ############################
steps:
    enable: true
    title: "Protéger les informations professionnelles dans des fichiers Pdf"
    content: |
      GroupDocs.Redaction for Java aide vos applications Java à sécuriser les documents. Masquez les images privées en quelques étapes simples.
      
      1. Initialisez un Redactor et définissez le chemin vers votre fichier Pdf.
      2. Choisissez les paramètres de suppression pour de meilleurs résultats.
      3. Sélectionnez la zone d'image et choisissez une couleur de superposition.
      4. Traitez et enregistrez le fichier sécurisé.
   
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
        // Masquer des images sensibles dans PDF

        // Chargez le fichier avec Redactor
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Définissez la couleur et les dimensions de la superposition
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Sélectionnez la zone cible pour la suppression
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
  title: "Masquer du contenu dans les documents"
  description: "Avec GroupDocs.Redaction for Java, vous pouvez cacher ou supprimer des données sensibles dans divers formats de fichiers. Protégez les informations privées tout en maintenant vos fichiers faciles à lire et à distribuer."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Options de suppression puissantes"
  features:
    # feature loop
    - title: "Modifier le texte partout"
      content: "Trouvez et remplacez des mots sensibles dans votre document pour sécuriser le contenu privé."

    # feature loop
    - title: "Masquer les images"
      content: "Ajoutez des superpositions aux images ou à des parties d'elles pour garder les visuels sensibles cachés."

    # feature loop
    - title: "Nettoyer les métadonnées"
      content: "Supprimez ou modifiez les métadonnées cachées pour empêcher les fuites d'informations non intentionnelles."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Masquer les données d'image avec des superpositions"
      content: |
        Cet exemple montre comment masquer des visuels confidentiels dans des documents en utilisant des superpositions.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Ouvrez le document pour modification
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Définissez la taille, la couleur et la position de la superposition
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Choisissez la zone d'image à masquer sur la première page
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Ajoutez la superposition pour couvrir les données sensibles
              redactor.apply(redaction);

              // Enregistrez le document mis à jour
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
    title: "Protégez les fichiers PDF avec des suppressions Java"
    exclude: "PDF"
    description: "Utilisez Java pour cacher ou supprimer des données sensibles dans des fichiers PDF. Idéal pour sécuriser des documents officiels et privés."
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