
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: fr
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Cacher le texte dans XLSX en utilisant Python et des superpositions"
head_description: "GroupDocs.Redaction for Python via .NET vous aide à cacher du texte dans des fichiers XLSX en ajoutant des superpositions colorées. Gardez vos données privées sans changer la mise en page du fichier."

############################# Header ############################
title: "Cacher le texte dans les fichiers XLSX avec des superpositions Python" 
description: "Protégez le texte sensible dans vos fichiers XLSX avec GroupDocs.Redaction for Python via .NET et Python en plaçant de simples superpositions."
subtitle: "Ce que vous obtenez avec GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Ce que GroupDocs.Redaction for Python via .NET peut faire"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET donne aux développeurs Python les outils pour cacher ou supprimer du texte, des images, et plus encore dans des fichiers XLSX.

############################# Steps ############################
steps:
    enable: true
    title: "Protéger les données dans les fichiers Xlsx"
    content: |
      GroupDocs.Redaction for Python via .NET permet aux développeurs Python via .NET de cacher des informations privées en quelques lignes de code.
      
      1. Commencez par créer un Redactor et chargez votre fichier Xlsx.
      2. Définissez les options de rédaction appropriées pour votre cas.
      3. Ajoutez le motif de texte que vous souhaitez cacher et choisissez une couleur.
      4. Exécutez la rédaction et enregistrez votre fichier.
   
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
        import groupdocs.pydrawing as grd

        # Cacher le contenu privé dans XLSX avec des superpositions

        # Définissez vos préférences de rédaction
        # Choisissez le texte à couvrir et la couleur de superposition
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Utilisez Redactor pour charger votre fichier
        with gr.Redactor("input.xslx") as redactor:

            # Rédigez et enregistrez le fichier
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Outils de rédaction utiles"
  description: "GroupDocs.Redaction for Python via .NET vous permet de cacher ou de supprimer du contenu de nombreux types de fichiers. Gardez les informations personnelles ou professionnelles protégées."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Options de rédaction simples à utiliser"
  features:
    # feature loop
    - title: "Trouver et modifier le texte"
      content: "Recherchez du texte spécifique et remplacez-le ou cachez-le."

    # feature loop
    - title: "Couvrir le contenu des images"
      content: "Ajoutez des superpositions sur les images pour masquer les zones privées."

    # feature loop
    - title: "Supprimer les métadonnées"
      content: "Nettoyez les informations de fond avant de partager vos fichiers."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cacher le texte en utilisant des modèles Regex"
      content: |
        Cet exemple montre comment trouver et cacher du contenu en utilisant des expressions régulières.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Définissez votre motif de texte et la couleur de superposition
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Ouvrez le fichier que vous souhaitez modifier
          with gr.Redactor("source.xslx") as redactor:

              # Appliquez les règles de rédaction
              result = redactor.apply(redaction)

              # Enregistrez la version redatée
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Cacher des données dans XLSX avec Python"
    exclude: "XLSX"
    description: "Utilisez les outils Python pour cacher ou supprimer rapidement des parties sensibles de vos fichiers XLSX."
    items: 
        # format loop 1
        - name: "Rédaction PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-text-with-image-overlay//pdf/"
          description: "Format de Document Portable Adobe"

        # format loop 2
        - name: "Rédaction Word"
          format: "WORD"
          link: "/redaction/python-net/hide-text-with-image-overlay//word/"
          description: "Documents MS Word et Open Office"
          
        # format loop 3
        - name: "Rédaction Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-text-with-image-overlay//excel/"
          description: "Feuilles de calcul MS Excel et Open Office"

        # format loop 4
        - name: "Rédaction PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-text-with-image-overlay//powerpoint/"
          description: "Présentations MS PowerPoint et Open Office"

        # format loop 5
        - name: "Rédaction DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-text-with-image-overlay//docx/"
          description: "Document Microsoft Word Open XML"
          
        # format loop 6
        - name: "Rédaction XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-text-with-image-overlay//xlsx/"
          description: "Tableur Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Rédaction PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-text-with-image-overlay//pptx/"
          description: "Présentation PowerPoint Open XML"


---