 # spring file upload
 * Web client에서 파일을 선택하여 서버에 Upload하기
 * 이미지 게시판, 이미지 갤러리 등을 만들때 사용한다
 
 ## 필요한 Dependency

	<dependency>
		<groupId>commons-io</groupId>	
		<artifactId>commons-io</artifactId>
		<version>2.10.0</version>
	</dependency>
 
	<dependency>
		<groupId>commons-fileupload</groupId>
		<artifactId>commons-fileupload</artifactId>
		<version>1.4</version>
	</dependency>	
 
 ## root-context.xml에 File Up 설정
 	

		단위
		0 : 개...
		000 : K(Killo) 개
		000,000 : M(Mega) 개
		000,000,000 : G(Giga) 개
		000,000,000,000 : T(Tera) 개

	<bean id="multipartResolver" class="org.springframework.web.multipart.commons.CommonsMultipartResolver">
		<property name="maxUploadSizePerFile" value="3500000"/> <!-- 파일 1개당 최대업로드 가능한 사이즈 -->
		<property name="maxUploadSize" value="35000000" /> <!-- 전체파일의 업로드 크기 -->

* maxUploadPerFile : 파일 1개의 용량 제한 
* maxUploadSize : 전체 파일 용량 제한, 다수 파일을 올릴때		
