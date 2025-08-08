
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fr
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Ajoutez des superpositions pour masquer des images dans PHOTO en utilisant C#"
head_description: "Cachez le contenu sensible des images dans des fichiers PHOTO avec GroupDocs.Redaction for .NET en appliquant des superpositions. Gardez les données privées en sécurité tout en préservant la mise en page du document intacte."

############################# Header ############################
title: "Masquez le contenu d'image dans des fichiers PHOTO avec des superpositions en utilisant .NET" 
description: "Protégez les images personnelles et professionnelles dans des fichiers PHOTO en utilisant C#. Des outils faciles à utiliser pour une protection efficace du contenu."
subtitle: "Fonctionnalités principales de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET donne aux développeurs C# un moyen puissant de cacher ou de supprimer du contenu dans des fichiers PHOTO. Protégez les documents en masquant du texte, des images et des métadonnées rapidement.

############################# Steps ############################
steps:
    enable: true
    title: "Sécurisez le contenu dans des fichiers Photo"
    content: |
      GroupDocs.Redaction for .NET facilite rapidement la protection du contenu dans vos applications .NET.
      
      1. Créez un objet Redactor et pointez-le vers votre fichier Photo.
      2. Ajustez les paramètres de rédaction selon vos besoins.
      3. Choisissez les zones d'image et définissez la couleur de la superposition.
      4. Exécutez la rédaction et enregistrez le fichier sécurisé.
   
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
        // Appliquez des superpositions pour masquer les images dans PHOTO

        // Chargez le fichier avec Redactor
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // Configurez la taille et la couleur de la superposition
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Choisissez la zone d'image à cacher
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Appliquez la superposition et sauvegardez les modifications
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Rédiger facilement du contenu sensible"
  description: "GroupDocs.Redaction for .NET vous aide à cacher ou à supprimer du contenu sensible dans de nombreux types de fichiers. Protégez les données privées tout en maintenant vos documents clairs et faciles à lire."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Outils de rédaction tout-en-un"
  features:
    # feature loop
    - title: "Modifier le texte dans les documents"
      content: "Recherchez et remplacez des textes privés dans vos documents pour sécuriser les informations sensibles."

    # feature loop
    - title: "Masquez les zones d'image"
      content: "Ajoutez des superpositions sur les images ou des parties sélectionnées pour couvrir des visuels sensibles."

    # feature loop
    - title: "Nettoyer les métadonnées"
      content: "Supprimez des métadonnées cachées pour éviter des fuites accidentelles de données."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Masquez les données d'image avec des superpositions"
      content: |
        Cet exemple de code montre comment couvrir des zones d'image dans un fichier à l'aide de superpositions.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Chargez le fichier pour l'édition
          using (Redactor redactor  = new Redactor("source.jpeg"))
          {
              // Définissez la position, la taille et la couleur de la superposition
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Ciblez une zone d'image spécifique sur la première page
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Appliquez la superposition pour masquer l'image
              redactor.Apply(redaction);

              // Enregistrez le fichier rédigé
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
    title: "Protégez les fichiers PHOTO avec des rédactions .NET"
    exclude: "PHOTO"
    description: "Avec .NET, vous pouvez cacher ou supprimer du contenu privé dans des fichiers PHOTO. Une manière simple et efficace de sécuriser les documents officiels."
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