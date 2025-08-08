
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: it
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Maschera Immagini Sensibili in POWERPOINT Usando Sovrapposizioni con Python"
head_description: "Con GroupDocs.Redaction for Python via .NET, puoi nascondere aree di immagini private nei file POWERPOINT utilizzando sovrapposizioni. Proteggi informazioni senza cambiare il design del documento."

############################# Header ############################
title: "Coprire Immagini Private nei Documenti POWERPOINT Usando Sovrapposizioni Python" 
description: "Mantieni al sicuro immagini sensibili nei file POWERPOINT con Python. Strumenti semplici progettati per una forte protezione dei dati."
subtitle: "Scopri le Caratteristiche di GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Cosa è GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET fornisce agli sviluppatori Python strumenti per nascondere o eliminare contenuti nei file POWERPOINT. Proteggi i tuoi documenti coprendo testo, immagini e metadati.

############################# Steps ############################
steps:
    enable: true
    title: "Mantieni i Tuoi Documenti Powerpoint Sicuri"
    content: |
      GroupDocs.Redaction for Python via .NET rende facile per le app Python via .NET proteggere contenuti sensibili nei documenti.
      
      1. Crea un oggetto Redactor e carica il file Powerpoint.
      2. Modifica le opzioni di redazione per soddisfare i tuoi requisiti.
      3. Seleziona l'area dell'immagine e scegli un colore di sovrapposizione.
      4. Applica la redazione e salva il documento.
   
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

        # Maschera contenuti immagine in file POWERPOINT

        # Imposta dimensioni e colore della sovrapposizione
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Scegli l'area da nascondere
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Carica il file con Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Applica la sovrapposizione e salva il file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Proteggere Dati Privati nei Documenti"
  description: "GroupDocs.Redaction for Python via .NET ti consente di nascondere o eliminare contenuti sensibili in diversi formati di file. Mantieni i tuoi file sicuri e pronti per la condivisione."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Funzionalità Completa di Redazione"
  features:
    # feature loop
    - title: "Cerca e Modifica Testo"
      content: "Trova testi privati nei documenti e sostituiscili per garantire la privacy."

    # feature loop
    - title: "Maschera Aree Immagini"
      content: "Coprire l'intera immagine o sezioni selezionate con sovrapposizioni per mantenerli privati."

    # feature loop
    - title: "Elimina Metadati"
      content: "Elimina metadati per evitare la condivisione accidentale di informazioni."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Usa Sovrapposizioni per Nascondere Dati Immagine"
      content: |
        Questo esempio mostra come proteggere immagini sensibili nei documenti utilizzando sovrapposizioni.
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

          # Contrassegna l'area dell'immagine nella prima pagina
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Apri il documento per la redazione
          with gr.Redactor("source.pptx") as redactor:

              # Applica sovrapposizione per mascherare i dati
              result = redactor.apply(redaction)

              # Salva il documento finale
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
    title: "Mantieni Sicuri i File POWERPOINT con Python"
    exclude: "POWERPOINT"
    description: "Con Python, puoi facilmente nascondere o rimuovere dati sensibili nei file POWERPOINT. Soluzione fidata per proteggere documenti importanti."
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