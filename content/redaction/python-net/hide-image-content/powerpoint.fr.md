
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: fr
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Masquez des images sensibles dans POWERPOINT en utilisant des superpositions avec Python"
head_description: "Avec GroupDocs.Redaction for Python via .NET, vous pouvez cacher des zones d'image privées dans des fichiers POWERPOINT en utilisant des superpositions. Protégez des informations sans changer la conception du document."

############################# Header ############################
title: "Couvrez des images privées dans des documents POWERPOINT en utilisant des superpositions Python" 
description: "Gardez les images sensibles en sécurité dans des fichiers POWERPOINT avec Python. Outils simples conçus pour une protection des données fiable."
subtitle: "Explorez les fonctionnalités de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET offre aux développeurs Python des outils pour cacher ou supprimer du contenu sensible dans des fichiers POWERPOINT. Protégez vos documents en masquant des textes privés, des images et des métadonnées.

############################# Steps ############################
steps:
    enable: true
    title: "Protégez vos documents Powerpoint"
    content: |
      GroupDocs.Redaction for Python via .NET facilite la protection de contenu sensible dans des documents pour les applications Python via .NET.
      
      1. Créez un objet Redactor et chargez le fichier Powerpoint.
      2. Ajustez les options de rédaction pour répondre à vos exigences.
      3. Sélectionnez la zone d'image et choisissez une couleur de superposition.
      4. Appliquez la rédaction et enregistrez votre document.
   
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

        # Masquez le contenu d'image dans des fichiers POWERPOINT

        # Définissez la taille et la couleur de la superposition
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Choisissez la zone à cacher
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Chargez le fichier avec Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Appliquez la superposition et enregistrez le fichier
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Protéger des données privées dans des documents"
  description: "GroupDocs.Redaction for Python via .NET vous permet de cacher ou d'effacer du contenu sensible dans différents formats de fichiers. Gardez vos fichiers sécurisés et prêts à être partagés."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Fonctionnalités de rédaction tout-en-un"
  features:
    # feature loop
    - title: "Recherchez et éditez du texte"
      content: "Trouvez le texte privé dans des documents et remplacez-le pour garantir la confidentialité."

    # feature loop
    - title: "Masquer des zones d'image"
      content: "Couvrez des visuels entiers ou des parties sélectionnées avec des superpositions pour garder ces éléments privés."

    # feature loop
    - title: "Effacer les métadonnées"
      content: "Supprimez les métadonnées pour éviter le partage involontaire d’informations."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Utilisez des superpositions pour cacher les données d'image"
      content: |
        Cet exemple montre comment protéger des images sensibles dans des documents à l’aide des superpositions.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Définissez les dimensions, la position et la couleur de la superposition
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Marquez la zone d'image sur la première page
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Ouvrez le document pour la rédaction
          with gr.Redactor("source.pptx") as redactor:

              # Appliquez la superposition pour masquer les données
              result = redactor.apply(redaction)

              # Enregistrez le document final
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
    title: "Gardez les fichiers POWERPOINT sécurisés avec Python"
    exclude: "POWERPOINT"
    description: "Avec Python, vous pouvez cacher ou supprimer des données sensibles dans des fichiers POWERPOINT. Solution de confiance pour protéger les documents importants."
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