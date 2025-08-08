
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: fr
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Masquer du contenu dans EXCEL avec des redactions par superposition et C#"
head_description: "Couvrez le texte dans des documents EXCEL en utilisant des blocs de couleur solide avec GroupDocs.Redaction for .NET. Une manière efficace de protéger le contenu privé."

############################# Header ############################
title: "Redaction par superposition pour des fichiers EXCEL dans .NET" 
description: "Utilisez du code C# pour masquer du texte et protéger des données à l'intérieur de vos fichiers EXCEL. Une solution propre pour la sécurité des documents."
subtitle: "Ce que GroupDocs.Redaction for .NET inclut" 

############################# About ############################
about:
    enable: true
    title: "Pourquoi choisir GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET est conçu pour les développeurs C# qui souhaitent rédiger ou supprimer du contenu dans des fichiers EXCEL. Utilisez-le pour travailler avec du texte, des métadonnées et des images.

############################# Steps ############################
steps:
    enable: true
    title: "Rédiger des informations sensibles au format Excel"
    content: |
      GroupDocs.Redaction for .NET est un outil simple pour les développeurs .NET afin de nettoyer des documents avant de les partager.
      
      1. Commencez un Redactor et chargez votre fichier Excel.
      2. Décidez des paramètres de redaction pour votre tâche.
      3. Ajoutez un mot-clé ou une phrase à rédiger et choisissez une couleur.
      4. Exécutez l'outil et enregistrez les modifications.
   
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
        // Utilisez des superpositions pour masquer du texte dans EXCEL

        // Créez un Redactor et chargez votre fichier
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Choisissez les règles de redaction
            // Entrez ce qu'il faut masquer et choisissez une couleur
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Appliquez la redaction et enregistrez le fichier
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Fonctionnalités clés pour la protection des données"
  description: "GroupDocs.Redaction for .NET vous permet de masquer ou de supprimer des données à l'intérieur de vos documents sans perdre de mise en page ou de sens."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Conçu pour la sécurité des documents"
  features:
    # feature loop
    - title: "Modifier le contenu du texte"
      content: "Remplacez ou cachez les mots sélectionnés dans l'intégralité du fichier."

    # feature loop
    - title: "Rédiger des visuels"
      content: "Masquez des photos ou des zones avec des blocs simples."

    # feature loop
    - title: "Nettoyer les métadonnées"
      content: "Débarrassez-vous des données d'arrière-plan comme les noms d'auteur ou les horodatages."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redaction de texte par regex"
      content: |
        Voici comment utiliser regex pour trouver et masquer du contenu dans un fichier
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Charger le document à traiter
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Ajouter le motif et les paramètres de superposition
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Appliquez les modifications
              redactor.Apply(redaction);

              // Enregistrez et fermez le document rédigé
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
    title: "Rédiger des fichiers EXCEL avec .NET"
    exclude: "EXCEL"
    description: "Couvrez du contenu sensible dans EXCEL en utilisant des superpositions carrées ou des redactions claires avec les fonctionnalités .NET."
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