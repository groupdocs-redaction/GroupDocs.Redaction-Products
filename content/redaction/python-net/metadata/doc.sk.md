
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "sk/redaction/net/metadata/doc"
otherformats: BMP DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Použiť úpravy metadát na PDF, DOCX, PPT, PPTX, XLS, XLSX v .NET"
head_description: "GroupDocs.Redactions .NET API umožňuje vývojárom softvéru použiť úpravy metadát na rôzne formáty súborov, ako sú PDF DOC DOCX RTF XLSX CSV PPT PPTX a obrázky"

############################# Header ############################
title: "Úprava a filtrovanie metadát z PDF, DOCX, PPT, PPTX, XLS, XLSX a ďalších"
description: "GroupDocs.Redactions .NET API umožňuje vývojárom softvéru upravovať alebo filtrovať metadáta z rôznych formátov súborov, ako sú PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX a mnohé ďalšie iní"

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Čo je to úprava metadát?"
    content: |
        Metadáta sú druh údajov, ktoré poskytujú informácie o iných údajoch. Inými slovami, mnohí si metaúdaje predstavujú ako odkazy na údaje. Pomáha zhrnúť základné informácie o údajoch, ktoré možno použiť na jednoduché sledovanie a správu údajov. GroupDocs.Redaction for .NET je výkonné natívne rozhranie API, ktoré umožňuje vývojárom softvéru upravovať citlivé a utajované informácie z rôznych typov dokumentov bez inštalácie akéhokoľvek externého softvéru alebo nástroja tretej strany. Poskytuje podporu pre rôzne filtre, ako sú autor, spoločnosť, kategória, veľkosť dokumentu, dátum vytvorenia, názov, LastPrinted, komentáre atď. Pomáha používateľom aplikovať úpravy metadát na rôzne populárne formáty dokumentov, ako sú dokumenty na spracovanie textu, Excel pracovné hárky, prezentácie, PDF a súbory rastrových obrázkov. Vývojári môžu tiež aktualizovať, nahradiť alebo vymazať metadáta použitím filtrov alebo pomocou vyhľadávania. Okrem toho môžu vývojári jednoducho použiť viacero úprav v rámci jedného hovoru. Preto je lepšie skúsiť automatizovať proces úpravy dokumentov a metadát stiahnutím rozhrania API a preskúmaním jeho základných a pokročilých funkcií.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Ako vyčistiť metadáta z DOC dokumentu v C#"
      content_left: |
        GroupDocs.Redaction for .NET je výkonné rozhranie API, ktoré umožňuje programátorom upravovať, skrývať alebo nahrádzať utajované informácie z mnohých populárnych typov dokumentov pomocou filtrov alebo vyhľadávania podľa regulárneho výrazu.
        Nasledujúci príklad kódu .NET ukazuje, ako použiť redigovanie metadát na nahradenie všetkých alebo konkrétnych metadát v dokumente prázdnymi alebo minimálnymi hodnotami.

      title_right: "Použiť úpravu metadát na súbor DOC"
      content_right: |
        * Vytvorte inštanciu triedy [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor)
        * Call Redactor.Apply method with EraseMetadataRedaction Object of [EraseMetadataRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction)
        * Zavolaním metódy Redactor.Save uložíte dokument do súboru „*_Redacted.*“ v pôvodnom formáte        
      gisthash: "8f1bc20dff33c9a45c01a9e251555bf1"
      gistfile: "how_to_clean_metadata_dotnet.cs"

    - title_left: "Úprava metadát zo súboru DOC cez .NET"
      content_left: |
        GroupDocs.Redaction .NET API uľahčuje vývojárom život tým, že im pomáha vkladať úlohy automatizácie dokumentov a vytvárania prehľadov pomocou niekoľkých riadkov kódu bez akýchkoľvek externých závislostí.
        Nasledujúci príklad kódu C# .NET ukazuje, ako môžu vývojári softvéru odstrániť citlivé údaje z metadát dokumentu pomocou niekoľkých riadkov kódu.
        
      title_right: "Úprava metadát zo súborov DOC"
      content_right: |
        * Vytvorte inštanciu triedy [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor)
        * Vytvorte inštanciu [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)
        * Zavolajte [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) 
        * Zavolaním metódy Redactor.Save uložíte dokument do súboru „*_Redacted.*“ v pôvodnom formáte
        
      gisthash: "8dee499186930d60909dffa54579c9f4"
      gistfile: "how_to_redact_metadata_dotnet.cs"

    - title_left: "Požiadavky na systém"
      content_left: |
        GroupDocs.Redaction for .NET Rozhrania API sú podporované na všetkých hlavných platformách a operačných systémoch. Kompletnú príručku systémových požiadaviek nájdete na stránke [požiadavky na systém](https://docs.groupdocs.com/redaction/net/system-requirements/) Pred spustením kódu nižšie sa uistite, že máte na svojom zariadení nainštalované nasledujúce predpoklady systém:
        * Operačné systémy: Microsoft Windows, Linux, MacOS
        * Vývojové prostredie: Visual Studio, Xamarin, MonoDevelop atď
        * Rámce: .NET Framework, .NET Standard, .NET Core, Mono
        * Získajte najnovšiu verziu GroupDocs.Redaction .NET API z [NuGet](https://www.nuget.org/packages/GroupDocs.Redaction/)
        
      title_right: "Prečo používať GroupDocs.Redaction"
      content_right: |
        * Umožnite používateľom pridávať vlastné formáty dokumentov a typy úprav
        * Na odstránenie citlivých informácií nie je potrebný žiadny ďalší softvér
        * Možnosť nastaviť vykresľovací dokument rozsahu strán ako PDF
        * Jednoduchý spôsob úpravy rôznych typov metadát: meno autora, verzia, názov, predmet, popis a mnoho ďalších
        * Extrakcia informácií o dokumente – typ súboru, počet strán atď.
        * Plná podpora viacerých dátových formátov

############################# Demos ############################
demos:
    enable: true
############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---