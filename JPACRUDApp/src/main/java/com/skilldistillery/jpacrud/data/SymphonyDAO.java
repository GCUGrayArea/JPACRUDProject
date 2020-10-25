package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Symphony;

public interface SymphonyDAO {
	
	public Symphony findById( int id );
	public List<Symphony> findAll();
	public List<Symphony> findByKey( String key );
	public List<Symphony> findByComposer( String composer );
	public List<Symphony> findByMovements( byte movements );
	public Symphony addSymphony( Symphony symphony );
	public boolean deleteById( int id );
//	public boolean updateSymphony(
//			int id ,
//			String name ,
//			String composer ,
//			String musicalKey ,
//			String movements );
	public boolean updateSymphony( Symphony sym );
}

