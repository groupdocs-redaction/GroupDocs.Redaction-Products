
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
head_title: "Masquer du texte sensible dans PDF avec des superpositions utilisant C#"
head_description: "Avec GroupDocs.Redaction for .NET, vous pouvez masquer du texte sensible dans des fichiers PDF en plaçant des superpositions carrées colorées. Protégez les données privées sans modifier la mise en page originale."

############################# Header ############################
title: "Masquer du texte sensible dans des documents PDF avec des superpositions utilisant .NET" 
description: "Prenez le contrôle du contenu des fichiers PDF en utilisant C#. Utilisez les redactions pour protéger les informations juridiques, financières et personnelles."
subtitle: "Fonctionnalités de GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET fournit aux développeurs C# les outils pour cacher ou supprimer du contenu dans des fichiers PDF. C'est une manière simple de garder les documents en sécurité. Vous pouvez couvrir du texte, des images ou des métadonnées dans de nombreux types de fichiers.

############################# Steps ############################
steps:
    enable: true
    title: "Protéger les données professionnelles dans des documents Pdf"
    content: |
      GroupDocs.Redaction for .NET : conçu pour aider vos applications .NET à garder les documents en sécurité. Rédigez rapidement des informations privées.
      
      1. Créez une instance de Redactor et fournissez le chemin vers le fichier Pdf que vous souhaitez rédiger.
      2. Configurez les paramètres de redaction pour obtenir le résultat souhaité.
      3. Il vous suffit de définir le motif de texte à rechercher et de choisir la couleur de la superposition.
      4. Rédigez le document et enregistrez les modifications.
   
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
        // Masquer du texte sensible dans PDF avec des images de superposition

        // Passez le chemin de fichier au constructeur Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Configurez les options de redaction
            // Définissez le motif de texte et la couleur de superposition
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Rédigez et enregistrez le fichier PDF mis à jour
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Rédigez du contenu dans des documents"
  description: "Avec GroupDocs.Redaction for .NET, vous pouvez supprimer ou masquer du contenu à travers de nombreux types de fichiers. Protégez les informations sensibles tout en maintenant vos documents faciles à lire et à partager."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Options de redaction avancées"
  features:
    # feature loop
    - title: "Modifier le texte n'importe où"
      content: "Recherchez et remplacez tout texte correspondant dans votre document pour aider à sécuriser des données confidentielles."

    # feature loop
    - title: "Couvrir les images"
      content: "Placez des superpositions sur des images entières ou des zones sélectionnées pour cacher des visuels privés."

    # feature loop
    - title: "Gérer les métadonnées"
      content: "Effacez ou modifiez des métadonnées cachées pour éviter les fuites de données indésirables."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Utilisez des expressions régulières pour masquer le texte"
      content: |
        Cet exemple montre comment trouver et masquer du texte en utilisant des expressions régulières
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Chargez le document que vous souhaitez rédiger
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Définissez les paramètres de redaction : motif de texte et couleur
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Appliquez la redaction au contenu
              redactor.Apply(redaction);

              // Enregistrez la version rédigée
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
    title: "Protégez le contenu PDF avec des redactions .NET"
    exclude: "PDF"
    description: "Utilisez .NET pour couvrir ou effacer du contenu dans des fichiers PDF. C'est un choix intelligent pour garder des documents sensibles ou officiels sécurisés."
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