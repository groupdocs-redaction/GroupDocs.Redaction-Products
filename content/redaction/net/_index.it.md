---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: it
product: "Redaction"
product_tag: "redaction"
platform: "Net"
platform_tag: "net"

############################# Drop-down ############################
supported_platforms:
  items:
    # supported_platforms loop
    - title: ".NET"
      tag: "net"
    # supported_platforms loop
    - title: "Java"
      tag: "java"
    # supported_platforms loop
    - title: "Python"
      tag: "python-net"

############################# Head ############################
head_title: "Redigi dati sensibili nei tuoi documenti utilizzando .NET"
head_description: "Proteggi i tuoi documenti aziendali con GroupDocs.Redaction for .NET. Redigi, nascondi o rimuovi facilmente contenuti riservati da file PDF, Word, Excel, PowerPoint e immagini."

############################# Header ############################
title: "Proteggi i Tuoi Contenuti con GroupDocs.Redaction"
description: "Redigi, nascondi o rimuovi permanentemente informazioni sensibili e metadati da PDF, documenti Word, fogli di calcolo, presentazioni e immagini utilizzando la nostra potente soluzione .NET."
words:
  for: "per"

actions:
  main: "Download Nuget"
  main_link: "https://www.nuget.org/packages/GroupDocs.Redaction"
  alt: "Licenze"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/net/"
  title: "Pronto per Iniziare?"
  description: "Prova gratuitamente le funzionalità di GroupDocs.Redaction o richiedi una licenza."

release:
  title: "Versione {0} Rilasciata"
  notes: "Scopri le novità"
  downloads: "Download"

