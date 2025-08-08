
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: th
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ลบข้อความที่เป็นความลับจาก DOCX ด้วย Python"
head_description: "เก็บไฟล์ DOCX ของคุณให้ปลอดภัยโดยการลบเนื้อหาที่ละเอียดอ่อนด้วย GroupDocs.Redaction for Python via .NET และ Python"

############################# Header ############################
title: "แก้ไขหรือซ่อนข้อความที่เป็นความลับในไฟล์ DOCX ด้วย Python" 
description: "ควบคุมเนื้อหาของคุณในไฟล์ DOCX โดยใช้ GroupDocs.Redaction for Python via .NET และ Python เหมาะสำหรับการใช้งานส่วนตัวหรือธุรกิจ"
subtitle: "สิ่งที่คุณสามารถทำได้ด้วย GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "รู้จักกับ GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET ให้เครื่องมือที่นักพัฒนา Python ต้องการในการทำความสะอาดเนื้อหาในไฟล์ DOCX ลบข้อความ ภาพ หมายเหตุ และข้อมูลเมตาง่ายดาย

############################# Steps ############################
steps:
    enable: true
    title: "วิธีทำความสะอาดข้อความในไฟล์ Docx"
    content: |
      ใช้ GroupDocs.Redaction for Python via .NET ภายในแอป Python via .NET ของคุณเพื่อลบหรือซ่อนข้อความที่เป็นความลับ
      
      1. สร้าง Redactor และเปิดไฟล์ Docx ของคุณ
      2. ตั้งค่ากฎการลบของคุณ
      3. เลือกข้อความที่ต้องการค้นหาและข้อความที่จะทดแทน
      4. ดำเนินการลบและบันทึกไฟล์ใหม่ของคุณ
   
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

        # วิธีลบข้อความในไฟล์ DOCX

        # เลือกการตั้งค่าการลบของคุณ
        # กรอกข้อความที่จะค้นหาและสิ่งที่จะทดแทน
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # เปิดไฟล์ของคุณด้วยตัวสร้าง Redactor
        with gr.Redactor("input.docx") as redactor:

            # นำการเปลี่ยนแปลงไปใช้และบันทึกไฟล์ DOCX ที่แก้ไขแล้ว
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "เครื่องมือการลบเพิ่มเติม"
  description: "GroupDocs.Redaction for Python via .NET ช่วยให้คุณลบหรือซ่อนข้อความที่เป็นความลับในหลายรูปแบบ"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "เครื่องมือสำหรับการลบข้อความ ภาพ และข้อมูลเมตา"
  features:
    # feature loop
    - title: "ค้นหาและแทนที่ข้อความที่เป็นความลับ"
      content: "ค้นหาเฉพาะคำหรือลายละเอียดและแทนที่ด้วยคำใหม่ ใช้งานได้กับการแสดงออกปกติและตัวเลือกคำสำคัญ"

    # feature loop
    - title: "ปกปิดภาพที่ละเอียดอ่อน"
      content: "ใช้เลเยอร์หรือซ่อนบางพื้นที่ของภาพ เปลี่ยนสี ความโปร่งใส และขนาดตามความต้องการ"

    # feature loop
    - title: "ลบข้อมูลเมตา"
      content: "ลบข้อมูลที่ซ่อนอยู่เช่นชื่อผู้เขียน วันเวลา และหมายเหตุภายในเพื่อเก็บไฟล์ของคุณให้เป็นส่วนตัว"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ใช้ Regex เพื่อลบแพทเทิร์น"
      content: |
        ค้นหาอีเมล หมายเลขประจำตัว หรือรูปแบบต่าง ๆ โดยใช้การแสดงออกปกติและแทนที่มันง่าย
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

          # เปิดไฟล์ที่คุณต้องการทำความสะอาด
          with gr.Redactor("source.docx") as redactor:

              # นำการตั้งค่าการลบของคุณไปใช้
              result = redactor.apply(redaction)

              # บันทึกเอกสารที่ถูกลบแล้ว
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
    title: "ลบเนื้อหาใน DOCX ด้วย Python"
    exclude: "DOCX"
    description: "ใช้ Python เพื่อลบข้อความที่ละเอียดอ่อนออกจากไฟล์ DOCX เก็บเอกสารส่วนบุคคลและการทำงานให้ปลอดภัย"
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