
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: th
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ลบข้อความที่เป็นความลับจาก POWERPOINT ด้วย Python"
head_description: "ทำให้ข้อมูลลับในไฟล์ POWERPOINT ของคุณปลอดภัยด้วย GroupDocs.Redaction for Python via .NET และ Python"

############################# Header ############################
title: "ค้นหาและซ่อนข้อความที่เป็นความลับในไฟล์ POWERPOINT ด้วย Python" 
description: "ใช้ GroupDocs.Redaction for Python via .NET และ Python เพื่อซ่อนหรือลบเนื้อหาที่ละเอียดอ่อนในเอกสาร POWERPOINT ค้นหาข้อมูลส่วนตัว ซึ่งจะต้องเก็บเป็นความลับ"
subtitle: "สิ่งที่คุณสามารถทำได้ด้วย GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "รู้จักกับ GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET มอบวิธีที่สะดวกในการทำความสะอาดไฟล์ POWERPOINT ทั้งหมด

############################# Steps ############################
steps:
    enable: true
    title: "วิธีทำความสะอาดข้อความในไฟล์ Powerpoint"
    content: |
      ใช้ GroupDocs.Redaction for Python via .NET ในแอป Python via .NET ของคุณเพื่อลบหรือลบข้อมูลที่ละเอียดอ่อนอย่างรวดเร็ว
      
      1. สร้าง Redactor และโหลดไฟล์ Powerpoint ของคุณ
      2. กำหนดตัวเลือกการลบ
      3. กำหนดข้อความที่ต้องการลบและที่จะทดแทน
      4. ใช้การลบและบันทึก
   
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

        # วิธีลบข้อความในไฟล์ POWERPOINT

        # เลือกตัวเลือกการลบ
        # เลือกการค้นหาและสิ่งที่จะทดแทน
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # โหลดไฟล์คุณด้วยตัวสร้าง Redactor
        with gr.Redactor("input.pptx") as redactor:

            # ระวังกับผลลัพธ์ที่ถูกลบ
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "เครื่องมือการลบข้อมูลเพิ่มเติม"
  description: "GroupDocs.Redaction for Python via .NET ช่วยให้คุณจัดการเนื้อหาที่ซ่อนอยู่ในตำแหน่งต่าง ๆ"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "ข้อมูลประกอบการลบ"
  features:
    # feature loop
    - title: "ค้นหาและแทนที่ข้อความ"
      content: "สลับคำด้วยการค้นหา ใช้การแสดงออกมากมาย"

    # feature loop
    - title: "ปกปิดเนื้อหาภาพ"
      content: "ซ่อนข้อมูลที่มีในส่วนต่าง ๆ ปรับไอคอนที่คุณเลือก"

    # feature loop
    - title: "ลบข้อมูลซ่อน"
      content: "ทำความสะอาดข้อมูลอัตโนมัติเพื่อลบออก"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ลบข้อมูลที่ละเอียดอ่อนด้วย Regex"
      content: |
        ใช้การแสดงออกปกติเพื่อค้นหาข้อความที่ละเอียดอ่อนเช่นอีเมล หมายเลขโทรศัพท์ หรือหมายเลขประจำตัว
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # ตั้งค่ารูปแบบ EMAIL regex
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # เปิดไฟล์ที่ต้องการแก้ไข
          with gr.Redactor("source.pptx") as redactor:

              # ทำการลบ
              result = redactor.apply(redaction)

              # เข้าบันทึกไฟล์
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
    title: "ลบเนื้อหาใน POWERPOINT ด้วย Python"
    exclude: "POWERPOINT"
    description: "ต้องการให้เนื้อหาของคุณปลอดภัยในไฟล์ POWERPOINT"
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