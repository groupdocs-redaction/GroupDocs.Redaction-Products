
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fr
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Recouvrir les images dans WORD avec des superpositions en utilisant C#"
head_description: "Cachez les zones d'image sensibles dans des fichiers WORD à l'aide de GroupDocs.Redaction for .NET. Ajoutez des superpositions colorées pour protéger les données privées tout en conservant la mise en page d'origine du document."

############################# Header ############################
title: "Masquer les images privées dans des fichiers WORD avec des superpositions en utilisant .NET" 
description: "Protégez vos données personnelles et professionnelles dans les documents WORD avec C#. Réalisez une protection fiable des contenus avec nos outils simples."
subtitle: "Fonctionnalités clés de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET offre aux développeurs C# les outils pour masquer ou effacer du contenu dans des fichiers WORD. Protégez vos documents en masquant le texte, les images et les métadonnées facilement.

############################# Steps ############################
steps:
    enable: true
    title: "Protégez les données sensibles dans les fichiers Word"
    content: |
      GroupDocs.Redaction for .NET aide vos applications .NET à masquer rapidement le contenu privé dans les documents.
      
      1. Créez un objet Redactor et spécifiez le chemin du fichier Word.
      2. Définissez les paramètres de rédaction selon vos besoins.
      3. Marquez la zone d'image et définissez la couleur de la superposition.
      4. Traitez et enregistrez le fichier rédigé.
   
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
        // Recouvrez les images sensibles dans WORD

        // Chargez le fichier via le constructeur Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Définissez la couleur et les dimensions de la superposition
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Sélectionnez la zone d'image à rédiger
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Appliquez la superposition et enregistrez le document
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Masquer ou supprimer du contenu dans des documents"
  description: "GroupDocs.Redaction for .NET facilite le masquage ou l'effacement de données dans de multiples formats de fichiers. Protégez les informations sensibles tout en maintenant des documents propres et lisibles."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Outils de rédaction détaillés"
  features:
    # feature loop
    - title: "Remplacer le texte partout"
      content: "Recherchez et modifiez le texte sensible à travers vos documents pour sécuriser les informations privées."

    # feature loop
    - title: "Masquer les images"
      content: "Ajoutez des superpositions à des zones d'image spécifiques ou à des images entières pour dissimuler des visuels privés."

    # feature loop
    - title: "Nettoyer les métadonnées"
      content: "Supprimez ou modifiez les métadonnées cachées pour éviter les fuites d'informations involontaires."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ajoutez des superpositions pour masquer le contenu d'image"
      content: |
        Cet exemple montre comment protéger des données sensibles dans des images de documents à l'aide de superpositions.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Chargez le document pour l'édition
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Définissez la taille, l'emplacement et la couleur de la superposition
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Visez une zone d'image spécifique sur la première page
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Appliquez la rédaction de la superposition
              redactor.Apply(redaction);

              // Enregistrez les modifications apportées au fichier
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
    title: "Protégez le contenu WORD avec la rédaction .NET"
    exclude: "WORD"
    description: ".NET vous permet de masquer ou de supprimer du contenu sensible dans des fichiers WORD. Une méthode fiable pour garantir la sécurité des documents officiels et confidentiels."
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