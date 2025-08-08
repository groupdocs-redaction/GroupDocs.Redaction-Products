
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: fr
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Masquez des images dans IMAGE avec des superpositions en utilisant Python"
head_description: "Cachez le contenu d'image sensible dans des fichiers IMAGE en utilisant des superpositions colorées avec GroupDocs.Redaction for Python via .NET. Gardez la mise en page originale de votre fichier intacte tout en sécurisant des visuels importants."

############################# Header ############################
title: "Couvrir des images sensibles dans des fichiers IMAGE en utilisant des superpositions Python" 
description: "Protégez les données d'image personnelles et commerciales dans des fichiers IMAGE en utilisant Python. Outils simples pour une protection rapide et efficace."
subtitle: "Fonctionnalités de GroupDocs.Redaction for Python via .NET dont vous aurez besoin" 

############################# About ############################
about:
    enable: true
    title: "Découvrez GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET fournit Python développeurs des outils pour cacher ou supprimer du contenu dans des fichiers IMAGE. Sécurisez vos documents en couvrant le texte, les images et les métadonnées.

############################# Steps ############################
steps:
    enable: true
    title: "Couvrez le contenu privé dans des fichiers Image"
    content: |
      GroupDocs.Redaction for Python via .NET facilite la dissimulation de données sensibles dans vos applications Python via .NET.
      
      1. Initialisez un Redactor et pointez vers votre fichier Image.
      2. Configurez les paramètres de rédaction selon vos besoins.
      3. Choisissez les sections d'image et définissez les couleurs de superposition.
      4. Traitez le fichier et enregistrez la version expurgée.
   
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

        # Couvrez le contenu d'image dans IMAGE

        # Spécifiez la taille et les couleurs de la superposition
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Sélectionnez la zone à cacher
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Chargez le fichier en utilisant Redactor
        with gr.Redactor("input.png") as redactor:

            # Appliquez la superposition et enregistrez le fichier
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Protégez les données à travers différents types de documents"
  description: "GroupDocs.Redaction for Python via .NET vous permet de cacher ou d'effacer des contenus sensibles dans différents formats de fichiers. Gardez vos documents propres, sécurisés et faciles à partager."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Outils pour contrôler chaque rédaction"
  features:
    # feature loop
    - title: "Rechercher et remplacer du texte sensible"
      content: "Parcourez vos documents pour remplacer du texte privé et garder les données en sécurité."

    # feature loop
    - title: "Masquez les images avec des superpositions"
      content: "Ajoutez des superpositions colorées pour cacher des images ou des parties spécifiques d'elles."

    # feature loop
    - title: "Supprimez les métadonnées"
      content: "Supprimez ou modifiez les métadonnées cachées pour assurer l'absence de fuites de données privées."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Masquez le contenu d'image avec des superpositions"
      content: |
        Cet exemple montre comment appliquer des superpositions pour protéger des données d'image sensibles dans un document.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Définissez les dimensions, la couleur et la position de la superposition
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Choisissez une zone d'image sur la première page
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Ouvrez le fichier pour la rédaction
          with gr.Redactor("source.png") as redactor:

              # Appliquez la superposition pour masquer le contenu de l'image
              result = redactor.apply(redaction)

              # Enregistrez le fichier après la rédaction
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Protégez le contenu dans des fichiers IMAGE avec Python"
    exclude: "IMAGE"
    description: "Avec Python, vous pouvez cacher ou supprimer des informations sensibles dans des fichiers IMAGE. Un moyen fiable de garder les documents sûrs et professionnels."
    items: 
        # format loop 1
        - name: "Rédaction PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-image-content//pdf/"
          description: "Format de Document Portable Adobe"

        # format loop 2
        - name: "Rédaction Word"
          format: "WORD"
          link: "/redaction/python-net/hide-image-content//word/"
          description: "Documents MS Word et Open Office"
          
        # format loop 3
        - name: "Rédaction Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-image-content//excel/"
          description: "Feuilles de calcul MS Excel et Open Office"

        # format loop 4
        - name: "Rédaction PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-image-content//powerpoint/"
          description: "Présentations MS PowerPoint et Open Office"

        # format loop 5
        - name: "Rédaction Image"
          format: "IMAGE"
          link: "/redaction/python-net/hide-image-content//image/"
          description: "Formats d'image populaires"

        # format loop 6
        - name: "Rédaction Photo"
          format: "PHOTO"
          link: "/redaction/python-net/hide-image-content//photo/"
          description: "Formats photo"

        # format loop 7
        - name: "Rédaction DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-image-content//docx/"
          description: "Document Microsoft Word Open XML"
          
        # format loop 8
        - name: "Rédaction XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-image-content//xlsx/"
          description: "Tableur Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Rédaction PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-image-content//pptx/"
          description: "Présentation PowerPoint Open XML"

        # format loop 10
        - name: "Rédaction JPEG"
          format: "JPEG"
          link: "/redaction/python-net/hide-image-content//jpeg/"
          description: "Image JPEG"


---