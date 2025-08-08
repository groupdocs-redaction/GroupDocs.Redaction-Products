
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: fr
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Supprimer les métadonnées des fichiers PPTX avec Python"
head_description: "GroupDocs.Redaction for Python via .NET aide à nettoyer les données cachées dans les fichiers PPTX. Supprimez les détails qui pourraient révéler des informations sensibles."

############################# Header ############################
title: "Supprimer les métadonnées dans PPTX avec Python" 
description: "Effacez les métadonnées privées stockées dans les fichiers PPTX en utilisant Python. Une manière intelligente de protéger vos informations."
subtitle: "Outils principaux dans GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "En savoir plus sur GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction est conçu pour les développeurs Python souhaitant garder leurs documents propres. Utilisez-le pour supprimer du texte, couvrir des images ou supprimer des métadonnées des fichiers PPTX.

############################# Steps ############################
steps:
    enable: true
    title: "Nettoyer les métadonnées des fichiers Pptx"
    content: |
      Utilisez GroupDocs.Redaction pour supprimer rapidement les métadonnées de votre application Python via .NET.
      
      1. Créez un Redactor et ouvrez le document Pptx.
      2. Choisissez quelles métadonnées vous souhaitez effacer.
      3. Appliquez la censure pour supprimer les données cachées.
      4. Enregistrez le fichier mis à jour.
   
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

        # Effacer les métadonnées dans PPTX

        # Choisissez les champs à censurer
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Ouvrez votre fichier avec Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Exécutez et enregistrez les modifications
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Autres moyens de cacher des informations sensibles"
  description: "GroupDocs.Redaction for Python via .NET prend en charge la censure à travers de nombreux formats. Un moyen rapide de supprimer le contenu personnel des documents."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Outils de censure de fichiers"
  features:
    # feature loop
    - title: "Rechercher et supprimer du texte"
      content: "Supprimez rapidement des mots ou des phrases contenant des données personnelles ou sensibles."

    # feature loop
    - title: "Ajouter des superpositions d'images"
      content: "Couvrez les sections des images qui ne devraient pas être partagées."

    # feature loop
    - title: "Supprimer les métadonnées cachées"
      content: "Éliminez les noms d'auteurs, les titres et d'autres balises cachées."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Exemple : Supprimer les champs de métadonnées"
      content: |
        Suivez cet exemple pour supprimer des champs de métadonnées courants d'un fichier PPTX avant de le partager.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Marquez le champ Auteur pour censure
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Marquez le champ Titre pour censure
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Chargez le fichier
          with gr.Redactor("source.pptx") as redactor:

              # Appliquez la censure
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Exportez le fichier nettoyé
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
    title: "Utilisez Python pour nettoyer les métadonnées de PPTX"
    exclude: "PPTX"
    description: "Supprimez les données d'arrière-plan de PPTX avec Python. Parfait pour la confidentialité et la conformité."
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