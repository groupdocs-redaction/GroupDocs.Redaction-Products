
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: fr
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Supprimez les métadonnées dans PHOTO avec C#"
head_description: "GroupDocs.Redaction for .NET vous aide à supprimer des données cachées dans des fichiers PHOTO qui pourraient révéler des informations personnelles ou commerciales."

############################# Header ############################
title: "Supprimer les métadonnées de PHOTO avec .NET" 
description: "Protégez facilement vos documents en supprimant les informations cachées des fichiers PHOTO en utilisant C#."
subtitle: "Points forts de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction aide les développeurs C# à cacher du contenu privé dans des fichiers PHOTO, y compris le texte, les parties d'image et les métadonnées.

############################# Steps ############################
steps:
    enable: true
    title: "Effacer les métadonnées dans les fichiers Photo"
    content: |
      Utilisez GroupDocs.Redaction dans votre projet .NET pour nettoyer les métadonnées des documents.
      
      1. Lancez un Redactor et ouvrez votre fichier Photo.
      2. Définissez les règles pour supprimer les métadonnées.
      3. Appliquez la rétention et nettoyez le fichier.
      4. Enregistrez le fichier résultant.
   
    code:
      platform: "net"
      copy_title: "Copier"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Exemples de rédactions"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "cliquez pour copier"
        copy_done: "copié"
      links:
        #  loop
        - title: "Plus d'exemples"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "Documentation"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // Supprimez les métadonnées des documents PHOTO

        // Utilisez Redactor pour charger le document
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // Définissez les champs de métadonnées pour la rétention
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Nettoyez le document et enregistrez
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Effacer les informations privées des fichiers"
  description: "GroupDocs.Redaction for .NET vous offre des moyens de supprimer des données personnelles du texte, des images et des détails de fichiers. Parfait pour la sécurité des données."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Fonctionnalités utiles de rétention"
  features:
    # feature loop
    - title: "Nettoyage du texte"
      content: "Analysez et effacez tout texte qui ne devrait pas être partagé."

    # feature loop
    - title: "Couverture des parties d'images"
      content: "Ajoutez des couvertures sur les parties d'image contenant des détails privés."

    # feature loop
    - title: "Supprimer les métadonnées"
      content: "Supprimez les données de fichier cachées avant de partager ou de publier."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Supprimer les champs de métadonnées cachées"
      content: |
        Cet exemple vous guide à travers la suppression des métadonnées dans un document PHOTO.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Chargez le fichier PHOTO dans le rédacteur
          using (Redactor redactor  = new Redactor("source.jpeg"))
          {
              // Rétablissez le champ Auteur
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Rétablissez le champ Titre
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Traitez le document
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Enregistrez la version nettoyée
              var saveOptions = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(saveOptions);
          }
          ```
        platform: "net"
        copy_title: "Copier"
        install:
          command: "dotnet add package GroupDocs.Redaction"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "Documentation"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "Prêt à commencer ?"
  description: "Essayez les fonctionnalités de GroupDocs.Redaction gratuitement ou demandez une licence"
  items:
    #  loop
    - title: "Télécharger Nuget"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "Licences"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Utilisez .NET pour rétablir les métadonnées PHOTO"
    exclude: "PHOTO"
    description: "Gardez vos documents PHOTO en sécurité en nettoyant les métadonnées à l'aide des outils .NET."
    items: 
        # format loop 1
        - name: "Rédaction PDF"
          format: "PDF"
          link: "/redaction/net/remove-sensitive-metadata//pdf/"
          description: "Format de Document Portable Adobe"

        # format loop 2
        - name: "Rédaction Word"
          format: "WORD"
          link: "/redaction/net/remove-sensitive-metadata//word/"
          description: "Documents MS Word et Open Office"
          
        # format loop 3
        - name: "Rédaction Excel"
          format: "EXCEL"
          link: "/redaction/net/remove-sensitive-metadata//excel/"
          description: "Feuilles de calcul MS Excel et Open Office"

        # format loop 4
        - name: "Rédaction PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/remove-sensitive-metadata//powerpoint/"
          description: "Présentations MS PowerPoint et Open Office"

        # format loop 5
        - name: "Rédaction Image"
          format: "IMAGE"
          link: "/redaction/net/remove-sensitive-metadata//image/"
          description: "Formats d'image populaires"

        # format loop 6
        - name: "Rédaction Photo"
          format: "PHOTO"
          link: "/redaction/net/remove-sensitive-metadata//photo/"
          description: "Formats photo"

        # format loop 7
        - name: "Rédaction DOCX"
          format: "DOCX"
          link: "/redaction/net/remove-sensitive-metadata//docx/"
          description: "Document Microsoft Word Open XML"
          
        # format loop 8
        - name: "Rédaction XLSX"
          format: "XLSX"
          link: "/redaction/net/remove-sensitive-metadata//xlsx/"
          description: "Tableur Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Rédaction PPTX"
          format: "PPTX"
          link: "/redaction/net/remove-sensitive-metadata//pptx/"
          description: "Présentation PowerPoint Open XML"

        # format loop 10
        - name: "Rédaction JPEG"
          format: "JPEG"
          link: "/redaction/net/remove-sensitive-metadata//jpeg/"
          description: "Image JPEG"


---