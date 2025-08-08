
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: it
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Nascondi Immagini in JPEG con Sovrapposizioni Utilizzando C#"
head_description: "Proteggi immagini private nei file JPEG con GroupDocs.Redaction for .NET aggiungendo sovrapposizioni colorate. Mantieni al sicuro informazioni sensibili senza cambiare il layout del file."

############################# Header ############################
title: "Coprire Immagini Sensibili nei File JPEG con Sovrapposizioni Utilizzando .NET" 
description: "Mantieni al sicuro le tue immagini personali e aziendali nei file JPEG utilizzando C#. I nostri strumenti semplici rendono facile e affidabile la protezione dei file."
subtitle: "Principali Funzionalità di GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET offre a C# sviluppatori strumenti per nascondere o eliminare contenuti nei file JPEG. Copri testo, immagini e metadati per mantenere i tuoi documenti sicuri.

############################# Steps ############################
steps:
    enable: true
    title: "Proteggi Dati Sensibili nei File Jpeg"
    content: |
      GroupDocs.Redaction for .NET è progettato per aiutare le tue app .NET a nascondere contenuti privati in modo rapido.
      
      1. Crea un oggetto Redactor e fornisci il percorso del tuo file Jpeg.
      2. Imposta le opzioni di redazione in base alle tue necessità.
      3. Contrassegna l'area dell'immagine e scegli il colore della sovrapposizione.
      4. Esegui la redazione e salva il tuo file protetto.
   
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
        // Coprire contenuti dell'immagine nei file JPEG

        // Carica il file utilizzando Redactor
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // Definisci dimensioni e colori della sovrapposizione
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Seleziona l'area da nascondere
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Applica sovrapposizione e salva il file
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redigi Qualsiasi Contenuto nei Documenti"
  description: "GroupDocs.Redaction for .NET rende semplice nascondere o rimuovere contenuti in vari formati di file. Proteggi informazioni sensibili mantenendo i tuoi file ordinati e facili da condividere."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Strumenti di Redazione per il Controllo Completo"
  features:
    # feature loop
    - title: "Modifica Testo Ovunque"
      content: "Cerca e sostituisci testo sensibile in tutto il tuo documento per proteggere i dati privati."

    # feature loop
    - title: "Maschera Immagini"
      content: "Applica sovrapposizioni a immagini o aree specifiche per mantenere visivi sensibili nascosti."

    # feature loop
    - title: "Pulisci Metadati"
      content: "Rimuovi o aggiorna metadati nascosti per prevenire perdite accidentali di dati."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Nascondi Dati Immagine con Sovrapposizioni"
      content: |
        Questo esempio dimostra come mascherare aree sensibili delle immagini nei file.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Apri il file per la modifica
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // Configura dimensioni, posizione e colore della sovrapposizione
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Scegli un'area specifica nell'immagine della pagina uno
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Applica la sovrapposizione all'immagine
              redactor.Apply(redaction);

              // Salva il file redatto
              var save_options = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_options);
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Proteggi File JPEG con le Redazioni di .NET"
    exclude: "JPEG"
    description: "Con .NET, puoi facilmente nascondere o eliminare contenuti sensibili nei file JPEG. Una soluzione affidabile per mantenere i tuoi documenti professionali e sicuri."
    items: 
        # format loop 1
        - name: "Redazione PDF"
          format: "PDF"
          link: "/redaction/net/hide-image-content//pdf/"
          description: "Formato Documento Portabile Adobe"

        # format loop 2
        - name: "Redazione Word"
          format: "WORD"
          link: "/redaction/net/hide-image-content//word/"
          description: "Documenti MS Word e Open Office"
          
        # format loop 3
        - name: "Redazione Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-image-content//excel/"
          description: "Fogli di calcolo MS Excel e Open Office"

        # format loop 4
        - name: "Redazione PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-image-content//powerpoint/"
          description: "Presentazioni MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redazione Immagine"
          format: "IMAGE"
          link: "/redaction/net/hide-image-content//image/"
          description: "Formati di immagine popolari"

        # format loop 6
        - name: "Redazione Foto"
          format: "PHOTO"
          link: "/redaction/net/hide-image-content//photo/"
          description: "Formati fotografici"

        # format loop 7
        - name: "Redazione DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-image-content//docx/"
          description: "Documento Open XML di Microsoft Word"
          
        # format loop 8
        - name: "Redazione XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-image-content//xlsx/"
          description: "Foglio di calcolo Open XML di Microsoft Excel"
          
        # format loop 9
        - name: "Redazione PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-image-content//pptx/"
          description: "Presentazione Open XML di PowerPoint"

        # format loop 10
        - name: "Redazione JPEG"
          format: "JPEG"
          link: "/redaction/net/hide-image-content//jpeg/"
          description: "Immagine JPEG"


---