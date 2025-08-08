
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: fr
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Masquer du texte sensible dans POWERPOINT avec des superpositions C#"
head_description: "GroupDocs.Redaction for .NET vous permet de masquer des parties de fichiers POWERPOINT en utilisant de simples redactions par superposition. Gardez les documents en sécurité sans changer la structure."

############################# Header ############################
title: "Redaction de texte dans POWERPOINT avec des superpositions utilisant .NET" 
description: "Protégez le contenu de vos fichiers POWERPOINT en plaçant des blocs de superposition avec l'aide de C# et GroupDocs.Redaction for .NET."
subtitle: "Outils à l'intérieur de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "À propos de cet outil"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET aide les utilisateurs C# à nettoyer les documents POWERPOINT en masquant ou en supprimant du texte, des métadonnées ou des images selon les besoins.

############################# Steps ############################
steps:
    enable: true
    title: "Sécurisez le contenu dans des documents Powerpoint"
    content: |
      Utilisez GroupDocs.Redaction for .NET dans vos applications .NET pour nettoyer des fichiers avant distribution.
      
      1. Passez le chemin du fichier à une nouvelle instance de Redactor.
      2. Déterminez ce que et comment vous souhaitez rédiger.
      3. Définissez le motif de texte et choisissez la couleur de la superposition.
      4. Rédigez et sauvegardez votre fichier mis à jour.
   
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
        // Superposer du texte dans POWERPOINT pour masquer des détails

        // Utiliser Redactor pour ouvrir votre fichier
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Ajustez les réglages pour la redaction
            // Sélectionnez le texte et une couleur de blocage
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Exécutez et enregistrez votre fichier rédigé
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Masquer facilement des données sensibles"
  description: "Utilisez GroupDocs.Redaction for .NET pour supprimer ou recouvrir du contenu dans différents types de documents — idéal pour protéger des données dans des fichiers juridiques, commerciaux ou personnels."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Redaction de documents flexible"
  features:
    # feature loop
    - title: "Échanger du texte"
      content: "Recherchez des mots ou des numéros et remplacez-les ou cachez-les."

    # feature loop
    - title: "Rédiger des photos ou des sections"
      content: "Ajoutez des superpositions aux images ou aux endroits sélectionnés sur une page."

    # feature loop
    - title: "Supprimer des données supplémentaires"
      content: "Nettoyez les métadonnées qui pourraient révéler des informations cachées."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Trouver et rédiger avec regex"
      content: |
        Cela montre comment regex peut aider à identifier et masquer du texte
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Ouvrez le fichier qui nécessite une rédaction
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Configurez vos règles en utilisant regex
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Exécutez le processus de redaction
              redactor.Apply(redaction);

              // Enregistrez la version nettoyée
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
    title: "Masquer le contenu dans POWERPOINT en utilisant .NET"
    exclude: "POWERPOINT"
    description: "Ajoutez des superpositions ou supprimez des données de vos fichiers POWERPOINT pour garder le contenu sensible privé à l'aide de .NET."
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