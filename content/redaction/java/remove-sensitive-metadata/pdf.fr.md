
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: fr
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Nettoyer les métadonnées dans des PDF avec Java"
head_description: "Utilisez GroupDocs.Redaction for Java pour supprimer ou mettre à jour les métadonnées cachées dans les fichiers PDF. Retirez les informations privées avant de partager vos documents."

############################# Header ############################
title: "Retirer les métadonnées des fichiers PDF avec Java" 
description: "Protégez vos informations personnelles et professionnelles dans vos fichiers PDF avec Java. Des outils simples pour protéger vos données."
subtitle: "Fonctionnalités principales de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction fournit aux développeurs Java des outils pour cacher du texte, du contenu d'images et des métadonnées dans des documents PDF.

############################# Steps ############################
steps:
    enable: true
    title: "Nettoyer les métadonnées dans des documents Pdf"
    content: |
      Commencez avec GroupDocs.Redaction pour protéger les métadonnées dans vos projets Java.
      
      1. Configurer un Redactor et ouvrir votre fichier Pdf.
      2. Choisir de supprimer tous les champs de métadonnées.
      3. Exécuter la censure pour effacer les données cachées.
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
        // Nettoyer les métadonnées dans des fichiers PDF

        // Utiliser Redactor pour ouvrir le fichier
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Configurer les paramètres de censure des métadonnées
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Appliquer et enregistrer vos modifications
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Supprimer les informations sensibles des fichiers"
  description: "GroupDocs.Redaction for Java vous permet de nettoyer le contenu privé dans différents formats de documents. Gardez vos fichiers sécurisés et faciles à partager."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Fonctionnalités principales de censure"
  features:
    # feature loop
    - title: "Censure de texte"
      content: "Trouvez et supprimez des mots personnels ou sensibles dans vos documents."

    # feature loop
    - title: "Masquer des images"
      content: "Placer des superpositions sur des images pour cacher des visuels privés."

    # feature loop
    - title: "Suppression des métadonnées"
      content: "Effacer les métadonnées cachées qui pourraient divulguer des informations privées."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Effacer les métadonnées cachées"
      content: |
        Cet exemple montre comment changer ou supprimer des métadonnées dans des fichiers PDF.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Ouvrir un fichier PDF en utilisant redactor
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Cibler le champ de métadonnées Auteur
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Cibler le champ de métadonnées Titre
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Exécuter le nettoyage des métadonnées
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
    title: "Sécuriser les fichiers PDF avec la censure des métadonnées Java"
    exclude: "PDF"
    description: "Effacez les champs cachés dans vos fichiers PDF en utilisant Java. Protégez la confidentialité avec un outil simple de nettoyage des métadonnées."
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