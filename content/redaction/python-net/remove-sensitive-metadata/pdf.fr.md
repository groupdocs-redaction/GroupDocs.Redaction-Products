
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: fr
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Supprimer les métadonnées de PDF avec Python"
head_description: "GroupDocs.Redaction for Python via .NET permet de nettoyer les données cachées dans les fichiers PDF. Évitez de partager des informations privées en modifiant ou en supprimant les métadonnées."

############################# Header ############################
title: "Supprimer les métadonnées des fichiers PDF avec Python" 
description: "Utilisez Python et GroupDocs.Redaction for Python via .NET pour nettoyer les informations sensibles de vos documents PDF. Gardez le contrôle de vos données grâce à des outils de censure efficaces."
subtitle: "Ce que GroupDocs.Redaction for Python via .NET peut faire" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction aide les développeurs Python à nettoyer les documents PDF en supprimant le texte, le contenu d'image et les métadonnées.

############################# Steps ############################
steps:
    enable: true
    title: "Supprimer les métadonnées des documents Pdf"
    content: |
      Commencez à protéger vos fichiers en utilisant GroupDocs.Redaction dans les applications Python via .NET.
      
      1. Créez un Redactor et chargez votre fichier Pdf.
      2. Ajoutez des règles pour supprimer les métadonnées cachées.
      3. Exécutez la censure pour supprimer les entrées de métadonnées.
      4. Enregistrez le fichier sans les données cachées.
   
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

        # Supprimer les métadonnées des documents PDF

        # Choisissez les champs de métadonnées à supprimer
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Ouvrez le fichier avec Redactor
        with gr.Redactor("input.pdf") as redactor:

            # Censurez et enregistrez votre document
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nettoyez le contenu caché dans les documents"
  description: "Avec GroupDocs.Redaction for Python via .NET, vous pouvez supprimer en toute sécurité le texte, les images et les métadonnées. Gardez vos fichiers privés et sécurisés avant de les partager."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Options de censure"
  features:
    # feature loop
    - title: "Suppression de texte"
      content: "Recherchez et effacez le texte sensible dans les documents."

    # feature loop
    - title: "Masquage d'images"
      content: "Cachez des parties spécifiques des images avec des superpositions simples."

    # feature loop
    - title: "Nettoyage des métadonnées"
      content: "Éliminez les métadonnées indésirables qui pourraient exposer des données privées."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Modifier et supprimer les champs de métadonnées"
      content: |
        Cet exemple explique comment effacer les métadonnées cachées dans un fichier PDF.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Supprimez la métadonnée Auteur
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Supprimez la métadonnée Titre
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Ouvrez le fichier dans Redactor
          with gr.Redactor("source.pdf") as redactor:

              # Exécutez le processus de censure
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

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
    title: "Nettoyez les métadonnées de PDF avec Python"
    exclude: "PDF"
    description: "Supprimez les champs de données cachées dans PDF en utilisant Python. Une manière intelligente de protéger la vie privée et de garder vos fichiers propres."
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