---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: th
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
head_title: "ลบข้อมูลที่ละเอียดอ่อนในเอกสารของคุณโดยใช้ .NET"
head_description: "ปกป้องเอกสารทางธุรกิจของคุณด้วย GroupDocs.Redaction for .NET ปรับแก้ ลบ หรือซ่อนเนื้อหาที่เป็นความลับจากไฟล์ PDF, Word, Excel, PowerPoint และไฟล์ภาพได้อย่างมีประสิทธิภาพ"

############################# Header ############################
title: "รักษาความปลอดภัยให้กับเนื้อหาของคุณด้วย GroupDocs.Redaction"
description: "ลบซ่อนหรือถาวรข้อมูลและข้อมูลเมตาที่ละเอียดอ่อนจาก PDF, เอกสาร Word, สเปรดชีต, การนำเสนอ และภาพโดยใช้โซลูชัน .NET ที่ทรงพลังของเรา"
words:
  for: "สำหรับ"

actions:
  main: "ดาวน์โหลด Nuget"
  main_link: "https://www.nuget.org/packages/GroupDocs.Redaction"
  alt: "การออกใบอนุญาต"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/net/"
  title: "พร้อมที่จะเริ่มต้นหรือยัง?"
  description: "ลองฟีเจอร์ของ GroupDocs.Redaction ฟรีหรือขอใบอนุญาต"

release:
  title: "เวอร์ชัน {0} ได้รับการเผยแพร่"
  notes: "ดูว่าอะไรใหม่"
  downloads: "ดาวน์โหลด"

