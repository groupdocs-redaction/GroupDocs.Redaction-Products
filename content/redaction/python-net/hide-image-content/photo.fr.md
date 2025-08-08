
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: fr
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Couvrez des images dans des fichiers PHOTO en utilisant des superpositions Python"
head_description: "Appliquez des superpositions pour cacher des données d'image sensibles dans des fichiers PHOTO avec GroupDocs.Redaction for Python via .NET. Conservez la conception de votre document intacte tout en protégeant des informations privées."

############################# Header ############################
title: "Masquez des images sensibles dans des fichiers PHOTO avec des superpositions via Python" 
description: "Protégez le contenu d'image dans des fichiers PHOTO avec Python. Outils simples pour une protection des données rapide et efficace."
subtitle: "Fonctionnalités clés de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Que fait GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET offre aux développeurs Python des outils puissants pour masquer ou effacer du contenu dans des fichiers PHOTO. Protégez les données importantes en masquant efficacement les textes, les images et les métadonnées.

############################# Steps ############################
steps:
    enable: true
    title: "Protégez des zones d'image dans des fichiers Photo"
    content: |
      Utilisez GroupDocs.Redaction for Python via .NET pour couvrir facilement des zones d'image sensibles dans vos applications Python via .NET.
      
      1. Créez un objet Redactor et liez-le à votre fichier Photo.
      2. Configurez les paramètres de rédaction pour correspondre à votre tâche.
      3. Mettez en surbrillance les sections d'image et définissez les couleurs de superposition.
      4. Appliquez les rédactions et enregistrez le fichier protégé.
   
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

        # Utilisez des superpositions pour cacher les données d'image dans PHOTO

        # Définissez les dimensions et la couleur de la superposition
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Sélectionnez les zones d'image à masquer
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Ouvrez le fichier avec Redactor
        with gr.Redactor("input.jpeg") as redactor:

            # Appliquez la superposition et enregistrez le fichier
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Rédigez des données privées dans plusieurs formats"
  description: "GroupDocs.Redaction for Python via .NET permet de couvrir ou d'effacer des contenus sensibles dans différents types de fichiers. Gardez vos documents propres et sûrs pour le partage."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Fonctionnalités de rédaction tout-en-un"
  features:
    # feature loop
    - title: "Trouvez et éditez du texte"
      content: "Recherchez du texte sensible et remplacez-le pour sécuriser vos documents."

    # feature loop
    - title: "Masquez des images avec des superpositions"
      content: "Ajoutez des superpositions pour couvrir des images complètes ou des sections spécifiques."

    # feature loop
    - title: "Supprimez les métadonnées"
      content: "Retirez les métadonnées pour prévenir les fuites de données."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Couvrez des sections d'image avec des superpositions"
      content: |
        Cet exemple de code montre comment masquer des zones d'image sensibles dans un document en utilisant des superpositions.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Définissez la taille, la couleur et le placement de la superposition
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Sélectionnez une zone d'image sur la première page
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Ouvrez le fichier pour la rédaction
          with gr.Redactor("source.jpeg") as redactor:

              # Appliquez la superposition pour cacher le contenu
              result = redactor.apply(redaction)

              # Enregistrez le fichier sécurisé
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
    title: "Rédigez des contenus sensibles dans PHOTO avec Python"
    exclude: "PHOTO"
    description: "Cachez ou supprimez des données privées dans des fichiers PHOTO en utilisant Python. Un moyen simple de sécuriser des documents officiels."
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