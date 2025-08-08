
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: it
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Usa Sovrapposizioni per Nascondere Testo in WORD tramite C#"
head_description: "GroupDocs.Redaction for .NET facilita la copertura di testo sensibile in WORD con blocchi di colore. Mantieni il documento intatto mentre nascondi ciò che conta."

############################# Header ############################
title: "Redazione del Testo Sovrapposto nei File WORD con .NET" 
description: "Proteggi informazioni importanti nei file WORD utilizzando sovrapposizioni quadrate scritte in C#. Ideale per sicurezza e conformità."
subtitle: "Scopri cosa può fare GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Incontra GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       Gli sviluppatori che lavorano con C# possono usare GroupDocs.Redaction for .NET per nascondere o rimuovere parti dei documenti WORD. Nascondi nomi, numeri o altri dati in poche righe di codice.

############################# Steps ############################
steps:
    enable: true
    title: "Redigi dati privati nei file Word"
    content: |
      GroupDocs.Redaction for .NET aiuta gli sviluppatori .NET a rimuovere contenuti sensibili rapidamente. Segui questi passaggi per mettere in sicurezza i tuoi file.
      
      1. Inizializza un Redactor con il percorso al tuo file Word.
      2. Imposta le regole per redigere il contenuto.
      3. Scegli il modello testuale e il colore da usare per coprirlo.
      4. Applica la redazione e salva il tuo file redatto.
   
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
        // Redigi testo in WORD usando sovrapposizioni di immagini

        // Carica il tuo file con Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Definisci cosa deve essere redatto
            // Aggiungi il testo corrispondente e il colore della sovrapposizione
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Esegui la redazione e salva il file finale
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Strumenti extra di redazione"
  description: "Con GroupDocs.Redaction for .NET, puoi mantenere i file puliti rimuovendo informazioni visibili e nascoste mentre mantieni il layout intatto."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Output pulito e sicuro"
  features:
    # feature loop
    - title: "Sostituisci testo esposto"
      content: "Nascondi parole o frasi che potrebbero rivelare dati importanti."

    # feature loop
    - title: "Copri immagini"
      content: "Segna visivamente i contenuti sensibili con blocchi solidi."

    # feature loop
    - title: "Cancella informazioni nascoste"
      content: "Pulisci i metadati di sfondo per mantenere i file privati."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Nascondi testo corrispondente con regex"
      content: |
        Questo esempio mostra come usare le espressioni regolari per trovare e coprire contenuti sensibili
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Apri il documento da redigere
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Scegli modello e colore
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Esegui le regole di redazione
              redactor.Apply(redaction);

              // Salva e rivedi la copia redatta
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
    title: "Proteggi i tuoi file WORD Utilizzando .NET"
    exclude: "WORD"
    description: "Con .NET, puoi nascondere testo o cancellare metadati in formati WORD senza compromettere layout o formattazione."
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