
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: it
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Nascondi Contenuto Immagine in DOCX con Sovrapposizioni Usando Python"
head_description: "Proteggi immagini sensibili nei file DOCX aggiungendo sovrapposizioni con GroupDocs.Redaction for Python via .NET. Mantieni il layout del documento intatto mentre proteggi le visuali private."

############################# Header ############################
title: "Proteggi Immagini nei Documenti DOCX Usando Sovrapposizioni con Python" 
description: "Mantieni al sicuro visuali personali e aziendali nei file DOCX utilizzando Python. I nostri strumenti di redazione semplificano la sicurezza dei documenti."
subtitle: "Punti Salienti di GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET offre agli sviluppatori Python la possibilità di nascondere o eliminare contenuti nei file DOCX. Proteggi testo, immagini e metadati su più formati di documento.

############################# Steps ############################
steps:
    enable: true
    title: "Mantieni Dati Sicuri in File Docx"
    content: |
      GroupDocs.Redaction for Python via .NET semplifica alle applicazioni Python via .NET la protezione dei documenti. Redigi dati sensibili in pochi passaggi.
      
      1. Crea un'istanza di Redactor e specifica il percorso del file Docx.
      2. Imposta le preferenze di redazione per adattarle al tuo compito.
      3. Scegli la parte dell'immagine che desideri coprire e definisci il colore della sovrapposizione.
      4. Esegui il processo e salva il file redatto.
   
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

        # Nascondi parti sensibili delle immagini in DOCX

        # Definisci dimensioni e colore della sovrapposizione
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Specificare l'area da redigere
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Carica il file usando Redactor
        with gr.Redactor("input.docx") as redactor:

            # Applica la sovrapposizione e salva il tuo documento
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nascondere Contenuti nei Documenti"
  description: "Con GroupDocs.Redaction for Python via .NET, puoi nascondere o rimuovere informazioni sensibili da vari tipi di documenti. Mantieni i file sicuri e facilmente condivisibili."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Funzionalità Efficaci di Redazione"
  features:
    # feature loop
    - title: "Cerca & Modifica Testo"
      content: "Localizza parole sensibili e sostituiscile per proteggere i tuoi dati."

    # feature loop
    - title: "Coprire Immagini"
      content: "Applica sovrapposizioni a immagini complete o parti selezionate per proteggere i dati visivi."

    # feature loop
    - title: "Pulisci Metadati Nascosti"
      content: "Rimuovi o aggiorna i metadati per prevenire condivisioni accidentali di dati."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Nascondere Dati Immagine Utilizzando Sovrapposizioni"
      content: |
        Questo esempio mostra come proteggere aree sensibili delle immagini nei documenti con sovrapposizioni.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Imposta le impostazioni della sovrapposizione: colore, dimensione, posizione
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Scegli un'area da redigere nella pagina uno
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Carica il file che desideri redigere
          with gr.Redactor("source.docx") as redactor:

              # Applica la sovrapposizione per coprire l'immagine
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
    title: "Nascondere Dati Sensibili in File DOCX con Python"
    exclude: "DOCX"
    description: "Utilizza Python per coprire o eliminare dati privati nei file DOCX. Lo strumento giusto per mantenere sicuri i documenti riservati."
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