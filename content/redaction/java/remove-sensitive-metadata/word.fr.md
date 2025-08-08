
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: fr
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Supprimer les métadonnées de WORD avec Java"
head_description: "Avec GroupDocs.Redaction for Java, vous pouvez rapidement supprimer les métadonnées cachées des fichiers WORD. Gardez vos documents sécurisés et privés."

############################# Header ############################
title: "Nettoyer les métadonnées cachées dans des fichiers WORD avec Java" 
description: "Protégez vos fichiers WORD en supprimant les informations privées par le biais des outils Java. Idéal pour un usage professionnel et personnel."
subtitle: "Comment GroupDocs.Redaction for Java peut vous aider" 

############################# About ############################
about:
    enable: true
    title: "En savoir plus sur GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction fournit aux développeurs Java tout ce qu'il leur faut pour retirer des données des fichiers WORD. Nettoyez les métadonnées, le texte et les images efficacement.

############################# Steps ############################
steps:
    enable: true
    title: "Effacer les métadonnées dans des fichiers Word"
    content: |
      Utilisez GroupDocs.Redaction pour nettoyer les métadonnées des documents dans vos applications Java.
      
      1. Démarrer un objet Redactor et charger votre fichier Word.
      2. Définir des règles pour supprimer des champs de métadonnées cachés.
      3. Appliquer la censure pour effacer les métadonnées.
      4. Enregistrer le fichier mis à jour.
   
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
        // Supprimer les métadonnées cachées de WORD

        // Charger le fichier avec Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Configurer les paramètres de censure des métadonnées
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Exécuter la censure et enregistrer
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Plus d'outils pour supprimer les informations privées"
  description: "Utilisez GroupDocs.Redaction for Java pour nettoyer le texte, les images et les métadonnées de nombreux formats de fichiers. Partagez vos fichiers sans exposer des données sensibles."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Fonctionnalités de censure des métadonnées et du contenu"
  features:
    # feature loop
    - title: "Supprimer le texte privé"
      content: "Recherchez du contenu sensible dans les fichiers et supprimez-le ou modifiez-le selon vos besoins."

    # feature loop
    - title: "Couvrir les zones d'image"
      content: "Masquez des parties spécifiques d'images qui peuvent contenir des détails privés."

    # feature loop
    - title: "Supprimer les champs de métadonnées"
      content: "Supprimez les balises cachées telles que l'auteur, le titre, et plus encore pour garantir la confidentialité."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Nettoyer les champs de métadonnées dans les documents"
      content: |
        Cet exemple montre comment effacer des métadonnées telles que Auteur et Titre dans un fichier WORD.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Charger le fichier pour le traitement
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Effacer le champ Auteur
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Effacer le champ Titre
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Exécuter la censure
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Enregistrer le fichier nettoyé
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
    title: "Effacer les métadonnées dans WORD avec Java"
    exclude: "WORD"
    description: "Java vous permet de nettoyer les métadonnées cachées des fichiers WORD. Un moyen simple de protéger vos documents."
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