
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: fr
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Cacher le contenu dans EXCEL en utilisant des superpositions Python"
head_description: "Avec GroupDocs.Redaction for Python via .NET, vous pouvez couvrir le texte dans des fichiers EXCEL à l'aide de superpositions de couleur solides. Un moyen simple de protéger le contenu privé."

############################# Header ############################
title: "Masquage de texte pour EXCEL dans Python" 
description: "Écrivez du code Python pour cacher le texte et sécuriser les informations dans vos fichiers EXCEL. Gardez vos documents sûrs et clairs."
subtitle: "Ce que vous obtenez avec GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Pourquoi utiliser GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET est conçu pour les développeurs Python qui ont besoin de cacher ou de supprimer du contenu dans des fichiers EXCEL. Travaillez facilement avec du texte, des images et des métadonnées.

############################# Steps ############################
steps:
    enable: true
    title: "Cacher des données sensibles dans Excel"
    content: |
      GroupDocs.Redaction for Python via .NET permet aux développeurs Python via .NET de préparer des documents avant de les partager.
      
      1. Créez un Redactor et ouvrez votre fichier Excel.
      2. Choisissez les paramètres de rédaction adaptés à votre tâche.
      3. Entrez le texte ou la phrase à couvrir et choisissez une couleur.
      4. Appliquez la rédaction et enregistrez le fichier.
   
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

        # Utilisez des superpositions pour cacher du texte dans EXCEL

        # Choisissez vos paramètres de rédaction
        # Choisissez quoi cacher et une couleur à utiliser
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Commencez par charger votre fichier avec Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Appliquez les modifications et enregistrez le fichier
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Outils utiles pour la rédaction des données"
  description: "GroupDocs.Redaction for Python via .NET vous permet de cacher ou de supprimer des données dans des documents tout en gardant la mise en page et le contenu clairs."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Conçu pour protéger vos fichiers"
  features:
    # feature loop
    - title: "Cacher ou changer le texte"
      content: "Trouvez et remplacez toute partie du texte qui doit être cachée."

    # feature loop
    - title: "Couvrir les images et les éléments visuels"
      content: "Ajoutez des superpositions pour supprimer des parties sensibles d'images ou de graphiques."

    # feature loop
    - title: "Nettoyer les métadonnées cachées"
      content: "Supprimez les informations de fond comme les noms d’auteurs ou les horodatages."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Rédiger en utilisant Regex"
      content: |
        Découvrez comment utiliser des modèles regex pour trouver et cacher du contenu.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Ajoutez le motif regex et les paramètres de couleur
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Ouvrez le fichier que vous souhaitez nettoyer
          with gr.Redactor("source.xslx") as redactor:

              # Appliquez la rédaction
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
    title: "Protéger EXCEL avec des rédactions Python"
    exclude: "EXCEL"
    description: "Cacher le contenu dans EXCEL en utilisant des superpositions carrées ou le supprimer complètement grâce aux fonctionnalités Python."
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