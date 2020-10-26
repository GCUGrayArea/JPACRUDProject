package com.skilldistillery.jpacrud.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.jpacrud.data.SymphonyDAO;
import com.skilldistillery.jpacrud.entities.Symphony;

@Controller
public class SymphonyController {
	
	@Autowired
	private SymphonyDAO dao;
	
	@RequestMapping( path = { "/" , "index.do" } )
	public ModelAndView index() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName( "index" );
		mv.addObject( "symList" , dao.findAll() );
		
		return mv;
	  
	}
	
	
	
	@RequestMapping(path = "createForm.do", method = RequestMethod.GET)
	public String formCreateSymphony() {
		
		return "createForm";
	
	}

	@RequestMapping( path = "create.do" , method = RequestMethod.POST )
	public ModelAndView createSymphony(
			String name ,
			String composer ,
			String musicalKey ,
			String movements,
			RedirectAttributes redir ) {
		
		Symphony s = new Symphony();
		s.setName(name);
		s.setComposer(composer);
		if ( musicalKey != null) { s.setMusicalKey( musicalKey ); }
		if ( movements != null && !movements.equals( "" ) ) { s.setMovements( Byte.parseByte( movements ) ); }
		
		s = dao.addSymphony(s);
		
		ModelAndView mv = new ModelAndView();
		redir.addFlashAttribute( "sym" , s );
		mv.setViewName( "redirect:symCreated.do" );
		return mv;
	}
	
	@RequestMapping( path = "symCreated.do" , method = RequestMethod.GET )
	public ModelAndView afterCreating( @ModelAttribute("sym") Symphony s ) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("result");
		mv.addObject( "sym" , s );
		
		return mv;
	}
	
	@RequestMapping( path="find.do" , params="id" , method = RequestMethod.GET )
	public ModelAndView getSymphonyById( int id , HttpSession session ) {
		ModelAndView mv = new ModelAndView();
		session.setAttribute("workingId", id);
		mv.setViewName( "result" );
		mv.addObject( "sym" , dao.findById( id ) );
		
		return mv;
		
	}
	
	@RequestMapping( path = "find.do" , params= { "searchType" , "val" } )
	public ModelAndView searchSymphonies( String searchType , String val ) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName( "resultList" );
		
		if ( searchType.equals( "key" ) ) {
			mv.addObject("symList" , dao.findByKey( val ) );
		} else if ( searchType.equals( "composer" ) ) {
			mv.addObject("symList" , dao.findByComposer( val ) );
		} else if ( searchType.equals( "movements" ) ) {
			mv.addObject("symList" , dao.findByMovements( Byte.parseByte( val ) ) );
		}
		
		return mv;
		
	}
	
	@RequestMapping( path = "updateForm.do")
	public ModelAndView formUpdateSym( int id ) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName( "updateForm" );
		mv.addObject( "sym" , dao.findById( id ) );
		
		return mv;
		
	}
	
	@RequestMapping( path = "update.do" )
	public ModelAndView updateSym( 
		HttpSession session ,
		String name ,
		String composer ,
		String musicalKey ,
		String movements ) {
		
		Symphony sym = new Symphony();
		sym.setId( (Integer) session.getAttribute("workingId") );
		sym.setName( name );
		sym.setComposer( composer );
		sym.setMusicalKey( musicalKey );
		sym.setMovements( Byte.parseByte( movements ) );
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("updated");
		mv.addObject( "successful" , dao.updateSymphony( sym ) );
		
		return mv;
		
	}
	
	
	@RequestMapping( path = "delete.do" )
	public ModelAndView deleteSymphony( int id ) {
		
		
		
		ModelAndView mv = new ModelAndView();
		mv.addObject( "successful" ,  dao.deleteById( id ) );
		mv.setViewName("deleted");
		
		return mv;
		
	}
	
}
