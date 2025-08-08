
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: fr
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Cacher le texte sensible dans POWERPOINT à l'aide de superpositions Python"
head_description: "GroupDocs.Redaction for Python via .NET vous aide à couvrir du contenu privé dans des fichiers POWERPOINT avec des superpositions colorées. Gardez tout en place tout en cachant ce qui est important."

############################# Header ############################
title: "Cacher le texte dans les présentations POWERPOINT avec Python" 
description: "Utilisez Python et GroupDocs.Redaction for Python via .NET pour ajouter des superpositions et cacher le texte sensible dans vos diapositives POWERPOINT."
subtitle: "Ce que vous pouvez faire avec GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "En savoir plus sur GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET aide les développeurs Python à nettoyer des présentations POWERPOINT en cachant ou en supprimant du texte, des images et des informations cachées.

############################# Steps ############################
steps:
    enable: true
    title: "Rédiger des informations dans des fichiers Powerpoint"
    content: |
      Avec GroupDocs.Redaction for Python via .NET, vous pouvez préparer des fichiers Powerpoint pour le partage en quelques étapes de rédaction simples.
      
      1. Créez un nouveau Redactor et chargez votre fichier.
      2. Choisissez ce qu'il faut cacher et comment l'appliquer.
      3. Ajoutez le motif de recherche et définissez une couleur de superposition.
      4. Appliquez la rédaction et enregistrez votre document mis à jour.
   
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

        # Couvrir le texte sensible dans POWERPOINT à l'aide de superpositions

        # Configurez le fonctionnement de la rédaction
        # Choisissez le texte et la couleur pour le cacher
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Utilisez Redactor pour charger votre présentation
        with gr.Redactor("input.pptx") as redactor:

            # Rédigez et enregistrez votre fichier
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Faciles façons de cacher des informations"
  description: "GroupDocs.Redaction for Python via .NET rend simple le masquage ou la suppression des parties sensibles des documents — parfait pour un usage juridique, personnel ou professionnel."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Outils utiles pour la confidentialité"
  features:
    # feature loop
    - title: "Trouver et remplacer le texte"
      content: "Recherchez des mots ou des chiffres et cachez-les ou modifiez-les."

    # feature loop
    - title: "Cacher des parties d'images"
      content: "Dessinez des superpositions pour cacher des images entières ou des spots sélectionnés."

    # feature loop
    - title: "Supprimer les informations cachées"
      content: "Supprimez les métadonnées comme les noms ou les horodatages que les utilisateurs ne voient pas."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Rédiger en utilisant la recherche regex"
      content: |
        Découvrez comment les expressions régulières vous aident à trouver et cacher du texte dans vos diapositives.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Définissez le motif et la couleur de superposition
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Ouvrez votre fichier POWERPOINT
          with gr.Redactor("source.pptx") as redactor:

              # Exécutez la rédaction
              result = redactor.apply(redaction)

              # Sauvegardez la version finale
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
    title: "Cacher le texte dans POWERPOINT avec Python"
    exclude: "POWERPOINT"
    description: "Utilisez Python pour ajouter des superpositions ou supprimer du contenu de vos diapositives POWERPOINT pour garder les données privées en sécurité."
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