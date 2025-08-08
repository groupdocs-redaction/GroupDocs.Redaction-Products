
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: fr
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Effacer les métadonnées de EXCEL avec Python"
head_description: "Utilisez GroupDocs.Redaction for Python via .NET pour supprimer des métadonnées des documents EXCEL. Éliminez les données cachées et protégez les informations sensibles."

############################# Header ############################
title: "Supprimer les métadonnées cachées dans EXCEL avec Python" 
description: "Prenez le contrôle de vos fichiers EXCEL avec Python. Éliminez les données indésirables pour garder vos fichiers privés."
subtitle: "Fonctionnalités clés de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Familiarisez-vous avec GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction est conçu pour les développeurs Python qui ont besoin de nettoyer et de protéger les fichiers EXCEL. Supprimez facilement les métadonnées, le texte et les images indésirables.

############################# Steps ############################
steps:
    enable: true
    title: "Étapes pour nettoyer les métadonnées dans les fichiers Excel"
    content: |
      Dans vos applications Python via .NET, GroupDocs.Redaction aide à supprimer les métadonnées en quelques étapes seulement.
      
      1. Démarrez un Redactor et ouvrez le fichier Excel.
      2. Choisissez les champs de métadonnées à supprimer.
      3. Exécutez le processus de censure.
      4. Exportez le fichier final.
   
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

        # Supprimez les données cachées dans EXCEL

        # Choisissez les métadonnées à supprimer
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Ouvrez votre fichier avec redactor
        with gr.Redactor("input.xslx") as redactor:

            # Traitez et enregistrez le fichier
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nettoyez tous les types de données sensibles"
  description: "GroupDocs.Redaction for Python via .NET vous fournit des outils pour effacer les métadonnées, le texte et les images dans de nombreux formats. Parfait pour un partage de documents sécurisé."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Outils de protection des métadonnées et de la confidentialité"
  features:
    # feature loop
    - title: "Supprimer le texte privé"
      content: "Détectez et supprimez les informations personnelles ou cachées de vos documents."

    # feature loop
    - title: "Masquer les détails d'image"
      content: "Couvrez des parties des images pour bloquer des visuels privés."

    # feature loop
    - title: "Nettoyez les métadonnées"
      content: "Effacez les champs de métadonnées cachés qui pourraient contenir des données sensibles."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Supprimer les métadonnées Auteur et Titre"
      content: |
        Découvrez comment GroupDocs.Redaction for Python via .NET efface certains champs de métadonnées des documents EXCEL.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Supprimez les informations sur l'auteur
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Supprimez le champ Titre
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Ouvrez le document pour censure
          with gr.Redactor("source.xslx") as redactor:

              # Appliquez les modifications
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Enregistrez le document nettoyé
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
    title: "Nettoyez les métadonnées dans EXCEL avec Python"
    exclude: "EXCEL"
    description: "Utilisez Python pour supprimer les métadonnées sensibles de vos fichiers EXCEL. Sécurisez le contenu avant de le partager."
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