
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: fr
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Cacher des images dans des fichiers XLSX avec des superpositions en utilisant Java"
head_description: "Utilisez GroupDocs.Redaction for Java pour couvrir des images sensibles dans des fichiers XLSX en ajoutant des superpositions colorées. Protégez des données importantes tout en gardant la structure de votre document inchangée."

############################# Header ############################
title: "Cacher des images privées dans des documents XLSX en utilisant Java" 
description: "Gardez le contenu d'image sensible en sécurité dans des fichiers XLSX avec Java. Nos outils faciles à utiliser rendent la suppression d'images rapide et fiable."
subtitle: "Fonctionnalités clés de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java fournit aux développeurs Java des outils simples pour cacher ou supprimer des contenus sensibles de fichiers XLSX. Masquez le texte, les images et les métadonnées à travers différents types de documents.

############################# Steps ############################
steps:
    enable: true
    title: "Protégez vos données dans des documents Xlsx"
    content: |
      GroupDocs.Redaction for Java aide vos applications Java à protéger des documents avec des étapes simples.
      
      1. Initialisez un Redactor et chargez votre document Xlsx.
      2. Définissez les options de suppression pour correspondre à votre projet.
      3. Sélectionnez la section d'image et choisissez une couleur de superposition.
      4. Appliquez la suppression et enregistrez votre fichier.
   
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
        // Couvrez les zones d'image sensibles dans XLSX

        // Créez un Redactor avec le chemin du fichier
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Choisissez la dimension et la couleur de la superposition
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Sélectionnez la zone à masquer
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Appliquez la superposition et enregistrez le document
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Fonctionnalités avancées de suppression"
  description: "Avec GroupDocs.Redaction for Java, vous pouvez cacher ou effacer du contenu sensible dans divers types de fichiers tout en gardant la mise en page du document nette et lisible."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Outils de suppression puissants"
  features:
    # feature loop
    - title: "Trouver et remplacer du texte"
      content: "Recherchez du texte privé et supprimez-le pour sécuriser vos documents."

    # feature loop
    - title: "Cacher le contenu d'image"
      content: "Appliquez des superpositions pour cacher des images confidentielles ou des sections spécifiques."

    # feature loop
    - title: "Nettoyer les métadonnées cachées"
      content: "Supprimez ou mettez à jour des métadonnées pour éviter de partager des détails privés par accident."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Masquez les détails de l'image en utilisant des superpositions"
      content: |
        Découvrez comment protéger des parties sensibles des images dans vos documents avec des superpositions.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Chargez le document à supprimer
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Définissez la taille, la couleur et la position de la superposition
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Sélectionnez une zone d'image spécifique
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Appliquez la superposition pour masquer l'image
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
    title: "Couvrir le contenu XLSX avec des suppressions Java"
    exclude: "XLSX"
    description: "Utilisez Java pour masquer ou effacer le contenu privé dans des fichiers XLSX. Une solution intelligente pour sécuriser des documents professionnels et personnels."
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