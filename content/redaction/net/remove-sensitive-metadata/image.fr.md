
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: fr
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Supprimer les métadonnées cachées dans IMAGE avec C#"
head_description: "Utilisez GroupDocs.Redaction for .NET pour nettoyer les métadonnées dans vos fichiers IMAGE. Assurez-vous que les détails privés restent privés."

############################# Header ############################
title: "Effacer les métadonnées dans les fichiers IMAGE via .NET" 
description: "Gardez vos fichiers IMAGE en sécurité en utilisant C#. Protégez les données commerciales et personnelles de manière simple."
subtitle: "Ce que vous obtenez avec GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction aide les utilisateurs C# à nettoyer des fichiers en supprimant du texte, des parties d'images et des métadonnées indésirables dans les fichiers IMAGE.

############################# Steps ############################
steps:
    enable: true
    title: "Nettoyez les métadonnées dans les fichiers Image"
    content: |
      Commencez avec GroupDocs.Redaction dans votre application .NET pour nettoyer les métadonnées des fichiers.
      
      1. Créez un Redactor et ouvrez votre fichier Image.
      2. Choisissez les options pour supprimer les entrées de métadonnées cachées.
      3. Appliquez les paramètres de rétention.
      4. Enregistrez le résultat.
   
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
        // Supprimez les métadonnées cachées des fichiers IMAGE

        // Ouvrez le fichier avec Redactor
        using (Redactor redactor  = new Redactor("input.png"))
        {
            // Ajoutez des règles de rétention pour les métadonnées
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Traitez et enregistrez
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nettoyez le contenu dans n'importe quel document"
  description: "GroupDocs.Redaction for .NET supprime le texte privé, les parties d'image, ou les champs cachés. Rendre les documents sûrs à partager."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Fonctionnalités principales"
  features:
    # feature loop
    - title: "Rétention de texte"
      content: "Trouvez et supprimez les mots et chiffres privés."

    # feature loop
    - title: "Couverture d'image"
      content: "Ajoutez des masques d'image pour couvrir les informations visuelles."

    # feature loop
    - title: "Rétention de métadonnées"
      content: "Nettoyez les champs de métadonnées qui pourraient divulguer des informations."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Effacez les métadonnées sensibles"
      content: |
        Cet échantillon explique comment supprimer des champs de métadonnées spécifiques dans un document IMAGE.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Ouvrez IMAGE avec le rédacteur
          using (Redactor redactor  = new Redactor("source.png"))
          {
              // Ciblez le champ de l'auteur
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Ciblez le champ du titre
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Rétablissez les champs
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Enregistrez votre document
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
    title: "Supprimez les métadonnées de IMAGE en utilisant .NET"
    exclude: "IMAGE"
    description: "Effacez des données sensibles des fichiers IMAGE avec la rétention .NET. Gardez vos fichiers sûrs à partager ou à stocker."
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