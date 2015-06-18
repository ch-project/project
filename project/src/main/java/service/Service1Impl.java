package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MemberDao;

@Service
public class Service1Impl implements Service1{
	@Autowired
	private MemberDao memberdao;
	
}
