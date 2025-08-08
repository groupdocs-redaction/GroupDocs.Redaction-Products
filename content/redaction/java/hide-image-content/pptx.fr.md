
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: fr
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Masquer des images dans PPTX avec des superpositions en utilisant Java"
head_description: "Avec GroupDocs.Redaction for Java, vous pouvez masquer des images sensibles dans des fichiers PPTX en ajoutant des superpositions colorées. Protégez les informations confidentielles tout en préservant la mise en page du document."

############################# Header ############################
title: "Masquer des images sensibles dans des documents PPTX en utilisant Java" 
description: "Protégez les données personnelles et professionnelles dans des fichiers PPTX avec Java. Nos outils rendent la suppression d'images rapide et simple."
subtitle: "Avantages clés de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java fournit aux développeurs Java des outils pratiques pour cacher ou supprimer du contenu dans des fichiers PPTX. Protégez vos documents en masquant du texte, des images et des métadonnées.

############################# Steps ############################
steps:
    enable: true
    title: "Protéger des données privées dans des documents Pptx"
    content: |
      GroupDocs.Redaction for Java facilite la sécurisation des documents pour les applications Java en masquant le contenu sensible.
      
      1. Initialisez un Redactor et chargez le fichier Pptx.
      2. Définissez les options de suppression selon vos besoins.
      3. Sélectionnez les zones d'image et définissez les couleurs des superpositions.
      4. Appliquez la suppression et enregistrez le fichier mis à jour.
   
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
        // Masquer des sections d'image sensibles dans PPTX

        // Ouvrez le document en utilisant Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Choisissez la couleur et la taille de la superposition
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Mettez en évidence la zone à cacher
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Appliquez les modifications et enregistrez le document
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Outils de suppression de contenu"
  description: "GroupDocs.Redaction for Java vous aide à masquer ou supprimer des informations sensibles dans de nombreux formats de fichiers. Gardez les documents sécurisés tout en préservant un aspect professionnel."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Fonctionnalités avancées de suppression"
  features:
    # feature loop
    - title: "Trouver et remplacer du texte"
      content: "Recherchez rapidement du texte privé et supprimez-le pour sécuriser les documents."

    # feature loop
    - title: "Couvrir les images avec des superpositions"
      content: "Masquez des images entières ou des zones sélectionnées en appliquant des superpositions."

    # feature loop
    - title: "Nettoyer les métadonnées"
      content: "Supprimez ou modifiez les métadonnées cachées pour prévenir le partage d'informations confidentielles."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Couvrir les données d'image avec des superpositions"
      content: |
        Cet exemple montre comment couvrir des images sensibles dans vos documents.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Chargez votre document
          final Redactor redactor = new Redactor("source.pptx");
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

              // Appliquez la superposition pour la couvrir
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
    title: "Supprimez le contenu PPTX en utilisant Java"
    exclude: "PPTX"
    description: "Appliquez Java pour masquer ou supprimer des contenus sensibles dans des fichiers PPTX. Une solution fiable pour la protection des documents."
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