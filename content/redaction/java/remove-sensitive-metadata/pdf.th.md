
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: th
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ลบข้อมูลเมตาดาต้าในไฟล์ PDF ด้วย Java"
head_description: "ใช้ GroupDocs.Redaction for Java เพื่อลบหรือปรับปรุงข้อมูลเมตาดาต้าที่ซ่อนอยู่ในไฟล์ PDF ก่อนการแชร์เอกสารของคุณ"

############################# Header ############################
title: "ลบข้อมูลเมตาดาต้าในไฟล์ PDF ด้วย Java" 
description: "ปกป้องข้อมูลส่วนบุคคลและการทำงานในไฟล์ PDF ของคุณด้วย Java ด้วยเครื่องมือที่ช่วยรักษาข้อมูลของคุณให้ปลอดภัย"
subtitle: "ฟีเจอร์หลักของ GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction มอบเครื่องมือให้กับนักพัฒนา Java ในการซ่อนเนื้อหาแบบข้อความ, ภาพ, และเมตาดาต้าในเอกสาร PDF

############################# Steps ############################
steps:
    enable: true
    title: "ลบข้อมูลเมตาดาต้าในเอกสาร Pdf"
    content: |
      เริ่มต้นด้วย GroupDocs.Redaction เพื่อปกป้องข้อมูลเมตาดาต้าในโปรเจค Java ของคุณ
      
      1. ตั้งค่า Redactor และเปิดไฟล์ Pdf ของคุณ
      2. เลือกที่จะลบฟิลด์ข้อมูลเมตาดาต้าทั้งหมด
      3. รันการลบเพื่อลบข้อมูลที่ซ่อนอยู่
      4. บันทึกไฟล์ที่ไม่มีข้อมูลเมตาดาต้า
   
    code:
      platform: "java"
      copy_title: "คัดลอก"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "การลบข้อมูลตัวอย่าง"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "คลิ๊กเพื่อคัดลอก"
        copy_done: "คัดลอกแล้ว"
      links:
        #  loop
        - title: "ตัวอย่างเพิ่มเติม"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "เอกสารประกอบ"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // ลบข้อมูลเมตาดาต้าในไฟล์ PDF

        // ใช้ Redactor เปิดไฟล์
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // ตั้งค่าการลบข้อมูลเมตาดาต้า
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // ทำการบันทึกการเปลี่ยนแปลง
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ลบข้อมูลที่ละเอียดอ่อนออกจากไฟล์"
  description: "GroupDocs.Redaction for Java ช่วยคุณทำความสะอาดเนื้อหาส่วนบุคคลในรูปแบบเอกสารต่างๆ รักษาความปลอดภัยของไฟล์และแชร์ได้อย่างง่ายดาย"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ฟีเจอร์หลักการลบข้อมูล"
  features:
    # feature loop
    - title: "การลบข้อความ"
      content: "ค้นหาและลบคำหรือข้อมูลที่ละเอียดอ่อนในเอกสารของคุณ"

    # feature loop
    - title: "ปิดบังภาพ"
      content: "วางภาพทับเพื่อปิดบังเนื้อหาที่ไม่ต้องการ"

    # feature loop
    - title: "การลบข้อมูลเมตาดาทา"
      content: "ลบข้อมูลเมตาดาต้าที่อาจรั่วไหลข้อมูลส่วนตัว"
      
  code_samples_ext:
    # code sample ext loop
    - title: "เคลียร์ข้อมูลเมตาดาต้าที่ซ่อนอยู่"
      content: |
        ตัวอย่างนี้แสดงวิธีการเปลี่ยนหรือลบข้อมูลเมตาดต้าในไฟล์ PDF
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  เปิดไฟล์ PDF โดยใช้ redactor
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // กำหนดเป้าหมายที่ฟิลด์ข้อมูลเมตาดาต้า Author
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // กำหนดเป้าหมายที่ฟิลด์ข้อมูลเมตาดาต้า Title
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // รันการทำความสะอาดข้อมูลเมตาดาต้า
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // บันทึกไฟล์สุดท้าย
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "คัดลอก"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "เอกสารประกอบ"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "พร้อมเริ่มต้นหรือยัง?"
  description: "ลองฟีเจอร์ของ GroupDocs.Redaction ฟรี หรือขอใบอนุญาต"
  items:
    #  loop
    - title: "ดาวน์โหลด Maven"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "การออกใบอนุญาต"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "รักษาไฟล์ PDF ด้วยการลบข้อมูลเมตาดาต้าใน Java"
    exclude: "PDF"
    description: "ลบฟิลด์ที่ถูกซ่อนในไฟล์ PDF ของคุณโดยใช้ Java ปกป้องข้อมูลส่วนตัวด้วยเครื่องมือทำความสะอาดข้อมูลเมตาดาต้า"
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/java/remove-sensitive-metadata//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/java/remove-sensitive-metadata//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/java/remove-sensitive-metadata//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/remove-sensitive-metadata//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลในรูปภาพ"
          format: "IMAGE"
          link: "/redaction/java/remove-sensitive-metadata//image/"
          description: "รูปแบบภาพที่นิยม"

        # format loop 6
        - name: "ลบข้อมูลในรูปถ่าย"
          format: "PHOTO"
          link: "/redaction/java/remove-sensitive-metadata//photo/"
          description: "รูปถ่าย"

        # format loop 7
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/java/remove-sensitive-metadata//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 8
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/java/remove-sensitive-metadata//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 9
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/java/remove-sensitive-metadata//pptx/"
          description: "การเสนอ PowerPoint Open XML"

        # format loop 10
        - name: "ลบข้อมูลใน JPEG"
          format: "JPEG"
          link: "/redaction/java/remove-sensitive-metadata//jpeg/"
          description: "ภาพ JPEG"


---