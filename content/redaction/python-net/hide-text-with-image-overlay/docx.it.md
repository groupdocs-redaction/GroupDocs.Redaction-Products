
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: it
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Nascondere Testo in DOCX con Sovrapposizioni Utilizzando Python"
head_description: "Proteggi il testo sensibile nei file DOCX con GroupDocs.Redaction for Python via .NET. Aggiungi semplici sovrapposizioni quadrate senza alterare il tuo layout."

############################# Header ############################
title: "Nascondere Contenuti in DOCX Utilizzando Python" 
description: "Usa Python per coprire contenuti privati nei file DOCX. Ideale per documenti legali, personali o aziendali."
subtitle: "Caratteristiche Chiave di GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Cosa è GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET aiuta gli sviluppatori Python a nascondere o rimuovere contenuti privati nei file DOCX. Puoi oscurare testi, immagini e persino metadati nascosti.

############################# Steps ############################
steps:
    enable: true
    title: "Mantieni Nascosto il Contenuto Privato in Docx"
    content: |
      Con GroupDocs.Redaction for Python via .NET, gli sviluppatori Python via .NET possono nascondere contenuti in poche righe.
      
      1. Crea un Redactor e apri il tuo file.
      2. Scegli le impostazioni di redazione.
      3. Inserisci il testo da nascondere e scegli un colore.
      4. Applica e salva la versione redatta.
   
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

        # Nascondi contenuti in DOCX utilizzando sovrapposizioni

        # Configura le tue opzioni di redazione
        # Definisci testo e colore della sovrapposizione
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Imposta il Redactor e carica il tuo file
        with gr.Redactor("input.docx") as redactor:

            # Redigi e salva il file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Strumenti di Redazione Extra"
  description: "GroupDocs.Redaction for Python via .NET supporta diversi tipi di file così puoi proteggere qualsiasi contenuto."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Caratteristiche di Redazione Integrate"
  features:
    # feature loop
    - title: "Trova e Modifica Testo"
      content: "Cerca parole chiave e nascondile o sostituiscile rapidamente."

    # feature loop
    - title: "Coprire Aree di Immagini"
      content: "Oscura aree sensibili in pagine scansionate o foto."

    # feature loop
    - title: "Pulisci i Metadata"
      content: "Rimuovi informazioni nascoste che potrebbero rivelare dettagli."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Trova Testo con Regex e Redigi"
      content: |
        Scopri come usare le espressioni regolari per trovare e nascondere testo.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Imposta modello e colore
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Apri il file da redigere
          with gr.Redactor("source.docx") as redactor:

              # Avvia il processo di redazione
              result = redactor.apply(redaction)

              # Salva il tuo documento pulito
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Proteggi i File DOCX con Python"
    exclude: "DOCX"
    description: "Coprire o eliminare contenuti sensibili in documenti DOCX utilizzando strumenti semplici da Python."
    items: 
        # format loop 1
        - name: "Redazione PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-text-with-image-overlay//pdf/"
          description: "Formato Documento Portabile Adobe"

        # format loop 2
        - name: "Redazione Word"
          format: "WORD"
          link: "/redaction/python-net/hide-text-with-image-overlay//word/"
          description: "Documenti MS Word e Open Office"
          
        # format loop 3
        - name: "Redazione Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-text-with-image-overlay//excel/"
          description: "Fogli di calcolo MS Excel e Open Office"

        # format loop 4
        - name: "Redazione PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-text-with-image-overlay//powerpoint/"
          description: "Presentazioni MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redazione DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-text-with-image-overlay//docx/"
          description: "Documento Open XML di Microsoft Word"
          
        # format loop 6
        - name: "Redazione XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-text-with-image-overlay//xlsx/"
          description: "Foglio di calcolo Open XML di Microsoft Excel"
          
        # format loop 7
        - name: "Redazione PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-text-with-image-overlay//pptx/"
          description: "Presentazione Open XML di PowerPoint"


---