
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: fr
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Supprimer les métadonnées de POWERPOINT avec Java"
head_description: "Utilisez GroupDocs.Redaction for Java pour nettoyer les métadonnées cachées des fichiers POWERPOINT et garder vos documents privés et sécurisés."

############################# Header ############################
title: "Supprimer les métadonnées dans POWERPOINT avec Java" 
description: "Protégez vos fichiers avec des outils faciles à utiliser conçus pour Java. Supprimez les métadonnées en quelques étapes."
subtitle: "Ce que vous obtenez avec GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction est un outil de censure pour les développeurs Java. Il vous aide à nettoyer le texte, les images et les métadonnées dans des fichiers POWERPOINT.

############################# Steps ############################
steps:
    enable: true
    title: "Comment nettoyer les métadonnées des fichiers Powerpoint"
    content: |
      Avec GroupDocs.Redaction, vos applications Java peuvent rapidement nettoyer les métadonnées des documents.
      
      1. Créer un objet Redactor et charger le document.
      2. Sélectionner les champs de métadonnées à supprimer.
      3. Appliquer vos paramètres de censure.
      4. Exporter votre document sans les données cachées.
   
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
        // Supprimer les métadonnées des fichiers POWERPOINT

        // Ouvrez votre fichier avec le redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Configurez quels métadonnées supprimer
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Nettoyez et enregistrez le fichier
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Gardez vos fichiers en sécurité avec la censure"
  description: "GroupDocs.Redaction for Java aide à nettoyer le contenu privé ou caché pour que les documents puissent être partagés en toute sécurité. Prend en charge de nombreux types de fichiers."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Ce que vous pouvez censurer"
  features:
    # feature loop
    - title: "Supprimer le texte sensible"
      content: "Trouvez et effacez des mots personnels ou confidentiels de vos fichiers."

    # feature loop
    - title: "Masquer des parties d'images"
      content: "Ajoutez des superpositions pour couvrir des zones d'images que vous ne souhaitez pas montrer."

    # feature loop
    - title: "Nettoyer les métadonnées"
      content: "Effacez les champs qui pourraient révéler des détails cachés."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Supprimer les champs de métadonnées cachés"
      content: |
        Cet exemple montre comment effacer des informations intégrées telles que l'Auteur et le Titre d'un document POWERPOINT.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Ouvrir le fichier avec le redactor
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Supprimer le champ Auteur
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Supprimer le champ Titre
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Appliquer la censure
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Enregistrer le document mis à jour
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
    title: "Nettoyez les métadonnées de POWERPOINT dans Java"
    exclude: "POWERPOINT"
    description: "Utilisez Java pour supprimer des données privées des fichiers POWERPOINT. Parfait pour nettoyer et partager des documents sensibles."
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