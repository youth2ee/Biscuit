package com.biscuit.b1.util;

import java.io.File;
import java.util.Calendar;

import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import net.coobird.thumbnailator.Thumbnails;

@Component
public class FileSaver {

	//썸네일 파일 크기
	static final int THUMB_WIDTH = 310;
	static final int THUMB_HEIGHT = 250;
	
	//파일 삭제
	public boolean fileDelete(String realPath, String fileName) throws Exception {
		File file = new File(realPath, fileName);
		File thumbnail = new File(realPath + File.separator + "th", "th_"+fileName);
		boolean check = false;
		
		if(file.exists()) {
			check = file.delete();
			check = thumbnail.delete();
		}
				
		return check;
	}
	
	//파일 저장
	public String save(String realPath, MultipartFile multipartFile) throws Exception {
		
		File file = new File(realPath);
		
		//폴더 생성
		if(!file.exists()) {
			file.mkdirs();
		}
		
		//날짜 기반으로 파일명 생성
		Calendar ca = Calendar.getInstance();
		Long name = ca.getTimeInMillis();
		int index = multipartFile.getOriginalFilename().lastIndexOf(".");
		
		String fileName = name+multipartFile.getOriginalFilename().substring(index);
		
		//첨부 이미지 파일 저장
		file = new File(realPath, fileName);
		FileCopyUtils.copy(multipartFile.getBytes(), file);
		
		////////////////////////////////////////////////////
		//썸네일 파일명
		String thumbFileName = "th_"+fileName;
		
		//실제 파일 폴더
		File image = new File(realPath + File.separator + fileName);
		System.out.println(image);
		
		//썸네일 파일 폴더 생성
		File thumbnail = new File(realPath + File.separator + "th" + File.separator + thumbFileName);
		System.out.println(thumbnail);
		
		//실제 파일이 존재하면, 썸네일 파일 생성
		if(image.exists()) {
			thumbnail.getParentFile().mkdirs();
			Thumbnails.of(image).size(THUMB_WIDTH, THUMB_HEIGHT).toFile(thumbnail);
		}
		
		return fileName;
	}//save

}
