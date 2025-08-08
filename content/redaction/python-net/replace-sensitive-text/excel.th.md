
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: th
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ลบข้อความที่เป็นความลับจาก EXCEL ด้วย Python"
head_description: "ทำความสะอาดข้อมูลที่ละเอียดอ่อนในไฟล์ EXCEL ของคุณด้วย GroupDocs.Redaction for Python via .NET และ Python"

############################# Header ############################
title: "ค้นหาและลบข้อความที่เป็นความลับในไฟล์ EXCEL ด้วย Python" 
description: "ใช้งาน Python และ GroupDocs.Redaction for Python via .NET เพื่อลบรายละเอียดที่เป็นความลับในเอกสาร EXCEL ของคุณ สร้างความปลอดภัยให้กับข้อมูลของคุณ"
subtitle: "สิ่งที่คุณสามารถทำได้ด้วย GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "รู้จักGroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET มอบเครื่องมือในการทำความสะอาดไฟล์ EXCEL ของคุณเป็นไปอย่างมีประสิทธิภาพ

############################# Steps ############################
steps:
    enable: true
    title: "วิธีลบข้อความในไฟล์ Excel"
    content: |
      ใช้GroupDocs.Redaction for Python via .NET ใน Python via .NET โครงการของคุณเพื่อชัดเจนหรือซ่อนข้อมูล
      
      1. สร้างRedactor และเปิดไฟล์
      2. ตั้งค่า
      3. กรอกข้อความที่ต้องค้นหาและที่จะทำการแทนที่
      4. นำการลบไปใช้และบันทึกไฟล์
   
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

        # วิธีลบข้อความในไฟล์ EXCEL

        # เลือกตัวเลือกที่คุณต้องการ
        # กำหนดข้อความ
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # เข้าสู่การตั้งค่าการลบใน /Redactor
        with gr.Redactor("input.xslx") as redactor:

            # บันทึกไฟล์ที่แก้ไขแล้ว
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ฟีเจอร์การลบเพิ่มเติม"
  description: "GroupDocs.Redaction for Python via .NET ช่วยให้คุณลบหรือซ่อนข้อมูลส่วนตัวในหลายรูปแบบไฟล์"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "เครื่องมือการลบ"
  features:
    # feature loop
    - title: "ค้นหาและแทนที่ข้อความ"
      content: "ค้นหาและซึ่งทำให้ข้อมูลที่ซ่อนอยู่ปรากฏ"

    # feature loop
    - title: "ปกปิดข้อมูลการแสดงภาพ"
      content: "ซ่อนภาพและรวมข้อมูล"

    # feature loop
    - title: "จัดเก็บข้อมูลซ่อน"
      content: "เพื่อลบและเอาข้อมุล"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ลบด้วยแพทเทิร์น Regex"
      content: |
        ใช้ regex เพื่อค้นหาและทำความสะอาดแพทเทิร์น เช่น อีเมลและหมายเลขบัตรประชาชน
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # ตั้งค่าแพทเทิร์น EMAIL regex และที่จะทดแทน
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # เปิดไฟล์ที่คุณต้องการทำความสะอาด
          with gr.Redactor("source.xslx") as redactor:

              # นำการตั้งค่าการลบไปใช้
              result = redactor.apply(redaction)

              # บันทึกไฟล์ที่ทำการลบ
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
    title: "ลบเนื้อหาใน EXCEL ด้วย Python"
    exclude: "EXCEL"
    description: "ใช้Python เพื่อลบข้อมูลที่ละเอียดอ่อนในไฟล์EXCEL"
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