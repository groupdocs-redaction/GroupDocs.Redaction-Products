
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: fr
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Masquez le contenu d'image dans DOCX avec des superpositions en utilisant Python"
head_description: "Protégez des images sensibles dans des fichiers DOCX en ajoutant des superpositions avec GroupDocs.Redaction for Python via .NET. Conservez la mise en forme du document tout en sécurisant des visuels privés."

############################# Header ############################
title: "Protégez les images dans des documents DOCX en utilisant des superpositions avec Python" 
description: "Gardez vos visuels personnels et professionnels en sécurité dans des fichiers DOCX en utilisant Python. Nos outils de rédaction facilitent la sécurité des documents."
subtitle: "Les points forts de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET offre aux développeurs Python la capacité de cacher ou supprimer du contenu dans des fichiers DOCX. Protégez le texte, les images et les métadonnées à travers plusieurs formats de documents.

############################# Steps ############################
steps:
    enable: true
    title: "Conservez les données en sécurité dans des fichiers Docx"
    content: |
      GroupDocs.Redaction for Python via .NET permet aux applications Python via .NET de protéger des documents. Rédigez des données sensibles en seulement quelques étapes.
      
      1. Créez une instance de Redactor et spécifiez le chemin vers le fichier Docx.
      2. Configurez vos préférences de rédaction pour correspondre à votre tâche.
      3. Choisissez la partie d'image que vous souhaitez couvrir et définissez la couleur de superposition.
      4. Lancez le traitement et enregistrez le fichier expurgé.
   
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

        # Masquez des parties sensibles des images dans DOCX

        # Définissez la taille et la couleur de la superposition
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Spécifiez la zone pour la rédaction
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Chargez le fichier en utilisant Redactor
        with gr.Redactor("input.docx") as redactor:

            # Appliquez la superposition et enregistrez votre document
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Masquez le contenu dans des documents"
  description: "Avec GroupDocs.Redaction for Python via .NET, vous pouvez facilement cacher ou supprimer des informations sensibles de différents types de documents. Conservez vos fichiers sécurisés et partageables."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Fonctionnalités efficaces de rédaction"
  features:
    # feature loop
    - title: "Rechercher et éditer du texte"
      content: "Localisez des mots sensibles et remplacez-les pour protéger vos données."

    # feature loop
    - title: "Couvrir les images"
      content: "Appliquez des superpositions sur des images complètes ou des parties sélectionnées pour protéger des données visuelles."

    # feature loop
    - title: "Nettoyer les métadonnées cachées"
      content: "Supprimez ou mettez à jour les métadonnées pour éviter des partages accidentels de données."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Masquez les données d'image avec des superpositions"
      content: |
        Cet exemple montre comment protéger des zones d'image sensibles dans des documents avec des superpositions.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Ajustez les paramètres de superposition : couleur, taille, position
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Choisissez une zone à expurger sur la première page
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Chargez le fichier que vous souhaitez expurger
          with gr.Redactor("source.docx") as redactor:

              # Appliquez la superposition pour couvrir l'image
              result = redactor.apply(redaction)

              # Enregistrez le fichier expurgé
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
    title: "Masquez les données sensibles dans des fichiers DOCX avec Python"
    exclude: "DOCX"
    description: "Utilisez Python pour couvrir ou effacer des données privées dans des fichiers DOCX. L'outil idéal pour garder des documents confidentiels sécurisés."
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