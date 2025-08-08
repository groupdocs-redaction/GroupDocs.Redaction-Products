
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fr
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Cachez les images dans JPEG avec des superpositions en utilisant C#"
head_description: "Protégez des images privées dans des fichiers JPEG avec GroupDocs.Redaction for .NET en ajoutant des superpositions colorées. Gardez les informations sensibles en sécurité sans changer la mise en page du fichier."

############################# Header ############################
title: "Recouvrez les images sensibles dans des fichiers JPEG avec des superpositions en utilisant .NET" 
description: "Conservez vos images personnelles et professionnelles en sécurité dans des fichiers JPEG en utilisant C#. Nos outils simples rendent la protection des fichiers facile et fiable."
subtitle: "Fonctionnalités principales de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET fournit aux développeurs C# les outils pour cacher ou supprimer du contenu dans des fichiers JPEG. Protégez vos documents en masquant le texte, les images et les métadonnées.

############################# Steps ############################
steps:
    enable: true
    title: "Protégez les données sensibles dans des fichiers Jpeg"
    content: |
      GroupDocs.Redaction for .NET est conçu pour aider vos applications .NET à cacher le contenu privé rapidement et efficacement.
      
      1. Créez un objet Redactor et fournissez le chemin vers votre fichier Jpeg.
      2. Configurez les options de rédaction pour correspondre à vos besoins.
      3. Marquez la zone d'image et choisissez une couleur de superposition.
      4. Exécutez la rédaction et enregistrez votre fichier protégé.
   
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
        // Recouvrez le contenu d'image dans des fichiers JPEG

        // Chargez le fichier en utilisant le Redactor
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // Définissez la taille et la couleur de la superposition
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Sélectionnez la zone pour la superposition
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Appliquez la superposition et enregistrez le fichier
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Rédiger tout contenu dans des documents"
  description: "GroupDocs.Redaction for .NET facilite le masquage ou la suppression du contenu dans différents formats de fichiers. Protégez les informations sensibles tout en gardant vos fichiers ordonnés et faciles à partager."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Outils de rédaction pour un contrôle total"
  features:
    # feature loop
    - title: "Éditez le texte partout"
      content: "Recherchez et remplacez le texte sensible dans vos documents pour protéger les données privées."

    # feature loop
    - title: "Masquez les images"
      content: "Appliquez des superpositions sur des images ou des zones spécifiques pour garder les visuels sensibles cachés."

    # feature loop
    - title: "Nettoyer les métadonnées"
      content: "Supprimez ou mettez à jour les métadonnées cachées pour éviter les fuites de données accidentelles."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Masquez les données d'image avec des superpositions"
      content: |
        Cet exemple démontre comment masquer des zones d'image sensibles dans des fichiers.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Ouvrez le fichier pour l'édition
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // Configurez la taille, la position et la couleur de la superposition
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Choisissez une zone d'image spécifique sur la première page
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Appliquez la superposition pour cacher l'image
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
    title: "Protégez les fichiers JPEG avec des rédactions .NET"
    exclude: "JPEG"
    description: "Avec .NET, vous pouvez facilement masquer ou supprimer du contenu sensible dans des fichiers JPEG. Une solution fiable pour garder vos documents sécurisés et professionnels."
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