
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: fr
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Nettoyez les métadonnées cachées dans IMAGE avec Python"
head_description: "GroupDocs.Redaction for Python via .NET vous aide à supprimer les métadonnées privées des documents IMAGE. Gardez vos fichiers propres et sécurisés."

############################# Header ############################
title: "Supprimer les métadonnées dans les fichiers IMAGE avec Python" 
description: "Utilisez les outils Python pour protéger les documents IMAGE. Supprimez les informations cachées avant de partager ou de publier."
subtitle: "Fonctionnalités clés de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction permet aux développeurs Python de nettoyer les fichiers en supprimant le contenu sensible dans le texte, les images et les métadonnées des fichiers IMAGE.

############################# Steps ############################
steps:
    enable: true
    title: "Comment supprimer les métadonnées des fichiers Image"
    content: |
      GroupDocs.Redaction aide les développeurs Python via .NET à nettoyer les métadonnées des documents en quelques étapes.
      
      1. Configurez un Redactor et chargez votre fichier Image.
      2. Choisissez les métadonnées à effacer.
      3. Exécutez le processus de censure.
      4. Enregistrez votre fichier mis à jour.
   
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

        # Nettoyez les champs cachés dans les fichiers IMAGE

        # Sélectionnez les champs de métadonnées à censurer
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Utilisez Redactor pour ouvrir le fichier
        with gr.Redactor("input.png") as redactor:

            # Traitez et exportez
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nettoyez les données sensibles de n'importe quel fichier"
  description: "GroupDocs.Redaction for Python via .NET supprime le texte, les images et les métadonnées qui ne doivent pas être partagées. Fonctionne avec de nombreux formats."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Principaux outils de censure"
  features:
    # feature loop
    - title: "Supprimer le texte"
      content: "Effacez des mots ou des motifs de vos fichiers pour protéger des informations sensibles."

    # feature loop
    - title: "Masquer les images"
      content: "Couvrez des parties des images qui doivent rester privées."

    # feature loop
    - title: "Supprimer les métadonnées"
      content: "Effacez les données cachées des propriétés de fichier comme Auteur ou Titre."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Supprimer les champs de métadonnées"
      content: |
        Cet exemple montre comment supprimer des métadonnées comme Auteur et Titre dans des fichiers IMAGE.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Choisissez le champ Auteur
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Choisissez le champ Titre
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Ouvrez le fichier dans le redactor
          with gr.Redactor("source.png") as redactor:

              # Exécutez la censure
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

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
    title: "Utilisez Python pour supprimer les métadonnées de IMAGE"
    exclude: "IMAGE"
    description: "Nettoyez rapidement les métadonnées dans les fichiers IMAGE en utilisant Python. Gardez vos documents en sécurité et privés."
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