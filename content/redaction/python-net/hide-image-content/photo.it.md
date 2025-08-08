
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: it
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Coprire Immagini nei File PHOTO Utilizzando Sovrapposizioni in Python"
head_description: "Applica sovrapposizioni per nascondere dati sensibili delle immagini nei file PHOTO con GroupDocs.Redaction for Python via .NET. Mantieni intatto il design del documento mentre proteggi informazioni private."

############################# Header ############################
title: "Nascondere Immagini Sensibili nei File PHOTO con Sovrapposizioni tramite Python" 
description: "Proteggi i contenuti d'immagine nei file PHOTO con Python. Strumenti semplici per una protezione rapida ed efficace."
subtitle: "Caratteristiche Principali di GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Cosa è GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET offre agli sviluppatori Python strumenti potenti per nascondere o eliminare contenuti nei file PHOTO. Proteggi dati significativi mascherando testo, immagini e metadati in modo efficace.

############################# Steps ############################
steps:
    enable: true
    title: "Proteggi Aree Immagine nei File Photo"
    content: |
      Utilizza GroupDocs.Redaction for Python via .NET per coprire facilmente aree di immagine sensibili nelle tue applicazioni Python via .NET.
      
      1. Crea un oggetto Redactor e collegalo al tuo file Photo.
      2. Configura le impostazioni di redazione per adattarle al tuo compito.
      3. Evidenzia le sezioni delle immagini e imposta i colori delle sovrapposizioni.
      4. Applica le redazioni e salva il file protetto.
   
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

        # Utilizza sovrapposizioni per nascondere dati d'immagine in PHOTO

        # Imposta dimensioni e colore della sovrapposizione
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Seleziona le aree dell'immagine da mascherare
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Apri il file con Redactor
        with gr.Redactor("input.jpeg") as redactor:

            # Applica la sovrapposizione e salva il file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redigi Dati Privati in Formati Multipli"
  description: "GroupDocs.Redaction for Python via .NET consente di coprire o eliminare contenuti sensibili in diversi tipi di file. Mantieni documenti puliti e sicuri da condividere."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Caratteristiche di Redazione Complete"
  features:
    # feature loop
    - title: "Trova e Modifica Testo"
      content: "Cerca testo sensibile e sostituiscilo per proteggere i tuoi documenti."

    # feature loop
    - title: "Nascondi Immagini con Sovrapposizioni"
      content: "Aggiungi sovrapposizioni per coprire immagini complete o sezioni specifiche."

    # feature loop
    - title: "Elimina Metadati"
      content: "Rimuovi metadati per prevenire perdite di dati."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Coprire Sezioni Immagine con Sovrapposizioni"
      content: |
        Questo esempio di codice mostra come mascherare aree di immagine sensibili in un documento utilizzando sovrapposizioni.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Definisci dimensioni, colore e posizionamento della sovrapposizione
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Seleziona un'area dell'immagine nella prima pagina
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Apri il file per la redazione
          with gr.Redactor("source.jpeg") as redactor:

              # Applica la sovrapposizione per nascondere il contenuto
              result = redactor.apply(redaction)

              # Salva il file protetto
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
    title: "Redigi Contenuti Sensibili in PHOTO con Python"
    exclude: "PHOTO"
    description: "Nascondi o elimina dati privati nei file PHOTO utilizzando Python. Un modo semplice per mantenere i documenti ufficiali sicuri."
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