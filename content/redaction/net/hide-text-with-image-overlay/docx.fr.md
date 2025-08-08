
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
head_title: "Couvrir du texte sensible dans DOCX en utilisant des superpositions et C#"
head_description: "Utilisez GroupDocs.Redaction for .NET pour protéger du texte privé dans des fichiers DOCX avec de simples superpositions carrées. Gardez votre mise en page de document inchangée et vos données cachées."

############################# Header ############################
title: "Couvrir le texte dans DOCX avec des superpositions utilisant .NET" 
description: "Masquez le contenu sensible dans vos documents DOCX en utilisant du code C#. Idéal pour la protection des documents juridiques, commerciaux ou personnels."
subtitle: "Fonctionnalités de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET aide les développeurs C# à cacher ou supprimer du contenu privé dans des fichiers DOCX. Utilisez-le pour masquer des textes, des images et des métadonnées dans différents formats de fichiers.

############################# Steps ############################
steps:
    enable: true
    title: "Supprimer des données privées des documents Docx"
    content: |
      GroupDocs.Redaction for .NET aide les développeurs .NET à nettoyer les documents en quelques lignes de code.
      
      1. Créez un Redactor et fournissez le chemin de votre fichier.
      2. Définissez comment la redaction doit fonctionner.
      3. Entrez le texte à masquer et choisissez la couleur de superposition.
      4. Rédigez le fichier et enregistrez-le.
   
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
        // Masquer du texte dans DOCX en utilisant des blocs de superposition

        // Créez un Redactor et chargez le fichier
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Définissez vos préférences de redaction
            // Entrez le texte et définissez la couleur du bloc
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Rédigez et enregistrez le document mis à jour
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Plus de façons de nettoyer des documents"
  description: "Avec GroupDocs.Redaction for .NET, rédigez différents types de fichiers pour garder votre contenu sûr et professionnel."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Redaction intelligente intégrée"
  features:
    # feature loop
    - title: "Modifier ou supprimer du texte"
      content: "Trouvez des phrases spécifiques et cachez-les ou remplacez-les."

    # feature loop
    - title: "Masquer des zones d'image"
      content: "Couvrez les endroits sensibles dans les images ou les pages scannées."

    # feature loop
    - title: "Effacer les métadonnées cachées"
      content: "Supprimez des informations invisibles qui pourraient exposer des données utilisateur ou système."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex pour rédiger du contenu"
      content: |
        Découvrez comment les expressions régulières peuvent trouver et masquer des mots sensibles
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Ouvrez le fichier cible
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Définissez le motif et la couleur
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Appliquez la logique de redaction
              redactor.Apply(redaction);

              // Exécutez le document rédigé
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
    title: "Masquer le contenu dans DOCX avec .NET"
    exclude: "DOCX"
    description: "Protégez des données sensibles dans des documents DOCX en les recouvrant avec des superpositions ou en les supprimant complètement à l'aide des outils .NET."
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