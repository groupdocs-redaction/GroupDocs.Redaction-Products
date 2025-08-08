
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: fr
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Cacher le texte dans DOCX avec des superpositions en utilisant Python"
head_description: "Protégez le texte sensible dans les fichiers DOCX avec GroupDocs.Redaction for Python via .NET. Ajoutez de simples superpositions carrées sans modifier votre mise en page."

############################# Header ############################
title: "Cacher le contenu dans DOCX à l'aide de Python" 
description: "Utilisez Python pour couvrir le contenu privé dans les fichiers DOCX. Idéal pour les documents juridiques, personnels ou professionnels."
subtitle: "Fonctionnalités clés de GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET aide les développeurs Python à cacher ou supprimer du contenu privé dans des fichiers DOCX. Vous pouvez bloquer le texte, les images et même les métadonnées cachées.

############################# Steps ############################
steps:
    enable: true
    title: "Garder les informations privées cachées dans Docx"
    content: |
      Avec GroupDocs.Redaction for Python via .NET, les développeurs Python via .NET peuvent cacher du contenu en quelques lignes.
      
      1. Créez un Redactor et ouvrez votre fichier.
      2. Choisissez vos paramètres de rédaction.
      3. Entrez le texte à cacher et choisissez une couleur.
      4. Appliquez et enregistrez la version redatée.
   
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

        # Cacher le contenu dans DOCX à l'aide de superpositions

        # Configurez vos options de rédaction
        # Définissez le texte et la couleur de la superposition
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Configurez le Redactor et chargez votre fichier
        with gr.Redactor("input.docx") as redactor:

            # Rédigez et enregistrez le fichier
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Outils supplémentaires de rédaction"
  description: "GroupDocs.Redaction for Python via .NET prend en charge différents types de fichiers pour que vous puissiez protéger n'importe quel contenu sans effort."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Fonctionnalités de rédaction intégrées"
  features:
    # feature loop
    - title: "Trouver et modifier du texte"
      content: "Recherchez des mots-clés et cachez ou remplacez-les rapidement."

    # feature loop
    - title: "Couvrir des zones d'images"
      content: "Masquez les zones sensibles dans les pages scannées ou les photos."

    # feature loop
    - title: "Nettoyer les métadonnées"
      content: "Supprimez des informations cachées qui pourraient révéler des détails."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Trouvez le texte avec Regex et rédigez"
      content: |
        Découvrez comment utiliser des expressions régulières pour trouver et cacher du texte.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Définissez le motif et la couleur
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Ouvrez le fichier à rédiger
          with gr.Redactor("source.docx") as redactor:

              # Exécutez le processus de rédaction
              result = redactor.apply(redaction)

              # Enregistrez votre document nettoyé
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
    title: "Sécurisez les fichiers DOCX avec Python"
    exclude: "DOCX"
    description: "Couvrez ou supprimez du contenu sensible dans des documents DOCX à l'aide d'outils simples de Python."
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