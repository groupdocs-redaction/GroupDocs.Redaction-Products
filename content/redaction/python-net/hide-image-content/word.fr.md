
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: fr
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Protégez les images dans WORD avec des superpositions en utilisant Python"
head_description: "Couvrez des images sensibles dans des fichiers WORD avec GroupDocs.Redaction for Python via .NET. Appliquez des superpositions pour protéger des données privées tout en préservant la mise en page du document."

############################# Header ############################
title: "Couvrez des images privées dans des fichiers WORD en utilisant Python" 
description: "Gardez vos visuels personnels et commerciaux en sécurité dans des fichiers WORD avec Python. Outils de rédaction simples et rapides dont vous pouvez vous fier."
subtitle: "Fonctionnalités essentielles de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET fournit aux développeurs Python des outils simples pour cacher ou effacer du contenu dans des fichiers WORD. Protégez des textes sensibles, des images et des métadonnées à travers différents formats.

############################# Steps ############################
steps:
    enable: true
    title: "Sécurisez des informations sensibles dans des fichiers Word"
    content: |
      GroupDocs.Redaction for Python via .NET aide vos applications Python via .NET à protéger des documents en couvrant le contenu privé avec des superpositions.
      
      1. Créez un objet Redactor et chargez le fichier Word.
      2. Ajustez les paramètres de rédaction selon vos besoins.
      3. Sélectionnez la zone d'image et définissez la couleur de superposition.
      4. Appliquez la superposition et enregistrez le fichier expurgé.
   
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

        # Couvrez des parties d'images sensibles dans WORD

        # Spécifiez la couleur et la taille de la superposition
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Choisissez la zone d'image à cacher
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Chargez le fichier en utilisant Redactor
        with gr.Redactor("input.docx") as redactor:

            # Appliquez et enregistrez le document
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Fonctionnalités avancées de rédaction"
  description: "GroupDocs.Redaction for Python via .NET vous permet de cacher ou supprimer des contenus sensibles dans plusieurs formats de documents. Gardez des fichiers propres et sûrs pour le partage."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Kit d'outils complet de rédaction"
  features:
    # feature loop
    - title: "Rechercher et remplacer du texte"
      content: "Trouvez du texte sensible à travers les documents et remplacez-le pour assurer votre vie privée."

    # feature loop
    - title: "Superposer des images"
      content: "Couvrez des zones d'image sélectionnées ou des visuels entiers pour cacher des informations privées."

    # feature loop
    - title: "Supprimer les métadonnées"
      content: "Supprimez des métadonnées cachées pour éviter le partage de données invisibles."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Couvrez le contenu d'image avec des superpositions"
      content: |
        Cet exemple montre comment cacher des images sensibles dans des documents à l’aide des superpositions.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Définissez les dimensions, la couleur et l'emplacement de la superposition
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Sélectionnez la zone sur la première page à couvrir
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Ouvrez le document
          with gr.Redactor("source.docx") as redactor:

              # Appliquez la rédaction de la superposition
              result = redactor.apply(redaction)

              # Enregistrez le document mis à jour
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
    title: "Rédigez du contenu dans WORD avec Python"
    exclude: "WORD"
    description: "Python vous permet de cacher ou supprimer du contenu sensible dans des fichiers WORD. Une solution de confiance pour la sécurité des documents."
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