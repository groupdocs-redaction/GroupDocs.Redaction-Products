
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: fr
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Nettoyer les métadonnées dans les fichiers XLSX avec C#"
head_description: "Avec GroupDocs.Redaction for .NET, vous pouvez supprimer en toute sécurité les métadonnées des fichiers XLSX. Effacez les informations cachées qui pourraient révéler des données privées."

############################# Header ############################
title: "Effacer les métadonnées des fichiers XLSX en utilisant .NET" 
description: "Protégez des détails sensibles dans vos fichiers XLSX avec C#. Rétention simple pour les documents personnels et de travail."
subtitle: "Découvrez ce que GroupDocs.Redaction for .NET peut faire" 

############################# About ############################
about:
    enable: true
    title: "En savoir plus sur GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction offre aux développeurs C# des outils pour nettoyer le contenu dans les documents XLSX. Masquez ou supprimez du texte, des images et des métadonnées rapidement.

############################# Steps ############################
steps:
    enable: true
    title: "Nettoyer les métadonnées dans les fichiers Xlsx"
    content: |
      Avec GroupDocs.Redaction, vos applications .NET peuvent rapidement supprimer les données cachées.
      
      1. Configurez un Redactor et ouvrez votre fichier Xlsx.
      2. Définissez quelles métadonnées vous souhaitez effacer.
      3. Appliquez les règles de rétention.
      4. Enregistrez le fichier final.
   
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
        // Nettoyez les métadonnées cachées dans XLSX

        // Ouvrez le fichier avec Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Définissez quelles métadonnées supprimer
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Appliquez la rétention et enregistrez
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Protéger des informations sensibles dans les documents"
  description: "Utilisez GroupDocs.Redaction for .NET pour effacer ou masquer du contenu dans de nombreux formats de fichiers. Gardez vos fichiers privés et prêts à être partagés."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Fonctionnalités de rétention tout-en-un"
  features:
    # feature loop
    - title: "Remplacer ou supprimer le texte"
      content: "Protégez les données personnelles en trouvant et en supprimant du texte sensible."

    # feature loop
    - title: "Masquer des sections d'image"
      content: "Utilisez des superpositions pour bloquer des zones d'image contenant des visuels privés."

    # feature loop
    - title: "Supprimer les métadonnées"
      content: "Effacez les champs de métadonnées cachés qui peuvent contenir des détails personnels ou commerciaux."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Comment supprimer les métadonnées"
      content: |
        Ce code d'exemple supprime les propriétés de métadonnées dans un document XLSX.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Ouvrez le document
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Ciblez les métadonnées de l'auteur
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Ciblez les métadonnées du titre
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Exécutez le processus de rétention
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Enregistrez le document nettoyé
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
    title: "Rétablir les métadonnées dans XLSX en utilisant .NET"
    exclude: "XLSX"
    description: ".NET facilite la suppression des métadonnées des fichiers XLSX. Gardez vos fichiers propres et sécurisés."
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