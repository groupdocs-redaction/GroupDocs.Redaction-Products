
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: th
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ลบข้อความที่เป็นความลับจาก PPTX ด้วย Python"
head_description: "เก็บไฟล์ PPTX ของคุณให้ปลอดภัยด้วย GroupDocs.Redaction for Python via .NET และ Python ค้นหาและลบเนื้อหาที่ละเอียดอ่อนได้อย่างรวดเร็ว"

############################# Header ############################
title: "แก้ไขหรือซ่อนข้อความที่เป็นความลับในไฟล์ PPTX ด้วย Python" 
description: "ใช้ GroupDocs.Redaction for Python via .NET และ Python เพื่อค้นหาและทำความสะอาดข้อมูลที่ละเอียดอ่อนในเอกสาร PPTX ของคุณ เก็บไฟล์ส่วนตัวหรือสำหรับการทำงานให้เป็นความลับ"
subtitle: "สิ่งที่คุณสามารถทำได้ด้วย GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "รู้จักกับ GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET ให้ควบคุมเนื้อหา PPTX อย่างสมบูรณ์

############################# Steps ############################
steps:
    enable: true
    title: "วิธีลบข้อความในเอกสาร Pptx"
    content: |
      ใช้ GroupDocs.Redaction for Python via .NET ในสภาพแวดล้อม Python via .NET ของคุณเพื่อซ่อนหรือกำจัดเนื้อหาที่ละเอียดอ่อนอย่างรวดเร็ว
      
      1. สร้าง Redactor และโหลดไฟล์ Pptx ของคุณ
      2. เลือกการตั้งค่าการลบของคุณ
      3. กรอกข้อความที่ต้องการค้นหาและสิ่งที่จะทดแทน
      4. นำการลบไปใช้และบันทึกไฟล์ที่อัปเดต
   
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

        # วิธีลบข้อความในไฟล์ PPTX

        # เลือกตัวเลือกการลบที่คุณต้องการ
        # เลือกข้อความที่จะค้นหาและสิ่งที่จะทดแทน
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # ใช้ตัวสร้าง Redactor เพื่อโหลดไฟล์ของคุณ
        with gr.Redactor("input.pptx") as redactor:

            # ดำเนินการลบและบันทึกไฟล์ PPTX ที่อัปเดตแล้ว
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ฟีเจอร์การลบเพิ่มเติม"
  description: "GroupDocs.Redaction for Python via .NET ช่วยให้คุณลบหรือซ่อนข้อมูลที่ละเอียดอ่อนในหลายรูปแบบ แชร์เอกสารอย่างปลอดภัย"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "ภาพรวมฟีเจอร์การลบ"
  features:
    # feature loop
    - title: "แทนที่ข้อความที่เป็นความลับ"
      content: "ค้นหาและสลับเฉพาะคำหรือลักษณะที่ระบุ ใช้งานได้กับการแสดงออกปกติและตัวกรองอัจฉริยะ"

    # feature loop
    - title: "ปกปิดภาพที่เป็นความลับ"
      content: "ซ่อนหรือOverlay บางส่วนในรูปภาพ ปรับแต่งการตั้งค่าให้เหมาะสม"

    # feature loop
    - title: "ลบข้อมูลที่ซ่อนอยู่"
      content: "ทำความสะอาดข้อมูลเมตาเช่นชื่อผู้สร้าง วันเวลาของเอกสาร หรือการเปลี่ยนแปลงภายใน"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ลบด้วยแพทเทิร์นด้วย Regex"
      content: |
        ใช้การแสดงออกปกติเพื่อค้นหาและทำความสะอาดข้อความเช่นที่อยู่อีเมล หมายเลขโทรศัพท์ หรือข้อมูลประจำตัวอื่น ๆ
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

          # เปิดไฟล์ที่คุณต้องการแก้ไข
          with gr.Redactor("source.pptx") as redactor:

              # นำการดำเนินการลบไปใช้
              result = redactor.apply(redaction)

              # บันทึกไฟล์ที่ถูกทำความสะอาด
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
    title: "ลบเนื้อหาใน PPTX ด้วย Python"
    exclude: "PPTX"
    description: "ด้วยPython คุณสามารถลบข้อความที่เป็นความลับจากเอกสาร PPTX และเก็บข้อมูลของคุณให้ปลอดภัย"
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