
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: th
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ทำความสะอาดข้อมูลเมตาจาก EXCEL โดยใช้ Python"
head_description: "ใช้ GroupDocs.Redaction for Python via .NET เพื่อลบข้อมูลเมตาจากเอกสาร EXCEL กำจัดข้อมูลที่ซ่อนอยู่และปกป้องข้อมูลที่ละเอียดอ่อน."

############################# Header ############################
title: "ลบข้อมูลที่ซ่อนอยู่ในไฟล์ EXCEL ด้วย Python" 
description: "ควบคุมไฟล์ EXCEL ของคุณด้วย Python กำจัดข้อมูลที่ไม่ต้องการเพื่อรักษาชีวิตความเป็นส่วนตัว."
subtitle: "คุณสมบัติหลักของ GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "รู้จัก GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ถูกสร้างขึ้นเพื่อสนับสนุนนักพัฒนาที่ใช้ Python ที่ต้องการทำความสะอาดและปกป้องไฟล์ EXCEL ลบข้อมูลเมตา, ข้อความ, และภาพที่ไม่จำเป็นได้อย่างง่ายดาย.

############################# Steps ############################
steps:
    enable: true
    title: "ขั้นตอนในการทำความสะอาดข้อมูลเมตาในไฟล์ Excel"
    content: |
      ในแอป Python via .NET ของคุณ GroupDocs.Redaction ช่วยลบข้อมูลเมตาในไม่กี่ขั้นตอน.
      
      1. เริ่มต้น Redactor และเปิดไฟล์ Excel.
      2. เลือกฟิลด์ข้อมูลเมตาที่จะลบ.
      3. ดำเนินการลบข้อมูล.
      4. ส่งออกเวอร์ชันสุดท้าย.
   
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

        # ลบข้อมูลที่ซ่อนอยู่ใน EXCEL

        # เลือกข้อมูลเมตาที่จะลบ
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # เปิดไฟล์ของคุณด้วยตัวลบ
        with gr.Redactor("input.xslx") as redactor:

            # ดำเนินการตามขั้นตอนและบันทึกไฟล์
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ทำความสะอาดข้อมูลที่ละเอียดอ่อนทั้งหมด"
  description: "GroupDocs.Redaction for Python via .NET มอบเครื่องมือในการลบข้อมูลเมตา, ข้อความ, และรูปภาพในหลายรูปแบบ เชื่อมต่อกับการแชร์เอกสารอย่างปลอดภัย."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "เครื่องมือสำหรับข้อมูลและความเป็นส่วนตัว"
  features:
    # feature loop
    - title: "ลบข้อความส่วนตัว"
      content: "ค้นหาและลบข้อมูลส่วนบุคคลหรือข้อมูลที่ไม่ควรเห็นในเอกสาร."

    # feature loop
    - title: "ปิดบังรายละเอียดในภาพ"
      content: "ใส่ทับเพื่อปกปิดพื้นที่ในภาพที่ควรจะเป็นส่วนตัว."

    # feature loop
    - title: "ทำความสะอาดข้อมูลเมตา"
      content: "ลบฟิลด์ข้อมูลที่ซ่อนอยู่ที่อาจมีข้อมูลสำคัญ."
      
  code_samples_ext:
    # code sample ext loop
    - title: "ลบข้อมูลผู้เขียนและชื่อเรื่อง"
      content: |
        ดูวิธีที่ GroupDocs.Redaction for Python via .NET ลบฟิลด์ข้อมูลเมตาเฉพาะจากเอกสาร EXCEL.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # ลบข้อมูลของผู้เขียน
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # ลบฟิลด์ชื่อเรื่อง
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # เปิดเอกสารสำหรับการลบข้อมูล
          with gr.Redactor("source.xslx") as redactor:

              # ดำเนินการเปลี่ยนแปลง
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # บันทึกเอกสารที่สะอาด
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "ทำความสะอาดข้อมูลเมตาใน EXCEL ด้วย Python"
    exclude: "EXCEL"
    description: "ใช้ Python เพื่อลบข้อมูลส่วนตัวจากไฟล์ EXCEL ของคุณ รักษาความปลอดภัยเพื่อแชร์."
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/python-net/remove-sensitive-metadata//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/python-net/remove-sensitive-metadata//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/python-net/remove-sensitive-metadata//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/remove-sensitive-metadata//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลในรูปภาพ"
          format: "IMAGE"
          link: "/redaction/python-net/remove-sensitive-metadata//image/"
          description: "รูปแบบภาพที่นิยม"

        # format loop 6
        - name: "ลบข้อมูลในรูปถ่าย"
          format: "PHOTO"
          link: "/redaction/python-net/remove-sensitive-metadata//photo/"
          description: "รูปถ่าย"

        # format loop 7
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/python-net/remove-sensitive-metadata//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 8
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/python-net/remove-sensitive-metadata//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 9
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/python-net/remove-sensitive-metadata//pptx/"
          description: "การเสนอ PowerPoint Open XML"

        # format loop 10
        - name: "ลบข้อมูลใน JPEG"
          format: "JPEG"
          link: "/redaction/python-net/remove-sensitive-metadata//jpeg/"
          description: "ภาพ JPEG"


---