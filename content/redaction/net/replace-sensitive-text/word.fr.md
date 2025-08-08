
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: fr
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Supprimer le texte privé de WORD en utilisant C#"
head_description: "Gardez vos fichiers WORD privés avec GroupDocs.Redaction for .NET et C#."

############################# Header ############################
title: "Trouvez et supprimez le texte sensible dans les fichiers WORD avec .NET" 
description: "Utilisez C# et GroupDocs.Redaction for .NET pour protéger vos fichiers personnels ou professionnels. Vos informations privées restent cachées."
subtitle: "Fonctionnalités clés de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET fournit aux utilisateurs C# les outils pour nettoyer les documents WORD.

############################# Steps ############################
steps:
    enable: true
    title: "Comment rayer les fichiers Word"
    content: |
      Avec GroupDocs.Redaction for .NET, il est simple de trouver et de remplacer le contenu privé dans les applications .NET.
      
      1. Créez un Redactor et ouvrez votre fichier Word.
      2. Choisissez vos paramètres de censure.
      3. Indiquez ce qu'il faut rechercher et quel texte utiliser comme remplacement.
      4. Démarrez la censure et enregistrez votre fichier mis à jour.
   
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
        // Étapes pour rayer du contenu dans un document WORD

        // Ouvrez le fichier avec Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Ajustez vos paramètres de censure
            // Sélectionnez ce qu'il faut rechercher et comme remplacer
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Exécutez la censure et enregistrez votre nouveau fichier WORD
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Plus d’outils de censure"
  description: "GroupDocs.Redaction for .NET vous offre des moyens puissants pour masquer ou effacer des informations privées dans de nombreux types de fichiers."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Outils et réglages de censure disponibles"
  features:
    # feature loop
    - title: "Échanger du texte privé"
      content: "Recherchez et remplacez les correspondances exactes avec des options de texte intelligentes, y compris la prise en charge regex."

    # feature loop
    - title: "Masquer des images privées"
      content: "Couvrez des images entières ou juste des parties d'une page. Vous pouvez ajuster la couleur et la taille de la superposition."

    # feature loop
    - title: "Effacer les métadonnées cachées"
      content: "Supprimez des informations comme les noms d'auteur, l'historique des modifications et les commentaires pour protéger votre identité."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Utilisez Regex pour des censure plus intelligentes"
      content: |
        Trouvez et supprimez les modèles de données comme les e-mails ou les identifiants avec des expressions régulières.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Ouvrez le fichier que vous souhaitez nettoyer
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Définissez un modèle regex EMAIL et choisissez le texte de remplacement
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Exécutez le processus de censure
              redactor.Apply(redaction);

              // Enregistrez votre fichier final caviardé
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
    title: "Comment rayer WORD avec .NET"
    exclude: "WORD"
    description: "Utilisez .NET pour nettoyer les fichiers WORD."
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