
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: th
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ปกปิดภาพส่วนตัวใน JPEG ด้วย Overlay โดยใช้ Python"
head_description: "รักษาความปลอดภัยให้กับไฟล์ JPEG ของคุณด้วยการเพิ่ม Overlay ให้กับภาพโดยใช้ GroupDocs.Redaction for Python via .NET ปกป้องภาพส่วนตัวในขณะที่ยังคงรูปแบบของเอกสาร."

############################# Header ############################
title: "ปกป้องภาพที่เป็นความลับในไฟล์ JPEG ด้วย Overlay โดยใช้ Python" 
description: "เก็บรักษาภาพของคุณให้ปลอดภัยในไฟล์ JPEG ด้วย Python เครื่องมือที่ใช้ง่ายเพื่อช่วยคุณปกป้องเนื้อหาที่เป็นความลับได้อย่างง่ายดาย."
subtitle: "คุณสมบัติเด่นของ GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "เรียนรู้เกี่ยวกับ GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET อีกมากมายให้กับนักพัฒนา Python ได้รับพลังในการปิดบังหรือทำให้ข้อมูลที่ลบไม่มีในไฟล์ JPEG ปกป้องเอกสารได้อย่างดี.

############################# Steps ############################
steps:
    enable: true
    title: "เก็บรักษาไฟล์ Jpeg ให้ปลอดภัย"
    content: |
      GroupDocs.Redaction for Python via .NET ช่วยให้แอปพลิเคชัน Python via .NET ของคุณสามารถปกป้องข้อมูลได้อย่างรวดเร็วและมีประสิทธิภาพ.
      
      1. สร้างวัตถุ Redactor และระบุเส้นทางไปยังไฟล์ Jpeg.
      2. กำหนดการตั้งค่าการปิดบังตามที่ต้องการ.
      3. เลือกพื้นที่ภาพและเลือกสี Overlay.
      4. ดำเนินการปิดบังและบันทึกไฟล์ที่ปกปิด.
   
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

        # ปกปิดภาพในไฟล์ JPEG

        # ระบุขนาดและสีของ Overlay
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # เลือกพื้นที่ที่ต้องการปิดบัง
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # โหลดไฟล์ผ่าน Redactor
        with gr.Redactor("input.jpg") as redactor:

            # นำ Overlay ไปใช้และบันทึกเอกสาร
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ปิดบังข้อมูลในเอกสารหลายรูปแบบ"
  description: "GroupDocs.Redaction for Python via .NET ช่วยให้คุณซ่อนหรือลบข้อมูลที่เป็นความลับในหลายประเภทไฟล์ รักษาเอกสารให้สะอาดและปลอดภัย."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "เครื่องมือที่มีฟังก์ชันครบถ้วนในการปิดบัง"
  features:
    # feature loop
    - title: "ค้นหาและแทนที่ข้อความ"
      content: "ค้นหาข้อความที่เป็นความลับในเอกสารและลบเพื่อความปลอดภัย."

    # feature loop
    - title: "ปกคลุมพื้นที่ภาพ"
      content: "ใช้ Overlay เพื่อปกคลุมภาพหรือพื้นที่ที่เลือกเพื่อซ่อนข้อมูลที่เป็นความลับ."

    # feature loop
    - title: "ทำความสะอาด Metadata"
      content: "ลบ Metadata ที่ซ่อนอยู่เพื่อลดการรั่วไหลของข้อมูล."
      
  code_samples_ext:
    # code sample ext loop
    - title: "ปกป้องภาพด้วย Overlay"
      content: |
        คู่มือนี้แสดงให้เห็นว่าคุณจะปิดบังส่วนที่เป็นความลับของภาพในเอกสารได้อย่างไร.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # กำหนดขนาด, สี, และตำแหน่งของ Overlay
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # เลือกพื้นที่เฉพาะในหน้าแรก
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # โหลดไฟล์เพื่อแก้ไข
          with gr.Redactor("source.jpg") as redactor:

              # นำ Overlay ไปใช้เพื่อปกปิด
              result = redactor.apply(redaction)

              # บันทึกไฟล์ที่ลบ
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "ปกป้องไฟล์ JPEG ด้วยเครื่องมือการปิดบังจาก Python"
    exclude: "JPEG"
    description: "ด้วย Python คุณสามารถปิดบังหรือทำให้ข้อมูลที่เป็นความลับในไฟล์ JPEG น่าเชื่อถือสำหรับการรักษาความปลอดภัยของเอกสาร."
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-image-content//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/python-net/hide-image-content//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-image-content//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-image-content//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลในรูปภาพ"
          format: "IMAGE"
          link: "/redaction/python-net/hide-image-content//image/"
          description: "รูปแบบภาพที่นิยม"

        # format loop 6
        - name: "ลบข้อมูลในรูปถ่าย"
          format: "PHOTO"
          link: "/redaction/python-net/hide-image-content//photo/"
          description: "รูปถ่าย"

        # format loop 7
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-image-content//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 8
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-image-content//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 9
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-image-content//pptx/"
          description: "การเสนอ PowerPoint Open XML"

        # format loop 10
        - name: "ลบข้อมูลใน JPEG"
          format: "JPEG"
          link: "/redaction/python-net/hide-image-content//jpeg/"
          description: "ภาพ JPEG"


---