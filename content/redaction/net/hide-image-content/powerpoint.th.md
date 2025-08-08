
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: th
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ซ่อนภาพที่ละเอียดอ่อนใน POWERPOINT โดยใช้ overlay กับ C#"
head_description: "ใช้ GroupDocs.Redaction for .NET เพื่อเพิ่ม overlay ให้กับภาพในไฟล์ POWERPOINT โดยซ่อนข้อมูลที่เป็นส่วนตัวในขณะที่ยังคงโครงร่างไว้"

############################# Header ############################
title: "ซ่อนภาพที่เป็นส่วนตัวในเอกสาร POWERPOINT โดยใช้ overlay กับ .NET" 
description: "รักษาความปลอดภัยข้อมูลส่วนตัวและธุรกิจในไฟล์ POWERPOINT โดยใช้ C# เครื่องมือที่ง่ายช่วยสร้างความเป็นส่วนตัวเอกสาร"
subtitle: "ฟีเจอร์หลักของ GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET คืออะไร?"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET มอบเครื่องมือที่ง่ายแก่ผู้พัฒนา C# ในการซ่อนหรือลบข้อมูลในเอกสาร POWERPOINT ปกป้องเอกสารของคุณโดยการคลุมข้อความ, รูปภาพ, และ Metadata

############################# Steps ############################
steps:
    enable: true
    title: "ปกป้องข้อมูลที่มีความละเอียดอ่อนในเอกสาร Powerpoint"
    content: |
      GroupDocs.Redaction for .NET ถูกสร้างขึ้นเพื่อช่วยให้แอปพลิเคชัน .NET ของคุณรักษาความปลอดภัยข้อมูลในเอกสารได้เร็ว
      
      1. สร้าง Redactor และระบุไฟล์ Powerpoint
      2. ปรับการตั้งค่าการตัดข้อมูลให้ตอบสนองความต้องการของคุณ
      3. เลือกพื้นที่ของภาพและเลือกสี overlay
      4. นำการดำเนินการไปยังการตัดข้อมูลและบันทึกไฟล์
   
    code:
      platform: "net"
      copy_title: "คัดลอก"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "การลบข้อมูลตัวอย่าง"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "คลิ๊กเพื่อคัดลอก"
        copy_done: "คัดลอกแล้ว"
      links:
        #  loop
        - title: "ตัวอย่างเพิ่มเติม"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "เอกสารประกอบ"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // ซ่อนพื้นที่ภาพที่มีความละเอียดอ่อนใน POWERPOINT

        // เปิดไฟล์โดยใช้ Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // ตั้งค่าสีและขนาด overlay
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // เลือกพื้นที่สำหรับการตัดข้อมูล
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // ใช้ overlay และบันทึกเอกสาร
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ตัดข้อมูลที่มีความละเอียดอ่อนในเอกสาร"
  description: "GroupDocs.Redaction for .NET อนุญาตให้คุณซ่อนหรือลบเนื้อหาในหลายรูปแบบเอกสาร ปกป้องข้อมูลพร้อมกันให้รักษาเอกสารให้สดใสและใช้งานง่าย"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "เครื่องมือการตัดที่มีฟีเจอร์หลากหลาย"
  features:
    # feature loop
    - title: "ค้นหาและแก้ไขข้อความ"
      content: "ค้นหาข้อความที่มีความละเอียดอ่อนในเอกสารและแทนที่เพื่อรักษาความปลอดภัย"

    # feature loop
    - title: "ปิดบังเนื้อหาภาพ"
      content: "ใช้งาน overlay เพื่อทำตัวภาพหรือพื้นที่ที่เลือกให้เป็นความลับ"

    # feature loop
    - title: "ลบ Metadata"
      content: "จัดการสิทธิ์การเข้าถึงข้อมูลที่ซ่อนอยู่เพื่อหลีกเลี่ยงการรั่วไหล"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ซ่อนข้อมูลภาพด้วย overlay"
      content: |
        ตัวอย่างนี้แสดงการซ่อนข้อมูลที่มีความละเอียดอ่อนในภาพเอกสาร
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  โหลดเอกสาร
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // ตั้งค่าสี, ขนาด, และตำแหน่ง overlay
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // ระบุพื้นที่ที่จะตัดในหน้าที่หนึ่ง
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // ใช้ overlay
              redactor.Apply(redaction);

              // บันทึกเอกสารที่ถูกแก้ไข
              var save_options = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_options);
          }
          ```
        platform: "net"
        copy_title: "คัดลอก"
        install:
          command: "dotnet add package GroupDocs.Redaction"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "เอกสารประกอบ"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "พร้อมเริ่มต้นหรือยัง?"
  description: "ลองฟีเจอร์ของ GroupDocs.Redaction ฟรี หรือขอใบอนุญาต"
  items:
    #  loop
    - title: "ดาวน์โหลด Nuget"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "การออกใบอนุญาต"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "รักษาเนื้อหา POWERPOINT ด้วยการตัดข้อมูล .NET"
    exclude: "POWERPOINT"
    description: "ใช้ .NET เพื่อซ่อนหรือลบข้อมูลที่เป็นความลับในไฟล์ POWERPOINT เป็นโซลูชันที่เชื่อถือได้ในการรักษาความปลอดภัยของเอกสาร"
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/net/hide-image-content//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/net/hide-image-content//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-image-content//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-image-content//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลในรูปภาพ"
          format: "IMAGE"
          link: "/redaction/net/hide-image-content//image/"
          description: "รูปแบบภาพที่นิยม"

        # format loop 6
        - name: "ลบข้อมูลในรูปถ่าย"
          format: "PHOTO"
          link: "/redaction/net/hide-image-content//photo/"
          description: "รูปถ่าย"

        # format loop 7
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-image-content//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 8
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-image-content//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 9
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-image-content//pptx/"
          description: "การเสนอ PowerPoint Open XML"

        # format loop 10
        - name: "ลบข้อมูลใน JPEG"
          format: "JPEG"
          link: "/redaction/net/hide-image-content//jpeg/"
          description: "ภาพ JPEG"


---