
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: fr
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Masquer du texte dans XLSX avec des superpositions C#"
head_description: "GroupDocs.Redaction for .NET aide à masquer du texte dans des fichiers XLSX en utilisant des blocs colorés. Gardez les informations en sécurité sans changer le format de votre document."

############################# Header ############################
title: "Masquer du texte dans des fichiers XLSX en utilisant des superpositions et .NET" 
description: "Utilisez C# et GroupDocs.Redaction for .NET pour ajouter de simples superpositions qui bloquent le texte sensible dans vos fichiers XLSX."
subtitle: "Fonctionnalités de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Comment GroupDocs.Redaction for .NET aide"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET permet aux développeurs utilisant C# de cacher du contenu indésirable dans des fichiers XLSX. Masquez tout, des mots aux images, à travers différents types de fichiers.

############################# Steps ############################
steps:
    enable: true
    title: "Protégez les informations sensibles dans des documents Xlsx"
    content: |
      GroupDocs.Redaction for .NET aide les développeurs .NET à protéger des fichiers. Masquez le contenu privé avec juste quelques lignes de code.
      
      1. Créez un nouvel objet Redactor avec le chemin de votre fichier Xlsx.
      2. Ajustez les paramètres de redaction selon vos besoins.
      3. Ajoutez un motif de recherche et choisissez une couleur pour le bloc de superposition.
      4. Exécutez la redaction et enregistrez votre fichier.
   
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
        // Couvrir du texte privé dans XLSX en utilisant des superpositions

        // Chargez le fichier avec Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Choisissez comment la redaction fonctionnera
            // Entrez le texte à masquer et sélectionnez la couleur de superposition
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Traitez le fichier et enregistrez les modifications
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Fonctionnalités de redaction intelligentes"
  description: "Utilisez GroupDocs.Redaction for .NET pour effacer ou masquer du contenu dans divers types de fichiers. Gardez les détails privés à l'abri des regards."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Outils de redaction pratiques"
  features:
    # feature loop
    - title: "Modifier n'importe quel texte"
      content: "Recherchez et mettez à jour toute chaîne dans le document pour protéger les données."

    # feature loop
    - title: "Masquer le contenu d'images"
      content: "Ajoutez des carrés ou des rectangles pour couvrir des parties sensibles des images."

    # feature loop
    - title: "Nettoyer les métadonnées"
      content: "Supprimez ou écrasez les détails de fichier en arrière-plan avant de partager."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Correspondre et masquer avec des expressions régulières"
      content: |
        Apprenez à détecter et à rédiger du contenu en utilisant des expressions régulières
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Ouvrez le document cible
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Configurez le motif et la couleur de superposition
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Appliquez les règles de redaction
              redactor.Apply(redaction);

              // Exportez la version rédigée
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
    title: "Utilisez .NET pour masquer des informations dans des fichiers XLSX"
    exclude: "XLSX"
    description: "Ajoutez des superpositions ou supprimez des parties de vos documents XLSX pour protéger les détails sensibles avec l'aide de .NET."
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