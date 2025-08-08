
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
head_title: "Supprimer le texte privé de PPTX en utilisant C#"
head_description: "Masquez rapidement le contenu privé dans vos présentations PPTX avec GroupDocs.Redaction for .NET et C#."

############################# Header ############################
title: "Editer ou masquer le texte sensible dans les documents PPTX avec .NET" 
description: "Gardez vos présentations propres et privées. Utilisez GroupDocs.Redaction for .NET et C# pour supprimer tout ce que vous ne souhaitez pas partager."
subtitle: "Ce que vous pouvez faire avec GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET donne aux développeurs C# ce dont ils ont besoin pour supprimer le contenu sensible des fichiers PPTX.

############################# Steps ############################
steps:
    enable: true
    title: "Étapes pour nettoyer les présentations Pptx"
    content: |
      Utilisez GroupDocs.Redaction for .NET dans votre application .NET pour supprimer ou couvrir le contenu sensible en quelques étapes.
      
      1. Démarrez un nouveau Redactor et chargez votre fichier Pptx.
      2. Choisissez les règles de censure que vous souhaitez appliquer.
      3. Définissez le texte à rechercher et ce par quoi le remplacer.
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
        // Caviarder une présentation PPTX

        // Ouvrez le fichier avec Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Choisissez les paramètres de censure
            // Choisissez le texte à rechercher et à remplacer
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Appliquez les modifications et enregistrez le fichier mis à jour
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Fonctionnalités de censure que vous pouvez utiliser"
  description: "GroupDocs.Redaction for .NET vous aide à trouver et masquer le texte sensible, les images et les données cachées à travers plusieurs types de fichiers. Parfait pour partager des fichiers en toute sécurité."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Options de censure disponibles"
  features:
    # feature loop
    - title: "Remplacer le texte caché"
      content: "Recherchez et remplacez des mots ou des phrases privées partout dans le fichier. Le regex est également pris en charge."

    # feature loop
    - title: "Cacher les images"
      content: "Utilisez des blocs pour cacher des images ou des zones que vous souhaitez masquer. Contrôlez la forme, la taille et la couleur."

    # feature loop
    - title: "Supprimer les détails cachés"
      content: "Nettoyez les métadonnées telles que les noms d'auteur, les dates de dernière modification ou les commentaires pour rendre votre fichier propre."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Rayer en utilisant des modèles Regex"
      content: |
        Trouvez et nettoyez des données comme des adresses e-mail ou des identifiants à l'aide de regex. Idéal pour une censure répétable.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Ouvrez votre fichier
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Écrivez un modèle regex EMAIL et définissez le remplacement
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Appliquez vos paramètres de censure
              redactor.Apply(redaction);

              // Enregistrez la version caviardée
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
    title: "Nettoyer les fichiers PPTX avec .NET"
    exclude: "PPTX"
    description: "Rendez vos documents PPTX plus sûrs à partager en masquant le texte privé avec .NET."
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