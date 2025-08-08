
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: fr
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Supprimer les métadonnées de EXCEL avec Java"
head_description: "Protégez vos documents EXCEL en effaçant les métadonnées cachées à l'aide de GroupDocs.Redaction for Java. Gardez les détails privés sous contrôle."

############################# Header ############################
title: "Effacer les métadonnées dans des fichiers EXCEL en utilisant Java" 
description: "Avec Java, supprimez les données sensibles dans des fichiers EXCEL. Une manière intelligente de garder vos documents sécurisés."
subtitle: "Pourquoi choisir GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction donne aux développeurs Java les outils pour contrôler le contenu dans des fichiers EXCEL. Supprimez du texte, des métadonnées et des images selon vos besoins.

############################# Steps ############################
steps:
    enable: true
    title: "Comment supprimer les métadonnées des fichiers Excel"
    content: |
      Dans Java, GroupDocs.Redaction simplifie le nettoyage des métadonnées des documents.
      
      1. Créez un Redactor et chargez votre fichier Excel.
      2. Définissez des règles pour supprimer les champs de données cachés.
      3. Exécutez le processus de nettoyage.
      4. Enregistrer le document nettoyé.
   
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
        // Supprimer les métadonnées cachées de EXCEL

        // Démarrer la censure et ouvrir le fichier
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Configurer les options pour la suppression des métadonnées
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Nettoyer et enregistrer le document
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Supprimer le contenu sensible des fichiers"
  description: "Avec GroupDocs.Redaction for Java, vous pouvez supprimer des métadonnées, censurez le texte et masquer des parties d'image dans de nombreux types de fichiers. Idéal pour l'usage légal, personnel ou d'entreprise."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Outils pour nettoyer les métadonnées et le contenu"
  features:
    # feature loop
    - title: "Chercher et supprimer du texte"
      content: "Recherchez du texte sensible et effacez-le pour protéger les informations."

    # feature loop
    - title: "Couvrir le contenu d'image"
      content: "Masquez les sections d'images confidentielles à l'aide de superpositions."

    # feature loop
    - title: "Supprimer les métadonnées"
      content: "Supprimez les détails intégrés qui pourraient contenir des données privées."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Concentrez-vous sur des champs spécifiques de métadonnées"
      content: |
        Cet exemple montre comment retirer des champs comme Auteur et Titre d'un fichier EXCEL.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Charger le fichier dans le redactor
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Sélectionner le champ Auteur
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Sélectionner le champ Titre
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
    title: "Nettoyage des métadonnées dans EXCEL avec Java"
    exclude: "EXCEL"
    description: "Utilisez les outils Java pour supprimer des données cachées des fichiers EXCEL. Partagez des documents nets et sécurisés."
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