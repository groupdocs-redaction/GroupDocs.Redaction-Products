
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: th
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "แก้ไขข้อมูลเมตาใน JPEG โดยใช้ Python"
head_description: "GroupDocs.Redaction for Python via .NET ช่วยให้คุณลบหรือปรับปรุงข้อมูลเมตาในเอกสาร JPEG ลบฟิลด์ที่ซ่อนอยู่ที่อาจเปิดเผยรายละเอียดส่วนตัว."

############################# Header ############################
title: "ทำความสะอาดข้อมูลเมตาใน JPEG ผ่าน Python" 
description: "รักษาความปลอดภัยไฟล์ JPEG ของคุณโดยการลบข้อมูลเมตาที่ซ่อนอยู่โดยใช้เครื่องมือที่สร้างขึ้นสำหรับ Python."
subtitle: "คุณสมบัติหลักของ GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "เรียนรู้เกี่ยวกับ GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction มอบเครื่องมือที่ง่ายต่อการลบข้อความ, รูปภาพ, และข้อมูลเมตาจากเอกสาร JPEG.

############################# Steps ############################
steps:
    enable: true
    title: "ขั้นตอนในการทำความสะอาดข้อมูลเมตา Jpeg"
    content: |
      GroupDocs.Redaction ช่วยให้การลบข้อมูลเมตาเป็นเรื่องง่ายและรวดเร็วสำหรับแอป Python via .NET ของคุณ.
      
      1. ติดตั้ง Redactor และเปิดเอกสาร Jpeg ของคุณ.
      2. เลือกตัวเลือกเพื่อลบฟิลด์ข้อมูลเมตา.
      3. เรียกใช้การลบข้อมูลเพื่อลบไฟล์.
      4. บันทึกเวอร์ชันใหม่โดยไม่มีข้อมูลซ่อน.
   
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

        # ทำความสะอาดข้อมูลเมตาใน JPEG

        # เลือกฟิลด์ข้อมูลเมตาที่จะทำความสะอาด
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # เปิดไฟล์โดยใช้ Redactor
        with gr.Redactor("input.jpg") as redactor:

            # ใช้การลบข้อมูลและบันทึกไฟล์
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "รักษาความเป็นส่วนตัวในทุกไฟล์"
  description: "GroupDocs.Redaction for Python via .NET มอบการควบคุมข้อมูลที่ละเอียดอ่อนในเอกสาร ลบเนื้อหาที่มีการซ่อนในข้อความ, รูปภาพ, และข้อมูลเมตา."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ฟีเจอร์การลบข้อมูลเมตา"
  features:
    # feature loop
    - title: "ค้นหาและลบข้อความ"
      content: "ตรวจหาและลบคำหรือข้อมูลส่วนตัวจากเอกสาร."

    # feature loop
    - title: "ปิดบังรายละเอียดในภาพ"
      content: "ครอบคลุมบริเวณของภาพที่ไม่ควรให้เห็นโดยเด็ดขาด."

    # feature loop
    - title: "แก้ไขข้อมูลเมตาในไฟล์"
      content: "เปลี่ยนหรือลบฟิลด์ข้อมูลเมตาเพื่อปกป้องข้อมูลของเอกสาร."
      
  code_samples_ext:
    # code sample ext loop
    - title: "แก้ไขฟิลด์ข้อมูลเมตา"
      content: |
        ตัวอย่างนี้แสดงวิธีการลบหรือลดประสิทธิภาพฟิลด์ที่ค่าเช่น ผู้เขียนและชื่อเรื่องในเอกสาร JPEG.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # เป้าหมายฟิลด์ของชื่อผู้เขียน
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # เป้าหมายฟิลด์ของชื่อเรื่อง
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # เปิดไฟล์ JPEG
          with gr.Redactor("source.jpg") as redactor:

              # ใช้กระบวนการทำความสะอาด
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # บันทึกเวอร์ชันใหม่
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
    title: "ทำความสะอาดข้อมูลเมตาใน JPEG ด้วย Python"
    exclude: "JPEG"
    description: "ใช้ Python เพื่อกำจัดข้อมูลและข้อมูลที่ซ่อนอยู่จากเอกสาร JPEG ได้อย่างรวดเร็วและง่ายดาย."
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