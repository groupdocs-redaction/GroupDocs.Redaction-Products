
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: it
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Blocca Testo in XLSX con Overlay Java"
head_description: "GroupDocs.Redaction for Java ti consente di coprire informazioni sensibili nei file XLSX con blocchi colorati. Nascondi i dati mantenendo il layout intatto."

############################# Header ############################
title: "Nascondi Dati in XLSX con Overlay Utilizzando Java" 
description: "Usa Java e GroupDocs.Redaction for Java per mascherare contenuti privati nei file XLSX senza influenzare il formato."
subtitle: "Caratteristiche Principali di GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Perché GroupDocs.Redaction for Java Funziona"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java consente agli sviluppatori Java di proteggere i file XLSX. Nascondi testo, immagini o metadati rapidamente.

############################# Steps ############################
steps:
    enable: true
    title: "Proteggi Info in Documenti Xlsx"
    content: |
      Mantieni i tuoi documenti al sicuro utilizzando codice semplice con GroupDocs.Redaction for Java in Java.
      
      1. Crea un Redactor con il percorso del file.
      2. Imposta la tua logica di redazione.
      3. Scegli la parola chiave e il colore di overlay.
      4. Redigi e salva il file.
   
    code:
      platform: "java"
      copy_title: "Copia"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Redazioni di esempio"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "clicca per copiare"
        copy_done: "copiato"
      links:
        #  loop
        - title: "Altri esempi"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "Documentazione"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // Nascondi informazioni in XLSX utilizzando blocchi

        // Carica il file con Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Imposta preferenze di redazione
            // Aggiungi testo e colore da bloccare
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Salva il documento aggiornato
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Funzionalità di Privacy Integrate"
  description: "Usa GroupDocs.Redaction for Java per bloccare o eliminare contenuti nei tuoi file mantenendo la struttura intatta."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Strumenti di privacy facili"
  features:
    # feature loop
    - title: "Modifica o nascondi testo"
      content: "Trova e blocca qualsiasi testo che richiede protezione."

    # feature loop
    - title: "Oscura contenuti visivi"
      content: "Applica blocchi colorati su aree grafiche o immagini."

    # feature loop
    - title: "Rimuovi metadati"
      content: "Cancella la cronologia del documento, i nomi degli autori o le date."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Usa Regex per Redigere Contenuti"
      content: |
        Trova e nascondi automaticamente il testo con la corrispondenza di pattern
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Apri il foglio di calcolo
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Definisci il modello e il colore di overlay
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Applica le regole di redazione
              redactor.apply(redaction);

              // Esporta il tuo risultato
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "Copia"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "Documentazione"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "Pronto per iniziare?"
  description: "Prova le funzionalità di GroupDocs.Redaction gratuitamente o richiedi una licenza"
  items:
    #  loop
    - title: "Download Maven"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "Licenze"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Redigi Dati XLSX Utilizzando Java"
    exclude: "XLSX"
    description: "Usa overlay o elimina contenuti nei file XLSX per mantenere i dati sensibili privati con Java."
    items: 
        # format loop 1
        - name: "Redazione PDF"
          format: "PDF"
          link: "/redaction/java/hide-text-with-image-overlay//pdf/"
          description: "Formato Documento Portabile Adobe"

        # format loop 2
        - name: "Redazione Word"
          format: "WORD"
          link: "/redaction/java/hide-text-with-image-overlay//word/"
          description: "Documenti MS Word e Open Office"
          
        # format loop 3
        - name: "Redazione Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-text-with-image-overlay//excel/"
          description: "Fogli di calcolo MS Excel e Open Office"

        # format loop 4
        - name: "Redazione PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-text-with-image-overlay//powerpoint/"
          description: "Presentazioni MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redazione DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-text-with-image-overlay//docx/"
          description: "Documento Open XML di Microsoft Word"
          
        # format loop 6
        - name: "Redazione XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-text-with-image-overlay//xlsx/"
          description: "Foglio di calcolo Open XML di Microsoft Excel"
          
        # format loop 7
        - name: "Redazione PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-text-with-image-overlay//pptx/"
          description: "Presentazione Open XML di PowerPoint"


---