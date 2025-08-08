
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: it
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Copri Testo Sensibile in DOCX Utilizzando Sovrapposizioni e C#"
head_description: "Usa GroupDocs.Redaction for .NET per proteggere testo privato in file DOCX con semplici sovrapposizioni quadrate. Mantieni il layout del tuo documento invariato e i tuoi dati nascosti."

############################# Header ############################
title: "Copri Testo in DOCX con Sovrapposizioni Utilizzando .NET" 
description: "Nascondi contenuti sensibili nei tuoi documenti DOCX utilizzando codice C#. Ottimo per la protezione di documenti legali, aziendali o personali."
subtitle: "Funzionalità di GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Cos'è GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET aiuta gli sviluppatori C# a nascondere o cancellare contenuti privati nei file DOCX. Usalo per bloccare testo, immagini e metadati in diversi formati di file.

############################# Steps ############################
steps:
    enable: true
    title: "Rimuovi dati privati dai documenti Docx"
    content: |
      GroupDocs.Redaction for .NET aiuta gli sviluppatori .NET a ripulire i documenti in poche righe di codice.
      
      1. Crea un Redactor e fornisci il tuo percorso file.
      2. Definisci come dovrebbe funzionare la redazione.
      3. Inserisci il testo da nascondere e scegli il colore della sovrapposizione.
      4. Redigi il file e salvalo.
   
    code:
      platform: "net"
      copy_title: "Copia"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Redazioni di esempio"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "clicca per copiare"
        copy_done: "copiato"
      links:
        #  loop
        - title: "Altri esempi"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "Documentazione"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // Nascondi testo in DOCX utilizzando blocchi di sovrapposizione

        // Crea un Redactor e carica il file
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Imposta le tue preferenze di redazione
            // Inserisci il testo e imposta il colore del blocco
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Redigi e salva il documento aggiornato
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Maggiori modi per ripulire i documenti"
  description: "Con GroupDocs.Redaction for .NET, redigi diversi tipi di file per mantenere il tuo contenuto sicuro e professionale."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Redazione intelligente integrata"
  features:
    # feature loop
    - title: "Modifica o rimuovi testo"
      content: "Trova frasi specifiche e nascondile o sostituiscile."

    # feature loop
    - title: "Nascondi aree delle immagini"
      content: "Copri punti sensibili in foto o pagine scannerizzate."

    # feature loop
    - title: "Cancella metadati nascosti"
      content: "Elimina informazioni invisibili che potrebbero esporre dati utente o di sistema."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex per redigere contenuti"
      content: |
        Scopri come le espressioni regolari possono trovare e nascondere parole sensibili
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Apri il file target
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Imposta modello e colore
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Applica la logica di redazione
              redactor.Apply(redaction);

              // Esporta il documento redatto
              var save_opt = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_opt);
          }
          ```
        platform: "net"
        copy_title: "Copia"
        install:
          command: "dotnet add package GroupDocs.Redaction"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "Documentazione"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "Pronto per iniziare?"
  description: "Prova le funzionalità di GroupDocs.Redaction gratuitamente o richiedi una licenza"
  items:
    #  loop
    - title: "Download Nuget"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "Licenze"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Nascondi Contenuti in DOCX con .NET"
    exclude: "DOCX"
    description: "Proteggi dati sensibili nei documenti DOCX coprendoli con sovrapposizioni o rimuovendoli completamente utilizzando gli strumenti di .NET."
    items: 
        # format loop 1
        - name: "Redazione PDF"
          format: "PDF"
          link: "/redaction/net/hide-text-with-image-overlay//pdf/"
          description: "Formato Documento Portabile Adobe"

        # format loop 2
        - name: "Redazione Word"
          format: "WORD"
          link: "/redaction/net/hide-text-with-image-overlay//word/"
          description: "Documenti MS Word e Open Office"
          
        # format loop 3
        - name: "Redazione Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-text-with-image-overlay//excel/"
          description: "Fogli di calcolo MS Excel e Open Office"

        # format loop 4
        - name: "Redazione PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-text-with-image-overlay//powerpoint/"
          description: "Presentazioni MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redazione DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-text-with-image-overlay//docx/"
          description: "Documento Open XML di Microsoft Word"
          
        # format loop 6
        - name: "Redazione XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-text-with-image-overlay//xlsx/"
          description: "Foglio di calcolo Open XML di Microsoft Excel"
          
        # format loop 7
        - name: "Redazione PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-text-with-image-overlay//pptx/"
          description: "Presentazione Open XML di PowerPoint"


---