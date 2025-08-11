---
############################# Static ############################
layout: "landing"
date: 2025-08-11T19:33:04
draft: false

lang: th
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

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
head_title: "ลบข้อมูลที่ละเอียดอ่อนจากเอกสารด้วย Python"
head_description: "รักษาความปลอดภัยให้กับไฟล์ของคุณโดยใช้ GroupDocs.Redaction for Python via .NET ซ่อนได้อย่างรวดเร็ว แก้ไข หรือ ลบเนื้อหาที่ละเอียดอ่อนในไฟล์ PDF, Word, Excel, PowerPoint และไฟล์ภาพ"

############################# Header ############################
title: "ทำให้เอกสารของคุณปลอดภัยด้วย GroupDocs.Redaction"
description: "ลบซ่อนได้อย่างง่ายดาย ข้อความแก้ไข และทำความสะอาดข้อมูลเมตาที่ซ่อนอยู่จาก PDF, ไฟล์ Office และรูปภาพโดยใช้ชุดเครื่องมือ Python ที่พัฒนาอย่างสูง"
words:
  for: "สำหรับ"

actions:
  main: "ดาวน์โหลด PyPi"
  main_link: "https://pypi.org/project/groupdocs-redaction-net/"
  alt: "การออกใบอนุญาต"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
  title: "พร้อมที่จะเริ่มต้นหรือยัง?"
  description: "ลองฟีเจอร์ของ GroupDocs.Redaction ฟรีหรือขอใบอนุญาต"

release:
  title: "เวอร์ชัน {0} ได้รับการเผยแพร่"
  notes: "ดูว่าอะไรใหม่"
  downloads: "ดาวน์โหลด"

