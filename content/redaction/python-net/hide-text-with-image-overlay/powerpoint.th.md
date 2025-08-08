
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: th
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ซ่อนข้อความที่ละเอียดอ่อนใน POWERPOINT โดยใช้การทับซ้อนของ Python"
head_description: "GroupDocs.Redaction for Python via .NET ช่วยให้คุณปกคลุมเนื้อหาที่ละเอียดอ่อนในไฟล์ POWERPOINT ด้วยการทับซ้อนสี เก็บทุกอย่างไว้ในที่เดิมในขณะที่ซ่อนสิ่งที่สำคัญ"

############################# Header ############################
title: "ซ่อนข้อความในงานนำเสนอ POWERPOINT ด้วย Python" 
description: "ใช้ Python และ GroupDocs.Redaction for Python via .NET เพื่อเพิ่มการทับซ้อนและซ่อนข้อความที่ละเอียดอ่อนในสไลด์ POWERPOINT ของคุณ"
subtitle: "สิ่งที่คุณสามารถทำได้ด้วย GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "เรียนรู้เพิ่มเติมเกี่ยวกับ GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET ช่วยนักพัฒนา Python ในการทำความสะอาดงานนำเสนอ POWERPOINT โดยการปกคลุมหรือลบข้อความ ภาพ และข้อมูลที่ซ่อนอยู่

############################# Steps ############################
steps:
    enable: true
    title: "แก้ไขข้อมูลในไฟล์ Powerpoint"
    content: |
      ด้วย GroupDocs.Redaction for Python via .NET คุณสามารถเตรียมไฟล์ Powerpoint สำหรับการแชร์โดยใช้ขั้นตอนการแก้ไขที่ง่าย
      
      1. สร้าง Redactor ใหม่และโหลดไฟล์ของคุณ
      2. เลือกสิ่งที่จะซ่อนและวิธีการใช้
      3. เพิ่มแพทเทิร์นค้นหาและตั้งค่าสีการทับซ้อน
      4. ดำเนินการแก้ไขและบันทึกเอกสารที่อัปเดต
   
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
        import groupdocs.pydrawing as grd

        # ปกปิดข้อความที่ละเอียดอ่อนใน POWERPOINT โดยใช้การทับซ้อน

        # ตั้งค่าให้การแก้ไขทำงาน
        # เลือกข้อความและสีให้ซ่อน
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # ใช้ Redactor เพื่อโหลดงานนำเสนอของคุณ
        with gr.Redactor("input.pptx") as redactor:

            # ดำเนินการแก้ไขและบันทึกไฟล์
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "วิธีง่ายๆ ในการซ่อนข้อมูล"
  description: "GroupDocs.Redaction for Python via .NET ทำให้การซ่อนหรือเอาส่วนที่ละเอียดอ่อนออกจากเอกสารทำได้ง่าย — เหมาะสำหรับใช้ทางกฎหมาย ข้อมูลส่วนบุคคล หรือธุรกิจ"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "เครื่องมือที่เป็นประโยชน์สำหรับความเป็นส่วนตัว"
  features:
    # feature loop
    - title: "ค้นหาและแทนที่ข้อความ"
      content: "ค้นหาคำหรือหมายเลขและซ่อนหรือเปลี่ยนแปลงมัน"

    # feature loop
    - title: "ซ่อนส่วนของภาพ"
      content: "วาดการทับซ้อนเพื่อปิดบังภาพทั้งหมดหรือจุดเลือก"

    # feature loop
    - title: "ลบข้อมูลที่ซ่อน"
      content: "ลบเมตาดาทาที่อาจมีชื่อหรือเวลา"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ทำการแก้ไขโดยใช้การค้นหา Regex"
      content: |
        ดูว่า Regular Expressions ช่วยให้คุณค้นหาและซ่อนข้อความในสไลด์ของคุณอย่างไร
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # กำหนดแพทเทิร์นและสีการทับซ้อน
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # เปิดไฟล์ POWERPOINT ของคุณ
          with gr.Redactor("source.pptx") as redactor:

              # ทำการแก้ไข
              result = redactor.apply(redaction)

              # บันทึกเวอร์ชันสุดท้าย
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "ซ่อนข้อความใน POWERPOINT ด้วย Python"
    exclude: "POWERPOINT"
    description: "ใช้ Python เพื่อเพิ่มการทับซ้อนหรือเอาเนื้อหาออกจากสไลด์ POWERPOINT เพื่อรักษาข้อมูลที่เป็นส่วนตัวให้ปลอดภัย"
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-text-with-image-overlay//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/python-net/hide-text-with-image-overlay//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-text-with-image-overlay//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-text-with-image-overlay//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-text-with-image-overlay//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 6
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-text-with-image-overlay//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 7
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-text-with-image-overlay//pptx/"
          description: "การเสนอ PowerPoint Open XML"


---