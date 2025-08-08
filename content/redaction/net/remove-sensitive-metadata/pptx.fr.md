
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: fr
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Effacer les métadonnées des fichiers PPTX avec C#"
head_description: "GroupDocs.Redaction for .NET vous aide à supprimer ou modifier les métadonnées dans des fichiers PPTX. Protégez vos documents en supprimant des données d'arrière-plan privées."

############################# Header ############################
title: "Supprimer les métadonnées dans PPTX en utilisant les outils de .NET" 
description: "Cachez les métadonnées sensibles dans les fichiers PPTX en utilisant C#. Idéal pour la confidentialité professionnelle et personnelle."
subtitle: "Fonctions principales de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Découvrez GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction est conçu pour les développeurs C# qui ont besoin d'effacer des données des fichiers PPTX. Nettoyez rapidement les textes, images et métadonnées.

############################# Steps ############################
steps:
    enable: true
    title: "Effacer les métadonnées cachées dans les fichiers Pptx"
    content: |
      GroupDocs.Redaction aide vos solutions .NET à nettoyer rapidement les données cachées.
      
      1. Créez une instance de Redactor et chargez le fichier Pptx.
      2. Configurez les règles de rétention pour les champs de métadonnées.
      3. Appliquez la rétention pour supprimer les données.
      4. Enregistrez votre fichier rétabli.
   
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
        // Supprimez les métadonnées dans PPTX

        // Ouvrez le fichier en utilisant Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Configurez la rétention pour nettoyer les métadonnées
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Appliquez et enregistrez le fichier
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Outils de rétention supplémentaires pour n'importe quel fichier"
  description: "GroupDocs.Redaction for .NET prend en charge la rétention de contenu dans différents formats. Assurez-vous que vos données sont privées et que vos fichiers sont propres."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Outils de confidentialité intégrés"
  features:
    # feature loop
    - title: "Trouver et supprimer le texte"
      content: "Supprimez rapidement les entrées de texte personnel de vos fichiers."

    # feature loop
    - title: "Couvrir des images avec des superpositions"
      content: "Masquez les sections d'image qui ne devraient pas être visibles."

    # feature loop
    - title: "Supprimer les métadonnées"
      content: "Effacez les champs de métadonnées cachés qui peuvent contenir des informations sensibles."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Nettoyer les champs de métadonnées"
      content: |
        Cet exemple montre comment effacer les métadonnées d'un fichier PPTX en toute sécurité.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Importez votre fichier PPTX
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Répondez au champ Auteur
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Répondez au champ Titre
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Exécutez le processus de rétention
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Exportez le fichier rétabli
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
    title: "Nettoyez les fichiers PPTX en utilisant .NET"
    exclude: "PPTX"
    description: "Supprimez facilement les métadonnées d'arrière-plan des fichiers PPTX avec .NET. Parfait pour la sécurité des documents."
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