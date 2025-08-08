
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: fr
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Modifier et supprimer des métadonnées dans EXCEL via C#"
head_description: "Sécurisez vos documents EXCEL en supprimant des métadonnées avec GroupDocs.Redaction for .NET. Éliminez les données cachées qui pourraient compromettre la confidentialité."

############################# Header ############################
title: "Protection des métadonnées dans les fichiers EXCEL via .NET" 
description: "En utilisant C#, vous pouvez nettoyer les données sensibles des fichiers EXCEL. Outils conçus pour garder vos informations protégées."
subtitle: "Bénéfices clés de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que GroupDocs.Redaction for .NET ?"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction offre un moyen fiable aux développeurs C# de gérer la rétention dans les fichiers EXCEL. Il fonctionne avec du texte, des images et des métadonnées.

############################# Steps ############################
steps:
    enable: true
    title: "Nettoyez les métadonnées dans les fichiers Excel"
    content: |
      Utilisez GroupDocs.Redaction dans vos projets .NET pour gérer les métadonnées documentaires en toute sécurité.
      
      1. Créez un objet Redactor et chargez le fichier Excel cible.
      2. Configurez la rétention pour nettoyer les métadonnées cachées.
      3. Exécutez le processus de nettoyage.
      4. Enregistrez la version finale.
   
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
        // Nettoyez les métadonnées de EXCEL

        // Initialisez le rédacteur et chargez le fichier
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Configurez les options de suppression des métadonnées
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Rétablissez et sauvegardez le résultat
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Effacer des données privées dans vos fichiers"
  description: "GroupDocs.Redaction for .NET vous permet de nettoyer le texte, les images et les métadonnées dans plusieurs formats. Idéal pour les documents personnels, juridiques et d'entreprise."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Outils de suppression des métadonnées"
  features:
    # feature loop
    - title: "Rechercher et supprimer du texte"
      content: "Trouvez des textes personnels ou confidentiels dans les documents et retirez-les en toute sécurité."

    # feature loop
    - title: "Cacher des éléments visuels"
      content: "Superposez des parties sensibles des images pour empêcher leur visualisation."

    # feature loop
    - title: "Supprimer les métadonnées"
      content: "Effacez les données intégrées qui pourraient divulguer des informations sensibles."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cibler les métadonnées pour la rétention"
      content: |
        Apprenez à localiser et à supprimer des métadonnées comme Auteur ou Titre d'un document EXCEL.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Importez le document dans le rédacteur
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

              // Appliquez les changements
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Enregistrez le document mis à jour
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
    title: "Supprimez les métadonnées dans EXCEL avec .NET"
    exclude: "EXCEL"
    description: "Éliminez les métadonnées privées dans les fichiers EXCEL avec .NET. Gardez vos documents propres et sécurisés."
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