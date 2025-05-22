---
############################# Static ############################
layout: "product"
date: 2021-04-27T09:31:06+03:00
draft: false

product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "API di redazione Python via .NET | Nascondi testo privato da PDF Word Excel immagini"
head_description: "API di redazione dei documenti per Python. Modifica, nascondi o rimuovi contenuti sensibili da PDF, Microsoft Word, Excel, presentazioni e immagini raster."

############################# Header ############################
title: "Proteggi i dati classificati tramite l'API di redazione"
description: "Modifica, nascondi o rimuovi contenuti e metadati sensibili da documenti, fogli di lavoro, presentazioni, PDF e file di immagini raster utilizzando l'API Python."
button:
    enable: true

############################# SubMenu ############################
submenu:
    enable: true
    
    left:
        img_alt: "GroupDocs.Redaction for Python via .NET"
        image: "/border/groupdocs-redaction-python-net.svg"
        product: "GroupDocs.Redaction"
        platform: "Python via .NET"

    middle:
        button:
            # button loop
            - link: "#overview"
              text: "Panoramica"

            # button loop
            - link: "#features"
              text: "Caratteristiche"

            # button loop
            - link: "#support"
              text: "Supporto"

            # button loop
            - link: "https://products.groupdocs.app/redaction"
              text: "Dimostrazione dal vivo"

            # button loop
            - link: "https://purchase.groupdocs.com/pricing/redaction/net"
              text: "Prezzi"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/python-net/"
        link_buy: "https://purchase.groupdocs.com"

