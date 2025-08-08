
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fr
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Recouvrez les images dans DOCX avec des superpositions en utilisant C#"
head_description: "Utilisez GroupDocs.Redaction for .NET pour recouvrir les images sensibles dans des fichiers DOCX avec des superpositions colorées. Protégez les données privées tout en maintenant la mise en page du document inchangée."

############################# Header ############################
title: "Recouvrir les images sensibles dans des documents DOCX avec des superpositions en utilisant .NET" 
description: "Protégez les informations personnelles et professionnelles dans des fichiers DOCX en utilisant C#. Nos outils rendent la protection des données simple et fiable."
subtitle: "Fonctionnalités de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "En savoir plus sur GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET donne aux développeurs C# des outils pour masquer ou supprimer du contenu dans des fichiers DOCX. Protégez les documents en couvrant du texte, des images et des métadonnées dans différents formats.

############################# Steps ############################
steps:
    enable: true
    title: "Protégez les données dans des fichiers Docx"
    content: |
      GroupDocs.Redaction for .NET : Construit pour aider vos applications .NET à sécuriser les documents. Rédigez des informations sensibles en quelques étapes.
      
      1. Initialisez un Redactor et fournissez le chemin vers votre fichier Docx.
      2. Configurez les options de rédaction selon vos besoins.
      3. Choisissez la zone d'image et sélectionnez la couleur de superposition.
      4. Exécutez la rédaction et enregistrez le fichier.
   
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
        // Recouvrez les zones d'image sensibles dans DOCX

        // Chargez le fichier via le constructeur Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Définissez la couleur et la taille de la superposition
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Définissez la zone de rédaction
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
  title: "Rédiger du contenu dans des fichiers"
  description: "Avec GroupDocs.Redaction for .NET, vous pouvez masquer ou supprimer du contenu sensible dans de nombreux types de fichiers. Gardez les documents en sécurité tout en préservant leur lisibilité."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Options de rédaction flexibles"
  features:
    # feature loop
    - title: "Modifier le texte facilement"
      content: "Trouvez et remplacez du texte privé dans votre document pour améliorer la sécurité des données."

    # feature loop
    - title: "Recouvrir les zones d'image"
      content: "Recouvrez des images entières ou sélectionnez des parties spécifiques pour protéger les informations visuelles."

    # feature loop
    - title: "Nettoyer les métadonnées"
      content: "Supprimez ou modifiez les métadonnées cachées pour éviter des fuites de données involontaires."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Appliquez des superpositions pour masquer les détails de l'image"
      content: |
        Cet exemple montre comment cacher des zones sensibles dans les images du document.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Chargez le document que vous souhaitez rédiger
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Spécifiez les paramètres de superposition : taille, position, couleur
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Visez une zone spécifique sur la première page
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Placez la superposition sur l'image
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
    title: "Protégez les fichiers DOCX avec la rédaction .NET"
    exclude: "DOCX"
    description: "Utilisez .NET pour recouvrir ou retirer des données sensibles dans des fichiers DOCX. Idéal pour garder les documents confidentiels en sécurité."
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