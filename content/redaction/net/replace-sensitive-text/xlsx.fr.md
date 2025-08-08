
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
head_title: "Supprimer le texte privé de XLSX en utilisant C#"
head_description: "Nettoyez rapidement le contenu privé de vos fichiers XLSX à l'aide de GroupDocs.Redaction for .NET et C#."

############################# Header ############################
title: "Modifier ou masquer le texte sensible dans les documents XLSX avec .NET" 
description: "Avec GroupDocs.Redaction for .NET et C#, vous pouvez supprimer des informations personnelles ou professionnelles de vos fichiers XLSX et les garder en sécurité."
subtitle: "Ce que vous pouvez faire avec GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET permet aux développeurs C# de rechercher et de supprimer des infos sensibles des fichiers XLSX.

############################# Steps ############################
steps:
    enable: true
    title: "Comment rayer le texte dans les fichiers Xlsx"
    content: |
      Utilisez GroupDocs.Redaction for .NET dans votre projet .NET pour masquer ou supprimer des infos sensibles en quelques étapes.
      
      1. Créez un Redactor et chargez le fichier Xlsx.
      2. Choisissez les paramètres de censure qui répondent à vos besoins.
      3. Entrez le texte à trouver et ce par quoi le remplacer.
      4. Exécutez la censure et enregistrez votre fichier mis à jour.
   
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
        // Rayer du texte d'un fichier XLSX

        // Utilisez Redactor pour ouvrir le fichier
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Choisissez vos options de censure
            // Définissez le texte à rechercher et à remplacer
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Appliquez les censures et enregistrez le fichier nettoyé
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Plus d’outils pour la censure"
  description: "GroupDocs.Redaction for .NET aide à nettoyer différents types de contenu—aussi bien du texte que des images ou des métadonnées—pour que vos fichiers soient prêts à être partagés en toute sécurité."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Options de censure affichées"
  features:
    # feature loop
    - title: "Remplacer le texte sensible"
      content: "Recherchez dans le fichier et remplacez tout ce qui est confidentiel. Prend en charge le texte simple et les motifs."

    # feature loop
    - title: "Masquer les zones d'images"
      content: "Utilisez des superpositions pour cacher des données visuelles. Choisissez la couleur, la taille de la zone et la mise en page de la page."

    # feature loop
    - title: "Supprimer les données supplémentaires"
      content: "Supprimez des métadonnées telles que le nom de l'auteur, les horodatages ou des notes internes pour éviter les fuites."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Rayer avec des règles Regex"
      content: |
        Utilisez regex pour trouver et nettoyer des modèles comme des numéros de téléphone, des emails ou d'autres informations personnelles.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Ouvrez le fichier pour commencer
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Écrivez une règle regex EMAIL et choisissez un remplacement
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Exécutez la censure selon votre modèle
              redactor.Apply(redaction);

              // Enregistrez le fichier caviardé
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
    title: "Masquer les informations dans XLSX avec .NET"
    exclude: "XLSX"
    description: "Nettoyez vos documents XLSX en supprimant le texte personnel ou sensible à l'aide des outils .NET."
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