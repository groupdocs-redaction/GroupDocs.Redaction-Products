
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: it
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Proteggi Immagini in IMAGE Aggiungendo Sovrapposizioni Utilizzando C#"
head_description: "Con GroupDocs.Redaction for .NET, puoi nascondere dati sensibili delle immagini nei file IMAGE utilizzando sovrapposizioni colorate. Sicurezza delle informazioni importanti mantenendo il design originale del file."

############################# Header ############################
title: "Nascondi Immagini Private nei File IMAGE Utilizzando Sovrapposizioni con .NET" 
description: "Mantieni protette immagini aziendali e personali nei file IMAGE utilizzando C#. Strumenti semplici per una rapida ed efficace protezione dei contenuti."
subtitle: "Funzionalità Chiave di GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Cos'è GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET fornisce agli sviluppatori C# strumenti potenti per nascondere o eliminare contenuti nei file IMAGE. Proteggi i tuoi documenti mascherando testo sensibile, immagini e metadati.

############################# Steps ############################
steps:
    enable: true
    title: "Proteggi Dati nei File Image con Sovrapposizioni"
    content: |
      Usa GroupDocs.Redaction for .NET per nascondere rapidamente contenuti privati nelle tue applicazioni .NET.
      
      1. Crea un'istanza di Redactor e fornisci il percorso del file Image.
      2. Regola le impostazioni di redazione secondo necessità.
      3. Seleziona aree delle immagini e definisci i colori delle sovrapposizioni.
      4. Elabora il file e salva la versione sicura.
   
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
        // Proteggi contenuti dell'immagine in IMAGE

        // Apri il file utilizzando Redactor
        using (Redactor redactor  = new Redactor("input.png"))
        {
            // Definisci dimensioni e colori della sovrapposizione
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Seleziona l'area che vuoi nascondere
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Applica sovrapposizione e salva il risultato
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redigi Contenuti in Diversi Formati di File"
  description: "Con GroupDocs.Redaction for .NET, puoi nascondere o eliminare contenuti in vari formati di file. Proteggi dati sensibili mantenendo un formato pulito e leggibile."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Controllo Completo Sulle Redazioni"
  features:
    # feature loop
    - title: "Trova e Sostituisci Testo"
      content: "Cerca tra i documenti e sostituisci testo sensibile per proteggere informazioni private."

    # feature loop
    - title: "Sovrapponi Immagini"
      content: "Applica sovrapposizioni colorate per mascherare intere immagini o parti selezionate."

    # feature loop
    - title: "Modifica Metadati"
      content: "Rimuovi o modifica i campi di metadati nascosti per prevenire esposizioni di dati."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Coprire Contenuti dell'Immagine con Sovrapposizioni"
      content: |
        Questo esempio di codice mostra come applicare sovrapposizioni per nascondere contenuti sensibili delle immagini.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carica il file per la redazione
          using (Redactor redactor  = new Redactor("source.png"))
          {
              // Configura dimensioni, colore e posizione della sovrapposizione
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Seleziona l'area dell'immagine nella pagina uno
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Aggiungi sovrapposizione per nascondere il contenuto dell'immagine
              redactor.Apply(redaction);

              // Salva il file aggiornato
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
    title: "Nascondi Contenuti nei File IMAGE Utilizzando le Redazioni .NET"
    exclude: "IMAGE"
    description: "Utilizza .NET per nascondere o rimuovere dati sensibili nei file IMAGE. Un metodo affidabile per mettere in sicurezza documenti ufficiali e proteggere informazioni confidenziali."
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