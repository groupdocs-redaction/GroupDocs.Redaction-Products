
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: fr
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Masquez des images dans des fichiers PPTX avec des superpositions en utilisant Python"
head_description: "Utilisez GroupDocs.Redaction for Python via .NET pour masquer des images sensibles dans des fichiers PPTX avec des superpositions colorées. Protégez les données importantes tout en préservant la mise en forme du document."

############################# Header ############################
title: "Masquez des images privées dans des documents PPTX avec Python" 
description: "Protégez des visuels sensibles dans des fichiers PPTX en utilisant Python. Nos outils rendent la rédaction des images simple et rapide."
subtitle: "Fonctionnalités de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET fournit aux développeurs Python des outils simples pour cacher ou effacer du contenu dans des fichiers PPTX. Rédigez du texte, des images et des métadonnées à travers différents formats.

############################# Steps ############################
steps:
    enable: true
    title: "Protégez les données sensibles dans des fichiers Pptx"
    content: |
      GroupDocs.Redaction for Python via .NET aide les applications Python via .NET à protéger des documents en couvrant le contenu sensible.
      
      1. Créez une instance de Redactor et chargez le fichier Pptx.
      2. Définissez les options de rédaction selon votre tâche.
      3. Sélectionnez la zone d'image et assignez une couleur de superposition.
      4. Appliquez la superposition et enregistrez le fichier.
   
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

        # Masquez des régions d'image privées dans PPTX

        # Définissez la couleur et la taille de la superposition
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Marquez la zone à expurger
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Ouvrez le document avec Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Appliquez la superposition et enregistrez le fichier
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Fonctionnalités de rédaction pour documents"
  description: "GroupDocs.Redaction for Python via .NET vous permet de cacher ou de supprimer des données confidentielles dans de nombreux types de documents. Gardez vos fichiers propres et protégés."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Gamme complète d'outils de rédaction"
  features:
    # feature loop
    - title: "Rechercher et remplacer du texte"
      content: "Trouvez du texte sensible et rédigez-le pour protéger vos informations."

    # feature loop
    - title: "Masquer les zones d'image"
      content: "Couvrez des images complètes ou des sections spécifiques avec des superpositions pour cacher des visuels privés."

    # feature loop
    - title: "Nettoyer les métadonnées"
      content: "Supprimez ou modifiez les métadonnées cachées pour éviter d'exposer des données privées."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Couvrez le contenu d'image avec des superpositions colorées"
      content: |
        Découvrez comment masquer des parties sensibles des images dans des documents en utilisant des superpositions.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Définissez les propriétés de superposition : taille, emplacement, couleur
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Choisissez la zone d'image sur la première page
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Chargez le document
          with gr.Redactor("source.pptx") as redactor:

              # Superposez la zone sélectionnée
              result = redactor.apply(redaction)

              # Enregistrez le document protégé
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
    title: "Masquez du contenu dans des fichiers PPTX avec Python"
    exclude: "PPTX"
    description: "Utilisez Python pour cacher ou supprimer du contenu privé dans des fichiers PPTX. Un outil fiable pour la sécurité des documents."
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