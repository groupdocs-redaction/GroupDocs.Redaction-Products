
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: it
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Nascondere Testo in XLSX Utilizzando Python e Sovrapposizioni"
head_description: "GroupDocs.Redaction for Python via .NET ti aiuta a nascondere il testo nei file XLSX aggiungendo sovrapposizioni colorate. Mantieni i tuoi dati privati senza cambiare il layout del file."

############################# Header ############################
title: "Nascondere Testo nei File XLSX Utilizzando Sovrapposizioni Python" 
description: "Proteggi il testo sensibile nei tuoi file XLSX con GroupDocs.Redaction for Python via .NET e Python posizionando semplici sovrapposizioni."
subtitle: "Cosa Ottieni con GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Cosa Può Fare GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET offre agli sviluppatori Python gli strumenti per nascondere o eliminare testo, immagini e altro nei file XLSX.

############################# Steps ############################
steps:
    enable: true
    title: "Proteggi i Dati nei File Xlsx"
    content: |
      GroupDocs.Redaction for Python via .NET consente agli sviluppatori Python via .NET di nascondere informazioni private con poche righe di codice.
      
      1. Inizia creando un Redactor e carica il tuo file Xlsx.
      2. Imposta le opzioni di redazione che funzionano per il tuo caso.
      3. Aggiungi il modello di testo che desideri nascondere e scegli un colore.
      4. Esegui la redazione e salva il tuo file.
   
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

        # Nascondi contenuti privati in XLSX con sovrapposizioni

        # Imposta preferenze di redazione
        # Scegli il testo da coprire e il colore della sovrapposizione
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Usa Redactor per caricare il tuo file
        with gr.Redactor("input.xslx") as redactor:

            # Redigi e salva il file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Strumenti Utili per Redigere Dati"
  description: "GroupDocs.Redaction for Python via .NET ti consente di nascondere o rimuovere contenuti in molti tipi di file. Mantieni informazioni personali o aziendali protette."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Opzioni di redazione facili da usare"
  features:
    # feature loop
    - title: "Trova e Modifica Testo"
      content: "Cerca testo specifico e sostituiscilo o nascondilo."

    # feature loop
    - title: "Coprire Contenuti Immaginari"
      content: "Disegna sovrapposizioni sulle immagini per oscurare aree private."

    # feature loop
    - title: "Rimuovi Metadata"
      content: "Sistema le informazioni di sfondo prima di condividere i tuoi file."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Nascondere Testo Utilizzando Modelli Regex"
      content: |
        Questo esempio mostra come trovare e nascondere contenuti utilizzando espressioni regolari.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Aggiungi il modello regex e le impostazioni di colore
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Apri il file che desideri modificare
          with gr.Redactor("source.xslx") as redactor:

              # Applica la redazione
              result = redactor.apply(redaction)

              # Salva la versione redatta
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
    title: "Nascondi Dati in XLSX con Python"
    exclude: "XLSX"
    description: "Usa gli strumenti Python per nascondere o rimuovere parti sensibili dei tuoi file XLSX rapidamente e senza problemi."
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