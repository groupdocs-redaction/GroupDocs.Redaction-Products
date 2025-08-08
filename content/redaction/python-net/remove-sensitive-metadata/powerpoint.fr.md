
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: fr
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Effacer les métadonnées dans POWERPOINT avec Python"
head_description: "Sécurisez vos documents POWERPOINT avec GroupDocs.Redaction for Python via .NET en effaçant les métadonnées cachées qui peuvent contenir des informations privées."

############################# Header ############################
title: "Nettoyez les métadonnées de POWERPOINT avec Python" 
description: "Obtenez un meilleur contrôle de vos fichiers grâce aux outils Python qui suppriment rapidement les métadonnées cachées."
subtitle: "Principales fonctionnalités de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "En savoir plus sur GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction est conçu pour aider les développeurs Python en supprimant le texte, les images et les métadonnées dans les fichiers POWERPOINT.

############################# Steps ############################
steps:
    enable: true
    title: "Étapes pour effacer les métadonnées dans Powerpoint"
    content: |
      GroupDocs.Redaction permet à vos applications Python via .NET de nettoyer les métadonnées des documents en quelques clics.
      
      1. Créez une instance de Redactor et ouvrez votre document.
      2. Choisissez quels champs de métadonnées effacer.
      3. Configurez et appliquez les paramètres de censure.
      4. Enregistrez la version finale sans les données cachées.
   
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

        # Effacer les métadonnées de POWERPOINT

        # Choisissez les métadonnées à supprimer
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Chargez le fichier dans le redactor
        with gr.Redactor("input.pptx") as redactor:

            # Nettoyez et enregistrez le document
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Censure avancée pour POWERPOINT"
  description: "GroupDocs.Redaction for Python via .NET aide à nettoyer les fichiers en supprimant le contenu sensible. Fonctionne avec plusieurs formats de fichiers et types de données."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Options principales de censure"
  features:
    # feature loop
    - title: "Effacer le texte privé"
      content: "Recherchez et supprimez des mots ou des phrases qui ne devraient pas être partagés."

    # feature loop
    - title: "Couvrir les sections d'image"
      content: "Cachez des parties des images contenant des visuels privés ou sensibles."

    # feature loop
    - title: "Effacer les métadonnées"
      content: "Effacez des champs de métadonnées comme Auteur, Titre et Commentaires de vos fichiers."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Comment supprimer les métadonnées cachées"
      content: |
        Cet exemple montre comment effacer les métadonnées intégrées telles que l'Auteur et le Titre de votre document POWERPOINT.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Effacez le champ Auteur
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Effacez le champ Titre
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Ouvrez le fichier dans le redactor
          with gr.Redactor("source.pptx") as redactor:

              # Effectuez la censure
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
    title: "Nettoyage des métadonnées pour POWERPOINT avec Python"
    exclude: "POWERPOINT"
    description: "Utilisez Python pour effacer les données privées des documents POWERPOINT. Idéal pour un usage légal, commercial et personnel."
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