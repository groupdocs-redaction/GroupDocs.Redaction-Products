
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: fr
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Masquez des images sensibles dans PDF avec des superpositions en utilisant Python"
head_description: "Avec GroupDocs.Redaction for Python via .NET, vous pouvez cacher des images sensibles dans des fichiers PDF en ajoutant des superpositions. Protégez les données privées sans modifier la mise en page du document."

############################# Header ############################
title: "Masquez des images dans des fichiers PDF avec des superpositions en utilisant Python" 
description: "Gardez vos images personnelles et professionnelles sécurisées dans des fichiers PDF avec Python. Nos outils rendent la protection des données fiable."
subtitle: "Fonctionnalités de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET offre aux développeurs Python les outils pour cacher ou supprimer du contenu dans des fichiers PDF. Couvrez le texte, les images et les métadonnées pour protéger des documents dans différents formats.

############################# Steps ############################
steps:
    enable: true
    title: "Protégez les données sensibles dans des fichiers Pdf"
    content: |
      GroupDocs.Redaction for Python via .NET donne à vos applications Python via .NET la capacité de protéger des documents. Couvrez le contenu privé en seulement quelques clics.
      
      1. Créez un objet Redactor et pointez-le vers le fichier Pdf.
      2. Ajustez les paramètres pour correspondre à vos besoins de rédaction.
      3. Sélectionnez la zone d'image à couvrir et choisissez une couleur de superposition.
      4. Traitez et enregistrez le fichier expurgé.
   
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

        # Couvrez des parties d'images confidentielles dans PDF

        # Définissez la couleur et la taille de la superposition
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Choisissez la zone à expurger
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Chargez le document en utilisant Redactor
        with gr.Redactor("input.pdf") as redactor:

            # Appliquez la superposition et enregistrez le document
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Masquez le contenu sensible dans des documents"
  description: "Avec GroupDocs.Redaction for Python via .NET, vous pouvez cacher ou supprimer des données dans différents formats de fichiers. Protégez les informations sensibles tout en gardant les documents propres et partageables."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Fonctions de rédaction clés"
  features:
    # feature loop
    - title: "Rechercher et éditer du texte"
      content: "Trouvez et modifiez du texte sensible dans votre document pour protéger des informations privées."

    # feature loop
    - title: "Couvrir les zones d'image"
      content: "Placez des superpositions sur les images ou les parties sélectionnées pour cacher des visuels confidentiels."

    # feature loop
    - title: "Gérer les métadonnées"
      content: "Supprimez ou modifiez les métadonnées cachées pour éviter les fuites de données indésirables."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Masquez les informations d'image avec des superpositions"
      content: |
        Cet exemple montre comment couvrir des données d'image sensibles dans des documents en utilisant des superpositions.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Ajustez les paramètres de superposition : taille, couleur et position
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

          # Ouvrez le fichier pour la rédaction
          with gr.Redactor("source.pdf") as redactor:

              # Appliquez la superposition pour dissimuler l'image
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
    title: "Protégez les fichiers PDF avec Python"
    exclude: "PDF"
    description: "Utilisez Python pour cacher ou supprimer des données sensibles dans des fichiers PDF. Une solution pratique pour sécuriser des documents professionnels et personnels."
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