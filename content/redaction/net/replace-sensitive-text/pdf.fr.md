
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: fr
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Rayer le texte sensible dans PDF avec C#"
head_description: "Protégez les informations privées dans vos fichiers PDF à l'aide de GroupDocs.Redaction for .NET. Recherchez et censurez rapidement les données sensibles."

############################# Header ############################
title: "Supprimer le texte sensible des documents PDF en utilisant .NET" 
description: "Utilisez C# et GroupDocs.Redaction for .NET pour prendre le contrôle total du contenu de vos fichiers PDF. Censurez les données personnelles, juridiques ou confidentielles."
subtitle: "Ce que vous pouvez faire avec GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET fournit aux développeurs C# tout ce dont ils ont besoin pour rayer le contenu PDF. Nettoyez le texte, les images, les annotations, les commentaires et les métadonnées dans des types de fichiers populaires.

############################# Steps ############################
steps:
    enable: true
    title: "Comment rayer le contenu dans les fichiers Pdf"
    content: |
      Protégez vos documents dans n'importe quelle application .NET en utilisant GroupDocs.Redaction for .NET. Rayez le texte sensible rapidement et avec précision.
      
      1. Initialisez un Redactor et chargez votre fichier Pdf.
      2. Configurez les options de censure nécessaires.
      3. Spécifiez le texte à rechercher et le texte de remplacement.
      4. Exécutez la censure et enregistrez le fichier.
   
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
        // Comment rayer du texte dans un fichier PDF

        // Chargez votre fichier à l'aide du constructeur Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Définissez vos préférences de censure
            // Choisissez ce qu'il faut rechercher et par quoi le remplacer
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Appliquez les censures et enregistrez le nouveau fichier PDF
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Plus de façons de rayer des documents"
  description: "GroupDocs.Redaction for .NET aide à supprimer ou à masquer le contenu sensible dans plusieurs formats de fichiers. Gardez vos documents propres et sûrs à partager."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Outils et options de censure"
  features:
    # feature loop
    - title: "Remplacer le texte confidentiel"
      content: "Trouvez et remplacez le texte correspondant partout dans votre fichier. Prend en charge les regex et les options de recherche intelligente."

    # feature loop
    - title: "Masquer les images sensibles"
      content: "Couvrez les images ou des zones spécifiques avec des superpositions. Ajustez les paramètres de la page, les couleurs et plus encore."

    # feature loop
    - title: "Nettoyer les métadonnées cachées"
      content: "Supprimez les données cachées comme l'auteur, les horodatages ou les commentaires pour protéger la vie privée."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Rayer du texte avec Regex"
      content: |
        Utilisez des expressions régulières pour rechercher et rayer des modèles de texte sensibles comme des e-mails ou des identifiants.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Ouvrez le document que vous souhaitez nettoyer
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Définissez un modèle regex EMAIL et le texte à utiliser comme remplacement
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Appliquez les règles de censure
              redactor.Apply(redaction);

              // Enregistrez le fichier final caviardé
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
    title: "Rayer le contenu dans PDF en utilisant .NET"
    exclude: "PDF"
    description: "Protégez les données officielles et personnelles en rayant le texte dans les fichiers PDF avec les outils .NET. Gardez vos documents sécurisés et privés."
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