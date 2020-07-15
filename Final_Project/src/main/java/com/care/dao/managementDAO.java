package com.care.dao;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.care.dto.infoDTO;

@Repository
public class managementDAO {
	@Autowired
	private SqlSession sqlSession;
	public static final String namespace="com.care.mybatis.Mapper";
	
	public infoDTO idcheck(infoDTO dto4) throws Exception{
		return sqlSession.selectOne(namespace+".idcheck", dto4);
	}
	
	public infoDTO loginchk(infoDTO dto4) {
		return sqlSession.selectOne(namespace+".loginchk", dto4);
	}
	
	public void signchk(infoDTO dto4) {
//		System.out.println(dto4.getStatus());
//		System.out.println(dto4.getId());
//		System.out.println(dto4.getPw());
//		System.out.println(dto4.getPwchk());
//		System.out.println(dto4.getName());
//		System.out.println(dto4.getAge());
//		System.out.println(dto4.getSchool());
//		System.out.println(dto4.getAddr());
//		System.out.println(dto4.getFam());
//		System.out.println(dto4.getTeaNum());
//		System.out.println(dto4.getStuNum());
//		System.out.println(dto4.getParNum());
		sqlSession.insert(namespace+".signchk", dto4);
	}
	
//	public int pwreset(infoDTO dto4) {
//		return sqlSession.update(namespace+".pwreset",dto4);
//	}

	public String pwreset2(String id) {
		return sqlSession.selectOne(namespace+".pwreset2", id);
	}
	

}
