
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: it
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Maschera Immagini in PPTX con Sovrapposizioni Usando Python"
head_description: "Utilizza GroupDocs.Redaction for Python via .NET per mascherare immagini sensibili nei file PPTX con sovrapposizioni colorate. Proteggi dati importanti mantenendo intatto il formato del documento."

############################# Header ############################
title: "Maschera Immagini Private nei Documenti PPTX con Sovrapposizioni Python" 
description: "Proteggi visuali sensibili nei file PPTX utilizzando Python. I nostri strumenti semplificano la redazione delle immagini."
subtitle: "Caratteristiche di GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET offre agli sviluppatori Python strumenti semplici per nascondere o eliminare contenuti nei file PPTX. Redigi testo, immagini e metadati in vari formati.

############################# Steps ############################
steps:
    enable: true
    title: "Salvaguardare Dati Sensibili in File Pptx"
    content: |
      GroupDocs.Redaction for Python via .NET aiuta le app Python via .NET a proteggere i documenti coprendo contenuti sensibili.
      
      1. Crea un'istanza di Redactor e carica il file Pptx.
      2. Imposta le opzioni di redazione secondo le tue necessità.
      3. Seleziona l'area dell'immagine e assegna un colore di sovrapposizione.
      4. Applica la sovrapposizione e salva il file.
   
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

        # Maschera regioni di immagini private in PPTX

        # Imposta colore e dimensione della sovrapposizione
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Contrassegna l'area da redigere
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Apri il documento con Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Applica la sovrapposizione e salva il file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Funzionalità per la Redazione dei Documenti"
  description: "GroupDocs.Redaction for Python via .NET consente di nascondere o rimuovere dati riservati in molti tipi di documento. Mantieni i file puliti e protetti."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Gamma Completa di Strumenti di Redazione"
  features:
    # feature loop
    - title: "Cerca e Sostituisci Testo"
      content: "Trova testo sensibile e redigilo per proteggere le tue informazioni."

    # feature loop
    - title: "Maschera Aree Immagini"
      content: "Coprire immagini intere o sezioni specifiche con sovrapposizioni per nascondere informazioni private."

    # feature loop
    - title: "Pulisci Metadati"
      content: "Elimina o modifica metadati nascosti per evitare di esporre dati privati."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Coprire Contenuto Immagine con Sovrapposizioni Colorate"
      content: |
        Scopri come mascherare parti sensibili delle immagini nei documenti utilizzando sovrapposizioni.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Definisci le proprietà della sovrapposizione: dimensioni, posizione, colore
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Scegli l'area dell'immagine nella prima pagina
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Carica il documento
          with gr.Redactor("source.pptx") as redactor:

              # Sovrapponi l'area selezionata
              result = redactor.apply(redaction)

              # Salva il documento protetto
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
    title: "Maschera Contenuto nei File PPTX con Python"
    exclude: "PPTX"
    description: "Utilizza Python per nascondere o eliminare contenuti privati nei file PPTX. Uno strumento affidabile per la sicurezza dei documenti."
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