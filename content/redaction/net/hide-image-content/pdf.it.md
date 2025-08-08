
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: it
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Nascondi Immagini in PDF con Sovrapposizioni Utilizzando C#"
head_description: "Con GroupDocs.Redaction for .NET, puoi proteggere immagini sensibili nei file PDF aggiungendo sovrapposizioni colorate. Proteggi informazioni private senza alterare il layout del documento."

############################# Header ############################
title: "Proteggi Immagini Sensibili nei Documenti PDF con Sovrapposizioni Utilizzando .NET" 
description: "Mantieni al sicuro i dati aziendali e personali nei file PDF utilizzando C#. I nostri strumenti ti aiutano a raggiungere una robusta protezione dei dati."
subtitle: "Funzionalità di GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET offre agli sviluppatori C# strumenti potenti per nascondere o rimuovere contenuti dai file PDF. Proteggi facilmente i documenti coprendo testo, immagini e metadati in diversi formati.

############################# Steps ############################
steps:
    enable: true
    title: "Metti in Sicurezza i Dati Aziendali nei Documenti Pdf"
    content: |
      GroupDocs.Redaction for .NET: Progettato per aiutare le tue app .NET a proteggere i documenti. Redigi informazioni private rapidamente.
      
      1. Crea un'istanza di Redactor e fornisci il percorso al file Pdf che vuoi proteggere.
      2. Regola le impostazioni di redazione per ottenere il risultato desiderato.
      3. Seleziona l'area dell'immagine e imposta il colore della sovrapposizione.
      4. Elabora il file e salva il documento redatto.
   
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
        // Nascondi contenuti sensibili delle immagini in PDF

        // Carica il file utilizzando il costruttore Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Configura colore e dimensioni della sovrapposizione
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Seleziona l'area da redigere
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Applica la sovrapposizione all'immagine e salva il file
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redigi Contenuti nei Documenti"
  description: "Con GroupDocs.Redaction for .NET, puoi nascondere o eliminare contenuti in un'ampia gamma di formati di file. Proteggi informazioni confidenziali mantenendo i documenti facili da leggere e condividere."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Funzionalità Avanzate di Redazione"
  features:
    # feature loop
    - title: "Modifica Testo Ovunque"
      content: "Cerca e sostituisci testo sensibile all'interno del tuo documento per mantenere sicuri i dati privati."

    # feature loop
    - title: "Coprire Immagini"
      content: "Applica sovrapposizioni a intere immagini o aree selezionate per nascondere elementi visivi sensibili."

    # feature loop
    - title: "Gestisci Metadata"
      content: "Rimuovi o modifica i metadati nascosti per prevenire esposizioni accidentali dei dati."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Usa Sovrapposizioni per Nascondere Dati Immagine"
      content: |
        Questo esempio mostra come coprire informazioni sensibili nelle immagini dei documenti.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carica il documento per la redazione
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Imposta le impostazioni della sovrapposizione: dimensioni, posizione e colore
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Prendi di mira un'area specifica dell'immagine nella prima pagina
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Applica la sovrapposizione per nascondere l'immagine
              redactor.Apply(redaction);

              // Salva il documento redatto
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
    title: "Proteggi Contenuti PDF con le Redazioni di .NET"
    exclude: "PDF"
    description: "Utilizza .NET per nascondere o eliminare contenuti sensibili nei file PDF. Una soluzione efficace per proteggere documenti ufficiali e confidenziali."
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