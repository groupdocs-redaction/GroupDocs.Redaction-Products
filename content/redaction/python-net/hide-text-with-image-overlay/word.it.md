
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: it
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Nascondere Testo in WORD Utilizzando Sovrapposizioni Python"
head_description: "Con GroupDocs.Redaction for Python via .NET, è semplice nascondere testo privato nei documenti WORD utilizzando blocchi di colore. Il tuo layout rimane intatto."

############################# Header ############################
title: "Usa Sovrapposizioni per Nascondere Testo in WORD con Python" 
description: "Proteggi informazioni chiave nei documenti WORD posizionando blocchi di sovrapposizione utilizzando Python e GroupDocs.Redaction for Python via .NET."
subtitle: "Cosa Puoi Fare con GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Scopri GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       Con GroupDocs.Redaction for Python via .NET, gli sviluppatori Python possono nascondere o eliminare contenuti nei documenti WORD—come nomi, numeri e altro.

############################# Steps ############################
steps:
    enable: true
    title: "Redigi Contenuti Privati in Word"
    content: |
      GroupDocs.Redaction for Python via .NET rende facile per gli sviluppatori Python via .NET nascondere rapidamente dati sensibili.
      
      1. Crea un Redactor e carica il tuo file Word.
      2. Configura le opzioni di redazione.
      3. Seleziona il testo da nascondere e il colore della sovrapposizione.
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

        # Coprire il testo in WORD utilizzando sovrapposizioni

        # Scegli cosa redigere
        # Inserisci il testo e imposta il colore
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Carica il file utilizzando Redactor
        with gr.Redactor("input.docx") as redactor:

            # Redigi e salva
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Altri Modi per Nascondere Informazioni"
  description: "Usa GroupDocs.Redaction for Python via .NET per pulire i tuoi file nascondendo contenuti visibili e nascosti senza cambiare come appaiono."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Caratteristiche focalizzate sulla privacy"
  features:
    # feature loop
    - title: "Nascondere o Sostituire Testo"
      content: "Proteggi informazioni importanti rimuovendo o sostituendo parole."

    # feature loop
    - title: "Coprire Immagini"
      content: "Oscura immagini sensibili con forme solide."

    # feature loop
    - title: "Elimina Dati Nascosti"
      content: "Rimuovi i metadati che potrebbero rivelare informazioni di sistema o utente."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Trova e Nascondi Testo con Regex"
      content: |
        Questo esempio mostra come utilizzare le espressioni regolari per matchare e nascondere contenuti.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Imposta il modello e il colore della sovrapposizione
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Apri il file da modificare
          with gr.Redactor("source.docx") as redactor:

              # Applica la redazione
              result = redactor.apply(redaction)

              # Salva la tua copia aggiornata
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
    title: "Proteggi i Contenuti WORD con Python"
    exclude: "WORD"
    description: "Usa Python per nascondere o eliminare informazioni sensibili nei file WORD senza alterare la struttura o il layout."
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