
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fr
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Rédigez les images dans PPTX avec des superpositions en utilisant C#"
head_description: "Avec GroupDocs.Redaction for .NET, vous pouvez cacher le contenu d'image sensible dans des fichiers PPTX en appliquant des superpositions colorées. Protégez les données confidentielles sans changer la structure de votre document."

############################# Header ############################
title: "Rédiger les images sensibles dans des documents PPTX en utilisant .NET" 
description: "Protégez les données privées et professionnelles dans des fichiers PPTX avec C#. Nos outils rendent la rédaction d'images rapide et efficace."
subtitle: "Ce que GroupDocs.Redaction for .NET offre" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET offre aux développeurs C# des outils simples pour cacher ou supprimer du contenu dans des fichiers PPTX. Protégez vos documents en masquant le texte, les images et les métadonnées dans plusieurs formats.

############################# Steps ############################
steps:
    enable: true
    title: "Gardez les données commerciales en sécurité dans des documents Pptx"
    content: |
      GroupDocs.Redaction for .NET : Aider les applications .NET à sécuriser les documents en cachant les informations sensibles.
      
      1. Configurez une instance de Redactor et chargez le fichier Pptx.
      2. Configurez les paramètres de rédaction pour répondre à vos besoins.
      3. Sélectionnez les zones d'image et assignez des couleurs de superposition.
      4. Traitez la rédaction et enregistrez votre fichier.
   
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
        // Rédigez les zones d'image sensibles dans PPTX

        // Ouvrez le fichier avec Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Définissez la couleur et les dimensions de la superposition
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Sélectionnez la zone à rédiger
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
  title: "Outils de rédaction de documents"
  description: "GroupDocs.Redaction for .NET vous permet de masquer ou de supprimer du contenu sensible dans divers types de fichiers. Protégez l'information tout en gardant les documents clairs et partageables."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Outils de rédaction puissants"
  features:
    # feature loop
    - title: "Rechercher et remplacer le texte"
      content: "Identifiez et rédigez des textes privés pour renforcer la sécurité des documents."

    # feature loop
    - title: "Rédiger le contenu d'image"
      content: "Recouvrez des images entières ou des zones sélectionnées avec des superpositions pour cacher des visuels privés."

    # feature loop
    - title: "Supprimer les métadonnées"
      content: "Effacez ou modifiez les métadonnées cachées pour éviter les fuites de données."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cachez les données d'image avec des superpositions"
      content: |
        Cet exemple montre comment rédiger les images sensibles dans des documents.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Chargez le document
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Configurez la taille, la position et la couleur de la superposition
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Précisez l'aire à rédiger sur la première page
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Appliquez la superposition
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
    title: "Rédigez le contenu PPTX avec .NET"
    exclude: "PPTX"
    description: "Utilisez .NET pour masquer ou supprimer des contenus sensibles dans des fichiers PPTX. Une solution fiable pour la sécurité des documents."
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