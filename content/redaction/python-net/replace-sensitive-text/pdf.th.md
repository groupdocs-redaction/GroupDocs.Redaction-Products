
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: th
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ลบข้อความที่เป็นความลับใน PDF ด้วย Python"
head_description: "เก็บรายละเอียดที่เป็นส่วนตัวให้ปลอดภัยในเอกสาร PDF ของคุณด้วย GroupDocs.Redaction for Python via .NET ค้นหาและซ่อนข้อมูลที่เป็นความลับได้อย่างรวดเร็ว"

############################# Header ############################
title: "ลบข้อความที่เป็นความลับจากไฟล์ PDF ด้วย Python" 
description: "ใช้ Python และ GroupDocs.Redaction for Python via .NET เพื่อค้นหาและลบข้อมูลส่วนตัว ข้อมูลทางกฎหมาย หรือข้อมูลส่วนตัวจากไฟล์ PDF ของคุณ"
subtitle: "สิ่งที่คุณสามารถทำได้ด้วย GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "อะไรคือ GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET มอบเครื่องมือทั้งหมดที่นักพัฒนา Python ต้องการในการลบเนื้อหาในไฟล์ PDF – ข้อความ ภาพ หมายเหตุ และอื่น ๆ

############################# Steps ############################
steps:
    enable: true
    title: "วิธีลบเนื้อหาในไฟล์ Pdf"
    content: |
      เก็บเนื้อหาของคุณให้ปลอดภัยในแอป Python via .NET ใด ๆ โดยใช้ GroupDocs.Redaction for Python via .NET
      
      1. สร้าง Redactor และโหลดไฟล์ Pdf ของคุณ
      2. เลือกการตั้งค่าการลบที่คุณต้องการ
      3. กรอกข้อความที่ต้องการค้นหาและสิ่งที่จะแทนที่
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

        # 

        # 
        # 
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # 
        with gr.Redactor("input.pdf") as redactor:

            # 
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ฟีเจอร์การลบเพิ่มเติม"
  description: "GroupDocs.Redaction for Python via .NET ช่วยให้คุณซ่อนเนื้อหาที่เป็นความลับในหลายประเภทไฟล์ เก็บข้อมูลของคุณให้ปลอดภัยและพร้อมที่จะแบ่งปัน"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "เครื่องมือสำหรับการลบข้อความ ภาพ และข้อมูลเมตา"
  features:
    # feature loop
    - title: "ค้นหาและแทนที่ข้อความที่เป็นความลับ"
      content: "ค้นหาและเปลี่ยนข้อความที่ตรงกัน ใช้งานได้กับ regex และการค้นหาด้วยคำหลัก"

    # feature loop
    - title: "ปกปิดภาพที่เป็นความลับ"
      content: "ซ่อนภาพทั้งหมดหรือบางส่วนโดยใช้เลเยอร์ ปรับแต่งการตั้งค่าการแสดงผล"

    # feature loop
    - title: "ลบข้อมูลเมตาที่ซ่อนอยู่"
      content: "ลบข้อมูลที่ซ่อนอยู่เช่นชื่อผู้เขียน วันเวลาที่ทำการบันทึก และหมายเหตุก่อนหน้า"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ลบด้วย Regex"
      content: |
        ใช้ regex เพื่อค้นหาและลบรูปแบบเช่นอีเมล หมายเลขบัตรประชาชน หรือหมายเลขต่าง ๆ
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # ตั้งค่าแพทเทิร์น regex และข้อความที่จะทดแทน
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # เปิดไฟล์ที่คุณต้องการทำความสะอาด
          with gr.Redactor("source.pdf") as redactor:

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
    title: "ลบเนื้อหาใน PDF ด้วย Python"
    exclude: "PDF"
    description: "เก็บข้อมูลส่วนตัวหรือข้อมูลทางธุรกิจให้ปลอดภัยโดยการลบข้อความในไฟล์ PDF ด้วยเครื่องมือ Python"
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