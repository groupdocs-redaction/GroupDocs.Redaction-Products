
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: it
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Nascondere Contenuti in EXCEL Utilizzando Sovrapposizioni Python"
head_description: "Con GroupDocs.Redaction for Python via .NET, puoi coprire il testo nei file EXCEL utilizzando sovrapposizioni colorate solide. Un modo semplice per proteggere contenuti privati."

############################# Header ############################
title: "Overlay delle Sovrapposizioni Testuali per EXCEL in Python" 
description: "Scrivi codice Python per nascondere testo e proteggere informazioni nei tuoi file EXCEL. Mantieni i tuoi documenti sicuri e puliti."
subtitle: "Cosa Ottieni con GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Perché Usare GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET è costruito per gli sviluppatori Python che devono nascondere o rimuovere contenuti nei file EXCEL. Lavorare con testi, immagini e metadati è semplice.

############################# Steps ############################
steps:
    enable: true
    title: "Nascondere Dati Sensibili in Excel"
    content: |
      GroupDocs.Redaction for Python via .NET rende facile per gli sviluppatori Python via .NET preparare documenti prima di condividerli.
      
      1. Crea un Redactor e apri il tuo file Excel.
      2. Scegli le impostazioni di redazione che si adattano al tuo compito.
      3. Inserisci il testo o la frase da coprire e scegli un colore.
      4. Applica la redazione e salva il file.
   
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

        # Utilizza sovrapposizioni per nascondere testo in EXCEL

        # Scegli le tue impostazioni di redazione
        # Scegli cosa nascondere e un colore da utilizzare
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Inizia caricando il tuo file con Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Applica le modifiche e salva il file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Strumenti Utili per Redigere Dati"
  description: "GroupDocs.Redaction for Python via .NET ti consente di nascondere o rimuovere dati nei documenti mantenendo chiari layout e contenuti."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Costruito per proteggere i tuoi file"
  features:
    # feature loop
    - title: "Nascondere o Modificare Testo"
      content: "Trova e sostituisci eventuali parti del testo che devono essere nascoste."

    # feature loop
    - title: "Coprire Immagini e Visivi"
      content: "Aggiungi sovrapposizioni per rimuovere parti sensibili di immagini o grafici."

    # feature loop
    - title: "Pulisci i Metadati Nascosti"
      content: "Rimuovi informazioni di sfondo come nomi dell'autore o timestamp."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redigi Utilizzando Regex"
      content: |
        Scopri come utilizzare modelli regex per trovare e nascondere contenuti.
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

          # Apri il file che desideri sistemare
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
    title: "Proteggi EXCEL con le Redazioni di Python"
    exclude: "EXCEL"
    description: "Nascondi contenuti in EXCEL utilizzando sovrapposizioni quadrate o rimuovili completamente con le funzionalità di Python."
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