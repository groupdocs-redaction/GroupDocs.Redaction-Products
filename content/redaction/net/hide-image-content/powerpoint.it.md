
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: it
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Nascondi Immagini Sensibili in POWERPOINT Utilizzando Sovrapposizioni con C#"
head_description: "Utilizza GroupDocs.Redaction for .NET per inserire sovrapposizioni sulle immagini nei file POWERPOINT, mantenendo le informazioni private nascoste mentre si mantiene il layout intatto."

############################# Header ############################
title: "Nascondi Immagini Private nei Documenti POWERPOINT Utilizzando Sovrapposizioni con .NET" 
description: "Proteggi dati personali e aziendali nei file POWERPOINT con C#. Strumenti semplici per una forte privacy dei documenti."
subtitle: "Principali Funzionalità di GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Cos'è GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET fornisce agli sviluppatori C# strumenti semplici per nascondere o rimuovere contenuti nei file POWERPOINT. Proteggi i tuoi documenti coprendo testo, immagini e metadati.

############################# Steps ############################
steps:
    enable: true
    title: "Proteggi Informazioni Sensibili nei Documenti Powerpoint"
    content: |
      GroupDocs.Redaction for .NET è progettato per aiutare le tue app .NET a proteggere il contenuto del documento rapidamente.
      
      1. Crea un oggetto Redactor e specifica il file Powerpoint.
      2. Regola le impostazioni di redazione per adattarsi alle tue esigenze.
      3. Seleziona l'area dell'immagine e scegli il colore della sovrapposizione.
      4. Applica la redazione e salva il documento.
   
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
        // Nascondi dati immagine nei file POWERPOINT

        // Carica il file utilizzando Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Definisci colore e dimensioni della sovrapposizione
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Scegli area da coprire
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Applica sovrapposizione e salva documento
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redigi Dati Sensibili nei Documenti"
  description: "GroupDocs.Redaction for .NET ti consente di nascondere o eliminare contenuti in più tipi di documenti. Proteggi dati privati mentre mantieni i file facili da usare e condividere."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Strumenti di Redazione Ricchi di Funzionalità"
  features:
    # feature loop
    - title: "Cerca e Modifica Testo"
      content: "Individua testo sensibile e redigilo per migliorare la sicurezza dei documenti."

    # feature loop
    - title: "Copri Contenuto dell'Immagine"
      content: "Utilizza sovrapposizioni per mascherare immagini o parti selezionate, assicurando che visivi privati restino nascosti."

    # feature loop
    - title: "Pulisci Metadati Nascosti"
      content: "Elimina o modifica metadati nascosti per prevenire esposizioni involontarie di dati."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Proteggi Dati Immagine con Sovrapposizioni"
      content: |
        Questo esempio dimostra come nascondere contenuti sensibili nelle immagini dei documenti.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carica il file per la redazione
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Definisci dimensioni, posizione e colore della sovrapposizione
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Contrassegna un'area specifica nella prima pagina
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
    title: "Sicurezza dei Contenuti POWERPOINT con Redazioni .NET"
    exclude: "POWERPOINT"
    description: "Utilizza .NET per coprire o eliminare contenuti privati nei file POWERPOINT. Una soluzione affidabile per proteggere documenti sensibili."
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