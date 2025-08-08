
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: fr
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Supprimer les métadonnées dans PHOTO avec Python"
head_description: "Avec GroupDocs.Redaction for Python via .NET, vous pouvez effacer les données cachées des fichiers PHOTO et éviter de divulguer des informations privées."

############################# Header ############################
title: "Nettoyez les métadonnées de PHOTO à l'aide de Python" 
description: "Protégez vos documents PHOTO en effaçant les informations cachées avec des outils Python faciles à utiliser."
subtitle: "Fonctionnalités clés de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction offre aux utilisateurs Python un moyen de nettoyer les fichiers en supprimant le contenu caché du texte, des images et des métadonnées dans PHOTO.

############################# Steps ############################
steps:
    enable: true
    title: "Étapes pour effacer les métadonnées de Photo"
    content: |
      Utilisez GroupDocs.Redaction dans votre projet Python via .NET pour nettoyer les métadonnées des documents en quelques étapes.
      
      1. Installez un Redactor et ouvrez votre fichier Photo.
      2. Choisissez quels champs de métadonnées supprimer.
      3. Appliquez la censure pour nettoyer le fichier.
      4. Enregistrez la version finale.
   
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

        # Supprimez les métadonnées dans les documents PHOTO

        # Choisissez les métadonnées à censurer
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Utilisez Redactor pour ouvrir votre fichier
        with gr.Redactor("input.jpeg") as redactor:

            # Exécutez et enregistrez
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nettoyez les fichiers avant de partager"
  description: "GroupDocs.Redaction for Python via .NET aide à supprimer les données qui ne devraient pas être vues. Supprimez le texte, les images et les détails cachés en quelques clics."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Fonctionnalités de censure utiles"
  features:
    # feature loop
    - title: "Suppression de texte"
      content: "Trouvez et supprimez les mots, chiffres ou motifs sensibles."

    # feature loop
    - title: "Masquage d'images"
      content: "Couvrez des parties des images contenant des données privées."

    # feature loop
    - title: "Nettoyage des métadonnées"
      content: "Supprimez les détails du fichier comme Auteur, Titre ou Commentaires."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Supprimer des métadonnées spécifiques"
      content: |
        Suivez cet exemple pour supprimer les champs Auteur et Titre dans un document PHOTO.
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

          # Chargez le fichier dans le redactor
          with gr.Redactor("source.jpeg") as redactor:

              # Censurez les métadonnées sélectionnées
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
    title: "Censurez les métadonnées de PHOTO avec Python"
    exclude: "PHOTO"
    description: "Utilisez Python pour effacer les métadonnées cachées des fichiers PHOTO. Gardez les documents propres et sécurisés."
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