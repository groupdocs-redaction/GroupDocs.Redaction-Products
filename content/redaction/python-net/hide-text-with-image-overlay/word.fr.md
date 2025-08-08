
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: fr
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Cacher le texte dans WORD à l'aide de superpositions Python"
head_description: "Avec GroupDocs.Redaction for Python via .NET, il est facile de masquer du texte privé dans des documents WORD grâce à des blocs de couleur. Votre mise en page reste intacte."

############################# Header ############################
title: "Utilisez des superpositions pour cacher du texte dans WORD avec Python" 
description: "Protégez les informations clés dans des documents WORD en plaçant des blocs de superposition à l'aide de Python et GroupDocs.Redaction for Python via .NET."
subtitle: "Ce que vous pouvez faire avec GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Découvrez GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       Avec GroupDocs.Redaction for Python via .NET, les développeurs Python peuvent cacher ou supprimer du contenu dans des documents WORD — comme des noms, des chiffres et plus encore.

############################# Steps ############################
steps:
    enable: true
    title: "Rédiger du contenu privé dans Word"
    content: |
      GroupDocs.Redaction for Python via .NET permet aux développeurs Python via .NET de cacher rapidement des données sensibles.
      
      1. Créez un Redactor et chargez votre fichier Word.
      2. Configurez les options de rédaction.
      3. Choisissez le texte à cacher et la couleur de la superposition.
      4. Exécutez la rédaction et enregistrez votre fichier.
   
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

        # Couvrir le texte dans WORD à l'aide de superpositions

        # Choisissez quoi rédiger
        # Entrez le texte et définissez la couleur
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Chargez le fichier en utilisant Redactor
        with gr.Redactor("input.docx") as redactor:

            # Rédigez et enregistrez
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Plus de moyens de cacher des informations"
  description: "Utilisez GroupDocs.Redaction for Python via .NET pour nettoyer vos fichiers en cachant le contenu visible et caché sans changer leur apparence."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Fonctionnalités axées sur la confidentialité"
  features:
    # feature loop
    - title: "Cacher ou remplacer du texte"
      content: "Protégez les informations importantes en les supprimant ou en les remplaçant."

    # feature loop
    - title: "Couvrir les images"
      content: "Bloquez les images sensibles avec des formes solides."

    # feature loop
    - title: "Supprimer les données cachées"
      content: "Effacez les métadonnées qui pourraient révéler des informations système ou utilisateur."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Trouver et cacher du texte avec Regex"
      content: |
        Cet exemple montre comment utiliser des expressions régulières pour correspondre et cacher du contenu.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Définissez le motif et la couleur de la superposition
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Ouvrez le fichier à modifier
          with gr.Redactor("source.docx") as redactor:

              # Appliquez la rédaction
              result = redactor.apply(redaction)

              # Enregistrez votre copie mise à jour
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
    title: "Protégez le contenu WORD avec Python"
    exclude: "WORD"
    description: "Utilisez Python pour cacher ou supprimer des informations sensibles dans des fichiers WORD sans affecter la structure ou la mise en page."
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