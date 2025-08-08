---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: th
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

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
head_title: "ลบข้อมูลที่ละเอียดอ่อนจากเอกสารโดยใช้ Java"
head_description: "ปกป้องข้อมูลที่ละเอียดอ่อนของคุณด้วย GroupDocs.Redaction for Java ซ่อน แก้ไข หรือขจัดเนื้อหาที่เป็นความลับในไฟล์ PDF, เอกสาร Office, และภาพได้อย่างมีประสิทธิภาพ"

############################# Header ############################
title: "ปกป้องข้อมูลที่ละเอียดอ่อนด้วย GroupDocs.Redaction"
description: "ลบซ่อนหรือทำความสะอาดข้อมูลที่ละเอียดอ่อนจาก PDF, เอกสาร Word, Excel, PowerPoint และรูปแบบภาพโดยใช้ชุดเครื่องมือ Java ที่เชื่อถือได้"
words:
  for: "สำหรับ"

actions:
  main: "ดาวน์โหลด Maven"
  main_link: "https://releases.groupdocs.com/java/repo/com/groupdocs/groupdocs-redaction/"
  alt: "การออกใบอนุญาต"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/java/"
  title: "พร้อมที่จะเริ่มต้นหรือยัง?"
  description: "ลองฟีเจอร์ของ GroupDocs.Redaction ฟรีหรือขอใบอนุญาต"

release:
  title: "เวอร์ชัน {0} ได้รับการเผยแพร่"
  notes: "ดูว่าอะไรใหม่"
  downloads: "ดาวน์โหลด"

