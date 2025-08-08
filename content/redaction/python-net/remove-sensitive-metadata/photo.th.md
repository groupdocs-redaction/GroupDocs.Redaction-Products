
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: th
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ลบข้อมูลเมตาใน PHOTO ด้วย Python"
head_description: "ด้วย GroupDocs.Redaction for Python via .NET คุณสามารถลบข้อมูลที่ซ่อนอยู่จากไฟล์ PHOTO และหลีกเลี่ยงการเปิดเผยข้อมูลที่ละเอียดอ่อน."

############################# Header ############################
title: "ทำความสะอาดข้อมูลเมตาจาก PHOTO โดยใช้ Python" 
description: "ปกป้องเอกสาร PHOTO ของคุณโดยการลบข้อมูลที่ซ่อนอยู่ด้วยเครื่องมือ Python ที่ใช้งานง่าย."
subtitle: "คุณสมบัติหลักของ GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction มอบเครื่องมือให้กับผู้ใช้ Python ในการทำความสะอาดไฟล์โดยการลบข้อมูลที่ซ่อนในข้อความ, รูปภาพ, และข้อมูลเมตาใน PHOTO.

############################# Steps ############################
steps:
    enable: true
    title: "ขั้นตอนในการลบข้อมูลเมตาจาก Photo"
    content: |
      ใช้ GroupDocs.Redaction ในโครงการ Python via .NET ของคุณเพื่อลบข้อมูลเมตาในเอกสารในไม่กี่ขั้นตอน.
      
      1. ตั้งค่า Redactor และเปิดไฟล์ Photo ของคุณ.
      2. เลือกฟิลด์ข้อมูลเมตาที่จะลบ.
      3. ใช้การลบข้อมูลเพื่อลบไฟล์.
      4. บันทึกเวอร์ชันสุดท้าย.
   
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

        # ลบข้อมูลเมตาที่ซ่อนอยู่ในเอกสาร PHOTO

        # เลือกข้อมูลเมตาที่ต้องการลบ
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # เปิดไฟล์ของคุณด้วย Redactor
        with gr.Redactor("input.jpeg") as redactor:

            # ดำเนินการลบและบันทึก
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ส่งไฟล์ให้พร้อมก่อนการแบ่งปัน"
  description: "GroupDocs.Redaction for Python via .NET ช่วยลบข้อมูลที่ไม่ควรจะเห็น ลบข้อความ, รูปภาพ, และรายละเอียดที่ซ่อนให้ง่ายดาย."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ฟีเจอร์การลบข้อมูลที่มีประโยชน์"
  features:
    # feature loop
    - title: "การลบข้อความ"
      content: "ค้นหาและลบคำที่ละเอียดอ่อน, ตัวเลข, หรือรูปแบบ."

    # feature loop
    - title: "การปกคลุมภาพ"
      content: "ลบพื้นที่ของรูปภาพที่ถือข้อมูลที่ละเอียดอ่อน."

    # feature loop
    - title: "การทำความสะอาดข้อมูลเมตา"
      content: "ลบรายละเอียดของข้อมูลจากฟิลด์ เช่น ผู้เขียน, ชื่อเรื่อง หรือความคิดเห็น."
      
  code_samples_ext:
    # code sample ext loop
    - title: "ลบข้อมูลเมตาเฉพาะ"
      content: |
        ทำตามตัวอย่างนี้เพื่อเราลบฟิลด์ชื่อผู้เขียนและชื่อเรื่องในเอกสาร PHOTO.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # ทำเครื่องหมายฟิลด์ชื่อผู้เขียน
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # ทำเครื่องหมายฟิลด์ชื่อเรื่อง
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # โหลดไฟล์เข้าสู่ตัวลบ
          with gr.Redactor("source.jpeg") as redactor:

              # ลบข้อมูลที่เลือก
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # บันทึกไฟล์ที่อัปเดตแล้ว
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
    title: "ลบข้อมูลเมตาจาก PHOTO ด้วย Python"
    exclude: "PHOTO"
    description: "ใช้ Python เพื่อลบข้อมูลเมตาที่ซ่อนอยู่จากไฟล์ PHOTO รักษาเอกสารให้อยู่ในสถานะที่ปลอดภัยและสะอาด."
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