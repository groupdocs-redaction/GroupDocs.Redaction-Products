
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fr
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Cachez des images sensibles dans POWERPOINT en utilisant des superpositions avec C#"
head_description: "Utilisez GroupDocs.Redaction for .NET pour placer des superpositions sur des images dans des fichiers POWERPOINT, gardant les informations privées cachées tout en maintenant la mise en page intacte."

############################# Header ############################
title: "Masquer des images privées dans des documents POWERPOINT en utilisant des superpositions avec .NET" 
description: "Protégez les données personnelles et professionnelles dans des fichiers POWERPOINT avec C#. Outils simples pour une forte confidentialité des documents."
subtitle: "Fonctionnalités principales de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que GroupDocs.Redaction for .NET ?"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET fournit aux développeurs C# des outils simples pour cacher ou retirer du contenu dans des fichiers POWERPOINT. Protégez vos documents en masquant le texte, les images et les métadonnées.

############################# Steps ############################
steps:
    enable: true
    title: "Protégez les informations sensibles dans des documents Powerpoint"
    content: |
      GroupDocs.Redaction for .NET est conçu pour aider vos applications .NET à protéger le contenu du document rapidement.
      
      1. Créez un objet Redactor et spécifiez le fichier Powerpoint.
      2. Ajustez les paramètres de rédaction selon vos besoins.
      3. Sélectionnez la zone de l'image et choisissez la couleur de superposition.
      4. Appliquez la rédaction et enregistrez le document.
   
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
        // Masquez des données d'image dans POWERPOINT

        // Chargez le fichier en utilisant Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Définissez la couleur et les dimensions de la superposition
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Choisissez la zone à masquer
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
  title: "Rédiger des données sensibles dans des documents"
  description: "GroupDocs.Redaction for .NET vous permet de cacher ou de supprimer du contenu dans de multiples types de documents. Protégez les données privées tout en gardant vos fichiers faciles à utiliser et à partager."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Outils de rédaction riches en fonctionnalités"
  features:
    # feature loop
    - title: "Rechercher et éditer du texte"
      content: "Recherchez du texte sensible dans les documents et remplacez-le pour protéger les données privées."

    # feature loop
    - title: "Masquer le contenu d'image"
      content: "Utilisez des superpositions pour masquer des images ou des parties sélectionnées, assurant que les visuels privés restent cachés."

    # feature loop
    - title: "Nettoyer les métadonnées cachées"
      content: "Supprimez ou modifiez les métadonnées cachées pour prévenir l'exposition involontaire des données."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Protégez les données d'image avec des superpositions"
      content: |
        Cet exemple montre comment masquer des contenus sensibles dans les images des documents.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Chargez le fichier pour la rédaction
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Définissez la taille, la position, et la couleur de la superposition
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Marquez la zone de l'image sur la première page
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Appliquez la superposition pour couvrir l'image
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
    title: "Sécurisez le contenu POWERPOINT avec les rédactions .NET"
    exclude: "POWERPOINT"
    description: "Utilisez .NET pour couvrir ou supprimer du contenu privé dans des fichiers POWERPOINT. Une solution fiable pour protéger des documents sensibles."
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