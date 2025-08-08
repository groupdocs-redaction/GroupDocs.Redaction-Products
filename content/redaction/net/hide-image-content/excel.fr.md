
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fr
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Masquez les images dans EXCEL avec des superpositions en utilisant C#"
head_description: "Cachez des images privées dans des fichiers EXCEL à l'aide de GroupDocs.Redaction for .NET. Placez des superpositions colorées pour garder les données sensibles en sécurité tout en conservant la mise en page du document."

############################# Header ############################
title: "Recouvrez les images sensibles dans des fichiers EXCEL avec des superpositions en utilisant .NET" 
description: "Protégez les données personnelles et professionnelles dans des fichiers EXCEL en utilisant C#. Obtenez une protection rapide et fiable des données grâce à nos outils."
subtitle: "Explorez les fonctionnalités de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET offre aux développeurs C# des outils pour masquer ou supprimer des contenus sensibles dans des fichiers EXCEL. Couvrez des textes, des images et des métadonnées pour sécuriser vos documents.

############################# Steps ############################
steps:
    enable: true
    title: "Protégez vos données dans des fichiers Excel"
    content: |
      GroupDocs.Redaction for .NET aide vos applications .NET à sécuriser les documents en cachant le contenu sensible.
      
      1. Créez une instance de Redactor et fournissez le chemin vers le fichier Excel.
      2. Configurez les options de rédaction pour obtenir les résultats souhaités.
      3. Sélectionnez la zone d'image et la couleur de superposition.
      4. Appliquez la rédaction et enregistrez le fichier.
   
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
        // Masquez le contenu d'image dans EXCEL

        // Chargez le document en utilisant Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Définissez la taille et la couleur de la superposition
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Sélectionnez la zone à cacher
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
  title: "Rédiger tout contenu dans des documents"
  description: "GroupDocs.Redaction for .NET vous aide à cacher ou effacer du contenu sensible dans divers formats de documents. Protégez les données tout en maintenant des documents faciles à utiliser."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Options de rédaction puissantes"
  features:
    # feature loop
    - title: "Rechercher et éditer du texte"
      content: "Trouvez du texte sensible et remplacez-le pour protéger les données privées dans vos documents."

    # feature loop
    - title: "Recouvrir des zones d'image"
      content: "Recouvrez des images entières ou des parties sélectionnées avec des superpositions pour protéger les visuels."

    # feature loop
    - title: "Supprimer les métadonnées"
      content: "Effacez les champs de métadonnées cachées pour éviter les fuites accidentelles d'informations."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Masquez les données d'image avec des superpositions"
      content: |
        Cet exemple montre comment couvrir des informations sensibles dans des images de documents.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Ouvrez le fichier pour l'édition
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Définissez la taille, la couleur et le placement de la superposition
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Ciblez une section d'image spécifique sur la première page
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Appliquez la superposition pour masquer l'image
              redactor.Apply(redaction);

              // Enregistrez le document final
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
    title: "Protégez les fichiers EXCEL avec les outils de rédaction .NET"
    exclude: "EXCEL"
    description: "Utilisez .NET pour masquer ou supprimer des informations sensibles dans des fichiers EXCEL. Une solution fiable pour la sécurité des documents."
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