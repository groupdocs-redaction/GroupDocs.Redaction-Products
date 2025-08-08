
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: fr
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Supprimer le texte privé de DOCX en utilisant C#"
head_description: "Protégez rapidement le contenu privé dans vos fichiers DOCX avec GroupDocs.Redaction for .NET et C#."

############################# Header ############################
title: "Trouver et masquer le texte sensible dans les documents DOCX avec .NET" 
description: "Que ce soit pour un usage personnel ou professionnel, GroupDocs.Redaction for .NET et C# aident à garder les informations privées hors de vue."
subtitle: "Comment GroupDocs.Redaction for .NET vous aide" 

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET fournit aux développeurs C# les outils pour rechercher et nettoyer le contenu sensible dans des fichiers DOCX.

############################# Steps ############################
steps:
    enable: true
    title: "Comment rayer le contenu dans les fichiers Docx"
    content: |
      Suivez ces étapes rapides dans votre projet .NET pour nettoyer le texte privé avec GroupDocs.Redaction for .NET.
      
      1. Démarrez un nouveau Redactor et chargez le fichier Docx.
      2. Choisissez les paramètres de censure que vous souhaitez.
      3. Entrez le texte à trouver et ce que vous souhaitez y remplacer.
      4. Exécutez la censure et enregistrez votre fichier.
   
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
        // Rayer du texte dans un fichier DOCX

        // Chargez votre fichier à l'aide de Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Choisissez les options de censure qui conviennent à vos besoins
            // Définissez ce qu'il faut rechercher et par quoi le remplacer
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Exécutez l'outil et enregistrez votre fichier caviardé
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Plus de fonctionnalités de censure"
  description: "Avec GroupDocs.Redaction for .NET, il est facile de supprimer du contenu caché ou visible de différents types de fichiers. Idéal pour partager en toute sécurité."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Aperçu des outils de censure"
  features:
    # feature loop
    - title: "Remplacer le texte privé"
      content: "Recherchez un texte spécifique n'importe où dans le fichier et remplacez-le. Fonctionne avec du texte brut ou des motifs."

    # feature loop
    - title: "Masquer les images sensibles"
      content: "Masquez des parties d'une image ou des pages entières avec des superpositions. Vous contrôlez les couleurs, les tailles et les positions."

    # feature loop
    - title: "Effacer les données cachées"
      content: "Supprimez les métadonnées comme les noms, les commentaires ou les horodatages pour vous assurer que rien n'est laissé derrière."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Trouver et rayer des modèles avec Regex"
      content: |
        Utilisez regex pour rechercher des types de données spécifiques comme des adresses e-mail ou des numéros d'identification et les nettoyer automatiquement.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Ouvrez le fichier que vous devez nettoyer
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Créez une règle regex EMAIL et une chaîne de remplacement
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Exécutez la censure à l'aide de vos paramètres
              redactor.Apply(redaction);

              // Enregistrez le fichier mis à jour
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "Rayer des données dans DOCX en utilisant .NET"
    exclude: "DOCX"
    description: "Protégez des informations personnelles ou officielles en les cachant dans des documents DOCX en utilisant .NET."
    items: 
        # format loop 1
        - name: "Rédaction PDF"
          format: "PDF"
          link: "/redaction/net/replace-sensitive-text//pdf/"
          description: "Format de Document Portable Adobe"

        # format loop 2
        - name: "Rédaction Word"
          format: "WORD"
          link: "/redaction/net/replace-sensitive-text//word/"
          description: "Documents MS Word et Open Office"
          
        # format loop 3
        - name: "Rédaction Excel"
          format: "EXCEL"
          link: "/redaction/net/replace-sensitive-text//excel/"
          description: "Feuilles de calcul MS Excel et Open Office"

        # format loop 4
        - name: "Rédaction PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/replace-sensitive-text//powerpoint/"
          description: "Présentations MS PowerPoint et Open Office"

        # format loop 5
        - name: "Rédaction DOCX"
          format: "DOCX"
          link: "/redaction/net/replace-sensitive-text//docx/"
          description: "Document Microsoft Word Open XML"
          
        # format loop 6
        - name: "Rédaction XLSX"
          format: "XLSX"
          link: "/redaction/net/replace-sensitive-text//xlsx/"
          description: "Tableur Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Rédaction PPTX"
          format: "PPTX"
          link: "/redaction/net/replace-sensitive-text//pptx/"
          description: "Présentation PowerPoint Open XML"


---