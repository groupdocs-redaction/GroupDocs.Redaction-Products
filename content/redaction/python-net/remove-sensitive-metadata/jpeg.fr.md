
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: fr
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Modifier les métadonnées dans JPEG avec Python"
head_description: "GroupDocs.Redaction for Python via .NET vous aide à effacer ou à mettre à jour les métadonnées dans les documents JPEG. Supprimez les champs cachés qui peuvent révéler des détails privés."

############################# Header ############################
title: "Nettoyez les métadonnées dans JPEG via Python" 
description: "Sécurisez vos fichiers JPEG en supprimant les métadonnées cachées à l'aide d'outils simples conçus pour Python."
subtitle: "Fonctionnalités essentielles de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "En savoir plus sur GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction fournit aux développeurs Python des outils simples pour supprimer le texte, les images et les métadonnées des documents JPEG.

############################# Steps ############################
steps:
    enable: true
    title: "Étapes pour nettoyer les métadonnées Jpeg"
    content: |
      GroupDocs.Redaction rend la suppression des métadonnées rapide et simple pour vos applications Python via .NET.
      
      1. Configurez un Redactor et ouvrez votre document Jpeg.
      2. Choisissez les options pour supprimer les champs de métadonnées.
      3. Exécutez la censure pour nettoyer le fichier.
      4. Enregistrez la nouvelle version sans données cachées.
   
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

        # Nettoyez les métadonnées dans JPEG

        # Choisissez les champs de métadonnées à nettoyer
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Ouvrez le fichier en utilisant Redactor
        with gr.Redactor("input.jpg") as redactor:

            # Appliquez la censure et enregistrez le fichier
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Protéger la vie privée dans chaque fichier"
  description: "GroupDocs.Redaction for Python via .NET vous donne le contrôle sur les données sensibles dans les documents. Supprimez le contenu caché dans le texte, les images et les métadonnées."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Fonctionnalités de censure des métadonnées"
  features:
    # feature loop
    - title: "Trouver et effacer du texte"
      content: "Scannez à la recherche de mots-clés ou d'informations privées et supprimez-les du document."

    # feature loop
    - title: "Masquer les détails des images"
      content: "Couvrez les zones d'images qui ne devraient pas être vues par d'autres."

    # feature loop
    - title: "Éditer les métadonnées du fichier"
      content: "Modifiez ou supprimez les champs de métadonnées pour protéger les informations du document."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Modifier les champs de métadonnées"
      content: |
        Cet exemple passe en revue la suppression ou la modification de champs tels que Auteur et Titre dans un document JPEG.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Ciblez le champ Auteur
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Ciblez le champ Titre
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Ouvrez le fichier JPEG
          with gr.Redactor("source.jpg") as redactor:

              # Exécutez le processus de nettoyage
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Enregistrez la nouvelle version
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "Nettoyez les métadonnées de JPEG avec Python"
    exclude: "JPEG"
    description: "Utilisez Python pour supprimer rapidement et facilement les données cachées et privées de vos documents JPEG."
    items: 
        # format loop 1
        - name: "Rédaction PDF"
          format: "PDF"
          link: "/redaction/python-net/remove-sensitive-metadata//pdf/"
          description: "Format de Document Portable Adobe"

        # format loop 2
        - name: "Rédaction Word"
          format: "WORD"
          link: "/redaction/python-net/remove-sensitive-metadata//word/"
          description: "Documents MS Word et Open Office"
          
        # format loop 3
        - name: "Rédaction Excel"
          format: "EXCEL"
          link: "/redaction/python-net/remove-sensitive-metadata//excel/"
          description: "Feuilles de calcul MS Excel et Open Office"

        # format loop 4
        - name: "Rédaction PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/remove-sensitive-metadata//powerpoint/"
          description: "Présentations MS PowerPoint et Open Office"

        # format loop 5
        - name: "Rédaction Image"
          format: "IMAGE"
          link: "/redaction/python-net/remove-sensitive-metadata//image/"
          description: "Formats d'image populaires"

        # format loop 6
        - name: "Rédaction Photo"
          format: "PHOTO"
          link: "/redaction/python-net/remove-sensitive-metadata//photo/"
          description: "Formats photo"

        # format loop 7
        - name: "Rédaction DOCX"
          format: "DOCX"
          link: "/redaction/python-net/remove-sensitive-metadata//docx/"
          description: "Document Microsoft Word Open XML"
          
        # format loop 8
        - name: "Rédaction XLSX"
          format: "XLSX"
          link: "/redaction/python-net/remove-sensitive-metadata//xlsx/"
          description: "Tableur Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Rédaction PPTX"
          format: "PPTX"
          link: "/redaction/python-net/remove-sensitive-metadata//pptx/"
          description: "Présentation PowerPoint Open XML"

        # format loop 10
        - name: "Rédaction JPEG"
          format: "JPEG"
          link: "/redaction/python-net/remove-sensitive-metadata//jpeg/"
          description: "Image JPEG"


---