code:
  title: "Come Redigere il Contenuto del File"
  more: "Ulteriori esempi"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
  install: "dotnet add package GroupDocs.Redaction"
  content: |
    ```csharp {style=abap}   
    // Passa il file di input a un'istanza di Redactor
    using (Redactor redactor = new Redactor("source.pdf"))
    {
        // Configura le opzioni di redazione
        var repl_opt = new ReplacementOptions("[redacted]");
        var red = new ExactPhraseRedaction("Data", repl_opt);

        // Esegui il processo di redazione
        RedactorChangeLog result = redactor.Apply(red);

        // Salva il file redatto
        if (result.Status != RedactionStatus.Failed)
        {
            redactor.Save();
        }
    }  
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction a Colpo d'Occhio"
  description: "Aggiungi funzionalità di redazione di livello professionale alle tue applicazioni .NET"
  features:
    # feature loop
    - title: "Redigi Contenuto Testuale"
      content: "GroupDocs.Redaction for .NET consente di localizzare e redigere testo sensibile. Il testo può essere sostituito o nascosto utilizzando sovrapposizioni di immagini colorate per una maggiore sicurezza. Supportato su una vasta gamma di formati incluso PDF e documenti Office, questa funzionalità aiuta a proteggere i dati privati e a semplificare la conformità aziendale."

    # feature loop
    - title: "Redigi Immagini"
      content: "Rileva e redigi automaticamente immagini—completamente o parzialmente—sulle pagine del documento. Specifica i criteri di ricerca e le aree target per mascherare contenuti visivi sensibili in modo efficiente."

    # feature loop
    - title: "Gestisci i Metadati dei File"
      content: "Molti tipi di file contengono metadati nascosti, come nomi di autori in file Word o dati EXIF nelle immagini. GroupDocs.Redaction for .NET rende semplice trovare e redigere queste informazioni per garantire la privacy completa dei dati."

    # feature loop
    - title: "Redigi Oggetti Documentali"
      content: "Assicurati una protezione totale del contenuto redigendo elementi specifici del documento come annotazioni, commenti e oggetti incorporati in formati come PDF."

############################# Platforms ############################
platforms:
  enable: true
  title: "Indipendenza della Piattaforma"
  description: "GroupDocs.Redaction for .NET è compatibile con una vasta gamma di sistemi operativi, framework di sviluppo e gestori di pacchetti."
  items:
    # platform loop
    - title: "Amazon"
      image: "amazon"
    # platform loop
    - title: "Docker"
      image: "docker"
    # platform loop
    - title: "Azure"
      image: "azure"
    # platform loop
    - title: "VS Code"
      image: "vs_code"
    # platform loop
    - title: "ReSharper"
      image: "resharper"
    # platform loop
    - title: "macOS"
      image: "finder"
    # platform loop
    - title: "Linux"
      image: "linux"
    # platform loop
    - title: "NuGet"
      image: "nuget"

############################# File formats ############################
formats:
  enable: true
  title: "Formati di File Supportati"
  description: |
    GroupDocs.Redaction for .NET supporta operazioni con i seguenti [formati di file](https://docs.groupdocs.com/redaction/net/supported-document-formats/).
  groups:
    # group loop
    - color: "green"
      content: |
        ### Formati MS Office
        * **Word:** DOCX, DOC, DOCM, DOT, DOTX, DOTM,
        * **Excel:** XLSX, XLS, XLSM, XLSB, 
        * **PowerPoint:** PPT, PPTX
    # group loop
    - color: "blue"
      content: |
        ### Altri Formati Office
        * **Portabile:** PDF 
        * **OpenDocument:** ODT, ODS, OTS, ODP, OTT
        * **Formati di Testo:** RTF, CSV, TXT, TSV
      # group loop
    - color: "red"
      content: |
        ### Altri Formati
        * **Web:** HTM, HTML, MD
        * **Immagini:** BMP, GIF, JPEG, PNG, TIFF, WEBP
        * **eBook:** DJVU 
        
        

############################# Features ############################
features:
  enable: true
  title: "Caratteristiche di GroupDocs.Redaction for .NET"
  description: "Estrai e redigi dati da PDF, file Office e immagini con alta velocità e precisione."

  items:
    # feature loop
    - icon: "search"
      title: "Ricerca Flessibile"
      content: "Esegui ricerche sensibili o insensibili al maiuscolo per redigere frasi o termini specifici."

    # feature loop
    - icon: "text"
      title: "Sostituisci o Rimuovi Testo"
      content: "Trova e sostituisci o elimina facilmente testo sensibile in tutto il documento."

    # feature loop
    - icon: "image"
      title: "Nascondi Testo con Immagini"
      content: "Utilizza sovrapposizioni di immagini colorate per mascherare visualmente il contenuto redatto invece di sostituire il testo."

    # feature loop
    - icon: "search"
      title: "Capacità di Ricerca Avanzate"
      content: "Usa espressioni regolari per una redazione di contenuto precisa e flessibile attraverso set di dati complessi."

    # feature loop
    - icon: "table"
      title: "Redazione a Scopo"
      content: "Orientati a pagine specifiche o aree definite per limitare la redazione solo alle sezioni pertinenti."

    # feature loop
    - icon: "template"
      title: "Redazione dei Metadati"
      content: "Trova e redigi le proprietà dei metadati per proteggere i dettagli di proprietà e creazione del documento."

    # feature loop
    - icon: "pdf"
      title: "Formati di Output Flessibili"
      content: "Esporta file redatti in PDF o in qualsiasi formato supportato mantenendo l'integrità del layout."

    # feature loop
    - icon: "template"
      title: "Cancellazione Completa dei Metadati"
      content: "Cancella tutti i metadati da un documento in un'unica azione per garantire la massima privacy."

    # feature loop
    - icon: "hyperlink"
      title: "Regole di Redazione Basate su XML"
      content: "Definisci politiche di redazione in formato XML per un'elaborazione ripetibile e automatizzata su più file."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Esempi di Codice"
  description: "Esempi tipici di utilizzo di GroupDocs.Redaction for .NET in azione"
  items:
    # code sample loop
    - title: "Redazione con Espressioni Regolari"
      content: |
        GroupDocs.Redaction for .NET consente agli sviluppatori C# di redigere testo utilizzando [espressioni regolari](https://docs.groupdocs.com/redaction/net/text-redactions/#use-regular-expression) e nasconderlo con sovrapposizioni di immagini:
        {{< landing/code title="Redigi Documenti Word Utilizzando Espressioni Regolari">}}
        ```csharp {style=abap}
        // Crea un'istanza della classe Redactor
        using (Redactor redactor = new Redactor("source.docx"))
        {
            // Definisci regole di redazione utilizzando un'espressione regolare
            var replacement = new ReplacementOptions(System.Drawing.Color.Blue);
            var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);
            
            // Maschera tutto il testo corrispondente con sovrapposizioni quadrate blu
            redactor.Apply(redaction);

            // Salva il documento Word redatto
            redactor.Save();
        }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Pulizia dei Metadati"
      content: |
        Usa la nostra API per [rimuovere](https://docs.groupdocs.com/redaction/net/metadata-redactions/#clean-metadata) facilmente tutti i metadati dai formati di file supportati:
        {{< landing/code title="Rimuovi Tutti i Metadati dalle Presentazioni">}}
        ```csharp {style=abap}   
        // Fornisci il percorso della presentazione a Redactor
        using (Redactor redactor = new Redactor("source.pptx"))
        {
            // Configura le opzioni di redazione
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Cancella tutti i metadati dalla presentazione
            redactor.Apply(redaction);

            // Salva il file di presentazione pulito
            redactor.Save();
        }
        ```
        {{< /landing/code >}}

---
