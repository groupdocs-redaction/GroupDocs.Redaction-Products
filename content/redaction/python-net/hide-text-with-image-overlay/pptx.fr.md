
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: fr
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Cacher le texte dans PPTX en utilisant Python et des superpositions"
head_description: "Couvrez le contenu sensible dans vos fichiers PPTX avec des superpositions colorées à l'aide de GroupDocs.Redaction for Python via .NET. Votre mise en page reste intacte."

############################# Header ############################
title: "Protéger le texte dans PPTX avec des superpositions et Python" 
description: "Utilisez GroupDocs.Redaction for Python via .NET et Python pour cacher des informations privées dans les présentations PPTX en les recouvrant de blocs de couleur."
subtitle: "Ce que vous pouvez faire avec GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Ce que GroupDocs.Redaction for Python via .NET offre"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       Avec GroupDocs.Redaction for Python via .NET, les développeurs Python peuvent couvrir ou supprimer du contenu dans des fichiers PPTX — du texte aux images en passant par les données cachées.

############################# Steps ############################
steps:
    enable: true
    title: "Rédiger des informations dans Pptx"
    content: |
      Utilisez GroupDocs.Redaction for Python via .NET pour protéger vos présentations en quelques étapes simples.
      
      1. Créez un Redactor et chargez le fichier que vous souhaitez modifier.
      2. Choisissez les paramètres de rédaction qui correspondent à vos besoins.
      3. Définissez le motif de texte et choisissez une couleur pour la superposition.
      4. Appliquez la rédaction et enregistrez vos modifications.
   
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

        # Utilisez des superpositions pour cacher du texte dans PPTX

        # Définissez les paramètres de rédaction
        # Choisissez le texte et la couleur
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Commencez par charger votre fichier avec Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Rédigez et enregistrez le fichier
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Plus d'options de rédaction"
  description: "GroupDocs.Redaction for Python via .NET vous fournit des outils pour cacher ou nettoyer des données dans différents formats de fichier sans toucher à la mise en page."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Fonctionnalités utiles pour la confidentialité"
  features:
    # feature loop
    - title: "Changer ou cacher le texte"
      content: "Protégez les informations sensibles en les modifiant ou en les cachant de la vue."

    # feature loop
    - title: "Cacher des images ou des parties"
      content: "Dessinez des superpositions pour bloquer des images entières ou des zones sélectionnées."

    # feature loop
    - title: "Supprimer les détails cachés"
      content: "Effacez les métadonnées qui peuvent inclure des informations privées ou système."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Utilisez Regex pour trouver du texte"
      content: |
        Découvrez comment les expressions régulières vous aident à trouver et cacher des contenus sensibles.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Définissez le motif et la couleur de la superposition
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Ouvrez votre fichier PPTX pour la rédaction
          with gr.Redactor("source.pptx") as redactor:

              # Appliquez la rédaction
              result = redactor.apply(redaction)

              # Enregistrez la version modifiée
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
    title: "Protéger les diapositives PPTX en utilisant Python"
    exclude: "PPTX"
    description: "Utilisez Python pour couvrir ou effacer du contenu privé dans des fichiers PPTX tout en gardant les diapositives propres."
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