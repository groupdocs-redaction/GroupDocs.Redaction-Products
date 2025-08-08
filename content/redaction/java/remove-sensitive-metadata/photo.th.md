
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: th
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ลบข้อมูลเมตาดาต้าใน PHOTO ด้วย Java"
head_description: "GroupDocs.Redaction for Java ช่วยให้คุณลบข้อมูลที่ซ่อนอยู่ในไฟล์ PHOTO ที่อาจเปิดเผยข้อมูลส่วนบุคคลหรือธุรกิจ"

############################# Header ############################
title: "ลบข้อมูลเมตาดาต้าจาก PHOTO ด้วย Java" 
description: "รือข้อมูลส่วนต้วจากไฟล์ PHOTO ของคุณโดยลบข้อมูลเมตาดาต้าโดยใช้เครื่องมือ Java"
subtitle: "ไฮไลท์ฟีเจอร์ของ GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ให้เครื่องมือสำหรับนักพัฒนา Java ในการลบเนื้อหาที่ละเอียดอ่อนในไฟล์ PHOTO รวมถึงข้อความ ภาพ และข้อมูลเมตาดาต้า

############################# Steps ############################
steps:
    enable: true
    title: "วิธีลบข้อมูลเมตาดาต้าจากไฟล์ Photo"
    content: |
      ใช้ GroupDocs.Redaction ในแอป Java ของคุณเพื่อลบข้อมูลเมตาดาต้าจากเอกสาร
      
      1. เริ่ม Redactor และโหลดไฟล์ Photo
      2. กำหนดกฎเพื่อลบฟิลด์ที่ซ่อนอยู่
      3. รันการลบเพื่อลบข้อมูลในไฟล์
      4. บันทึกไฟล์ที่อัพเดตแล้ว
   
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
        // ทำความสะอาดข้อมูลเมตาดาต้าในไฟล์ PHOTO

        // โหลดไฟล์ด้วย Redactor
        final Redactor redactor = new Redactor("input.jpeg");
        try
        {
            // เลือกฟิลด์ข้อมูลที่ต้องการปรับปรุง
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // ทำการปรับปรุง และบันทึกไฟล์
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ลบข้อมูลส่วนตัวจากเอกสาร"
  description: "GroupDocs.Redaction for Java ช่วยให้ทำความสะอาดไฟล์โดยการลบข้อมูลส่วนตัว ข้อความ และข้อมูลเมตาดาต้า รักษาความปลอดภัยและความเป็นส่วนตัว."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ฟีเจอร์สำคัญในการลบข้อมูล"
  features:
    # feature loop
    - title: "ทำความสะอาดข้อความ"
      content: "ค้นหาคำหรือตัวเลขที่ไม่เหมาะสม และทำการลบ"

    # feature loop
    - title: "แก้ไขภาพ"
      content: "นำเอาภาพที่ไม่เหมาะสมออก"

    # feature loop
    - title: "ลบฟิลด์ข้อมูลเมตาดาต้า"
      content: "เคลียร์ข้อมูลที่ซ่อนอยู่ เพื่อป้องกันข้อมูลที่ไม่ต้องการ"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ลบข้อมูลเมตาดาต้าที่ซ่อนอยู่"
      content: |
        ตัวอย่างนี้แสดงวิธีการลบฟิลด์ เช่น Author และ Title ในเอกสาร PHOTO
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  เปิดไฟล์ PHOTO ใน redactor
          final Redactor redactor = new Redactor("source.jpeg");
          try
          {
              // ทำการแก้ไขข้อมูล Author
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // แก้ไขข้อมูล Title
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // ดำเนินการลบ
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // บันทึกไฟล์ที่ทำความสะอาด
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
    title: "ใช้ Java เพื่อลบข้อมูลเมตาดาต้าใน PHOTO"
    exclude: "PHOTO"
    description: "ช่วยลบข้อมูลซ่อนในเอกสาร PHOTO โดยใช้เครื่องมือ Java."
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