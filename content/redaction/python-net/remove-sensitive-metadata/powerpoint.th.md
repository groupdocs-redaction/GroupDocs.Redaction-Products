
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
head_title: "ทำความสะอาดข้อมูลเมตาใน POWERPOINT โดยใช้ Python"
head_description: "รักษาความปลอดภัยเอกสาร POWERPOINT ของคุณด้วย GroupDocs.Redaction for Python via .NET โดยการลบข้อมูลที่ซ่อนซึ่งอาจเก็บข้อมูลที่ละเอียดอ่อน."

############################# Header ############################
title: "ทำความสะอาดข้อมูลเมตาจาก POWERPOINT ด้วย Python" 
description: "ควบคุมไฟล์ของคุณได้ดีขึ้นโดยใช้เครื่องมือ Python ที่สามารถลบข้อมูลเมตาที่ซ่อนอยู่ได้อย่างรวดเร็ว."
subtitle: "คุณสมบัติชั้นนำของ GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "เรียนรู้เกี่ยวกับ GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ถูกออกแบบมาสำหรับนักพัฒนาที่ใช้ Python เพื่อช่วยในการลบข้อมูล, รูปภาพ และข้อมูลเมตาในไฟล์ POWERPOINT.

############################# Steps ############################
steps:
    enable: true
    title: "ขั้นตอนในการลบข้อมูลเมตาใน Powerpoint"
    content: |
      GroupDocs.Redaction ช่วยให้แอป Python via .NET ของคุณลบข้อมูลเมตาจากเอกสารได้ในไม่กี่คลิก.
      
      1. สร้างอ็อบเจ็กต์ Redactor และเปิดเอกสารของคุณ.
      2. เลือกฟิลด์ข้อมูลเมตาที่จะลบ.
      3. กำหนดและใช้การตั้งค่าการลบข้อมูล.
      4. บันทึกเวอร์ชันสุดท้ายโดยไม่มีข้อมูลที่ซ่อนอยู่.
   
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

        # ลบข้อมูลเมตาจาก POWERPOINT

        # เลือกฟิลด์ข้อมูลที่ต้องการลบ
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # โหลดไฟล์เข้าสู่การลบข้อมูล
        with gr.Redactor("input.pptx") as redactor:

            # ทำความสะอาดและบันทึกเอกสาร
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "การลบข้อมูลที่ลึกซึ้งสำหรับ POWERPOINT"
  description: "GroupDocs.Redaction for Python via .NET ช่วยทำความสะอาดไฟล์โดยการลบเนื้อหาที่ละเอียดอ่อน สามารถใช้ได้กับหลายรูปแบบไฟล์และประเภทข้อมูล."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ตัวเลือกการลบข้อมูลหลัก"
  features:
    # feature loop
    - title: "ลบข้อความส่วนตัว"
      content: "ค้นหาและลบคำหรือวลีที่ไม่ควรเปิดเผย."

    # feature loop
    - title: "ปิดบังส่วนของภาพ"
      content: "ซ่อนส่วนของภาพที่มีข้อมูลส่วนตัวหรือข้อมูลที่ละเอียดอ่อน."

    # feature loop
    - title: "ทำความสะอาดข้อมูลเมตา"
      content: "ลบฟิลด์ข้อมูลเมตา เช่น ชื่อผู้เขียน, ชื่อเรื่อง, และความคิดเห็นจากไฟล์."
      
  code_samples_ext:
    # code sample ext loop
    - title: "วิธีลบข้อมูลเมตาที่ซ่อนอยู่"
      content: |
        ตัวอย่างนี้แสดงให้เห็นถึงวิธีการลบข้อมูลเมตาที่ฝังอยู่ เช่น ชื่อผู้เขียน และชื่อเรื่องจากเอกสาร POWERPOINT ของคุณ.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # ลบข้อมูลฟิลด์ผู้เขียน
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # ลบข้อมูลฟิลด์ชื่อเรื่อง
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # เปิดไฟล์ใน Redactor
          with gr.Redactor("source.pptx") as redactor:

              # ดำเนินการลบข้อมูล
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
    title: "ทำความสะอาดข้อมูลเมตาจาก POWERPOINT โดยใช้ Python"
    exclude: "POWERPOINT"
    description: "ใช้ Python เพื่อลบข้อมูลส่วนตัวออกจากเอกสาร POWERPOINT ดีสำหรับทางกฎหมาย, ธุรกิจและการใช้งานส่วนตัว."
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