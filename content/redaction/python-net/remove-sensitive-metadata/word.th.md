
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: th
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ทำความสะอาดข้อมูลเมตาจากไฟล์ WORD ด้วย Python"
head_description: "ใช้ GroupDocs.Redaction for Python via .NET เพื่อลบข้อมูลเมตาที่ซ่อนอยู่ในไฟล์ WORD ปกป้องเอกสารจากการเปิดเผยข้อมูลส่วนตัวหรือข้อมูลภายใน."

############################# Header ############################
title: "ลบข้อมูลเมตาใน WORD โดยใช้เครื่องมือของ Python" 
description: "รักษาความปลอดภัยไฟล์ของคุณโดยการลบข้อมูลเมตาที่ไม่ต้องการด้วย Python เหมาะสำหรับบริษัทและผู้ใช้ทั่วไป."
subtitle: "คุณสมบัติของ GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "พบกับ GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ถูกสร้างขึ้นสำหรับนักพัฒนาที่ใช้ Python ที่ต้องการเก็บไฟล์ WORD เป็นส่วนตัว ช่วยให้คุณลบข้อความ, ปิดบังภาพ, และทำความสะอาดข้อมูลเมตา.

############################# Steps ############################
steps:
    enable: true
    title: "ลบข้อมูลเมตาที่ซ่อนอยู่ใน Word"
    content: |
      ด้วย GroupDocs.Redaction แอป Python via .NET ของคุณสามารถทำความสะอาดข้อมูลเมตาได้อย่างรวดเร็ว.
      
      1. สร้างอ็อบเจ็กต์ Redactor และเปิดไฟล์ Word.
      2. ตั้งกฎการลบสำหรับฟิลด์ข้อมูลเมตา.
      3. ดำเนินการลบเพื่อลบข้อมูลที่เลือก.
      4. บันทึกเวอร์ชันที่สะอาดของไฟล์.
   
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

        # ทำความสะอาดข้อมูลเมตาใน WORD

        # เลือกข้อมูลเมตาที่จะลบ
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # เปิดเอกสารโดยใช้ Redactor
        with gr.Redactor("input.docx") as redactor:

            # ประมวลผลการลบและบันทึกไฟล์
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ปกป้องมากกว่าข้อมูลเมตา"
  description: "ลบข้อความ, ปิดบังภาพ, และลบข้อมูลเมตาโดยใช้ GroupDocs.Redaction for Python via .NET รักษาเอกสารของคุณให้สะอาดและเป็นส่วนตัว."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ตัวเลือกการป้องกันเอกสาร"
  features:
    # feature loop
    - title: "ค้นหาและแทนที่ข้อความ"
      content: "ลบหรือแทนที่คำและวลีที่มีข้อมูลส่วนตัวหรือข้อมูลที่ละเอียดอ่อน."

    # feature loop
    - title: "เพิ่มการปกคลุมภาพ"
      content: "วางทับคลุมพื้นที่ของภาพในเอกสาร."

    # feature loop
    - title: "ทำความสะอาดข้อมูลเมตา"
      content: "ทำความสะอาดชื่อผู้เขียน, ชื่อเรื่อง, คอมเมนต์, และข้อมูลอื่นที่ซ่อนอยู่."
      
  code_samples_ext:
    # code sample ext loop
    - title: "ลบข้อมูลเมตาจากไฟล์ WORD"
      content: |
        ตัวอย่างนี้แสดงวิธีการลบฟิลด์เช่น ชื่อผู้เขียน และชื่อเรื่องจากเอกสาร WORD.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # ทำเครื่องหมายข้อมูลเมตาของผู้เขียน
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # ทำเครื่องหมายข้อมูลเมตาของชื่อเรื่อง
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # นำเอกสารของคุณเข้า
          with gr.Redactor("source.docx") as redactor:

              # เรียกใช้เครื่องมือการลบข้อมูล
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
    title: "ลบข้อมูลเมตาจาก WORD ด้วย Python"
    exclude: "WORD"
    description: "ใช้ Python เพื่อลบข้อมูลเมตาที่ซ่อนอยู่จาก WORD รักษาไฟล์ให้ปลอดภัยก่อนการแบ่งปันหรือการเก็บถาวร."
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