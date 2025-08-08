
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: fr
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Cacher des images sensibles dans POWERPOINT avec des superpositions en utilisant Java"
head_description: "Masquez le contenu d'images privées dans des fichiers POWERPOINT avec GroupDocs.Redaction for Java. Ajoutez des superpositions pour garder les documents sécurisés sans affecter la mise en page."

############################# Header ############################
title: "Protéger des images privées dans des documents POWERPOINT avec des superpositions en utilisant Java" 
description: "Gardez les images personnelles et commerciales en sécurité dans des fichiers POWERPOINT avec Java. Outils faciles à utiliser pour une protection de la vie privée solide."
subtitle: "Fonctionnalités principales de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java permet aux développeurs Java de cacher ou d'effacer du contenu dans des fichiers POWERPOINT. Sécurisez vos documents en masquant le texte, les images et les métadonnées.

############################# Steps ############################
steps:
    enable: true
    title: "Masquer des données sensibles dans des documents Powerpoint"
    content: |
      GroupDocs.Redaction for Java aide vos applications Java à masquer rapidement le contenu privé dans les documents.
      
      1. Créez un objet Redactor et chargez le fichier Powerpoint.
      2. Définissez les préférences de suppression pour la tâche.
      3. Choisissez la zone d'image et sélectionnez une couleur de superposition.
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
        // Masquer les données image dans des fichiers POWERPOINT

        // Ouvrez le fichier avec Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Définissez la couleur et la taille de la superposition
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Sélectionnez la zone à masquer
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
  description: "GroupDocs.Redaction for Java vous aide à couvrir ou supprimer du contenu privé dans différents formats de documents. Gardez vos fichiers sécurisés pour le partage et le stockage."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Outils de suppression pour chaque besoin"
  features:
    # feature loop
    - title: "Rechercher et remplacer du texte"
      content: "Trouvez des mots sensibles et remplacez-les pour garantir la confidentialité des données."

    # feature loop
    - title: "Couvrir des zones d'image"
      content: "Appliquez des superpositions aux images ou à des parties d'images pour les garder privées."

    # feature loop
    - title: "Supprimer les métadonnées cachées"
      content: "Effacez les métadonnées invisibles pour éviter les fuites de données."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Masquer le contenu d'image avec des superpositions"
      content: |
        Cet exemple montre comment placer des superpositions sur des zones d'image sensibles dans des documents.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Chargez le fichier pour la suppression
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Définissez la taille, la couleur et la position de la superposition
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Marquez la section d'image sur la première page
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Appliquez la superposition pour couvrir les données
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
    title: "Protégez les fichiers POWERPOINT avec des suppressions Java"
    exclude: "POWERPOINT"
    description: "Avec Java, vous pouvez couvrir ou supprimer des données sensibles dans des fichiers POWERPOINT. Une solution fiable pour la sécurité des documents."
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