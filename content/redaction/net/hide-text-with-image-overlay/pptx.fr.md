
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: fr
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Rédiger du texte dans PPTX en utilisant des superpositions et C#"
head_description: "Masquez le contenu privé dans des documents PPTX en le couvrant avec des carrés colorés à l'aide de GroupDocs.Redaction for .NET. Gardez votre mise en page telle qu'elle est."

############################# Header ############################
title: "Rédaction de texte dans PPTX avec des superpositions utilisant .NET" 
description: "Avec C# et GroupDocs.Redaction for .NET, il est simple de protéger des données sensibles dans des fichiers PPTX en les cachant."
subtitle: "Explorez GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Que fait GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET vous donne la possibilité de couvrir ou de supprimer du contenu dans des documents PPTX en utilisant C#. Masquez tout, des noms aux notes, en quelques étapes.

############################# Steps ############################
steps:
    enable: true
    title: "Masquer du contenu privé dans vos fichiers Pptx"
    content: |
      Avec GroupDocs.Redaction for .NET, les développeurs .NET peuvent protéger les documents en quelques étapes simples.
      
      1. Démarrez un Redactor avec le chemin vers le fichier que vous souhaitez nettoyer.
      2. Choisissez les règles de redaction qui correspondent à vos besoins.
      3. Choisissez un motif à correspondre et une couleur pour la superposition d'image.
      4. Exécutez la redaction et enregistrez votre fichier mis à jour.
   
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
        // Utilisez des superpositions pour couvrir du texte dans PPTX

        // Initialisez Redactor avec votre fichier
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Définissez comment la redaction doit se comporter
            // Définissez ce qui doit être masqué et la couleur de la superposition
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Exécutez et enregistrez les modifications
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Plus de façons de protéger vos fichiers"
  description: "GroupDocs.Redaction for .NET vous donne les outils pour cacher des données dans différents formats sans changer la mise en page."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Fonctionnalités qui comptent"
  features:
    # feature loop
    - title: "Remplacer le texte selon les besoins"
      content: "Échangez du texte pour garder des informations clés à l'abri des utilisateurs non autorisés."

    # feature loop
    - title: "Masquer des zones d'images"
      content: "Masquez des images complètes ou certaines parties en dessinant des boîtes de superposition."

    # feature loop
    - title: "Effacer des données cachées"
      content: "Supprimez des métadonnées intégrées qui pourraient révéler des détails privés."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Rédaction avec des expressions régulières"
      content: |
        Cet exemple montre comment chercher et masquer du texte avec des expressions régulières
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Chargez un fichier à rédiger
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Définissez les règles de redaction : texte à rechercher et couleur du bloc
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Appliquez la logique de redaction
              redactor.Apply(redaction);

              // Enregistrez le résultat rédigé
              var save_opt = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_opt);
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Sécurisez le texte PPTX avec les outils .NET"
    exclude: "PPTX"
    description: "Couvrez des zones privées ou supprimez des données cachées dans des fichiers PPTX en utilisant les fonctionnalités de redaction .NET."
    items: 
        # format loop 1
        - name: "Rédaction PDF"
          format: "PDF"
          link: "/redaction/net/hide-text-with-image-overlay//pdf/"
          description: "Format de Document Portable Adobe"

        # format loop 2
        - name: "Rédaction Word"
          format: "WORD"
          link: "/redaction/net/hide-text-with-image-overlay//word/"
          description: "Documents MS Word et Open Office"
          
        # format loop 3
        - name: "Rédaction Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-text-with-image-overlay//excel/"
          description: "Feuilles de calcul MS Excel et Open Office"

        # format loop 4
        - name: "Rédaction PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-text-with-image-overlay//powerpoint/"
          description: "Présentations MS PowerPoint et Open Office"

        # format loop 5
        - name: "Rédaction DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-text-with-image-overlay//docx/"
          description: "Document Microsoft Word Open XML"
          
        # format loop 6
        - name: "Rédaction XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-text-with-image-overlay//xlsx/"
          description: "Tableur Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Rédaction PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-text-with-image-overlay//pptx/"
          description: "Présentation PowerPoint Open XML"


---