
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: fr
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Modifier les métadonnées dans JPEG avec Java"
head_description: "Utilisez GroupDocs.Redaction for Java pour nettoyer ou modifier les métadonnées dans des fichiers JPEG. Protégez la vie privée en supprimant les données cachées."

############################# Header ############################
title: "Supprimer les métadonnées des fichiers JPEG en utilisant Java" 
description: "Gardez vos documents JPEG sécurisés avec des outils Java simples qui suppriment les détails privés."
subtitle: "Fonctionnalités principales de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction permet aux développeurs Java de supprimer du texte, des images et des métadonnées indésirables des fichiers JPEG.

############################# Steps ############################
steps:
    enable: true
    title: "Nettoyer les métadonnées dans des documents Jpeg"
    content: |
      GroupDocs.Redaction facilite la suppression des métadonnées dans vos projets Java.
      
      1. Créer un Redactor et ouvrir votre fichier Jpeg.
      2. Sélectionner les options pour supprimer tous les champs de métadonnées.
      3. Exécuter la censure pour nettoyer le fichier.
      4. Enregistrer le fichier mis à jour sans données cachées.
   
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
        // Effacer les métadonnées des fichiers JPEG

        // Charger le fichier en utilisant Redactor
        final Redactor redactor = new Redactor("input.jpg");
        try
        {
            // Configurer les paramètres de nettoyage des métadonnées
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Exécuter et enregistrer les modifications
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Protéger vos documents"
  description: "GroupDocs.Redaction for Java aide à supprimer le contenu privé de nombreux types de documents. Gardez les informations sensibles en dehors de vos fichiers partagés."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Fonctionnalités de censure clés"
  features:
    # feature loop
    - title: "Supprimer le texte"
      content: "Trouvez et effacez des mots ou des phrases personnelles dans vos fichiers."

    # feature loop
    - title: "Masquer le contenu d'image"
      content: "Ajoutez des superpositions pour couvrir des zones des images contenant des informations sensibles."

    # feature loop
    - title: "Modifier les métadonnées"
      content: "Nettoyez ou changez les champs de métadonnées pour éviter d'exposer des informations privées."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Supprimer les champs de métadonnées cachées"
      content: |
        Cet exemple montre comment supprimer ou modifier des métadonnées telles que Auteur et Titre dans des documents JPEG.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Ouvrir le fichier JPEG avec le redactor
          final Redactor redactor = new Redactor("source.jpg");
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
    title: "Supprimer les métadonnées de JPEG avec Java"
    exclude: "JPEG"
    description: "Utilisez Java pour supprimer les données cachées des fichiers JPEG et protéger les informations sensibles."
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