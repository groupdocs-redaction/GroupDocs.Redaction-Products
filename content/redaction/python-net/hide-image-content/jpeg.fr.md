
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: fr
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Masquez des images privées dans JPEG avec des superpositions en utilisant Python"
head_description: "Sécurisez vos fichiers JPEG en ajoutant des superpositions aux images avec GroupDocs.Redaction for Python via .NET. Protégez des visuels sensibles tout en gardant la mise en page du document inchangée."

############################# Header ############################
title: "Protégez des images sensibles dans des fichiers JPEG avec des superpositions en utilisant Python" 
description: "Gardez vos images en sécurité dans des fichiers JPEG en utilisant Python. Outils simples pour vous aider à protéger le contenu privé en quelques étapes."
subtitle: "Fonctionnalités principales de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET offre aux développeurs Python des outils simples pour cacher ou effacer du contenu dans des fichiers JPEG. Protégez les textes sensibles, les images et les métadonnées avec facilité.

############################# Steps ############################
steps:
    enable: true
    title: "Gardez les fichiers Jpeg sécurisés"
    content: |
      GroupDocs.Redaction for Python via .NET permet à vos applications Python via .NET de couvrir rapidement et efficacement des données sensibles.
      
      1. Créez un objet Redactor et spécifiez le chemin vers le fichier Jpeg.
      2. Définissez les paramètres de rédaction selon vos besoins.
      3. Marquez la zone d'image et sélectionnez la couleur de la superposition.
      4. Exécutez la rédaction et enregistrez le fichier protégé.
   
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

        # Masquez des zones d'image dans des fichiers JPEG

        # Définissez la taille et la couleur de la superposition
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Sélectionnez la zone à masquer
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Chargez le fichier via Redactor
        with gr.Redactor("input.jpg") as redactor:

            # Appliquez la superposition et enregistrez le document
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Rédigez du contenu dans plusieurs documents"
  description: "GroupDocs.Redaction for Python via .NET vous aide à cacher ou supprimer des contenus sensibles dans plusieurs formats de fichiers. Gardez vos fichiers sûrs et prêts à être partagés."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Outils de rédaction riches en fonctionnalités"
  features:
    # feature loop
    - title: "Rechercher et remplacer du texte"
      content: "Recherchez du texte privé dans les documents et remplacez-le pour sécuriser vos données."

    # feature loop
    - title: "Couvertures des zones d'image"
      content: "Appliquez des superpositions pour cacher des images ou des sections sélectionnées afin de protéger des visuels sensibles."

    # feature loop
    - title: "Nettoyer les métadonnées"
      content: "Supprimez les métadonnées cachées pour éviter les fuites de données non intentionnelles."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Protégez des zones d'image avec des superpositions"
      content: |
        Cet exemple vous guide sur la manière de couvrir des parties sensibles d'une image dans un document.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Définissez la taille, la couleur et la position de la superposition
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Choisissez une zone d'image à la première page
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Chargez le fichier pour l'édition
          with gr.Redactor("source.jpg") as redactor:

              # Appliquez la superposition pour cacher la zone
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
    title: "Protégez les fichiers JPEG avec les outils de rédaction Python"
    exclude: "JPEG"
    description: "Avec Python, vous pouvez cacher ou effacer des données privées dans des fichiers JPEG. Une solution fiable pour garder les documents professionnels et sécurisés."
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