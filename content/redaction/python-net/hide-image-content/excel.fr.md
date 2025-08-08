
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: fr
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Couvrez des images dans EXCEL en utilisant des superpositions dans Python"
head_description: "Protégez des zones d'image sensibles dans des fichiers EXCEL avec GroupDocs.Redaction for Python via .NET. Ajoutez des superpositions pour cacher des visuels privés sans changer l'apparence du document."

############################# Header ############################
title: "Protégez des images sensibles dans des fichiers EXCEL avec des superpositions en utilisant Python" 
description: "Sécurisez vos images personnelles et commerciales dans des fichiers EXCEL avec Python. Obtenez une protection fiable avec nos outils faciles à utiliser."
subtitle: "Caractéristiques clés de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET fournit aux développeurs Python des outils simples pour cacher ou supprimer des contenus sensibles dans des fichiers EXCEL. Couvrez des images, du texte et des métadonnées pour protéger vos documents.

############################# Steps ############################
steps:
    enable: true
    title: "Protégez les données dans des fichiers Excel"
    content: |
      GroupDocs.Redaction for Python via .NET aide les applications Python via .NET à cacher des informations privées dans des documents rapidement.
      
      1. Créez une instance de Redactor et chargez le fichier Excel.
      2. Configurez les options de rédaction selon vos besoins.
      3. Sélectionnez la zone d'image et choisissez la couleur de la superposition.
      4. Appliquez la rédaction et enregistrez le fichier édité.
   
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

        # Couvrez des zones d'image dans EXCEL

        # Ajustez la taille et la couleur de la superposition
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Choisissez la zone à couvrir
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Ouvrez le document avec Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Appliquez la superposition et enregistrez le fichier
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Cacher ou supprimer du contenu sensible"
  description: "GroupDocs.Redaction for Python via .NET vous permet de protéger des documents en cachant ou en supprimant des données sensibles dans divers formats. Gardez les fichiers sûrs et clairs pour le partage."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Outils de rédaction riches en fonctionnalités"
  features:
    # feature loop
    - title: "Modifier le texte en toute sécurité"
      content: "Recherchez du texte sensible dans des documents et remplacez-le pour protéger la vie privée."

    # feature loop
    - title: "Cacher des parties d'image"
      content: "Couvrez des zones d'image sélectionnées ou des visuels entiers avec des superpositions."

    # feature loop
    - title: "Supprimer les métadonnées invisibles"
      content: "Effacez des champs de métadonnées invisibles pour éviter les fuites de données."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Utilisez des superpositions pour cacher les données d'image"
      content: |
        Cet exemple montre comment appliquer des superpositions pour couvrir des images sensibles dans des documents.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Définissez la couleur, la taille et la position de la superposition
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Choisissez une section d'image spécifique sur la première page
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Chargez le document pour l'édition
          with gr.Redactor("source.xslx") as redactor:

              # Appliquez la superposition pour la cacher
              result = redactor.apply(redaction)

              # Enregistrez le fichier mis à jour
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
    title: "Masquez le contenu dans EXCEL avec Python"
    exclude: "EXCEL"
    description: "Avec Python, vous pouvez cacher ou supprimer facilement des informations sensibles dans des fichiers EXCEL. Un moyen efficace d'assurer la sécurité des documents."
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