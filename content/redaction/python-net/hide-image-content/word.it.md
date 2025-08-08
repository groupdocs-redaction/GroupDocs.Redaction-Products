
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: it
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Proteggi Immagini in WORD con Sovrapposizioni Usando Python"
head_description: "Coprire immagini sensibili nei file WORD con GroupDocs.Redaction for Python via .NET. Applica sovrapposizioni per proteggere i dati privati mantenendo il layout del documento."

############################# Header ############################
title: "Coprire Immagini Private nei File WORD Usando Python" 
description: "Mantieni al sicuro visuali personali e aziendali nei documenti WORD con Python. Strumenti di redazione semplici e rapidi di cui ti puoi fidare."
subtitle: "Funzionalità Fondamentali di GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET fornisce agli sviluppatori Python strumenti per nascondere o eliminare contenuti dai file WORD. Proteggi testo, immagini e metadati in diversi formati di documento.

############################# Steps ############################
steps:
    enable: true
    title: "Proteggi Informazioni Sensibili in File Word"
    content: |
      GroupDocs.Redaction for Python via .NET aiuta le tue app Python via .NET a proteggere i documenti coprendo contenuti privati con sovrapposizioni.
      
      1. Crea un oggetto Redactor e carica il file Word.
      2. Regola le impostazioni di redazione secondo necessità.
      3. Seleziona l'area dell'immagine e imposta il colore della sovrapposizione.
      4. Applica la sovrapposizione e salva il file redatto.
   
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

        # Coprire parti sensibili dell'immagine in WORD

        # Specifica il colore e la dimensione della sovrapposizione
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Scegli l'area dell'immagine da nascondere
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Carica il file utilizzando Redactor
        with gr.Redactor("input.docx") as redactor:

            # Applica e salva il documento
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Funzionalità Avanzate di Redazione"
  description: "GroupDocs.Redaction for Python via .NET consente di nascondere o eliminare contenuti sensibili in più formati di documento. Mantieni file puliti e sicuri per la condivisione."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Toolkit di Redazione Completo"
  features:
    # feature loop
    - title: "Cerca e Sostituisci Testo"
      content: "Trova testo sensibile in tutti i documenti e sostituiscilo per garantire la privacy."

    # feature loop
    - title: "Sovrapponi Immagini"
      content: "Coprire aree selezionate delle immagini o immagini intere per nascondere informazioni private."

    # feature loop
    - title: "Rimuovi Metadati"
      content: "Elimina metadati nascosti per prevenire la condivisione di dati invisibili."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Coprire Contenuto Immagine con Sovrapposizioni"
      content: |
        Questo esempio mostra come nascondere immagini sensibili in documenti utilizzando sovrapposizioni.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Imposta dimensioni, colore e posizione della sovrapposizione
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Seleziona l'area nella prima pagina da coprire
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Apri il documento
          with gr.Redactor("source.docx") as redactor:

              # Applica la redazione con sovrapposizione
              result = redactor.apply(redaction)

              # Salva il documento aggiornato
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
    title: "Redigi Contenuti in WORD Usando Python"
    exclude: "WORD"
    description: "Python ti consente di nascondere o rimuovere contenuti sensibili nei file WORD. Una soluzione fidata per la sicurezza dei documenti."
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