code:
  title: "ขั้นตอนในการลบเนื้อหาในเอกสาร"
  more: "ตัวอย่างเพิ่มเติม"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
  install: |
    <dependency>
      <groupId>com.groupdocs</groupId>
      <artifactId>groupdocs-redaction</artifactId>
      <version>{0}</version>
    </dependency>
  content: |
    ```java {style=abap}  
    // โหลดไฟล์ต้นฉบับของคุณด้วยอินสแตนซ์ Redactor
    final Redactor redactor = new Redactor("sample.pdf");
    try
    {
        // ระบุเกณฑ์และการตั้งค่าการแก้ไข
        ReplacementOptions ro = new ReplacementOptions("[redacted]");
        ExactPhraseRedaction red = new ExactPhraseRedaction("Data", ro);

        // ดำเนินการลบเนื้อหา
        RedactorChangeLog result = redactor.apply(red);

        // บันทึกไฟล์ที่มีการแก้ไข
        redactor.save();
    }
    finally { redactor.close(); }
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction โดยรวม"
  description: "เสริมแอปพลิเคชัน Java ของคุณด้วยเครื่องมือการลบข้อมูลระดับมืออาชีพ"
  features:
    # feature loop
    - title: "ลบข้อความที่ละเอียดอ่อน"
      content: "ด้วย GroupDocs.Redaction for Java คุณสามารถค้นหาและซ่อนข้อความที่ละเอียดอ่อนได้โดยใช้การทับสีหรือการแทนที่ที่ปรับแต่งได้ รองรับไฟล์ PDF, Word, Excel และอื่นๆ ซึ่งเหมาะสำหรับการปฏิบัติตามข้อกำหนดและการแบ่งปันเอกสารอย่างปลอดภัย"

    # feature loop
    - title: "ซ่อนภาพ"
      content: "ระบุและลบภาพทั้งหมดหรือบางส่วนตามความต้องการของคุณ กำหนดกฎการตรวจจับและพิกัดพื้นที่เพื่อป้องกันข้อมูลภาพอย่างมีประสิทธิภาพ"

    # feature loop
    - title: "ทำความสะอาดข้อมูลเมตาที่ฝัง"
      content: "ไฟล์อาจมีข้อมูลที่ซ่อนอยู่เช่นชื่อผู้เขียน เครื่องมือที่ใช้ในการสร้าง หรือรายละเอียดอุปกรณ์ GroupDocs.Redaction for Java ช่วยให้คุณตรวจจับและทำความสะอาดข้อมูลเมตาในเอกสาร Word, Excel, รูปภาพ และรูปแบบอื่นๆ"

    # feature loop
    - title: "ลบวัตถุที่ฝังในเอกสาร"
      content: "ทำความสะอาดเอกสารอย่างทั่วถึงโดยการลบวัตถุ เช่น การเพิ่มเติม คอมเมนต์ หรือวัตถุฝังอื่นๆ เพื่อกำจัดข้อมูลที่ละเอียดอ่อน"

############################# Platforms ############################
platforms:
  enable: true
  title: "ความเป็นอิสระของแพลตฟอร์ม"
  description: "GroupDocs.Redaction for Java ทำงานร่วมกับระบบปฏิบัติการหลัก, เฟรมเวิร์ก และแพลตฟอร์มการพัฒนา"
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
    - title: "Eclipse"
      image: "eclipse"
    # platform loop
    - title: "IntelliJ"
      image: "intellij"
    # platform loop
    - title: "Windows"
      image: "windows"
    # platform loop
    - title: "Linux"
      image: "linux"
    # platform loop
    - title: "Maven"
      image: "maven"

############################# File formats ############################
formats:
  enable: true
  title: "รูปแบบไฟล์ที่รองรับ"
  description: |
    GroupDocs.Redaction for Java รองรับการทำงานกับ [รูปแบบไฟล์](https://docs.groupdocs.com/redaction/java/supported-document-formats/) ต่อไปนี้
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
  title: "สิ่งที่คุณสามารถทำได้ด้วย GroupDocs.Redaction"
  description: "ค้นหาและลบเนื้อหาอย่างรวดเร็วจากไฟล์ PDF, เอกสาร Office และภาพด้วยความแม่นยำ"

  items:
    # feature loop
    - icon: "search"
      title: "ค้นหาด้วยความแม่นยำ"
      content: "ใช้โหมดค้นหาที่แยกตัวพิมพ์ใหญ่และไม่แยกตัวพิมพ์ใหญ่เพื่อค้นหาและลบที่ตรงตามต้องการ"

    # feature loop
    - icon: "text"
      title: "ค้นหาและแทนที่ข้อความ"
      content: "ตรวจจับและแทนที่หรือลบเนื้อหาที่ละเอียดอ่อนทั่วทั้งเอกสารโดยอัตโนมัติ"

    # feature loop
    - icon: "image"
      title: "ทับด้วยภาพที่กำหนดเอง"
      content: "ใช้ภาพบล็อกเพื่อเป่าเงาเนื้อที่ถูกซ่อนไว้เพื่อรักษาสมดุลของเลย์เอาต์ในขณะที่ซ่อนรายละเอียด"

    # feature loop
    - icon: "search"
      title: "ใช้ Regex สำหรับการลบข้อมูลที่ขั้นสูง"
      content: "ใช้การแสดงออกปกติเพื่อตรวจจับพฤติกรรมที่ซับซ้อนและทำการลบข้อมูลอย่างมีสติ"

    # feature loop
    - icon: "table"
      title: "ลบพื้นที่เฉพาะ"
      content: "จำกัดการลบวัสดุซึ่งเฉพาะเจาะจงหรือซ่อนอยู่ในหน้าโดยการกำหนดพิกัดเฉพาะ"

    # feature loop
    - icon: "template"
      title: "ทำความสะอาดฟิลด์ข้อมูลเมตา"
      content: "ตรวจจับและทำความสะอาดข้อมูลเมตาในเอกสารรวมถึง ไม่ว่าจะเป็นผู้เขียน บริษัท หรือวันที่สร้าง"

    # feature loop
    - icon: "pdf"
      title: "ส่งออกในรูปแบบที่ต้องการ"
      content: "บันทึกไฟล์ที่ถูกซ่อนในรูปแบบ PDF หรือรูปแบบอื่นๆที่รองรับโดยไม่เสียความชัดเจนของเลย์เอาต์"

    # feature loop
    - icon: "template"
      title: "ลบข้อมูลเมตาทั้งหมด"
      content: "ลบข้อมูลเมตาทั้งหมดจากไฟล์ที่รองรับในคำสั่งเพียงครั้งเดียว"

    # feature loop
    - icon: "hyperlink"
      title: "นโยบายการลบที่อัตโนมัติ"
      content: "สร้างกำหนดการที่จะใช้ซ้ำได้ภายใน XML ซึ่งเหมาะกับการประมวลผลไฟล์แบบกลุ่ม"


############################# Code samples ############################
code_samples:
  enable: true
  title: "ตัวอย่างโค้ด"
  description: "ตัวอย่างกรณีการใช้งานทั่วไป GroupDocs.Redaction for Java"
  items:
    # code sample loop
    - title: "การลบข้อมูลโดยใช้ Regex"
      content: |
        GroupDocs.Redaction for Java ช่วยนักพัฒนาที่ใช้ Java สามารถทำการ [ลบที่ใช้ regex](https://docs.groupdocs.com/redaction/java/text-redactions/#use-regular-expression) พร้อมการซ่อนภาพได้:
        {{< landing/code title="แก้ไขเอกสาร Word โดยใช้การแสดงออกปกติ">}}
        ```java {style=abap}
        // สร้างอินสแตนซ์ของคลาส Redactor
        final Redactor redactor = new Redactor("source.docx");
        try
        {
            // กำหนดกฎการแก้ไขโดยใช้การแสดงออกปกติ
            ReplacementOptions replacement = new ReplacementOptions(java.awt.Color.BLUE);
            RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);

            // ปิดบังข้อความที่ตรงกันทั้งหมดด้วยการครอบปิดสี่เหลี่ยมสีน้ำเงิน
            redactor.apply(redaction);

            // บันทึกเอกสาร Word ที่ได้รับการแก้ไขแล้ว
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "ลบข้อมูลเมตาทั้งหมด"
      content: |
        ใช้ API ของเราสามารถ [ลบข้อมูลเมตา](https://docs.groupdocs.com/redaction/java/metadata-redactions/#clean-metadata) ผ่านไฟล์ประเภทได้หลายประเภทในขั้นตอนเดียว:
        {{< landing/code title="ลบข้อมูลเมตาทั้งหมดจากการนำเสนอ">}}
        ```java {style=abap}   
        // ระบุเส้นทางของการนำเสนอไปยัง Redactor
        final Redactor redactor  = new Redactor("source.pptx");
        try 
        {
            // กำหนดตัวเลือกการแก้ไข
            EraseMetadataRedaction red = new EraseMetadataRedaction(MetadataFilters.All);

            // ลบข้อมูลเมตาทั้งหมดจากการนำเสนอ
            redactor.apply(red);

            // บันทึกไฟล์การนำเสนอที่สะอาด
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}

---
