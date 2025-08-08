
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fr
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Protégez les images dans IMAGE en ajoutant des superpositions avec C#"
head_description: "Avec GroupDocs.Redaction for .NET, vous pouvez masquer les données d'image sensibles dans des fichiers IMAGE en utilisant des superpositions colorées. Sécurisez des informations importantes tout en préservant le design original du fichier."

############################# Header ############################
title: "Masquez les images privées dans des fichiers IMAGE en utilisant des superpositions avec .NET" 
description: "Gardez les images personnelles et professionnelles sensibles protégées dans des fichiers IMAGE en utilisant C#. Outils simples pour une protection rapide et efficace du contenu."
subtitle: "Fonctionnalités clés de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que GroupDocs.Redaction for .NET ?"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET fournit aux développeurs C# des outils puissants pour cacher ou supprimer du contenu dans des fichiers IMAGE. Protégez vos documents en masquant le texte, les images et les métadonnées.

############################# Steps ############################
steps:
    enable: true
    title: "Protégez les données dans des fichiers Image avec des superpositions"
    content: |
      Utilisez GroupDocs.Redaction for .NET pour rapidement cacher du contenu privé dans vos applications .NET.
      
      1. Créez une instance de Redactor et fournissez le chemin de votre fichier Image.
      2. Ajustez les paramètres de rédaction selon vos besoins.
      3. Sélectionnez les zones d'image et définissez les couleurs de superposition.
      4. Traitez le fichier et enregistrez la version sécurisée.
   
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
        // Protégez le contenu d'image dans IMAGE

        // Ouvrez le fichier en utilisant le Redactor
        using (Redactor redactor  = new Redactor("input.png"))
        {
            // Définissez les dimensions et les couleurs de la superposition
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Sélectionnez la zone que vous souhaitez cacher
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Appliquez la superposition et enregistrez le résultat
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Rédiger du contenu dans différents formats de fichiers"
  description: "Avec GroupDocs.Redaction for .NET, vous pouvez cacher ou supprimer du contenu dans une variété de formats de fichiers. Protégez les données sensibles tout en maintenant un format propre et lisible."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Contrôle total sur les rédactions"
  features:
    # feature loop
    - title: "Rechercher et remplacer le texte"
      content: "Recherchez à travers les documents et remplacez le texte sensible pour protéger des informations privées."

    # feature loop
    - title: "Superposez les images"
      content: "Appliquez des superpositions colorées pour masquer des images entières ou des parties spécifiques."

    # feature loop
    - title: "Éditer les métadonnées"
      content: "Supprimez ou modifiez des champs de métadonnées cachées pour prévenir l'exposition des données."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Couvrir le contenu d'image avec des superpositions"
      content: |
        Cet exemple de code montre comment appliquer des superpositions pour masquer des contenus d'image sensibles.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Chargez le fichier pour la rédaction
          using (Redactor redactor  = new Redactor("source.png"))
          {
              // Configurez la taille, la couleur et la position de la superposition
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Choisissez la zone de l'image sur la première page
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Ajoutez la superposition pour masquer le contenu de l'image
              redactor.Apply(redaction);

              // Enregistrez le fichier mis à jour
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
    title: "Masquez le contenu dans des fichiers IMAGE en utilisant des rédactions .NET"
    exclude: "IMAGE"
    description: "Utilisez .NET pour cacher ou retirer des données sensibles dans des fichiers IMAGE. Une méthode fiable pour sécuriser les fichiers officiels et protéger des informations confidentielles."
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