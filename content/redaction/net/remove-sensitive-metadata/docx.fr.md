
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: fr
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Supprimer les métadonnées de DOCX avec C#"
head_description: "Utilisez GroupDocs.Redaction for .NET pour supprimer ou modifier les métadonnées cachées dans les fichiers DOCX. Protégez vos documents de l'exposition de détails privés."

############################# Header ############################
title: "Supprimer les métadonnées dans les fichiers DOCX avec .NET" 
description: "Utilisez C# pour nettoyer les métadonnées sensibles dans les fichiers DOCX. Gardez vos données professionnelles et personnelles protégées."
subtitle: "Caractéristiques principales de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que GroupDocs.Redaction for .NET ?"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction offre aux développeurs C# des outils pour cacher ou supprimer du contenu dans des fichiers DOCX. Nettoyez rapidement le texte, les images et les métadonnées.

############################# Steps ############################
steps:
    enable: true
    title: "Nettoyez les données cachées dans les fichiers Docx"
    content: |
      GroupDocs.Redaction aide vos projets .NET à supprimer rapidement les métadonnées indésirables.
      
      1. Créez une instance de Redactor et ouvrez votre fichier Docx.
      2. Configurez la rétention pour cibler les entrées de métadonnées.
      3. Appliquez les modifications pour nettoyer le document.
      4. Enregistrez le fichier nettoyé.
   
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
        // Effacer les métadonnées des documents DOCX

        // Chargez le fichier en utilisant Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Configurez les paramètres de suppression de métadonnées
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Appliquez et enregistrez les changements
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Masquer des informations sensibles dans n'importe quel document"
  description: "GroupDocs.Redaction for .NET vous permet de nettoyer un contenu sensible dans de nombreux types de fichiers. Rendez vos documents plus sûrs à partager ou à stocker."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Options de rétention intelligentes"
  features:
    # feature loop
    - title: "Supprimer le texte privé"
      content: "Recherchez et effacez du texte personnel ou commercial de vos fichiers."

    # feature loop
    - title: "Masquer les images"
      content: "Couvrez les images ou des zones sélectionnées pour masquer des contenus confidentiels."

    # feature loop
    - title: "Effacer les métadonnées"
      content: "Nettoyez les entrées de métadonnées cachées pour éviter les fuites d'informations secondaires."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Nettoyer les champs de métadonnées"
      content: |
        Cet exemple démontre comment supprimer des données cachées des fichiers DOCX.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Chargez votre fichier DOCX
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Ciblez le champ Auteur pour suppression
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Ciblez le champ Titre pour suppression
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Exécutez le processus de rétention
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Enregistrez votre fichier mis à jour
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
    title: "Effacer les métadonnées dans DOCX avec .NET"
    exclude: "DOCX"
    description: "Supprimez les métadonnées indésirables dans les fichiers DOCX en utilisant .NET. Une manière simple de protéger les détails cachés de votre fichier."
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