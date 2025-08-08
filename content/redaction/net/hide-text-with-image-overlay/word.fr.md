
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
head_title: "Utilisez des superpositions pour cacher du texte dans WORD via C#"
head_description: "GroupDocs.Redaction for .NET facilite la couverture de texte sensible dans WORD avec des blocs de couleur. Gardez le document intact tout en cachant ce qui compte."

############################# Header ############################
title: "Redaction de texte par superposition dans des fichiers WORD avec .NET" 
description: "Protégez les informations importantes dans des fichiers WORD en utilisant des superpositions carrées écrites en C#. Idéal pour la sécurité et la conformité."
subtitle: "Voir ce que GroupDocs.Redaction for .NET peut faire" 

############################# About ############################
about:
    enable: true
    title: "Rencontrez GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       Les développeurs travaillant avec C# peuvent utiliser GroupDocs.Redaction for .NET pour cacher ou supprimer des parties de documents WORD. Masquez des noms, des chiffres ou d'autres données en juste quelques lignes de code.

############################# Steps ############################
steps:
    enable: true
    title: "Rédiger des données privées dans des fichiers Word"
    content: |
      GroupDocs.Redaction for .NET aide les développeurs .NET à supprimer rapidement du contenu sensible. Suivez ces étapes pour sécuriser vos fichiers.
      
      1. Initialisez un Redactor avec le chemin vers votre fichier Word.
      2. Définissez les règles pour rédiger du contenu.
      3. Choisissez le motif de texte et la couleur pour le couvrir.
      4. Appliquez la redaction et enregistrez votre fichier rédigé.
   
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
        // Rédiger du texte dans WORD en utilisant des images de superposition

        // Chargez votre fichier avec le Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Définissez ce qui doit être rédigé
            // Ajoutez le texte correspondant et la couleur de superposition
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Exécutez la redaction et enregistrez le fichier final
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Outils de redaction supplémentaires"
  description: "Avec GroupDocs.Redaction for .NET, vous pouvez garder vos fichiers propres en supprimant les informations visibles et cachées tout en gardant la mise en page intacte."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Sortie propre et sécurisée"
  features:
    # feature loop
    - title: "Remplacez le texte exposé"
      content: "Masquez des mots ou des phrases qui pourraient révéler des données importantes."

    # feature loop
    - title: "Masquez des images"
      content: "Marquez des visuels sensibles avec des blocs solides."

    # feature loop
    - title: "Effacez les informations cachées"
      content: "Effacez les métadonnées d'arrière-plan pour garder les fichiers privés."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Masquez le texte correspondant avec regex"
      content: |
        Cet exemple montre comment utiliser des expressions régulières pour trouver et couvrir du contenu sensible
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Ouvrez le document à rédiger
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Choisissez le motif et la couleur
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Exécutez les règles de redaction
              redactor.Apply(redaction);

              // Enregistrez et révisez la copie rédigée
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
    title: "Protégez vos fichiers WORD en utilisant .NET"
    exclude: "WORD"
    description: "Avec .NET, vous pouvez masquer du texte ou effacer des métadonnées dans des formats WORD sans altérer la mise en page ou le formatage."
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