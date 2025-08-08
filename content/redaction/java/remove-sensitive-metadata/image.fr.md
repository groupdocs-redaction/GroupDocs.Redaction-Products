
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: fr
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Supprimer les métadonnées cachées dans IMAGE avec Java"
head_description: "Utilisez GroupDocs.Redaction for Java pour nettoyer les métadonnées dans des fichiers IMAGE. Assurez-vous que les informations privées restent cachées."

############################# Header ############################
title: "Effacer les métadonnées des fichiers IMAGE avec Java" 
description: "Gardez vos documents IMAGE sécurisés à l'aide d'outils conçus pour Java. Supprimez les détails sensibles efficacement."
subtitle: "Ce que vous pouvez faire avec GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction permet aux développeurs Java de supprimer du contenu sensible — y compris du texte, des images et des métadonnées — des fichiers IMAGE.

############################# Steps ############################
steps:
    enable: true
    title: "Comment nettoyer les métadonnées dans des fichiers Image"
    content: |
      Commencez à utiliser GroupDocs.Redaction dans votre application Java pour supprimer rapidement les métadonnées cachées.
      
      1. Créer un Redactor et ouvrir votre document Image.
      2. Sélectionner les champs de métadonnées à supprimer.
      3. Appliquer les paramètres de censure.
      4. Enregistrer le fichier nettoyé.
   
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
        // Nettoyer les métadonnées cachées dans IMAGE

        // Charger votre fichier avec Redactor
        final Redactor redactor = new Redactor("input.png");
        try
        {
            // Configurer les champs de métadonnées à effacer
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Appliquer les modifications et enregistrer
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nettoyez le contenu de n'importe quel fichier"
  description: "GroupDocs.Redaction for Java aide à supprimer du texte privé, des détails d'image cachés et des métadonnées de vos documents avant le partage."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Fonctionnalités principales"
  features:
    # feature loop
    - title: "Nettoyage de texte"
      content: "Recherchez des mots ou des chiffres privés et retirerez-les en toute sécurité."

    # feature loop
    - title: "Masquer des zones d'image"
      content: "Masquez les parties sensibles d'images à l'aide de superpositions."

    # feature loop
    - title: "Suppression des métadonnées"
      content: "Effacez les champs de métadonnées qui peuvent contenir des informations privées."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Supprimer les métadonnées sensibles"
      content: |
        Ce guide montre comment nettoyer des champs tels que Auteur et Titre d'un document IMAGE.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Ouvrir IMAGE dans le redactor
          final Redactor redactor = new Redactor("source.png");
          try
          {
              // Sélectionnez la métadonnée Auteur
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Sélectionnez la métadonnée Titre
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Appliquer la censure
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Enregistrer le fichier final
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "Nettoyer les métadonnées dans IMAGE avec Java"
    exclude: "IMAGE"
    description: "Utilisez Java pour effacer les données cachées dans des fichiers IMAGE. Idéal pour le nettoyage des documents avant le partage ou l'archivage."
    items: 
        # format loop 1
        - name: "Rédaction PDF"
          format: "PDF"
          link: "/redaction/java/remove-sensitive-metadata//pdf/"
          description: "Format de Document Portable Adobe"

        # format loop 2
        - name: "Rédaction Word"
          format: "WORD"
          link: "/redaction/java/remove-sensitive-metadata//word/"
          description: "Documents MS Word et Open Office"
          
        # format loop 3
        - name: "Rédaction Excel"
          format: "EXCEL"
          link: "/redaction/java/remove-sensitive-metadata//excel/"
          description: "Feuilles de calcul MS Excel et Open Office"

        # format loop 4
        - name: "Rédaction PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/remove-sensitive-metadata//powerpoint/"
          description: "Présentations MS PowerPoint et Open Office"

        # format loop 5
        - name: "Rédaction Image"
          format: "IMAGE"
          link: "/redaction/java/remove-sensitive-metadata//image/"
          description: "Formats d'image populaires"

        # format loop 6
        - name: "Rédaction Photo"
          format: "PHOTO"
          link: "/redaction/java/remove-sensitive-metadata//photo/"
          description: "Formats photo"

        # format loop 7
        - name: "Rédaction DOCX"
          format: "DOCX"
          link: "/redaction/java/remove-sensitive-metadata//docx/"
          description: "Document Microsoft Word Open XML"
          
        # format loop 8
        - name: "Rédaction XLSX"
          format: "XLSX"
          link: "/redaction/java/remove-sensitive-metadata//xlsx/"
          description: "Tableur Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Rédaction PPTX"
          format: "PPTX"
          link: "/redaction/java/remove-sensitive-metadata//pptx/"
          description: "Présentation PowerPoint Open XML"

        # format loop 10
        - name: "Rédaction JPEG"
          format: "JPEG"
          link: "/redaction/java/remove-sensitive-metadata//jpeg/"
          description: "Image JPEG"


---