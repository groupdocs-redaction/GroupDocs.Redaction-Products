
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: fr
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Supprimer les métadonnées de DOCX avec Java"
head_description: "Utilisez GroupDocs.Redaction for Java pour nettoyer les métadonnées cachées dans vos fichiers DOCX. Assurez-vous que vos documents ne révèlent pas d'informations privées."

############################# Header ############################
title: "Nettoyez les métadonnées dans des documents DOCX avec Java" 
description: "Supprimez les métadonnées non désirées de vos fichiers DOCX avec Java. Gardez vos fichiers privés et sécurisés pour le partage ou le stockage."
subtitle: "Outils clés à l'intérieur de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction aide les développeurs Java à supprimer le contenu privé des fichiers DOCX. Censurez le texte, les images et les métadonnées efficacement.

############################# Steps ############################
steps:
    enable: true
    title: "Effacer les informations cachées des fichiers Docx"
    content: |
      GroupDocs.Redaction facilite la suppression des métadonnées dans vos applications Java.
      
      1. Initialiser Redactor et charger le fichier Docx.
      2. Configurer l'outil pour supprimer des champs de métadonnées spécifiques.
      3. Appliquer la censure pour supprimer les informations cachées.
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
        // Supprimer les métadonnées des fichiers DOCX

        // Ouvrez le fichier avec Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Choisissez quelles métadonnées supprimer
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Appliquer et enregistrer les modifications
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Protéger les données sensibles dans les documents"
  description: "GroupDocs.Redaction for Java vous permet de cacher le contenu privé de tous types de fichiers. Assurez-vous qu'aucune donnée cachée ne soit partagée."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Outils de censure des métadonnées, du texte et d'image"
  features:
    # feature loop
    - title: "Censure de texte"
      content: "Trouvez et supprimez des textes sensibles dans votre document."

    # feature loop
    - title: "Superpositions d'image"
      content: "Masquer des parties d'images pour cacher des visuels privés."

    # feature loop
    - title: "Nettoyage des métadonnées"
      content: "Supprimez les métadonnées de fond qui peuvent révéler des informations cachées."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Comment supprimer les métadonnées"
      content: |
        Cet exemple montre comment supprimer des propriétés cachées comme Auteur et Titre d'un fichier DOCX.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Ouvrez votre document DOCX
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Sélectionnez le champ Auteur à nettoyer
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Sélectionnez le champ Titre à nettoyer
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Exécutez la censure
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Enregistrez le fichier final
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
    title: "Nettoyer les métadonnées de DOCX avec Java"
    exclude: "DOCX"
    description: "Utilisez Java pour supprimer les métadonnées cachées des documents DOCX. Excellent pour la confidentialité et la protection des données."
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