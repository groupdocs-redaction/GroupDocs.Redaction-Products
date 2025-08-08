
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: fr
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Couvrir le texte sensible dans les fichiers PDF à l'aide de superpositions Python"
head_description: "Avec GroupDocs.Redaction for Python via .NET, vous pouvez cacher le texte sensible dans les fichiers PDF en ajoutant des superpositions colorées. Protégez vos données privées sans modifier l'apparence de votre fichier."

############################# Header ############################
title: "Couvrir le texte sensible dans PDF avec Python" 
description: "Sécurisez vos fichiers PDF avec Python. Utilisez des superpositions pour masquer des informations juridiques, personnelles ou confidentielles."
subtitle: "Points forts de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET offre aux développeurs Python un moyen simple de cacher ou de supprimer du contenu dans des fichiers PDF. Couvrez le texte sensible, les images ou les métadonnées dans de nombreux formats.

############################# Steps ############################
steps:
    enable: true
    title: "Protéger les informations sensibles dans les fichiers Pdf"
    content: |
      Utilisez GroupDocs.Redaction for Python via .NET avec vos applications Python via .NET pour cacher le contenu privé rapidement.
      
      1. Configurez un Redactor et chargez votre fichier Pdf.
      2. Choisissez comment la rédaction doit fonctionner.
      3. Sélectionnez le texte à cacher et choisissez une couleur pour la superposition.
      4. Appliquez la rédaction et enregistrez votre fichier.
   
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

        # Cacher le texte sensible dans PDF à l'aide de superpositions colorées

        # Configurez les options de rédaction
        # Définissez ce qu'il faut cacher et choisissez une couleur
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Chargez le fichier en passant son chemin au Redactor
        with gr.Redactor("input.pdf") as redactor:

            # Rédigez et enregistrez votre fichier PDF
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Masquer ou supprimer des informations des documents"
  description: "Avec GroupDocs.Redaction for Python via .NET, vous pouvez cacher du texte, des images et d'autres données dans de nombreux formats. Protégez ce qui est important tout en gardant vos documents faciles à lire et à partager."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Fonctionnalités de rédaction flexibles"
  features:
    # feature loop
    - title: "Modifier n'importe quel texte"
      content: "Trouvez et remplacez le texte sensible pour sécuriser vos documents."

    # feature loop
    - title: "Couvrir les images"
      content: "Utilisez des superpositions pour masquer des images entières ou des zones spécifiques."

    # feature loop
    - title: "Nettoyer les métadonnées"
      content: "Supprimez les données cachées pour éviter les fuites d'informations involontaires."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Utilisez Regex pour trouver et cacher le texte"
      content: |
        Cet exemple montre comment rechercher et cacher du texte en utilisant des modèles regex.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Définissez le modèle de texte et la couleur de la superposition
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Chargez votre document
          with gr.Redactor("source.pdf") as redactor:

              # Rédigez le contenu sélectionné
              result = redactor.apply(redaction)

              # Enregistrez le fichier mis à jour
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Protégez les fichiers PDF avec les outils Python"
    exclude: "PDF"
    description: "Utilisez Python pour cacher ou supprimer du contenu dans des fichiers PDF. Un moyen fiable de garder les informations privées en sécurité."
    items: 
        # format loop 1
        - name: "Rédaction PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-text-with-image-overlay//pdf/"
          description: "Format de Document Portable Adobe"

        # format loop 2
        - name: "Rédaction Word"
          format: "WORD"
          link: "/redaction/python-net/hide-text-with-image-overlay//word/"
          description: "Documents MS Word et Open Office"
          
        # format loop 3
        - name: "Rédaction Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-text-with-image-overlay//excel/"
          description: "Feuilles de calcul MS Excel et Open Office"

        # format loop 4
        - name: "Rédaction PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-text-with-image-overlay//powerpoint/"
          description: "Présentations MS PowerPoint et Open Office"

        # format loop 5
        - name: "Rédaction DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-text-with-image-overlay//docx/"
          description: "Document Microsoft Word Open XML"
          
        # format loop 6
        - name: "Rédaction XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-text-with-image-overlay//xlsx/"
          description: "Tableur Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Rédaction PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-text-with-image-overlay//pptx/"
          description: "Présentation PowerPoint Open XML"


---