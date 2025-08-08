
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: fr
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Supprimer les métadonnées des fichiers PPTX avec Java"
head_description: "Utilisez GroupDocs.Redaction for Java pour supprimer ou modifier les métadonnées cachées dans vos fichiers PPTX. Protégez votre contenu et gardez vos documents propres."

############################# Header ############################
title: "Nettoyer les métadonnées dans PPTX avec les outils Java" 
description: "Effacez les détails personnels stockés dans les métadonnées en utilisant Java. Idéal pour les documents personnels et professionnels."
subtitle: "Fonctionnalités clés de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction fournit aux développeurs Java des outils pour supprimer le contenu privé dans des fichiers PPTX. Supprimez les métadonnées, cachez les images et nettoyez le texte de manière efficace.

############################# Steps ############################
steps:
    enable: true
    title: "Supprimer les métadonnées dans des fichiers Pptx"
    content: |
      Avec GroupDocs.Redaction, vos projets Java peuvent nettoyer les métadonnées cachées en quelques étapes.
      
      1. Configurer un Redactor et charger votre fichier Pptx.
      2. Sélectionner les champs de métadonnées à effacer.
      3. Exécuter le processus de censure.
      4. Enregistrer le fichier avec les métadonnées supprimées.
   
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
        // Supprimer les métadonnées des fichiers PPTX

        // Utilisez Redactor pour ouvrir le fichier
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Configurer les champs de métadonnées à supprimer
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
  title: "Plus d'outils de censure à votre disposition"
  description: "GroupDocs.Redaction for Java vous aide à effacer les informations sensibles de tous les principaux types de fichiers. Gardez les documents propres et prêts à être partagés."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Fonctionnalités de confidentialité intégrées"
  features:
    # feature loop
    - title: "Supprimer du texte sensible"
      content: "Trouvez et supprimez des noms, des e-mails et d'autres informations personnelles de vos fichiers."

    # feature loop
    - title: "Masquer des parties d'images"
      content: "Ajoutez des superpositions pour couvrir les zones d'images que vous souhaitez garder privées."

    # feature loop
    - title: "Nettoyer les métadonnées"
      content: "Effacez les données de fond comme l'auteur ou le titre avant de partager vos fichiers."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Exemple de suppression des champs de métadonnées"
      content: |
        Cet exemple montre comment vous pouvez supprimer des métadonnées comme auteur et titre d'un fichier PPTX.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Ouvrir votre fichier PPTX
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Cibler la métadonnée Auteur
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Cibler la métadonnée Titre
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Appliquer les règles de censure
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Enregistrer le fichier caviardé
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
    title: "Supprimer les métadonnées de PPTX avec Java"
    exclude: "PPTX"
    description: "Java rend simple la suppression des données cachées dans les fichiers PPTX. Idéal pour garantir la sécurité des documents avant le partage."
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