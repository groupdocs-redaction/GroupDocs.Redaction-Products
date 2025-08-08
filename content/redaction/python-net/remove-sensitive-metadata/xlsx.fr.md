
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: fr
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Effacer les métadonnées de XLSX avec Python"
head_description: "Éliminez les métadonnées cachées dans vos documents XLSX en utilisant GroupDocs.Redaction for Python via .NET. Une manière propre de protéger votre vie privée."

############################# Header ############################
title: "Supprimer les métadonnées des fichiers XLSX avec Python" 
description: "Avec Python, vous pouvez supprimer en toute sécurité les détails privés de vos fichiers XLSX. Idéal pour un usage personnel et professionnel."
subtitle: "Fonctionnalités clés de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que GroupDocs.Redaction for Python via .NET ?"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction offre aux développeurs Python des outils pour effacer ou cacher tout contenu sensible dans des fichiers XLSX — du texte aux images en passant par les métadonnées.

############################# Steps ############################
steps:
    enable: true
    title: "Essuyez les métadonnées des fichiers Xlsx"
    content: |
      GroupDocs.Redaction permet à vos projets Python via .NET de supprimer rapidement les données de fichier indésirables.
      
      1. Créez une instance de Redactor et chargez votre fichier Xlsx.
      2. Choisissez les entrées de métadonnées que vous souhaitez effacer.
      3. Exécutez la censure pour supprimer ces entrées.
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

        # Supprimer les métadonnées cachées dans votre document XLSX

        # Déterminez les champs de métadonnées à supprimer
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Ouvrez le fichier en utilisant Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Appliquez les modifications et enregistrez le fichier
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Masquez du contenu sensible n'importe où dans le fichier"
  description: "GroupDocs.Redaction for Python via .NET vous permet de nettoyer les informations privées dans plusieurs formats de fichiers. Gardez votre contenu prêt à partager."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Censure des métadonnées et contenu"
  features:
    # feature loop
    - title: "Supprimer le texte sensible"
      content: "Trouvez et retirez les noms, les e-mails ou d'autres détails privés des documents."

    # feature loop
    - title: "Masquer les zones d'image"
      content: "Placez des superpositions pour cacher des zones dans les images qui ne devraient pas être visibles."

    # feature loop
    - title: "Nettoyeur de métadonnées"
      content: "Supprimez les champs cachés comme Auteur, Titre ou date de création."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Supprimer les métadonnées d'un document"
      content: |
        Voici comment supprimer les métadonnées de votre fichier XLSX en utilisant quelques lignes de code.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Marquez le champ Auteur pour suppression
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Marquez le champ Titre pour suppression
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Ouvrez le document
          with gr.Redactor("source.xslx") as redactor:

              # Exécutez les règles de censure
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
    title: "Essuyez les métadonnées dans XLSX avec Python"
    exclude: "XLSX"
    description: "Utilisez Python pour supprimer les métadonnées privées dans vos fichiers XLSX. On peut sécuriser le contenu avant de le partager ou de le publier."
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