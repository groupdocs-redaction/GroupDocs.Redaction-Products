
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fr
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Masquez les images dans des fichiers XLSX avec des superpositions en utilisant C#"
head_description: "Avec GroupDocs.Redaction for .NET, vous pouvez masquer le contenu d'image sensible dans des fichiers XLSX en appliquant des superpositions colorées. Protégez les données importantes tout en préservant la structure du document."

############################# Header ############################
title: "Masquer les images sensibles dans des documents XLSX en utilisant .NET" 
description: "Assurez la confidentialité des données dans des fichiers XLSX avec C#. Nos outils sont conçus pour rendre la rédaction d'images rapide et efficace."
subtitle: "Fonctionnalités clés de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET offre aux développeurs C# des outils simples pour masquer ou effacer du contenu dans des fichiers XLSX. Protégez les documents en rédigeant du texte, des images et des métadonnées dans différents formats.

############################# Steps ############################
steps:
    enable: true
    title: "Protégez les données privées dans des documents Xlsx"
    content: |
      GroupDocs.Redaction for .NET : Aider vos applications .NET à sécuriser efficacement les documents.
      
      1. Créez une instance de Redactor et chargez le fichier Xlsx.
      2. Configurez les paramètres de rédaction en fonction de vos besoins.
      3. Définissez la zone de l'image et choisissez la couleur de superposition.
      4. Appliquez la rédaction et enregistrez le fichier de sortie.
   
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
        // Masquez les parties d'image sensibles dans XLSX

        // Initialisez Redactor avec le chemin du fichier
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Choisissez la taille et la couleur de la superposition
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Définissez la zone à rédiger
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Appliquez et enregistrez les modifications
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Fonctionnalités de rédaction de documents"
  description: "Avec GroupDocs.Redaction for .NET, vous pouvez supprimer ou masquer du contenu dans divers formats de fichiers. Gardez les données sensibles privées tout en maintenant une présentation claire."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Fonctionnalités de rédaction robustes"
  features:
    # feature loop
    - title: "Rechercher et remplacer du texte"
      content: "Recherchez rapidement et rédigez du texte confidentiel pour protéger les données sensibles."

    # feature loop
    - title: "Masquer le contenu d'image"
      content: "Appliquez des superpositions à des images entières ou à des zones spécifiques pour cacher des visuels privés."

    # feature loop
    - title: "Nettoyer les métadonnées"
      content: "Supprimez ou modifiez des métadonnées cachées pour éviter une exposition involontaire des données."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Masquez le contenu d'image avec des superpositions"
      content: |
        Découvrez comment masquer des régions d'image sensibles dans vos documents.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Ouvrez le document pour la rédaction
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Définissez les attributs de la superposition : taille, emplacement, couleur
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Visez une zone d'image spécifique
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Superposez l'image
              redactor.Apply(redaction);

              // Enregistrez le document rédigé
              var save_options = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_options);
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Masquez les fichiers XLSX avec la rédaction .NET"
    exclude: "XLSX"
    description: "Utilisez .NET pour rédiger ou supprimer des données sensibles dans des fichiers XLSX. Une solution pratique pour sécuriser les documents personnels et professionnels."
    items: 
        # format loop 1
        - name: "Rédaction PDF"
          format: "PDF"
          link: "/redaction/net/hide-image-content//pdf/"
          description: "Format de Document Portable Adobe"

        # format loop 2
        - name: "Rédaction Word"
          format: "WORD"
          link: "/redaction/net/hide-image-content//word/"
          description: "Documents MS Word et Open Office"
          
        # format loop 3
        - name: "Rédaction Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-image-content//excel/"
          description: "Feuilles de calcul MS Excel et Open Office"

        # format loop 4
        - name: "Rédaction PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-image-content//powerpoint/"
          description: "Présentations MS PowerPoint et Open Office"

        # format loop 5
        - name: "Rédaction Image"
          format: "IMAGE"
          link: "/redaction/net/hide-image-content//image/"
          description: "Formats d'image populaires"

        # format loop 6
        - name: "Rédaction Photo"
          format: "PHOTO"
          link: "/redaction/net/hide-image-content//photo/"
          description: "Formats photo"

        # format loop 7
        - name: "Rédaction DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-image-content//docx/"
          description: "Document Microsoft Word Open XML"
          
        # format loop 8
        - name: "Rédaction XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-image-content//xlsx/"
          description: "Tableur Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Rédaction PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-image-content//pptx/"
          description: "Présentation PowerPoint Open XML"

        # format loop 10
        - name: "Rédaction JPEG"
          format: "JPEG"
          link: "/redaction/net/hide-image-content//jpeg/"
          description: "Image JPEG"


---