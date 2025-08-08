
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: th
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ลบข้อมูลเมตาในไฟล์ PPTX โดยใช้ Python"
head_description: "GroupDocs.Redaction for Python via .NET ช่วยทำความสะอาดข้อมูลที่ซ่อนอยู่ในไฟล์ PPTX รีมูฟรายละเอียดที่อาจเผยข้อมูลที่ละเอียดอ่อน."

############################# Header ############################
title: "ลบข้อมูลเมตาใน PPTX ด้วย Python" 
description: "ลบข้อมูลส่วนตัวที่เก็บไว้อยู่ในไฟล์ PPTX โดยใช้ Python วิธีที่ชาญฉลาดในการปกป้องข้อมูลของคุณ."
subtitle: "เครื่องมือหลักใน GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "เพิ่มเติมเกี่ยวกับ GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ถูกสร้างขึ้นสำหรับนักพัฒนาที่ใช้ Python ที่ต้องการเก็บเอกสารให้สะอาด ใช้เพื่อลบข้อความ, ปิดบังภาพ, หรือทำความสะอาดข้อมูลเมตาจากไฟล์ PPTX.

############################# Steps ############################
steps:
    enable: true
    title: "ทำความสะอาดข้อมูลเมตาในไฟล์ Pptx"
    content: |
      ใช้ GroupDocs.Redaction เพื่อลบข้อมูลเมตาอย่างรวดเร็วจากแอป Python via .NET ของคุณ.
      
      1. สร้าง Redactor และเปิดเอกสาร Pptx.
      2. เลือกข้อมูลเมตาที่คุณต้องการลบ.
      3. ใช้การลบข้อมูลเพื่อลบข้อมูลที่ซ่อนอยู่.
      4. บันทึกไฟล์ที่ปรับปรุงแล้ว.
   
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

        # ลบข้อมูลเมตาใน PPTX

        # เลือกฟิลด์ที่จะลบ
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # เปิดไฟล์ของคุณด้วย Redactor
        with gr.Redactor("input.pptx") as redactor:

            # ดำเนินการและบันทึกการเปลี่ยนแปลง
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "วิธีการอื่นๆ ในการซ่อนข้อมูลที่ละเอียดอ่อน"
  description: "GroupDocs.Redaction for Python via .NET สนับสนุนการลบข้อมูลข้ามหลายรูปแบบ วิธีที่รวดเร็วในการลบเนื้อหาส่วนตัวจากเอกสาร."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "เครื่องมือการลบเอกสาร"
  features:
    # feature loop
    - title: "ค้นหาและลบข้อความ"
      content: "ลบคำหรือวลีที่มีข้อมูลส่วนตัวหรือข้อมูลที่敏感."

    # feature loop
    - title: "เพิ่มการซ้อนภาพ"
      content: "ปิดบังพื้นที่ของภาพที่ไม่ควรแบ่งปัน."

    # feature loop
    - title: "ลบข้อมูลเมตาที่ซ่อนอยู่"
      content: "กำจัดชื่อผู้เขียน, ชื่อเรื่อง, และแท็กที่ซ่อนอยู่."
      
  code_samples_ext:
    # code sample ext loop
    - title: "ตัวอย่าง: ลบฟิลด์ข้อมูลเมตา"
      content: |
        ทำตามตัวอย่างนี้เพื่อลบฟิลด์ข้อมูลเมตาทั่วไปจากไฟล์ PPTX ก่อนการแบ่งปัน.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # ทำเครื่องหมายฟิลด์ผู้เขียนสำหรับการลบ
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # ทำเครื่องหมายฟิลด์ชื่อเรื่องสำหรับการลบ
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # โหลดไฟล์
          with gr.Redactor("source.pptx") as redactor:

              # ดำเนินการลบข้อมูล
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # ส่งออกไฟล์ที่สะอาด
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
    title: "ใช้ Python ลบข้อมูลเมตาจาก PPTX"
    exclude: "PPTX"
    description: "ลบข้อมูลที่อยู่เบื้องหลังจาก PPTX ด้วย Python เหมาะสำหรับความเป็นส่วนตัวและการปฏิบัติตาม."
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