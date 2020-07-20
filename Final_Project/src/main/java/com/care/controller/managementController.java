package com.care.controller;

import java.nio.file.AccessDeniedException;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.care.dto.infoDTO;
import com.care.service.managementService;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class managementController {
	@Autowired
	private managementService service;
	@Autowired
	JavaMailSender mailSender;
	
	@RequestMapping("/")
	public String start() {
		return "common/start";
	}

	@RequestMapping("login")
	public String login() {
		return "common/login";
	}

	@RequestMapping("loginchk")
	public String loginchk(infoDTO dto4,Model model,HttpSession session) {
		int a = service.loginchk(dto4);
		if (a == 1) {
			return "student/sMain";
		} else if (a == 2) {
			return "student/sMain";
		} else if (a == 3) {
			return "teacher/tMain";
		} else if (a == 4) {
			model.addAttribute("alert4", 4);
			return "common/alert";
		} else if(a == 5) {
			model.addAttribute("alert5", 5);
			return "common/alert";
		}
		return "common/login";
	}
	
//	@RequestMapping("loginchk")
//	public String loginchk(infoDTO dto4, Model model) {
//		int a = service.loginchk(dto4);
//		if (a == 1) {
//			return "student/sMain";
//		} else if (a == 2) {
//			return "student/sMain";
//		} else if (a == 3) {
//			return "teacher/tMain";
//		} 
//		model.addAttribute("alert", "loginfail");
//		return "common/login";
//	}

	@RequestMapping("select")
	public String select() {
		return "common/select";
	}

	@RequestMapping(value="tSignUp", method = RequestMethod.GET)
	public String tSignup() {
		return "common/tSignup";
	}

	@RequestMapping(value="pSignUp", method = RequestMethod.GET)
	public String pSignup() {
		return "common/pSignup";
	}

	@RequestMapping(value="sSignUp", method = RequestMethod.GET)
	public String sSignup() {
		return "common/sSignup";
	}

	@ResponseBody
	@RequestMapping(value="idcheck", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	public String idcheck(infoDTO dto4) throws Exception {
		ObjectMapper mapper = new ObjectMapper();
		try {
			if (service.idcheck(dto4)!=null) {
				String strJson = mapper.writeValueAsString(service.idcheck(dto4));
				return strJson;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	@RequestMapping(value="signchk", method = RequestMethod.POST)
	public String signchk(infoDTO dto4) {
		service.signchk(dto4);
		return "common/login";
	}

	@RequestMapping("forgot")
	public String forgot() {
		return "common/forgot";
	}
	
//	@RequestMapping("pwreset")
//	public String pwreset(infoDTO dto4, Model model) {
//		int b = service.pwreset(dto4);
//		if(b == 1) {
//			model.addAttribute("alert1", 1);
//			return "common/alert";
//		}else if(b == 2) {
//			model.addAttribute("alert2", 2);
//			return "common/alert";
//		}
//		return "common/forgot";
//	}
	
	@RequestMapping("pwfind")
	public String pwfind() {
		return "email/checkemail";
	}

//  이메일 발송
	@RequestMapping(value = "send", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
	@ResponseBody
	public int send(infoDTO dto4, HttpServletRequest request, HttpServletResponse response_email)
			throws Exception {

		Random r = new Random();
		int dice = r.nextInt(4589362) + 49311; // 이메일로 받는 인증코드 부분 (난수)
		
		System.out.println(dto4.getEmail());
		String frommail = "dlthkgs@gmail.com";
		String tomail = dto4.getEmail(); // 받는 사람 이메일
		String title = "인증 이메일 입니다."; // 제목
		String content = " 인증번호는 " + dice + " 입니다. ";
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

			messageHelper.setFrom(frommail);
			messageHelper.setTo(tomail); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText(content); // 메일 내용
			
			mailSender.send(message);
		} catch (Exception e) {
			e.printStackTrace();
		}

		response_email.setContentType("text/html; charset=UTF-8");
		return dice;
	}
	
	@RequestMapping(value="pwreset2", method = RequestMethod.GET, produces = "application/json;charset=utf-8" )
	@ResponseBody
	public String pwreset2(infoDTO dto4) throws Exception{
		return service.pwreset2(dto4.getId());
	}

	@RequestMapping("tMain")
	public String tMain(Model model, infoDTO dto4, HttpSession session) {
		session.setAttribute("cut", dto4.getStatus());
		if(session.getAttribute("cut") == null) {
			model.addAttribute("alert6", 6);
			return "common/alert";
		}else {
			return "teacher/tMain";
		}
	}
	@RequestMapping("sMain")
	public String sMain(Model model, infoDTO dto4, HttpSession session) {
		session.setAttribute("cut", dto4.getStatus());
		if(session.getAttribute("cut") == null) {
			model.addAttribute("alert6", 6);
			return "common/alert";
		}else {
			return "student/sMain";
		}
	}
	
	@RequestMapping("sInfo")
	public String sInfo(infoDTO dto4, Model model) {
		service.sInfo(dto4, model);
		return "info/sInfo";
	}
	@RequestMapping("pInfo")
	public String pInfo(infoDTO dto4, Model model) {
		service.pInfo(dto4, model);
		return "info/pInfo";
	}
	@RequestMapping("Score")
	public String Score() {
		return "";
	}
}
