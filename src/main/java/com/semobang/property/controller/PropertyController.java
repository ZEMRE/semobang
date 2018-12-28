package com.semobang.property.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.semobang.property.service.DeleteImageService;
import com.semobang.property.service.DeletePropertyService;
import com.semobang.property.service.OpenPropertyService;
import com.semobang.property.service.QuickSearchService;
import com.semobang.property.service.UpdatePropertyByAdminService;
import com.semobang.property.service.UpdatePropertyService;
import com.semobang.property.service.UploadImageService;


@RequestMapping("/property")
@Controller
public class PropertyController {

	@Autowired
	private OpenPropertyService openProperty;
	
	@Autowired
	private UpdatePropertyService updateProperty;
	
	@Autowired
	private DeletePropertyService deleteProperty;
		
	@Autowired
	private UpdatePropertyByAdminService updatePropertyAdmin;
		
	@Autowired
	private UploadImageService uploadImage;
	
	@Autowired
	private DeleteImageService deleteImage;
	
	@Autowired
	private QuickSearchService quickSearch;
	
	
	// 매물 등록 처리
	@RequestMapping("/openProperty")
	public String openProperty()
	{
		openProperty.service();
		
		// 등록한 매물 상세보기 페이지로 이동
		return "property";
	}
	
	
	// 매물 수정 처리
	@RequestMapping("/updateProperty")
	public String updateProperty()
	{
		updateProperty.service();
		
		// 수정한 매물 상세보기 페이지로 이동
		return "property";
	}
	
	
	// 매물 삭제 처리
	@RequestMapping("/deleteProperty")
	public String deleteProperty()
	{
		deleteProperty.service();
		
		return "property/deleteProperty";
	}
	
	
	// 관리자 매물 수정 처리
	// 관리자 화면의 리스트에서 옵션 변경, 삭제 등 변경 처리
	@RequestMapping("/updatePropertyAdmin")
	public String updatePropertyAdmin()
	{
		updatePropertyAdmin.service();
		
		// 관리자 페이지로 이동
		return "account/manage";
	}
		
	
	// 사진 업로드 처리
	// DB에는 사진 파일의 경로명 저장
	// 실제 사진은 서버에 업로드
	@RequestMapping("/uploadImage")
	public String uploadImage()
	{
		uploadImage.service();
		
		return "property/uploadImage";
	}
	
	
	// 사진 삭제 처리
	// DB에 사진 경로명 삭제
	// 서버에 실제 사진 파일 삭제
	@RequestMapping("/deleteImage")
	public String deleteImage()
	{
		deleteImage.service();
		
		return "property/deleteImage";
	}
	
	
	// 퀵 서치 처리
	// 푸터의 퀵 서치창에 매물번호를 입력해서 검색
	// 해당하는 매물번호가 없는 경우: 0 ("없는 매물번호 입니다." 메세지)
	// 해당하는 매물번호가 있는 경우
	// property_status를 체크한다.
	// open: 1 (해당하는 매물 상세보기 페이지로 이동)
	// sold: 2 ("거래완료된 번호 입니다." 메세지)
	// fake: 3 ("허위매물로 신고된 번호 입니다." 메세지)
	// hidden: 0 ("없는 매물번호 입니다." 메세지)
	@RequestMapping("/quickSearch")
	public int quickSearch()
	{
		int result = quickSearch.service();	
		
		return result;
	}

}