############################# Overview ############################
overview:
    enable: true
    content: |
      GroupDocs.Redaction for Python via .NET è una libreria API che consente di cancellare dati sensibili e classificati da vari formati di file, come Microsoft Word, Excel, PowerPoint e PDF. L'unica interfaccia indipendente dal formato della nostra API di redazione supporta la redazione di vari tipi, ad esempio la redazione del testo, la redazione dei metadati, la redazione delle annotazioni e la redazione di documenti tabulari. L'API GroupDocs.Redaction for Python via .NET consente inoltre di oscurare i file protetti da password. Puoi salvare il documento nel suo formato originale e creare un documento PDF igienizzato con immagini raster delle pagine originali.
    tabs:
      enable: true
      
      ## TAB ONE ##
      tab_one:
        description: |
          Di seguito è riportata una panoramica di GroupDocs.Redaction per Python:
      
        right:
          enable: true
          icon: "fab fa-html5"
          title: "Panoramica"
          content: |
            * Redigere testo
            * Redigere i metadati
            * Redigere annotazione
            * Redigere un documento tabulare
            * Oscurare i file protetti
            * Personalizzazione
      
      ## TAB TWO ##
      tab_two:
        description: |
          GroupDocs.Redaction per Python supporta i seguenti [formati di file di documento](https://docs.groupdocs.com/redaction/python-net/supported-document-formats):

        right:
          enable: true
          table:
            # table loop
            - title: "Redigere testo, metadati e commenti"
              content: |
                * **Word**: DOC, DOCX, DOT, ODT, DOTX, DOCM, DOTM, RTF
                * **Excel**: XLS, XLSX, XLT, XLTX, XLSM, XLTM, CSV
                * **PowerPoint**: PPT, PPTX, PPS, PPSX, POTX, PPTM, PPSM, POTM
                * **Layout fisso**: PDF
                * **Immagini raster**: JPG, BMP, PNG, GIF, TIFF

      ## TAB THREE ##
      tab_three:
        description: |
          GroupDocs.Redaction for Python via .NET supporta i seguenti sistemi operativi, framework e gestori di pacchetti:
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "Sistemi operativi"
              content: |
                * any 32-bit or 64-bit operating system where .NET 6 is installed
                * Mac OS X and so far only the ARM64 architecture
                * Microsoft Windows Server 2003 and later
                * Microsoft Windows XP (x64, x86)
                * Microsoft Windows Vista (x64, x86)
                * Microsoft Windows 7, 8, 8.1 (x64, x86)
                * Microsoft Windows 10 (x64, x86)
                * Microsoft Windows 11 (x64)

            # table loop
            - icon: "fas fa-code"
              title: "Framework supportati"
              content: |
                * .NET 6 or higher

        right:
          enable: true
          table:
            # table loop
            - icon: "fas fa-box"
              title: "Gestore pacchetti"
              content: |
                * PyPi

            # table loop
            - icon: "fas fa-tools"
              title: "Ambienti di sviluppo"
              content: |
                * Atom
                * Sublime
                * Microsoft Visual Code
                * Microsoft Visual Studio


############################# Features ############################
features:
    enable: true
    title: "GroupDocs.Redaction per Python Caratteristiche"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "Esegui una ricerca con distinzione tra maiuscole e minuscole per la redazione esatta"

      # feature loop
      - icon: "fas fa-eye"
        content: "Usa la casella di colore per nascondere il testo redatto invece della sostituzione delle stringhe"

      # feature loop
      - icon: "fas fa-bolt"
        content: "Individua e oscura qualsiasi testo utilizzando la ricerca con espressioni regolari"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "Filtra tutte o una combinazione di informazioni classificate sui metadati del documento"

      # feature loop
      - icon: "fas fa-code"
        content: "Cancella rapidamente le informazioni complete sui metadati di un documento specifico"

      # feature loop
      - icon: "fas fa-cloud"
        content: "Imposta l'ambito della redazione su un foglio di lavoro e/o una colonna specifici in Excel"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "Rimuovi tutti o specifici commenti e altre annotazioni dal documento"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "Cerca e rimuovi dati sensibili dal testo dell'annotazione"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "Capacità di lavorare con i propri formati e redazioni"

      # feature loop
      - icon: "fas fa-border-all"
        content: "Supporto per formati di immagini raster e redazioni di regioni di immagini"

      # feature loop
      - icon: "fas fa-wrench"
        content: "Specificare una serie di regole di redazione (policy) nel file XML"

      # feature loop
      - icon: "fas fa-columns"
        content: "Specifica l'intervallo di pagine e il livello di conformità PDF durante la conversione a PDF"

      # feature loop
      - icon: "fas fa-file-word"
        content: "Modifica o elimina EXIF metadati dai file di immagine"

      # feature loop
      - icon: "fas fa-envelope"
        content: "Oscura le immagini incorporate nei PDF, Word e nei documenti di presentazione"

      # feature loop
      - icon: "fas fa-print"
        content: "Salvare una politica di redazione come file XML"

    more_feature:
      # more_feature_loop
      - title: "Redigete i vostri dati classificati con facilità e controllo"
        content: |
          L'API GroupDocs.Redaction for Python via .NET ti garantisce il controllo completo su come nascondere o cancellare le tue importanti informazioni classificate dal documento supportato. Usare la nostra API di redazione è piuttosto semplice e diretto.  

          Nel seguente esempio, carichiamo un documento supportato, cancelliamo qualsiasi testo, abbinando «2 cifre, spazio o niente, 2 cifre, ancora spazio e 6 cifre» (ad esempio 12 34 567890) con una casella di colore blu utilizzando Python. Fatto ciò, salva il documento nel suo formato originale rinominandolo con l'aggiunta del suffisso «Redacted»:

          ```python
            import groupdocs.redaction as gr
            import groupdocs.redaction.redactions as grr
            import groupdocs.pydrawing as grd

            def run():

                # Specify the redaction options
                color = grd.Color.from_argb(255, 220, 20, 60)
                repl_opt = grr.ReplacementOptions(color)
                reg_red = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

                # Load the document to be redacted
                with gr.Redactor("source.pdf") as redactor:

                    # Apply the redaction
                    result = redactor.apply(reg_red)
        
                    # Save the redacted document
                    result_path = redactor.save()
          ```

############################# Support ############################
support:
    enable: true

############################# Solutions ############################
solutions:
    enable: true
    title: "GroupDocs.Redaction offre API per la visualizzazione di documenti per altri ambienti di sviluppo diffusi"

    solution:
        # solution loop
        - img_alt: "GroupDocs.Redaction for Python via .NET"
          image: "/border/groupdocs-redaction-net.svg"
          product: "GroupDocs.Redaction"
          platform: ".NET"
          link: "/redaction/net/"

        # solution loop
        - img_alt: "GroupDocs.Redaction for Java"
          image: "/border/groupdocs-redaction-java.svg"
          product: "GroupDocs.Redaction"
          platform: "Java"
          link: "/redaction/java/"

############################# Back to top ###############################
back_to_top:
  enable: true
---