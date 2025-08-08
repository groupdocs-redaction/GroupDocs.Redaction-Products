
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: fr
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Supprimer le texte privé de DOCX avec Python"
head_description: "Protégez vos fichiers DOCX en supprimant le contenu sensible avec GroupDocs.Redaction for Python via .NET et Python. Rédaction rapide et efficace."

############################# Header ############################
title: "Modifier ou cacher le texte privé dans des fichiers DOCX avec Python" 
description: "Prenez le contrôle de votre contenu DOCX en utilisant GroupDocs.Redaction for Python via .NET et Python. Idéal pour un usage personnel ou professionnel."
subtitle: "Ce que vous pouvez faire avec GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Découvrez GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET offre aux développeurs Python les outils nécessaires pour nettoyer le contenu dans les fichiers DOCX. Rédigez des textes, des images, des commentaires et des métadonnées facilement.

############################# Steps ############################
steps:
    enable: true
    title: "Comment nettoyer le texte dans des fichiers Docx"
    content: |
      Utilisez GroupDocs.Redaction for Python via .NET à l'intérieur de vos applications Python via .NET pour supprimer ou cacher du texte privé. Processus de rédaction rapide et simple.
      
      1. Créez un Redactor et ouvrez votre fichier Docx.
      2. Définissez les règles de rédaction que vous souhaitez.
      3. Choisissez le texte à rechercher et ce avec quoi le remplacer.
      4. Exécutez la rédaction et enregistrez votre nouveau fichier.
   
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

        # Comment rédiger le texte dans un fichier DOCX

        # Choisissez vos paramètres de rédaction
        # Entrez ce à rechercher et ce avec quoi le remplacer
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Ouvrez votre fichier avec le constructeur Redactor
        with gr.Redactor("input.docx") as redactor:

            # Appliquez les modifications et enregistrez le fichier DOCX mis à jour
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Outils de rédaction supplémentaires"
  description: "GroupDocs.Redaction for Python via .NET vous permet de supprimer ou de masquer du texte sensible dans différents formats. Partagez des fichiers propres et sécurisés avec confiance."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Outils pour la rédaction de texte, d'images et de métadonnées"
  features:
    # feature loop
    - title: "Trouver et remplacer du texte privé"
      content: "Recherchez des mots ou des motifs spécifiques et remplacez-les. Fonctionne avec des expressions régulières et des options de mots-clés."

    # feature loop
    - title: "Couvrir des images sensibles"
      content: "Superposez ou cachez des zones d'image. Changez les couleurs, l'opacité et la taille au besoin."

    # feature loop
    - title: "Supprimer les métadonnées"
      content: "Effacez les informations cachées telles que les noms d'auteur, les horodatages et les notes internes pour garder vos fichiers privés."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Utilisez Regex pour rédiger des motifs"
      content: |
        Recherchez des e-mails, des identifiants ou des motifs en utilisant des expressions régulières et remplacez-les facilement.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Définissez un motif regex EMAIL et un texte de remplacement
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Ouvrez le fichier que vous souhaitez nettoyer
          with gr.Redactor("source.docx") as redactor:

              # Appliquez votre configuration de rédaction
              result = redactor.apply(redaction)

              # Enregistrez le document rédigé
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "Rédiger du contenu dans DOCX en utilisant Python"
    exclude: "DOCX"
    description: "Utilisez Python pour supprimer le texte sensible des fichiers DOCX. Gardez les documents personnels et professionnels protégés."
    items: 
        # format loop 1
        - name: "Rédaction PDF"
          format: "PDF"
          link: "/redaction/python-net/replace-sensitive-text//pdf/"
          description: "Format de Document Portable Adobe"

        # format loop 2
        - name: "Rédaction Word"
          format: "WORD"
          link: "/redaction/python-net/replace-sensitive-text//word/"
          description: "Documents MS Word et Open Office"
          
        # format loop 3
        - name: "Rédaction Excel"
          format: "EXCEL"
          link: "/redaction/python-net/replace-sensitive-text//excel/"
          description: "Feuilles de calcul MS Excel et Open Office"

        # format loop 4
        - name: "Rédaction PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/replace-sensitive-text//powerpoint/"
          description: "Présentations MS PowerPoint et Open Office"

        # format loop 5
        - name: "Rédaction DOCX"
          format: "DOCX"
          link: "/redaction/python-net/replace-sensitive-text//docx/"
          description: "Document Microsoft Word Open XML"
          
        # format loop 6
        - name: "Rédaction XLSX"
          format: "XLSX"
          link: "/redaction/python-net/replace-sensitive-text//xlsx/"
          description: "Tableur Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Rédaction PPTX"
          format: "PPTX"
          link: "/redaction/python-net/replace-sensitive-text//pptx/"
          description: "Présentation PowerPoint Open XML"


---