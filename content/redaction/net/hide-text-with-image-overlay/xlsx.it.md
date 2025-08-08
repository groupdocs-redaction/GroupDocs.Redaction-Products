
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: it
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Nascondi Testo in XLSX con Sovrapposizioni C#"
head_description: "GroupDocs.Redaction for .NET aiuta a nascondere il testo nei file XLSX utilizzando scatole colorate. Mantieni le informazioni al sicuro senza cambiare il formato del tuo documento."

############################# Header ############################
title: "Maschera il Testo nei file XLSX Utilizzando Sovrapposizioni e .NET" 
description: "Usa C# e GroupDocs.Redaction for .NET per aggiungere semplici sovrapposizioni che bloccano il testo sensibile nei tuoi file XLSX."
subtitle: "Caratteristiche di GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Come GroupDocs.Redaction for .NET Aiuta"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET consente agli sviluppatori che utilizzano C# di nascondere contenuti indesiderati nei file XLSX. Block out anything—from words to pictures—across different file types.

############################# Steps ############################
steps:
    enable: true
    title: "Mantieni sicure le informazioni sensibili nei documenti Xlsx"
    content: |
      GroupDocs.Redaction for .NET aiuta gli sviluppatori .NET a proteggere i file. Nascondi contenuti privati con sole poche righe di codice.
      
      1. Crea un nuovo oggetto Redactor con il percorso del tuo file Xlsx.
      2. Regola le impostazioni di redazione secondo necessità.
      3. Aggiungi un modello di ricerca e scegli un colore per il blocco di sovrapposizione.
      4. Esegui la redazione e salva il tuo file.
   
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
        // Copri testo privato in XLSX utilizzando sovrapposizioni

        // Carica il file con Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Scegli come funzionerà la redazione
            // Inserisci testo da nascondere e seleziona colore di sovrapposizione
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Elabora il file e salva le modifiche
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Funzionalità di redazione intelligente"
  description: "Usa GroupDocs.Redaction for .NET per cancellare o nascondere contenuti in vari tipi di file. Mantieni i dettagli privati lontano dalla vista pubblica."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Strumenti di redazione pratici"
  features:
    # feature loop
    - title: "Cambia qualsiasi testo"
      content: "Cerca e aggiorna qualsiasi stringa nel documento per proteggere i dati."

    # feature loop
    - title: "Nascondi contenuto delle immagini"
      content: "Aggiungi quadrati o rettangoli per coprire parti sensibili delle immagini."

    # feature loop
    - title: "Ripulisci i metadati"
      content: "Rimuovi o sovrascrivi i dettagli di file di sfondo prima della condivisione."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Corrispondi e nascondi con regex"
      content: |
        Scopri come rilevare e redigere contenuti utilizzando espressioni regolari
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Apri il documento target
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Imposta modello e colore di sovrapposizione
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Applica le regole di redazione
              redactor.Apply(redaction);

              // Esporta la versione redatta
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
    title: "Usa .NET per Nascondere Info nei file XLSX"
    exclude: "XLSX"
    description: "Aggiungi sovrapposizioni o rimuovi parti dei tuoi documenti XLSX per proteggere dettagli sensibili con l'aiuto di .NET."
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