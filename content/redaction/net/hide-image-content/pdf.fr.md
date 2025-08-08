
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fr
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Masquer les images dans PDF avec des superpositions en utilisant C#"
head_description: "Avec GroupDocs.Redaction for .NET, vous pouvez protéger les images sensibles dans des fichiers PDF en ajoutant des superpositions colorées. Sécurisez les informations privées sans altérer la mise en page du document."

############################# Header ############################
title: "Protégez les images sensibles dans des documents PDF avec des superpositions en utilisant .NET" 
description: "Conservez les données professionnelles et personnelles en toute sécurité dans des fichiers PDF en utilisant C#. Nos outils vous aident à atteindre une protection des données robuste."
subtitle: "Fonctionnalités de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET offre aux développeurs C# des outils puissants pour masquer ou supprimer du contenu dans des fichiers PDF. Protégez facilement les documents en couvrant le texte, les images et les métadonnées dans plusieurs formats.

############################# Steps ############################
steps:
    enable: true
    title: "Sécurisez les données professionnelles dans des documents Pdf"
    content: |
      GroupDocs.Redaction for .NET : Conçu pour aider vos applications .NET à protéger les documents. Rédigez rapidement et efficacement les informations privées.
      
      1. Créez une instance de Redactor et fournissez le chemin vers le fichier Pdf que vous souhaitez sécuriser.
      2. Ajustez les paramètres de rédaction pour obtenir le résultat souhaité.
      3. Sélectionnez la zone d'image et définissez la couleur de superposition.
      4. Traitez le fichier et enregistrez le document rédigé.
   
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
        // Masquez le contenu d'image sensible dans PDF

        // Chargez le fichier en utilisant le constructeur Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Configurez la couleur et la taille de la superposition
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Sélectionnez la zone à rédiger
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Appliquez la superposition à l'image et enregistrez le fichier
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Rédiger du contenu dans des documents"
  description: "Avec GroupDocs.Redaction for .NET, vous pouvez masquer ou supprimer du contenu dans de nombreux formats de fichiers. Protégez des informations confidentielles tout en gardant les documents lisibles et faciles à partager."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Fonctionnalités de rédaction avancées"
  features:
    # feature loop
    - title: "Modifier le texte partout"
      content: "Recherchez et remplacez le texte sensible dans tout votre document pour protéger les données privées."

    # feature loop
    - title: "Recouvrir les images"
      content: "Appliquez des superpositions à des images entières ou à des zones sélectionnées pour masquer des visuels sensibles."

    # feature loop
    - title: "Gérer les métadonnées"
      content: "Supprimez ou modifiez des métadonnées cachées pour éviter une exposition accidentelle des données."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Utilisez des superpositions pour masquer les données d'image"
      content: |
        Cet exemple montre comment couvrir les informations sensibles dans les images du document.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Chargez le document pour la rédaction
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Définissez les paramètres de superposition : taille, position et couleur
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Visez une zone d'image spécifique sur la première page
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Appliquez la superposition pour masquer l'image
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
    title: "Sécurisez le contenu PDF avec les rédactions .NET"
    exclude: "PDF"
    description: "Utilisez .NET pour masquer ou supprimer du contenu sensible dans des fichiers PDF. Une solution efficace pour sécuriser des documents officiels et confidentiels."
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