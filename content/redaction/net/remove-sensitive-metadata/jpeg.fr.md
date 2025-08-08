
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: fr
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Modifier les métadonnées dans JPEG en utilisant C#"
head_description: "Avec GroupDocs.Redaction for .NET, vous pouvez nettoyer ou modifier les métadonnées dans vos fichiers JPEG. Supprimez les détails cachés qui peuvent contenir des données privées."

############################# Header ############################
title: "Supprimer les métadonnées des fichiers JPEG en utilisant .NET" 
description: "Protégez les détails privés dans vos fichiers JPEG en utilisant C#. Outils simples pour une meilleure sécurité des documents."
subtitle: "Principales fonctionnalités de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction aide les développeurs C# à supprimer le texte, les images et les métadonnées des fichiers JPEG grâce à des outils simples.

############################# Steps ############################
steps:
    enable: true
    title: "Nettoyez les métadonnées dans les documents Jpeg"
    content: |
      GroupDocs.Redaction facilite la suppression des métadonnées dans vos applications .NET.
      
      1. Configurez un Redactor et chargez le fichier Jpeg que vous souhaitez nettoyer.
      2. Choisissez les paramètres pour effacer toutes les métadonnées.
      3. Exécutez la rétention pour nettoyer le fichier.
      4. Enregistrez votre fichier avec des métadonnées nettoyées.
   
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
        // Supprimez les métadonnées des fichiers JPEG

        // Utilisez Redactor pour charger le fichier
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // Configurez la rétention des métadonnées
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Appliquez et enregistrez
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Supprimer des données sensibles des documents"
  description: "GroupDocs.Redaction for .NET vous permet de cacher ou de nettoyer le contenu privé à travers de nombreux formats. Protégez les données sensibles tout en gardant vos fichiers utiles et clairs."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Fonctionnalités clés de rétention"
  features:
    # feature loop
    - title: "Rechercher et supprimer le texte"
      content: "Trouvez des mots ou phrases sensibles dans vos fichiers et nettoyez-les."

    # feature loop
    - title: "Couvrir les zones d'image"
      content: "Utilisez des superpositions pour cacher des parties privées des images."

    # feature loop
    - title: "Modifier les métadonnées"
      content: "Supprimez ou modifiez les métadonnées pour éviter de partager des données privées."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Nettoyez les champs de métadonnées cachées"
      content: |
        Cet exemple montre comment supprimer ou modifier des métadonnées cachées dans les documents JPEG.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Ouvrez le fichier JPEG avec le rédacteur
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // Ajoutez la rétention pour le champ Auteur
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Ajoutez la rétention pour le champ Titre
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
    title: "Nettoyez les métadonnées JPEG avec .NET"
    exclude: "JPEG"
    description: "Utilisez .NET pour supprimer les données cachées de vos documents JPEG. Un excellent moyen de protéger des détails sensibles."
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