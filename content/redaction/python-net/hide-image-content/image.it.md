
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: it
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Maschera Immagini in IMAGE con Sovrapposizioni Usando Python"
head_description: "Nascondi contenuti d'immagine sensibili in file IMAGE utilizzando sovrapposizioni colorate con GroupDocs.Redaction for Python via .NET. Mantieni intatto il layout originale del tuo file mentre proteggi visuali importanti."

############################# Header ############################
title: "Coprire Immagini Sensibili nei File IMAGE Usando Sovrapposizioni Python" 
description: "Proteggi dati di immagini personali e aziendali nei file IMAGE utilizzando Python. Strumenti semplici per una protezione rapida ed efficace."
subtitle: "Funzionalità di GroupDocs.Redaction for Python via .NET di cui avrai bisogno" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET offre agli sviluppatori Python strumenti per nascondere o rimuovere contenuti nei file IMAGE. Sicurezza documentale tramite copertura di testo, immagini e metadati.

############################# Steps ############################
steps:
    enable: true
    title: "Coprire Contenuti Privati in File Image"
    content: |
      GroupDocs.Redaction for Python via .NET rende facile nascondere dati sensibili nelle tue applicazioni Python via .NET.
      
      1. Inizializza un Redactor e punta al tuo file Image.
      2. Configura le impostazioni di redazione secondo necessità.
      3. Scegli le sezioni dell'immagine e definisci i colori di sovrapposizione.
      4. Elabora il file e salva la versione redatta.
   
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

        # Coprire contenuti d'immagine in IMAGE

        # Specifica dimensioni e colori della sovrapposizione
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Seleziona l'area da nascondere
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Carica il file usando Redactor
        with gr.Redactor("input.png") as redactor:

            # Applica la sovrapposizione e salva il file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Proteggi Dati Attraverso Tipi di Documento"
  description: "GroupDocs.Redaction for Python via .NET ti consente di nascondere o eliminare contenuti sensibili in diversi formati di file. Mantieni i tuoi documenti puliti, sicuri e facili da condividere."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Strumenti per Controllare Ogni Redazione"
  features:
    # feature loop
    - title: "Cerca e Sostituisci Testo Sensibile"
      content: "Scansiona i tuoi documenti per sostituire testo privato e mantenere i dati sicuri."

    # feature loop
    - title: "Maschera Immagini con Sovrapposizioni"
      content: "Aggiungi sovrapposizioni colorate per nascondere immagini o specifiche parti di esse."

    # feature loop
    - title: "Rimuovi Metadati"
      content: "Elimina o modifica metadati per garantire l'assenza di perdite di dati privati."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Nascondere Contenuto Immagine con Sovrapposizioni"
      content: |
        Questo esempio mostra come applicare sovrapposizioni per proteggere dati sensibili dell'immagine in un documento.
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

          # Seleziona un'area dell'immagine nella pagina uno
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Apri il file per la redazione
          with gr.Redactor("source.png") as redactor:

              # Applica la sovrapposizione per mascherare il contenuto dell'immagine
              result = redactor.apply(redaction)

              # Salva il file dopo la redazione
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
    title: "Proteggi Contenuti nei File IMAGE con Python"
    exclude: "IMAGE"
    description: "Con Python, puoi nascondere o eliminare informazioni sensibili nei file IMAGE. Un modo affidabile per mantenere i documenti sicuri e professionali."
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