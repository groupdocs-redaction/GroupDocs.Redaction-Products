
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: fr
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Masquez des zones d'image dans des fichiers XLSX avec des superpositions en utilisant Python"
head_description: "Protégez des régions d'images sensibles dans des fichiers XLSX en appliquant des superpositions avec GroupDocs.Redaction for Python via .NET. Conservez la structure de votre document intacte tout en sécurisant des visuels privés."

############################# Header ############################
title: "Masquez des images sensibles dans des documents XLSX en utilisant Python" 
description: "Protégez facilement des images confidentielles dans des fichiers XLSX avec Python. Nos outils garantissent une rédaction rapide et efficace."
subtitle: "Principales caractéristiques de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Que fait GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET offre aux développeurs Python des outils pour cacher ou effacer des données sensibles des documents XLSX. Rédigez du texte, des images et des métadonnées à travers différents formats.

############################# Steps ############################
steps:
    enable: true
    title: "Protégez les données sensibles dans des fichiers Xlsx"
    content: |
      GroupDocs.Redaction for Python via .NET facilite la protection de vos documents par vos applications Python via .NET.
      
      1. Initialisez Redactor et chargez le document Xlsx.
      2. Configurez les paramètres de rédaction pour correspondre à votre tâche.
      3. Définissez quelle partie de l'image couvrir et choisissez une couleur.
      4. Appliquez la rédaction et enregistrez le fichier final.
   
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

        # Masquez des sections d'image confidentielles dans XLSX

        # Choisissez la taille et la couleur de la superposition
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Marquez la zone de rédaction
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Chargez le document avec Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Appliquez les changements et enregistrez le fichier
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Rédiger du contenu dans des documents"
  description: "Avec GroupDocs.Redaction for Python via .NET, vous pouvez cacher ou supprimer des données sensibles dans de nombreux formats de documents. Gardez les documents sûrs et professionnels."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Outils de rédaction efficaces"
  features:
    # feature loop
    - title: "Rechercher et remplacer du texte"
      content: "Localisez des textes privés et remplacez-les ou cachez-les."

    # feature loop
    - title: "Couvertures d'images avec des superpositions"
      content: "Couvrez des images complètes ou des sections spécifiques pour protéger des visuels sensibles."

    # feature loop
    - title: "Supprimer les métadonnées cachées"
      content: "Nettoyez les métadonnées des fichiers pour éviter le partage d'informations privées."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Masquez le contenu d'image avec des superpositions"
      content: |
        Ce guide montre comment cacher des zones d'image sensibles dans des documents en utilisant des superpositions.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Définissez la taille, la position et la couleur de la superposition
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Sélectionnez la section d'image spécifique
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Ouvrez le fichier pour la rédaction
          with gr.Redactor("source.xslx") as redactor:

              # Appliquez la superposition pour cacher la zone
              result = redactor.apply(redaction)

              # Enregistrez le document modifié
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
    title: "Masquez du contenu dans des fichiers XLSX avec Python"
    exclude: "XLSX"
    description: "Utilisez Python pour expurger ou supprimer des données sensibles dans des fichiers XLSX. Idéal pour les entreprises et les particuliers cherchant à protéger leurs documents."
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