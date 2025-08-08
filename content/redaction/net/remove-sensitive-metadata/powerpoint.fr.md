
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: fr
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Nettoyez les métadonnées dans POWERPOINT avec C#"
head_description: "Supprimez les métadonnées indésirables des fichiers POWERPOINT en utilisant GroupDocs.Redaction for .NET. Protégez votre confidentialité en effaçant des données cachées."

############################# Header ############################
title: "Effacer les métadonnées dans POWERPOINT via .NET" 
description: "Protégez les données des documents dans des fichiers POWERPOINT grâce à des outils simples conçus pour C#. Supprimez les métadonnées en quelques étapes."
subtitle: "Fonctionnalités de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "En savoir plus sur GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction est un ensemble d'outils de rétention pour les développeurs C#, aidant à travailler avec des rétentions de texte, d'images et de métadonnées dans des fichiers POWERPOINT.

############################# Steps ############################
steps:
    enable: true
    title: "Nettoyez les métadonnées des documents Powerpoint"
    content: |
      Avec GroupDocs.Redaction, vos applications .NET peuvent facilement supprimer les métadonnées des documents.
      
      1. Commencez avec un objet Redactor et chargez votre fichier.
      2. Choisissez les champs de métadonnées à supprimer.
      3. Appliquez les paramètres de rétention.
      4. Exportez le document final et nettoyé.
   
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
        // Éliminez les métadonnées dans POWERPOINT

        // Ouvrez le document avec le rédacteur
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Configurez les options de nettoyage des métadonnées
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Appliquez la rétention et enregistrez
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Protéger les documents avec la rétention"
  description: "GroupDocs.Redaction for .NET aide à supprimer le contenu caché des documents afin que vous puissiez les partager en toute sécurité. Fonctionne avec de nombreux formats et types de contenu."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Capacités de rétention"
  features:
    # feature loop
    - title: "Supprimer le texte privé"
      content: "Trouvez des mots ou phrases sensibles et retirez-les de votre document."

    # feature loop
    - title: "Masquer les données d'image"
      content: "Utilisez des superpositions pour cacher les zones des images qui doivent rester invisibles."

    # feature loop
    - title: "Supprimer les métadonnées"
      content: "Nettoyez les champs de métadonnées qui pourraient contenir des informations cachées."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Supprimer les champs de métadonnées cachées"
      content: |
        Cet exemple vous guide à travers l'élimination des données intégrées comme l'Auteur et le Titre d'un fichier POWERPOINT.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Importez le fichier dans le rédacteur
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Supprimez les données de l'auteur
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Supprimez les données du titre
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Exécutez la rétention
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
    title: "Nettoyez les fichiers POWERPOINT avec .NET"
    exclude: "POWERPOINT"
    description: "Utilisez .NET pour supprimer des données cachées dans des fichiers POWERPOINT. Idéal pour nettoyer des documents confidentiels."
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