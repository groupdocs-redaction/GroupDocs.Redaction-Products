
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: it
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Nascondi Aree Immagine in File XLSX con Sovrapposizioni Usando Python"
head_description: "Proteggi aree sensibili delle immagini nei file XLSX applicando sovrapposizioni con GroupDocs.Redaction for Python via .NET. Mantieni la struttura del documento inalterata mentre proteggi visuali private."

############################# Header ############################
title: "Nascondi Immagini Sensibili nei Documenti XLSX Usando Python" 
description: "Proteggi facilmente immagini riservate nei file XLSX con Python. I nostri strumenti garantiscono una redazione rapida ed efficace."
subtitle: "Caratteristiche Principali di GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Cosa è GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET offre agli sviluppatori Python strumenti per nascondere o eliminare dati sensibili dai documenti XLSX. Redigi testo, immagini e metadati attraverso diversi formati.

############################# Steps ############################
steps:
    enable: true
    title: "Proteggi Dati Sensibili in File Xlsx"
    content: |
      GroupDocs.Redaction for Python via .NET semplifica per le tue app Python via .NET la sicurezza dei documenti.
      
      1. Inizializza Redactor e carica il documento Xlsx.
      2. Configura i parametri di redazione in base al tuo compito.
      3. Definisci quale parte dell'immagine coprire e scegli un colore.
      4. Applica la redazione e salva il file finale.
   
    code:
      platform: "python-net"
      copy_title: "Copia"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Redazioni di esempio"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "clicca per copiare"
        copy_done: "copiato"
      links:
        #  loop
        - title: "Altri esempi"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "Documentazione"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        # Nascondi sezioni riservate delle immagini in XLSX

        # Scegli dimensioni e colore della sovrapposizione
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Contrassegna l'area di redazione
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Carica il documento con Redactor
        with gr.Redactor("input.xlsx") as redactor:

            # Applica le modifiche e salva il file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redigi Contenuto nei Documenti"
  description: "Con GroupDocs.Redaction for Python via .NET, puoi nascondere o rimuovere dati sensibili in molti formati di documento. Mantieni i documenti sicuri e dall'aspetto professionale."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Strumenti di Redazione Efficaci"
  features:
    # feature loop
    - title: "Cerca & Sostituisci Testo"
      content: "Localizza testo privato e sostituiscilo o nascondilo."

    # feature loop
    - title: "Coprire Immagini con Sovrapposizioni"
      content: "Nascondi immagini complete o sezioni specifiche per proteggere visuali sensibili."

    # feature loop
    - title: "Rimuovi Metadati Nascosti"
      content: "Pulisci i metadati dai file per evitare la condivisione di informazioni private."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Maschera Contenuto Immagine con Sovrapposizioni"
      content: |
        Questo manuale mostra come nascondere aree sensibili delle immagini nei documenti utilizzando sovrapposizioni.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Definisci dimensioni, posizione e colore della sovrapposizione
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Seleziona una sezione specifica dell'immagine
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Apri il file per la redazione
          with gr.Redactor("source.xlsx") as redactor:

              # Applica la sovrapposizione per nascondere l'area
              result = redactor.apply(redaction)

              # Salva il documento modificato
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
          ```
        platform: "python-net"
        copy_title: "Copia"
        install:
          command: "pip install groupdocs-redaction-net"
          copy_tip: "clicca per copiare"
          copy_done: "copiato"
        top_links:
          #  loop
          - title: "Scarica risultato"
            icon: "download"
            link: "/examples/redaction/formats/hide-image-content.pdf"
        links:
          #  loop
          - title: "Altri esempi"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "Documentazione"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "Pronto per iniziare?"
  description: "Prova le funzionalità di GroupDocs.Redaction gratuitamente o richiedi una licenza"
  items:
    #  loop
    - title: "Download PyPi"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "Licenze"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Nascondi Contenuto nei File XLSX con Python"
    exclude: "XLSX"
    description: "Utilizza Python per redigere o rimuovere dati sensibili dai file XLSX. Ideale per aziende e individui che vogliono proteggere i loro documenti."
    items: 
        # format loop 1
        - name: "Redazione PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-image-content//pdf/"
          description: "Formato Documento Portabile Adobe"

        # format loop 2
        - name: "Redazione Word"
          format: "WORD"
          link: "/redaction/python-net/hide-image-content//word/"
          description: "Documenti MS Word e Open Office"
          
        # format loop 3
        - name: "Redazione Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-image-content//excel/"
          description: "Fogli di calcolo MS Excel e Open Office"

        # format loop 4
        - name: "Redazione PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-image-content//powerpoint/"
          description: "Presentazioni MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redazione Immagine"
          format: "IMAGE"
          link: "/redaction/python-net/hide-image-content//image/"
          description: "Formati di immagine popolari"

        # format loop 6
        - name: "Redazione Foto"
          format: "PHOTO"
          link: "/redaction/python-net/hide-image-content//photo/"
          description: "Formati fotografici"

        # format loop 7
        - name: "Redazione DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-image-content//docx/"
          description: "Documento Open XML di Microsoft Word"
          
        # format loop 8
        - name: "Redazione XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-image-content//xlsx/"
          description: "Foglio di calcolo Open XML di Microsoft Excel"
          
        # format loop 9
        - name: "Redazione PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-image-content//pptx/"
          description: "Presentazione Open XML di PowerPoint"

        # format loop 10
        - name: "Redazione JPEG"
          format: "JPEG"
          link: "/redaction/python-net/hide-image-content//jpeg/"
          description: "Immagine JPEG"


---