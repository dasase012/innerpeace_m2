package member.command;

import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.service.DuplicateIdException;
import member.service.JoinRequest;
import member.service.JoinService;
import mvc.command.CommandHandler;

public class JoinHandler implements CommandHandler{
	private static final String FORM_VIEW = "/WEB-INF/boardbookView/joinForm.jsp";
	private JoinService joinService = new JoinService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) {
		if(req.getMethod().equals("GET")) {
			return processForm(req,res);
		}else if(req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req,res);
		}else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}
	private String processForm(HttpServletRequest req, HttpServletResponse res) {
		return FORM_VIEW;
	}
	private String processSubmit(HttpServletRequest req, HttpServletResponse res) {
		JoinRequest joinReq = new JoinRequest();
			
		joinReq.setId(req.getParameter("id"));
		joinReq.setName(req.getParameter("name"));
		joinReq.setPwd(req.getParameter("pwd"));
		joinReq.setConfirmPwd(req.getParameter("confirmPwd"));
		joinReq.setGender(req.getParameter("gender"));
		joinReq.setBirthdate(req.getParameter("birthdate"));
		joinReq.setTel(req.getParameter("tel"));
		joinReq.setEmail(req.getParameter("email"));
		joinReq.setCon_past(req.getParameter("con_past"));
		joinReq.setCon_date(req.getParameter("con_date"));
		joinReq.setCon_cat(req.getParameter("con_cat"));
		joinReq.setPosition(req.getParameter("position"));
		joinReq.setRegdate(new Timestamp(((JoinRequest) req).getRegdate().getTime()));		
		
		
		Map<String, Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);
		joinReq.validate(errors);
		if(!errors.isEmpty()) {
			return FORM_VIEW;
		}
		try {
			joinService.join(joinReq);
			return "/WEB-INF/boardbookView/joinSuccess.jsp";
		}catch(DuplicateIdException e) {
			errors.put("duplicateId", Boolean.TRUE);
			return FORM_VIEW;
		}
	}
}
