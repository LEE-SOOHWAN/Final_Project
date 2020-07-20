package com.care.service;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.dao.managementDAO;
import com.care.dto.infoDTO;

@Service
public class managementService {
	@Autowired
	private managementDAO dao;
	private JavaMailSender mailSender;
	
	public String idcheck(infoDTO dto4) throws Exception {
		if(dao.idcheck(dto4) != null) {
			String result = dao.idcheck(dto4).getId();
			return result;
		}else {
			return null;
		}
	}
	
	public int loginchk(infoDTO dto4) {
		if(dao.loginchk(dto4) != null) {
			if(dto4.getId().equals(dao.loginchk(dto4).getId())) {
				System.out.println("아이디 일치");
				if(dto4.getPw().equals(dao.loginchk(dto4).getPw())) {
					System.out.println("비밀번호 일치");
					dao.loginchk(dto4);
					if(dao.loginchk(dto4).getStatus().equals("학생")) {
						return 1;
					}else if(dao.loginchk(dto4).getStatus().equals("학부모")) {
						return 2;
					}else {
						return 3;
					}
				}else {
					System.out.println("비밀번호가 일치하지 않음");
					return 4;
				}
			}
		}else {
			System.out.println("아이디가 존재하지 않음");
			return 5;
		}
		return 0;
	}
	
	public void signchk(infoDTO dto4) {
		dao.signchk(dto4);
	}

//	public int pwreset(infoDTO dto4) {
//		if(dao.loginchk(dto4) != null) {
//			if(dto4.getId().equals(dao.loginchk(dto4).getId())) {
//				System.out.println("아이디 존재");
//				dao.pwreset(dto4);
//				return 1;
//			}
//		}else {
//			System.out.println("아이디 존재하지 않음");
//			return 2;
//		}
//		return 0;
//	}

	public String pwreset2(String id) {
		return dao.pwreset2(id);
	}

	public void sInfo(infoDTO dto4, Model model) {
		model.addAttribute("student", dao.sInfo(dto4));
		System.out.println(dao.sInfo(dto4));
	}

	public void pInfo(infoDTO dto4, Model model) {
		model.addAttribute("parent", dao.pInfo(dto4));
		System.out.println(dao.pInfo(dto4));
	}

}
