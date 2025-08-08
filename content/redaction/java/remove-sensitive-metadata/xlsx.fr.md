
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: fr
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Supprimer les métadonnées de XLSX avec Java"
head_description: "GroupDocs.Redaction for Java aide à nettoyer les métadonnées cachées des fichiers XLSX. Gardez vos documents privés et exempts de détails indésirables."

############################# Header ############################
title: "Nettoyer les métadonnées des fichiers XLSX avec Java" 
description: "Utilisez Java pour vous débarrasser des détails personnels ou cachés dans vos documents XLSX. Idéal pour un usage professionnel et personnel."
subtitle: "Découvrez ce que vous pouvez faire avec GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction fournit aux développeurs Java des outils pour contrôler le contenu dans les fichiers XLSX. Supprimez le texte, les métadonnées et les images selon les besoins.

############################# Steps ############################
steps:
    enable: true
    title: "Supprimer les métadonnées des fichiers Xlsx"
    content: |
      GroupDocs.Redaction aide votre projet Java à effacer rapidement les métadonnées sensibles.
      
      1. Démarrez un Redactor et ouvrez le fichier Xlsx.
      2. Choisissez quels champs de métadonnées supprimer.
      3. Exécutez la censure pour les supprimer du fichier.
      4. Enregistrez la version nettoyée.
   
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
        // Effacer les métadonnées cachées dans les fichiers XLSX

        // Ouvrez le fichier en utilisant Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Choisissez les champs de métadonnées à supprimer
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Appliquez la censure et enregistrez votre fichier
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Sécurisez vos fichiers en masquant des informations sensibles"
  description: "Avec GroupDocs.Redaction for Java, vous pouvez nettoyer des données personnelles de nombreux types de documents. Un moyen simple de garder vos fichiers en sécurité."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Fonctionnalités pour nettoyer les métadonnées et le contenu"
  features:
    # feature loop
    - title: "Supprimer le texte"
      content: "Recherchez et supprimez des mots ou des phrases contenant des données privées."

    # feature loop
    - title: "Masquer des images"
      content: "Couvrez des sections d'images contenant des parties privées ou sensibles."

    # feature loop
    - title: "Effacer les métadonnées"
      content: "Supprimez les informations de fond qui pourraient révéler des détails personnels ou professionnels."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Exemple de suppression des métadonnées"
      content: |
        Cet exemple montre comment supprimer des métadonnées comme Auteur ou Titre d'un fichier XLSX.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Ouvrez votre document
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Sélectionnez le champ Auteur pour censure
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Sélectionnez le champ Titre pour censure
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Exécutez l'outil de censure
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Enregistrez le résultat
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
    title: "Nettoyage des métadonnées dans XLSX avec Java"
    exclude: "XLSX"
    description: "Utilisez les outils Java pour supprimer les données cachées des fichiers XLSX. Partagez des documents propres et sécurisés."
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