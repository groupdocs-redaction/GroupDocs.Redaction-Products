
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: fr
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Effacer les métadonnées dans DOCX avec Python"
head_description: "Utilisez GroupDocs.Redaction for Python via .NET pour effacer les détails cachés dans les fichiers DOCX. Protégez vos données en supprimant les entrées de métadonnées sensibles."

############################# Header ############################
title: "Effacer les métadonnées cachées des fichiers DOCX avec Python" 
description: "Avec Python, vous pouvez supprimer les métadonnées cachées des fichiers DOCX en utilisant GroupDocs.Redaction for Python via .NET. Gardez vos fichiers propres et privés."
subtitle: "Principales fonctionnalités de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que GroupDocs.Redaction for Python via .NET ?"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction offre aux développeurs Python la possibilité d'effacer des données cachées dans des fichiers DOCX. Nettoyez facilement le texte, les visuels et les métadonnées des documents.

############################# Steps ############################
steps:
    enable: true
    title: "Supprimer les métadonnées des fichiers Docx"
    content: |
      GroupDocs.Redaction offre à vos applications Python via .NET les outils nécessaires pour supprimer rapidement les métadonnées.
      
      1. Démarrez un Redactor et chargez votre document Docx.
      2. Configurez les champs de métadonnées à supprimer.
      3. Appliquez la censure pour nettoyer le contenu caché.
      4. Enregistrez la version finale du fichier.
   
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

        # Nettoyez les métadonnées dans les fichiers DOCX

        # Choisissez les entrées de métadonnées à supprimer
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Utilisez Redactor pour ouvrir le document
        with gr.Redactor("input.docx") as redactor:

            # Appliquez la censure et enregistrez le fichier
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Sécurisez chaque partie d'un document"
  description: "Avec GroupDocs.Redaction for Python via .NET, vous pouvez nettoyer le texte, les images et les métadonnées dans plusieurs formats de fichiers. Idéal pour la confidentialité et la sécurité."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Outils de censure de documents en action"
  features:
    # feature loop
    - title: "Nettoyeur de texte"
      content: "Trouvez et supprimez les noms, les termes ou tout mot privé."

    # feature loop
    - title: "Couverture d'images"
      content: "Cachez des parties d'une image en plaçant une superposition colorée."

    # feature loop
    - title: "Suppression de métadonnées"
      content: "Éliminez les informations cachées des documents, telles que les détails d'auteur ou de logiciel."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Exemple : Supprimer les métadonnées cachées"
      content: |
        Voici comment vous pouvez supprimer les champs Auteur et Titre d'un document DOCX en utilisant la censure.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Choisissez de supprimer le champ Auteur
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Choisissez de supprimer le champ Titre
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Ouvrez le fichier DOCX
          with gr.Redactor("source.docx") as redactor:

              # Exécutez la censure des métadonnées
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Enregistrez le fichier propre
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
    title: "Supprimer les métadonnées dans DOCX avec Python"
    exclude: "DOCX"
    description: "Supprimez les métadonnées cachées dans les fichiers DOCX en utilisant Python. Idéal pour sécuriser vos fichiers avant de les partager ou de les archiver."
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