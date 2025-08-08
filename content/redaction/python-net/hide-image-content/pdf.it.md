
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: it
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Coprire Immagini Sensibili in PDF con Sovrapposizioni Usando Python"
head_description: "Con GroupDocs.Redaction for Python via .NET, puoi nascondere immagini sensibili nei file PDF aggiungendo sovrapposizioni. Proteggi i dati privati senza modificare il layout del documento."

############################# Header ############################
title: "Nascondi Immagini nei File PDF con Sovrapposizioni Usando Python" 
description: "Mantieni al sicuro immagini personali e aziendali nei file PDF con Python. I nostri strumenti rendono la protezione dei dati sicura e affidabile."
subtitle: "Caratteristiche di GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET offre agli sviluppatori Python gli strumenti per nascondere o eliminare contenuti nei file PDF. Copri testo, immagini e metadati per proteggere i documenti in diversi formati.

############################# Steps ############################
steps:
    enable: true
    title: "Proteggere Dati Sensibili in File Pdf"
    content: |
      GroupDocs.Redaction for Python via .NET offre alle tue app Python via .NET la possibilità di proteggere i documenti. Nascondi contenuti privati con pochi clic.
      
      1. Crea un oggetto Redactor e puntalo al file Pdf.
      2. Regola le impostazioni per soddisfare le tue esigenze di redazione.
      3. Seleziona quale area dell'immagine coprire e scegli un colore di sovrapposizione.
      4. Elabora e salva il file redatto.
   
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

        # Coprire parti di immagini riservate in PDF

        # Imposta il colore e le dimensioni della sovrapposizione
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Scegli l'area da redigere
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Carica il documento utilizzando Redactor
        with gr.Redactor("input.pdf") as redactor:

            # Applica la sovrapposizione e salva il documento
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nascondi Contenuti Sensibili nei Documenti"
  description: "Con GroupDocs.Redaction for Python via .NET, puoi nascondere o eliminare dati in diversi formati di file. Proteggi informazioni sensibili mantenendo i documenti puliti e condivisibili."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Funzionalità Chiave di Redazione"
  features:
    # feature loop
    - title: "Cerca & Modifica Testo"
      content: "Trova e modifica testo sensibile nel tuo documento per proteggere informazioni private."

    # feature loop
    - title: "Coprire Aree Immagini"
      content: "Posiziona sovrapposizioni su immagini o parti selezionate per nascondere visuali riservate."

    # feature loop
    - title: "Gestisci Metadati"
      content: "Rimuovi o modifica i metadati nascosti per prevenire perdite di dati indesiderate."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Nascondere Informazioni Sulle Immagini con Sovrapposizioni"
      content: |
        Questo esempio mostra come coprire dati sensibili delle immagini nei documenti utilizzando sovrapposizioni.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Regola le impostazioni della sovrapposizione: dimensioni, colore e posizione
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Seleziona l'area dell'immagine nella prima pagina
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Apri il file per la redazione
          with gr.Redactor("source.pdf") as redactor:

              # Applica la sovrapposizione per nascondere l'immagine
              result = redactor.apply(redaction)

              # Salva il file redatto
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
    title: "Proteggi File PDF con Python"
    exclude: "PDF"
    description: "Utilizza Python per nascondere o eliminare dati sensibili nei file PDF. Una soluzione pratica per garantire la sicurezza di documenti aziendali e privati."
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