code:
  title: "การแก้ไขเนื้อหาในเอกสาร"
  more: "ตัวอย่างเพิ่มเติม"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
  install: "pip install groupdocs-redaction-net"
  content: |
    ```python {style=abap}
    import groupdocs.redaction as gr
    import groupdocs.redaction.redactions as grr

    def run():

        # ปรับปรุงพารามิเตอร์การแก้ไข
        repl_opt = grr.ReplacementOptions("[redacted]")
        red = grr.ExactPhraseRedaction("Data", repl_opt)

        # โหลดไฟล์ของคุณลงในอินสแตนซ์ Redactor
        with gr.Redactor("sample.pdf") as redactor:

            # เริ่มต้นกระบวนการลบ
            result = redactor.apply(red)
        
            # ส่งออกไฟล์ที่ได้รับการทำความสะอาด
            result_path = redactor.save()
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction โดยรวม"
  description: "รวมความสามารถในการลบข้อมูลที่ทรงพลังในโครงการ Python ของคุณ"
  features:
    # feature loop
    - title: "ลบข้อความที่ละเอียดอ่อน"
      content: "ด้วย GroupDocs.Redaction for Python via .NET คุณสามารถค้นหาและปกปิดคำหรือวลีที่ละเอียดอ่อนโดยอัตโนมัติโดยการแทนที่หรือซ่อนข้อความด้วยกล่องสีเพื่อเพิ่มความปลอดภัยในเอกสาร PDF, เอกสาร Word และรูปแบบอื่นๆ"

    # feature loop
    - title: "ปกปิดภาพ"
      content: "เทคโนโลยีของเราสามารถตรวจจับภาพและเบลอ ซ่อน หรือบล็อกตามพารามิเตอร์ที่เลือกให้ได้ โดยการกำหนดพื้นที่เฉพาะหรืออนุญาตให้มีการตรวจจับอัตโนมัติเพื่อควบคุมทั้งหมด"

    # feature loop
    - title: "ลบข้อมูลเมตาที่ซ่อนอยู่"
      content: "ขจัดรายละเอียดส่วนบุคคลหรือการติดตามที่ซึ่งซ่อนอยู่ในข้อมูลเมตาเช่นการเป็นเจ้าของหรือรายละเอียดอุปกรณ์ GroupDocs.Redaction for Python via .NET ทำให้แน่ใจว่าเอกสารของคุณถูกทำความสะอาดเต็มที่และปลอดภัยต่อการแชร์"

    # feature loop
    - title: "ลบส่วนประกอบพิเศษ"
      content: "ไปไกลกว่าข้อความโดยการลบองค์ประกอบฝังอยู่เช่นความคิดเห็น การเพิ่มเติม และอื่นๆจากไฟล์เพื่อให้ความเป็นส่วนตัวสูงสุด"

############################# Platforms ############################
platforms:
  enable: true
  title: "ความเป็นอิสระของแพลตฟอร์ม"
  description: "GroupDocs.Redaction for Python via .NET ทำงานบนระบบปฏิบัติการหลัก สนับสนุนเฟรมเวิร์กยอดนิยม และรวมเข้ากับตัวจัดการแพ็กเกจที่ใช้ทั่วไป."
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
    GroupDocs.Redaction for Python via .NET รองรับ [รูปแบบไฟล์](https://docs.groupdocs.com/redaction/python-net/supported-document-formats/) ต่อไปนี้
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
  title: "ฟีเจอร์หลักของ GroupDocs.Redaction for Python via .NET"
  description: "เครื่องมือการค้นหาและลบเนื้อหาใน PDF, รูปภาพ และไฟล์ Office ได้อย่างรวดเร็ว"

  items:
    # feature loop
    - icon: "search"
      title: "การค้นหาที่ปรับแต่งได้"
      content: "ใช้โหมดค้นหาที่ยืดหยุ่นเพื่อหารูปแบบหรือคำที่แน่นอนสำหรับการลบ"

    # feature loop
    - icon: "text"
      title: "ค้นหา แทนที่ หรือลบข้อความ"
      content: "ค้นพบข้อมูลที่ละเอียดอ่อนและแทนที่ด้วยข้อความที่ปลอดภัยหรือทำลายมันให้สิ้นซาก"

    # feature loop
    - icon: "image"
      title: "การตั้งค่าการปิดบัง"
      content: "ใช้รูปร่างหรือลวดลายเพื่อปกปิดส่วนที่ถูกลบออก"

    # feature loop
    - icon: "search"
      title: "การตรวจจับที่ใช้ Regex"
      content: "ใช้การแสดงออกปกติเพื่อค้นหาข้อความที่ละเอียดอ่อนและทำการลบได้อย่างแม่นยำ"

    # feature loop
    - icon: "table"
      title: "กำหนดการลบที่เจาะจง"
      content: "จำกัดการลบเฉพาะในหน้าเจาะจงหรือระบุพื้นที่เฉพาะในการลบ"

    # feature loop
    - icon: "template"
      title: "ล้างข้อมูลเมตา"
      content: "ตรวจสอบและทำความสะอาดข้อมูลเมตา เช่น ชื่อผู้สร้าง บริษัท หรือเวลาที่สร้าง"

    # feature loop
    - icon: "pdf"
      title: "ตัวเลือกการส่งออก"
      content: "บันทึกเอกสารที่ถูกดัดแปลงใน PDF หรือตัวอื่นๆที่รองรับโดยไม่สูญเสียความเข้มข้นของเลย์เอาต์"

    # feature loop
    - icon: "template"
      title: "ลบข้อมูลฟีล์ทั้งหมด"
      content: "กลบข้อมูลเมตาทั้งหมดจากไฟล์ที่รองรับในคำสั่งเดียว"

    # feature loop
    - icon: "hyperlink"
      title: "นโยบายที่สร้างซ้ำได้"
      content: "บันทึกการตั้งค่าการลบของคุณในรูปแบบ XML เพื่อเพิ่มประสิทธิภาพในงานลบในอนาคต"


############################# Code samples ############################
code_samples:
  enable: true
  title: "ตัวอย่างโค้ด"
  description: "สำรวจวิธี GroupDocs.Redaction for Python via .NET ทำให้การลบข้อมูลกลายเป็นเรื่องง่าย"
  items:
    # code sample loop
    - title: "การลบข้อความตาม Regex"
      content: |
        นักพัฒนาที่ใช้ Python สามารถใช้กฎ [regex-based](https://docs.groupdocs.com/redaction/python-net/text-redactions/#use-regular-expression) เพื่อค้นหาและปิดบังข้อความด้วยการซ่อนภาพ:
        {{< landing/code title="แก้ไขเอกสาร Word โดยใช้การแสดงออกปกติ">}}
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        def run():

            # กำหนดกฎการแก้ไขโดยใช้การแสดงออกปกติ
            color = grd.Color.from_argb(255, 220, 20, 60)
            repl_opt = grr.ReplacementOptions(color)
            reg_red = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

            # สร้างอินสแตนซ์ของคลาส Redactor
            with gr.Redactor("source.docx") as redactor:

                # ปิดบังข้อความที่ตรงกันทั้งหมดด้วยการครอบปิดสี่เหลี่ยมสีน้ำเงิน
                result = redactor.apply(reg_red)
        
                # บันทึกเอกสาร Word ที่ได้รับการแก้ไขแล้ว
                redactor.save()
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "ลบข้อมูลเมตา"
      content: |
        ใช้ API เพื่อลบ [ข้อมูลเมตา](https://docs.groupdocs.com/redaction/python-net/metadata-redactions/#clean-metadata) ผ่านหลายประเภทไฟล์ในไม่กี่ขั้นตอน:
        {{< landing/code title="ลบข้อมูลเมตาทั้งหมดจากการนำเสนอ">}}
        ```python {style=abap}   
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # กำหนดตัวเลือกการแก้ไข
        red = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # ระบุเส้นทางของการนำเสนอไปยัง Redactor
        with gr.Redactor("source.pptx") as redactor:

            # ลบข้อมูลเมตาทั้งหมดจากการนำเสนอ
            result = redactor.apply(red)
        
            # บันทึกไฟล์การนำเสนอที่สะอาด
            redactor.save()
        ```
        {{< /landing/code >}}

---
