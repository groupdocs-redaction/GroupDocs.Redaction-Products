
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: fr
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Rétablir les métadonnées dans PDF avec C#"
head_description: "Avec GroupDocs.Redaction for .NET, vous pouvez supprimer ou mettre à jour les métadonnées dans des fichiers PDF. Nettoyez les données cachées qui pourraient exposer des informations privées."

############################# Header ############################
title: "Nettoyez les métadonnées dans les fichiers PDF avec .NET" 
description: "Protégez les informations commerciales et personnelles sensibles dans les fichiers PDF en utilisant C#. Outils simples pour une protection fiable des données."
subtitle: "Fonctionnalités clés de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction offre aux développeurs C# des outils faciles à utiliser pour rétablir du contenu dans des fichiers PDF. Masquez du texte, des images et des métadonnées à travers plusieurs formats.

############################# Steps ############################
steps:
    enable: true
    title: "Supprimer les métadonnées des documents Pdf"
    content: |
      Utilisez GroupDocs.Redaction pour sécuriser rapidement les métadonnées de document dans vos applications .NET.
      
      1. Créez une instance de Redactor et chargez votre fichier Pdf.
      2. Configurez la rétention pour supprimer toutes les métadonnées cachées.
      3. Appliquez la rétention pour nettoyer le document.
      4. Enregistrez le fichier mis à jour.
   
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
        // Effacez les métadonnées des fichiers PDF

        // Chargez le fichier avec Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Configurez la rétention des métadonnées
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Appliquez les modifications et enregistrez le fichier
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Rétablir des données sensibles dans les documents"
  description: "GroupDocs.Redaction for .NET vous aide à cacher ou à effacer du contenu confidentiel dans divers formats de fichiers. Gardez les données privées en sécurité tout en gardant les documents clairs et professionnels."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Fonctionnalités puissantes de rétention"
  features:
    # feature loop
    - title: "Rechercher et remplacer du texte"
      content: "Recherchez du texte sensible dans vos documents et remplacez-le ou supprimez-le pour protéger votre vie privée."

    # feature loop
    - title: "Masquer le contenu d'image"
      content: "Ajoutez des superpositions aux images ou à des zones spécifiques pour couvrir des visuels sensibles."

    # feature loop
    - title: "Nettoyer les métadonnées"
      content: "Supprimez ou éditez les métadonnées cachées pour éviter les fuites de données indésirables."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Supprimer les entrées de métadonnées cachées"
      content: |
        Cet exemple montre comment modifier les métadonnées d'un fichier PDF.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Chargez le fichier PDF dans le rédacteur
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Configurez la rétention pour la propriété Auteur
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Configurez la rétention pour la propriété Titre
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Exécutez la rétention sur le document
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Enregistrez le fichier nettoyé
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
    title: "Protéger les fichiers PDF avec la rétention des métadonnées .NET"
    exclude: "PDF"
    description: "Utilisez .NET pour supprimer les données cachées des fichiers PDF. Une manière simple et efficace de sécuriser les informations sensibles dans vos documents."
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