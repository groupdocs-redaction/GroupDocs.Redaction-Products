
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: th
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ลบข้อความที่เป็นความลับจาก XLSX ด้วย Python"
head_description: "ปกป้องไฟล์ XLSX ของคุณโดยการซ่อนหรือลบข้อมูลที่เป็นความลับด้วย GroupDocs.Redaction for Python via .NET และ Python"

############################# Header ############################
title: "ซ่อนหรือลบข้อความที่เป็นความลับในไฟล์ XLSX ด้วย Python" 
description: "ด้วย GroupDocs.Redaction for Python via .NET และ Python คุณสามารถลบข้อความที่เป็นความลับออกจากเอกสาร XLSX ได้อย่างรวดเร็วและเชื่อถือได้"
subtitle: "สิ่งที่คุณสามารถทำได้ด้วย GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "รู้จักGroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET มอบทุกสิ่งที่นักพัฒนา Python ต้องการในการลบหรือซ่อนข้อมูลส่วนตัวในไฟล์ XLSX – ข้อความ รูปภาพ หมายเหตุ และอื่น ๆ

############################# Steps ############################
steps:
    enable: true
    title: "วิธีลบเนื้อหาในไฟล์ Xlsx"
    content: |
      ใช้ GroupDocs.Redaction for Python via .NET ในแอป Python via .NET ของคุณเพื่อชัดเจนหรือซ่อนเนื้อหาที่ละเอียดอ่อนอย่างรวดเร็ว
      
      1. เริ่มต้น Redactor และโหลดไฟล์ Xlsx
      2. เลือกการตั้งค่าการลบที่คุณต้องการ
      3. กำหนดข้อความค้นหาและสิ่งที่จะใช้แทน
      4. นำการลบไปใช้และบันทึกไฟล์ของคุณ
   
    code:
      platform: "python-net"
      copy_title: "คัดลอก"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "การลบข้อมูลตัวอย่าง"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "คลิ๊กเพื่อคัดลอก"
        copy_done: "คัดลอกแล้ว"
      links:
        #  loop
        - title: "ตัวอย่างเพิ่มเติม"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "เอกสารประกอบ"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # วิธีลบข้อความในไฟล์ XLSX

        # เลือกตัวเลือกการลบที่คุณต้องการ
        # ตั้งค่าข้อความค้นหาและข้อความที่จะทดแทน
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # ใช้ตัวสร้าง Redactor เพื่อโหลดไฟล์ของคุณ
        with gr.Redactor("input.xslx") as redactor:

            # นำการเปลี่ยนแปลงไปใช้และบันทึกไฟล์ XLSX ที่อัปเดต
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ฟีเจอร์การลบเพิ่มเติม"
  description: "GroupDocs.Redaction for Python via .NET ทำให้สามารถซ่อนหรือลบข้อมูลที่เป็นความลับในหลายประเภทไฟล์ได้"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "ฟีเจอร์การลบข้อความ ภาพ และข้อมูลเมตา"
  features:
    # feature loop
    - title: "แทนที่ข้อความที่เป็นความลับ"
      content: "ค้นหาและสลับคำหรือแพทเทิร์นที่ตรงกัน ใช้งานได้กับการแสดงออกและคำหลัก"

    # feature loop
    - title: "ซ่อนเนื้อหาภาพ"
      content: "ซ่อนพื้นที่ในภาพหรือใช้เลเยอร์ ปรับแต่งดูที่ต้องการ"

    # feature loop
    - title: "ลบข้อมูลเมตา"
      content: "ลบข้อมูลที่ซ่อนอยู่เช่นประวัติเอกสาร ชื่อผู้เขียน หรือแท็กภายใน"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ลบโดยใช้แพทเทิร์น Regex"
      content: |
        ค้นหาแพทเทิร์นข้อความเช่นหมายเลขโทรศัพท์ หมายเลขบัตรประชาชน หรืออีเมลด้วย regex และลบออกได้อย่างรวดเร็ว
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # ตั้งค่าแพทเทิร์น EMAIL regex และข้อความที่จะทดแทน
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # เปิดเอกสารที่คุณต้องการทำความสะอาด
          with gr.Redactor("source.xslx") as redactor:

              # นำกฎการลบไปใช้
              result = redactor.apply(redaction)

              # บันทึกไฟล์ที่ถูกลบแล้ว
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
          ```
        platform: "python-net"
        copy_title: "คัดลอก"
        install:
          command: "pip install groupdocs-redaction-net"
          copy_tip: "คลิ๊กเพื่อคัดลอก"
          copy_done: "คัดลอกแล้ว"
        top_links:
          #  loop
          - title: "ดาวน์โหลดผลลัพธ์"
            icon: "download"
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
        links:
          #  loop
          - title: "ตัวอย่างเพิ่มเติม"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "เอกสารประกอบ"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "พร้อมเริ่มต้นหรือยัง?"
  description: "ลองฟีเจอร์ของ GroupDocs.Redaction ฟรี หรือขอใบอนุญาต"
  items:
    #  loop
    - title: "ดาวน์โหลด PyPi"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "การออกใบอนุญาต"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "ลบเนื้อหาใน XLSX ด้วย Python"
    exclude: "XLSX"
    description: "เก็บข้อมูลที่เป็นความลับไว้เป็นส่วนตัวโดยการลบออกจากไฟล์ XLSX ด้วยเครื่องมือ Python"
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/python-net/replace-sensitive-text//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/python-net/replace-sensitive-text//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/python-net/replace-sensitive-text//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/replace-sensitive-text//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/python-net/replace-sensitive-text//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 6
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/python-net/replace-sensitive-text//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 7
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/python-net/replace-sensitive-text//pptx/"
          description: "การเสนอ PowerPoint Open XML"


---