
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: fr
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Supprimer les métadonnées de WORD avec C#"
head_description: "Utilisez GroupDocs.Redaction for .NET pour trouver et supprimer les métadonnées cachées dans les fichiers WORD. Gardez vos documents privés et sécurisés contre les expositions indésirables."

############################# Header ############################
title: "Supprimer les métadonnées dans les fichiers WORD avec .NET" 
description: "Protégez les données personnelles et d'entreprise dans les fichiers WORD avec C#. Outils simples pour une confidentialité fiable des fichiers."
subtitle: "Ce que vous pouvez faire avec GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction aide les développeurs C# à protéger le contenu dans les fichiers WORD. Nettoyez le texte, les images et les métadonnées rapidement et facilement.

############################# Steps ############################
steps:
    enable: true
    title: "Supprimer les métadonnées des fichiers Word"
    content: |
      Avec GroupDocs.Redaction, il est facile de nettoyer les métadonnées de documents dans votre environnement .NET.
      
      1. Initialisez un objet Redactor et ouvrez votre document Word.
      2. Configurez des règles pour effacer toutes les métadonnées cachées.
      3. Exécutez la rétention pour supprimer les balises sensibles.
      4. Enregistrez votre document nettoyé.
   
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
        // Effacez les métadonnées des fichiers WORD

        // Ouvrez le document avec Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Configurez les options de suppression des métadonnées
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Rétablissez et enregistrez le fichier nettoyé
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Rétablir des données confidentielles des documents"
  description: "Avec GroupDocs.Redaction for .NET, vous pouvez effacer du contenu privé dans divers formats. Gardez vos fichiers sécurisés tout en préservant leur structure."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Outils de rétention de métadonnées et de contenu"
  features:
    # feature loop
    - title: "Remplacer le texte sensible"
      content: "Trouvez du texte dans les documents et supprimez-le ou modifiez-le en toute sécurité pour protéger des informations privées."

    # feature loop
    - title: "Masquer les images"
      content: "Couvrez les zones sensibles des images avec des superpositions pour cacher des données visuelles."

    # feature loop
    - title: "Effacer les métadonnées"
      content: "Trouvez et nettoyez les données cachées pour éviter de divulguer des informations."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Modifier ou supprimer les métadonnées cachées"
      content: |
        Cet exemple montre comment cibler et nettoyer les entrées de métadonnées d'un document WORD.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Chargez le fichier pour la rétention
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Supprimez les métadonnées de l'auteur
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Supprimez les métadonnées du titre
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Exécutez le processus de rétention
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Exportez le document propre
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
    title: "Rétention des métadonnées dans WORD avec .NET"
    exclude: "WORD"
    description: "Utilisez .NET pour nettoyer les métadonnées cachées des fichiers WORD. Outils simples pour garder les informations sensibles en sécurité."
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