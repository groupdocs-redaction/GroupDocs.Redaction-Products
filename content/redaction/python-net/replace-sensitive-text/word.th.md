
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: th
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ลบข้อความที่เป็นความลับจาก WORD ด้วย Python"
head_description: "ปกป้องข้อมูลส่วนตัวในไฟล์ WORD ของคุณด้วย GroupDocs.Redaction for Python via .NET และ Python"

############################# Header ############################
title: "แก้ไขหรือซ่อนข้อความที่เป็นความลับในไฟล์ WORD ด้วย Python" 
description: "ทำให้เนื้อหาที่ละเอียดอ่อนในไฟล์ WORD สะอาดโดยใช้ GroupDocs.Redaction for Python via .NET และ Python เก็บเอกสารส่วนตัวหรือการทำงานให้ปลอดภัย"
subtitle: "สิ่งที่คุณสามารถทำได้ด้วย GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "รู้จักกับGroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET ให้คุณสามารถจัดการไฟล์ WORD และรายละเอียดในหลายมุมมอง

############################# Steps ############################
steps:
    enable: true
    title: "วิธีลบข้อความในไฟล์ Word"
    content: |
      ใช้ GroupDocs.Redaction for Python via .NET ในแอป Python via .NET ของคุณเพื่อลบหรือซ่อนข้อมูลที่เป็นความลับ
      
      1. เริ่มต้น Redactor และโหลดไฟล์ Word
      2. เลือกการตั้งค่าการลบที่คุณต้องการ
      3. กรอกข้อความที่ต้องค้นหาและที่จะแทนที่
      4. รอใช้งานลบและบันทึกเอกสารของคุณ
   
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

        # วิธีลบข้อความในไฟล์ WORD

        # เลือกตัวเลือกการลบของคุณ
        # เลือกสิ่งที่ต้องการแทนที่
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # ใช้ตัวสร้าง Redactor เพื่อโหลดไฟล์
        with gr.Redactor("input.docx") as redactor:

            # นำการลบไปใช้และบันทึก
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "เครื่องมือการลบเพิ่มเติม"
  description: "GroupDocs.Redaction for Python via .NET มีฟังก์ชันการลบที่ครอบคลุมสำหรับรูปแบบไฟล์หลายรูปแบบ"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "ภาพรวมของฟังก์ชันการลบ"
  features:
    # feature loop
    - title: "แทนที่ข้อความ"
      content: "ค้นหาและปรับชนิดของข้อความให้เหมาะสม"

    # feature loop
    - title: "จัดการภาพ"
      content: "แสดงและระบุความจำเป็นที่คุณได้ฯลฯ"

    # feature loop
    - title: "ทำความสะอาดข้อมูลทางเลือก"
      content: "ตรวจสอบเมทาดาต้าที่เกิดขึ้น"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ลบด้วยแพทเทิร์นด้วย Regex"
      content: |
        ค้นหาและทำความสะอาดข้อความที่อยู่ซึ่งมักจะซ่อนอยู่ในเมทาดาต้าหรือหมายเลข
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # ตรวจสอบการตั้งค่า regex และข้อความ
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # เปิดเอกสาร
          with gr.Redactor("source.docx") as redactor:

              # ดำเนินการลบไปจริง
              result = redactor.apply(redaction)

              # บันทึกเอกสาร
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
    title: "ลบเนื้อหาใน WORD ด้วย Python"
    exclude: "WORD"
    description: "ใช้Python โดยปิดเสียงเนื้อหาและข้อมูลในเอกสาร"
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