code:
  title: "วิธีการปกป้องเนื้อหาไฟล์"
  more: "ตัวอย่างเพิ่มเติม"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
  install: "dotnet add package GroupDocs.Redaction"
  content: |
    ```csharp {style=abap}   
    // ส่งไฟล์อินพุตไปยังอินสแตนซ์ Redactor
    using (Redactor redactor = new Redactor("source.pdf"))
    {
        // กำหนดตัวเลือกการแก้ไข
        var repl_opt = new ReplacementOptions("[redacted]");
        var red = new ExactPhraseRedaction("Data", repl_opt);

        // ดำเนินการแก้ไข
        RedactorChangeLog result = redactor.Apply(red);

        // บันทึกไฟล์ที่แก้ไข
        if (result.Status != RedactionStatus.Failed)
        {
            redactor.Save();
        }
    }  
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction โดยรวม"
  description: "เพิ่มการแก้ไขเนื้อหาที่มีคุณภาพระดับมืออาชีพลงในแอปพลิเคชัน .NET ของคุณ"
  features:
    # feature loop
    - title: "ลบเนื้อหาข้อความ"
      content: "GroupDocs.Redaction for .NET ช่วยให้คุณค้นหาและลบข้อความที่ละเอียดอ่อนได้ ข้อความสามารถถูกแทนที่หรือซ่อนโดยใช้ภาพทับสีเพื่อเพิ่มความปลอดภัย รองรับหลากหลายรูปแบบรวมถึง PDF และเอกสาร Office ฟีเจอร์นี้ช่วยปกป้องข้อมูลส่วนบุคคลและปรับปรุงการปฏิบัติตามข้อกำหนดทางธุรกิจ"

    # feature loop
    - title: "ลบภาพ"
      content: "ตรวจจับและลบภาพโดยอัตโนมัติ - ไม่ว่าจะทั้งหมดหรือบางส่วน - บนหน้าเอกสาร กำหนดเกณฑ์การค้นหาและพื้นที่ที่ต้องการเพื่อป้องกันเนื้อหาภาพที่ละเอียดอ่อนอย่างมีประสิทธิภาพ"

    # feature loop
    - title: "จัดการข้อมูลเมตา"
      content: "ไฟล์หลายรูปแบบอาจมีข้อมูลเมตาที่ซ่อนอยู่ เช่น ชื่อผู้เขียนในไฟล์ Word หรือข้อมูล EXIF ในภาพ GroupDocs.Redaction for .NET ทำให้การค้นหาและลบข้อมูลนี้ทำได้ง่ายเพื่อให้แน่ใจว่าข้อมูลเป็นส่วนตัวโดยสมบูรณ์"

    # feature loop
    - title: "ลบวัตถุในเอกสาร"
      content: "ปกป้องเนื้อหาอย่างเต็มที่โดยการลบองค์ประกอบเฉพาะในเอกสาร เช่น การเพิ่มเติม คอมเมนต์ และวัตถุฝังในรูปแบบอย่างเช่น PDF"

############################# Platforms ############################
platforms:
  enable: true
  title: "ความเป็นอิสระของแพลตฟอร์ม"
  description: "GroupDocs.Redaction for .NET ทำงานร่วมกับระบบปฏิบัติการ เฟรมเวิร์กการพัฒนา และตัวจัดการแพ็คเกจที่หลากหลาย"
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
  title: "รูปแบบไฟล์ที่รองรับ"
  description: |
    GroupDocs.Redaction for .NET รองรับการทำงานกับ [รูปแบบไฟล์](https://docs.groupdocs.com/redaction/net/supported-document-formats/) ต่อไปนี้
  groups:
    # group loop
    - color: "green"
      content: |
        ### รูปแบบ MS Office
        * **Word:** DOCX, DOC, DOCM, DOT, DOTX, DOTM,
        * **Excel:** XLSX, XLS, XLSM, XLSB, 
        * **PowerPoint:** PPT, PPTX
    # group loop
    - color: "blue"
      content: |
        ### รูปแบบ Office อื่นๆ
        * **พกพา:** PDF 
        * **OpenDocument:** ODT, ODS, OTS, ODP, OTT
        * **รูปแบบข้อความ:** RTF, CSV, TXT, TSV
      # group loop
    - color: "red"
      content: |
        ### รูปแบบอื่นๆ
        * **เว็บ:** HTM, HTML, MD
        * **ภาพ:** BMP, GIF, JPEG, PNG, TIFF, WEBP
        * **eBooks:** DJVU 
        
        

############################# Features ############################
features:
  enable: true
  title: "GroupDocs.Redaction for .NET ฟีเจอร์"
  description: "ดึงข้อมูลและลบข้อมูลจาก PDF, ไฟล์ Office และภาพอย่างรวดเร็วและแม่นยำ"

  items:
    # feature loop
    - icon: "search"
      title: "ค้นหาอย่างยืดหยุ่น"
      content: "ดำเนินการค้นหาที่แยกตัวพิมพ์ใหญ่หรือไม่แยกตัวพิมพ์ใหญ่เพื่อทำการค้นหาเพื่อแก้ไขข้อความหรือคำเฉพาะ"

    # feature loop
    - icon: "text"
      title: "แทนที่หรือลบข้อความ"
      content: "ค้นหาและแทนที่หรือลบข้อความที่ละเอียดอ่อนทั่วทั้งเอกสาร"

    # feature loop
    - icon: "image"
      title: "ซ่อนข้อความด้วยภาพ"
      content: "ใช้ภาพทับสีเพื่อบดบังเนื้อหาที่ถูกแก้ไขแทนการแทนที่ข้อความ"

    # feature loop
    - icon: "search"
      title: "คุณสมบัติการค้นหาขั้นสูง"
      content: "ใช้การแสดงออกปกติเพื่อทำการแก้ไขเนื้อหาที่แม่นยำและยืดหยุ่นในข้อมูลชุดซับซ้อน"

    # feature loop
    - icon: "table"
      title: "การแก้ไขแบบกำหนดขอบเขต"
      content: "กำหนดเป้าหมายให้กับหน้าหรือพื้นที่หน้าที่เฉพาะเพื่อจำกัดการแก้ไขที่เฉพาะเจาะจงเท่านั้น"

    # feature loop
    - icon: "template"
      title: "การลบข้อมูลเมตา"
      content: "ค้นหาและลบคุณสมบัติข้อมูลเมตาเพื่อปกป้องความเป็นเจ้าของเอกสารและรายละเอียดการสร้าง"

    # feature loop
    - icon: "pdf"
      title: "รูปแบบเอาท์พุทที่ยืดหยุ่น"
      content: "ส่งออกไฟล์ที่ถูกแก้ไขเป็น PDF หรือรูปแบบที่รองรับใด ๆ ขณะรักษาความสมบูรณ์ของเลย์เอาต์"

    # feature loop
    - icon: "template"
      title: "การลบข้อมูลเมตาแบบครบถ้วน"
      content: "ลบข้อมูลเมตาทั้งหมดจากเอกสารในขั้นตอนเดียวเพื่อให้แน่ใจว่าความเป็นส่วนตัวสูงสุด"

    # feature loop
    - icon: "hyperlink"
      title: "กฎการแก้ไขที่อิง XML"
      content: "กำหนดนโยบายการแก้ไขในรูปแบบ XML สำหรับการประมวลผลอัตโนมัติที่สามารถทำซ้ำได้ในหลายไฟล์"


############################# Code samples ############################
code_samples:
  enable: true
  title: "ตัวอย่างโค้ด"
  description: "ตัวอย่างการใช้งานทั่วไปของ GroupDocs.Redaction for .NET ที่ใช้งานได้จริง"
  items:
    # code sample loop
    - title: "การแก้ไขด้วยการแสดงออกปกติ"
      content: |
        GroupDocs.Redaction for .NET ช่วยให้นักพัฒนา C# สามารถทำการแก้ไขข้อความโดยใช้ [การแสดงออกปกติ](https://docs.groupdocs.com/redaction/net/text-redactions/#use-regular-expression) และซ่อนไว้ด้วยภาพทับ:
        {{< landing/code title="แก้ไขเอกสาร Word โดยใช้การแสดงออกปกติ">}}
        ```csharp {style=abap}
        // สร้างอินสแตนซ์ของคลาส Redactor
        using (Redactor redactor = new Redactor("source.docx"))
        {
            // กำหนดกฎการแก้ไขโดยใช้การแสดงออกปกติ
            var replacement = new ReplacementOptions(System.Drawing.Color.Blue);
            var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);
            
            // ปิดบังข้อความที่ตรงกันทั้งหมดด้วยการครอบปิดสี่เหลี่ยมสีน้ำเงิน
            redactor.Apply(redaction);

            // บันทึกเอกสาร Word ที่ได้รับการแก้ไขแล้ว
            redactor.Save();
        }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "การทำความสะอาดข้อมูลเมตา"
      content: |
        ใช้ API ของเราเพื่อ [ลบ](https://docs.groupdocs.com/redaction/net/metadata-redactions/#clean-metadata) ข้อมูลเมตาทั้งหมดจากรูปแบบไฟล์ที่รองรับ:
        {{< landing/code title="ลบข้อมูลเมตาทั้งหมดจากการนำเสนอ">}}
        ```csharp {style=abap}   
        // ระบุเส้นทางของการนำเสนอไปยัง Redactor
        using (Redactor redactor = new Redactor("source.pptx"))
        {
            // กำหนดตัวเลือกการแก้ไข
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // ลบข้อมูลเมตาทั้งหมดจากการนำเสนอ
            redactor.Apply(redaction);

            // บันทึกไฟล์การนำเสนอที่สะอาด
            redactor.Save();
        }
        ```
        {{< /landing/code >}}

---
