
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: fr
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Rédigez du texte sensible dans PDF avec Python"
head_description: "Protégez vos informations privées dans vos documents PDF avec GroupDocs.Redaction for Python via .NET. Trouvez et masquez rapidement les informations sensibles."

############################# Header ############################
title: "Effacez le texte sensible des fichiers PDF en utilisant Python" 
description: "Utilisez Python et GroupDocs.Redaction for Python via .NET pour rechercher et supprimer des données privées, légales ou personnelles de vos fichiers PDF."
subtitle: "Ce que vous pouvez faire avec GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que GroupDocs.Redaction for Python via .NET ?"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET fournit aux développeurs Python tous les outils nécessaires pour rédiger du contenu dans des fichiers PDF : textes, images, commentaires et plus.

############################# Steps ############################
steps:
    enable: true
    title: "Comment rédiger du contenu dans des fichiers Pdf"
    content: |
      Protégez votre contenu dans n'importe quelle application Python via .NET en utilisant GroupDocs.Redaction for Python via .NET.
      
      1. Créez un Redactor et chargez votre fichier Pdf.
      2. Choisissez les paramètres de rédaction que vous souhaitez.
      3. Entrez le texte à rechercher et ce avec quoi le remplacer.
      4. Appliquez la rédaction et enregistrez votre fichier.
   
    code:
      platform: "python-net"
      copy_title: "Copier"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Exemples de rédactions"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "cliquez pour copier"
        copy_done: "copié"
      links:
        #  loop
        - title: "Plus d'exemples"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "Documentation"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # 

        # 
        # 
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # 
        with gr.Redactor("input.pdf") as redactor:

            # 
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Fonctionnalités de rédaction supplémentaires"
  description: "GroupDocs.Redaction for Python via .NET vous permet de cacher le contenu privé dans de nombreux types de fichiers. Gardez vos données en sécurité et prêtes à être partagées."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Outils pour la rédaction de texte, d'images et de métadonnées"
  features:
    # feature loop
    - title: "Trouver et remplacer du texte privé"
      content: "Recherchez et échanger le texte correspondant. Fonctionne avec des regex et une recherche par mot-clé."

    # feature loop
    - title: "Masquer des images privées"
      content: "Masquez des images complètes ou des parties de celles-ci à l'aide de superpositions. Personnalisez les paramètres d'apparence."

    # feature loop
    - title: "Effacer les métadonnées cachées"
      content: "Supprimez les informations cachées comme les noms d'auteur, les horodatages et les notes de révision."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Rédaction avec Regex"
      content: |
        Utilisez des expressions régulières pour trouver et supprimer des motifs tels que des e-mails, des identifiants ou des numéros.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Définissez un motif regex et un texte de remplacement
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Ouvrez le fichier que vous souhaitez nettoyer
          with gr.Redactor("source.pdf") as redactor:

              # Appliquez vos règles de rédaction
              result = redactor.apply(redaction)

              # Enregistrez votre fichier rédigé
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
          ```
        platform: "python-net"
        copy_title: "Copier"
        install:
          command: "pip install groupdocs-redaction-net"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "Documentation"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "Prêt à commencer ?"
  description: "Essayez les fonctionnalités de GroupDocs.Redaction gratuitement ou demandez une licence"
  items:
    #  loop
    - title: "Télécharger PyPi"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "Licences"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Rédiger du contenu dans PDF en utilisant Python"
    exclude: "PDF"
    description: "Protégez vos données personnelles ou professionnelles en rédigeant du texte dans des fichiers PDF avec les outils Python."
    items: 
        # format loop 1
        - name: "Rédaction PDF"
          format: "PDF"
          link: "/redaction/python-net/replace-sensitive-text//pdf/"
          description: "Format de Document Portable Adobe"

        # format loop 2
        - name: "Rédaction Word"
          format: "WORD"
          link: "/redaction/python-net/replace-sensitive-text//word/"
          description: "Documents MS Word et Open Office"
          
        # format loop 3
        - name: "Rédaction Excel"
          format: "EXCEL"
          link: "/redaction/python-net/replace-sensitive-text//excel/"
          description: "Feuilles de calcul MS Excel et Open Office"

        # format loop 4
        - name: "Rédaction PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/replace-sensitive-text//powerpoint/"
          description: "Présentations MS PowerPoint et Open Office"

        # format loop 5
        - name: "Rédaction DOCX"
          format: "DOCX"
          link: "/redaction/python-net/replace-sensitive-text//docx/"
          description: "Document Microsoft Word Open XML"
          
        # format loop 6
        - name: "Rédaction XLSX"
          format: "XLSX"
          link: "/redaction/python-net/replace-sensitive-text//xlsx/"
          description: "Tableur Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Rédaction PPTX"
          format: "PPTX"
          link: "/redaction/python-net/replace-sensitive-text//pptx/"
          description: "Présentation PowerPoint Open XML"


---