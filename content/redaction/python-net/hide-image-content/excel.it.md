
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: it
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Coprire Immagini in EXCEL Utilizzando Sovrapposizioni in Python"
head_description: "Proteggi aree di immagine sensibili nei file EXCEL con GroupDocs.Redaction for Python via .NET. Aggiungi sovrapposizioni per nascondere visuali private senza cambiare l'aspetto del documento."

############################# Header ############################
title: "Proteggi Immagini Sensibili nei File EXCEL con Sovrapposizioni Usando Python" 
description: "Metti al sicuro le tue immagini personali e aziendali nei file EXCEL con Python. Ottieni una protezione affidabile con i nostri strumenti semplici."
subtitle: "Caratteristiche Chiave di GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET fornisce agli sviluppatori Python strumenti semplici per nascondere o rimuovere contenuti nei file EXCEL. Copri immagini, testo e metadati per proteggere i tuoi documenti.

############################# Steps ############################
steps:
    enable: true
    title: "Proteggi Dati nei File Excel"
    content: |
      GroupDocs.Redaction for Python via .NET aiuta le app Python via .NET a nascondere informazioni private nei documenti in modo rapido ed efficace.
      
      1. Crea un'istanza di Redactor e carica il file Excel.
      2. Imposta opzioni di redazione secondo necessità.
      3. Seleziona l'area dell'immagine e scegli il colore della sovrapposizione.
      4. Applica la redazione e salva il file modificato.
   
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

        # Coprire aree delle immagini in EXCEL

        # Regola dimensioni e colore della sovrapposizione
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Scegli l'area da coprire
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Apri il documento con Redactor
        with gr.Redactor("input.xlsx") as redactor:

            # Applica sovrapposizione e salva il file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nascondere o Rimuovere Contenuti Sensibili"
  description: "GroupDocs.Redaction for Python via .NET ti consente di proteggere i documenti nascondendo o eliminando dati sensibili in vari formati. Mantieni i file sicuri e chiari per la condivisione."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Strumenti di Redazione Ricchi di Funzionalità"
  features:
    # feature loop
    - title: "Modifica Testo in Sicurezza"
      content: "Trova testo sensibile nei documenti e sostituiscilo per proteggere la privacy."

    # feature loop
    - title: "Nascondi Parti dell'Immagine"
      content: "Coprire aree selezionate delle immagini o visuali intere con sovrapposizioni."

    # feature loop
    - title: "Elimina Metadati Nascosti"
      content: "Elimina campi di metadati invisibili per evitare perdite di dati."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Usa Sovrapposizioni per Nascondere Dati Immagine"
      content: |
        Questo esempio mostra come applicare sovrapposizioni per coprire immagini sensibili nei documenti.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Imposta colore, dimensione e posizione della sovrapposizione
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Seleziona una sezione specifica dell'immagine nella pagina uno
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Carica il documento per la modifica
          with gr.Redactor("source.xlsx") as redactor:

              # Applica la sovrapposizione per nasconderla
              result = redactor.apply(redaction)

              # Salva il file aggiornato
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
    title: "Nascondi Contenuto in EXCEL con Python"
    exclude: "EXCEL"
    description: "Con Python, puoi nascondere o eliminare informazioni sensibili nei file EXCEL. Un modo efficace per garantire la sicurezza dei documenti."
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