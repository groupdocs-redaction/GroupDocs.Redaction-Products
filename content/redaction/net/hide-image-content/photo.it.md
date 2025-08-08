
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: it
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Aggiungi Sovrapposizioni per Nascondere Immagini in PHOTO Utilizzando C#"
head_description: "Nascondi contenuti di immagini sensibili nei file PHOTO con GroupDocs.Redaction for .NET applicando sovrapposizioni. Mantieni sicuri dati privati mantenendo il layout del documento intatto."

############################# Header ############################
title: "Nascondi Contenuto Immagine nei File PHOTO con Sovrapposizioni Utilizzando .NET" 
description: "Proteggi immagini aziendali e personali nei file PHOTO utilizzando C#. Strumenti facili da usare per una protezione efficace dei contenuti."
subtitle: "Principali Funzionalità di GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET offre agli sviluppatori C# un modo potente per nascondere o eliminare contenuti nei file PHOTO. Proteggi i documenti mascherando rapidamente testo sensibile, immagini e metadati.

############################# Steps ############################
steps:
    enable: true
    title: "Metti in Sicurezza Contenuti nei File Photo"
    content: |
      GroupDocs.Redaction for .NET rende veloce e semplice proteggere contenuti nelle tue app .NET.
      
      1. Crea un oggetto Redactor e puntalo al tuo file Photo.
      2. Regola le impostazioni di redazione secondo le tue necessità.
      3. Scegli aree delle immagini e imposta il colore della sovrapposizione.
      4. Elabora la redazione e salva il file protetto.
   
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
        // Applica sovrapposizioni per nascondere immagini in PHOTO

        // Carica il file con Redactor
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // Configura dimensioni e colore della sovrapposizione
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Seleziona l'area dell'immagine da nascondere
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Applica la sovrapposizione e salva le modifiche
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redigi Contenuti Sensibili con Facilità"
  description: "GroupDocs.Redaction for .NET ti aiuta a nascondere o eliminare contenuti sensibili in molti formati di file. Proteggi i dati privati mantenendo documenti puliti e facili da leggere."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Strumenti di Redazione Tutto-in-Uno"
  features:
    # feature loop
    - title: "Modifica Testo nei Documenti"
      content: "Cerca e sostituisci testo privato nei tuoi documenti per proteggere informazioni sensibili."

    # feature loop
    - title: "Nascondi Aree delle Immagini"
      content: "Aggiungi sovrapposizioni a immagini o parti selezionate per coprire elementi visivi sensibili."

    # feature loop
    - title: "Pulisci Metadati"
      content: "Rimuovi metadati nascosti per evitare perdite accidentali di dati."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Nascondi Dati Immagine con Sovrapposizioni"
      content: |
        Questo esempio di codice mostra come coprire aree delle immagini in un file utilizzando sovrapposizioni.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carica il file per la modifica
          using (Redactor redactor  = new Redactor("source.jpeg"))
          {
              // Imposta posizione, dimensioni e colore della sovrapposizione
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Target di una specifica area dell'immagine nella pagina uno
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Applica sovrapposizione per mascherare l'immagine
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
    title: "Proteggere i File PHOTO con le Redazioni di .NET"
    exclude: "PHOTO"
    description: "Con .NET, puoi nascondere o eliminare contenuti privati nei file PHOTO. Un modo semplice ed efficace per mettere al sicuro documenti ufficiali."
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