package com.org.dao;

import java.util.List;


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import com.org.dto.Principal;
import com.org.dto.School;
import com.org.utilities.Helper;

public class PrincipalDao {
	private EntityManager em=null;
	private EntityTransaction et=null;
	private EntityManagerFactory emf=null;
	
	
	public List<Principal> fetchPrincipalByEmailPassword(String email,String password) {
		 emf = Helper.getEntityManagerFactory();
		em = emf.createEntityManager();
		String jpql="select p from Principal p where p.email=?1 and p.password=?2";
		Query query = em.createQuery(jpql);
		query.setParameter(1, email);
		query.setParameter(2, password);
		  
		
		return query.getResultList();
	}
	
	
	public List<Principal> fetchAllPrincipal() {
		 emf = Helper.getEntityManagerFactory();
		 em = emf.createEntityManager();
		String jpql="select p from Principal p";
		Query query = em.createQuery(jpql);
		
		
		return query.getResultList();
	}
	public Principal fetchPrincipalById(int id) {
		 emf = Helper.getEntityManagerFactory();
		 em = emf.createEntityManager();
		
		return em.find(Principal.class, id);
	}


	public boolean savePrincipal(Principal principal) {
		emf = Helper.getEntityManagerFactory();
		 em = emf.createEntityManager();
		  et = em.getTransaction();
               if(principal!=null) {
            	   School school = principal.getSchool();
				et.begin();				
				em.merge(school);
				et.commit();
				return true;
               }
				
			return false;
		
	}


//	public boolean deletePrincipal(int id) {
//		emf = Helper.getEntityManagerFactory();
//		 em = emf.createEntityManager();
//		 et = em.getTransaction();
//		Principal principal = em.find(Principal.class,id);
//		School school = principal.getSchool();
//		 
//	    principal.getTeachers().forEach(teacher -> teacher.setPrincipal(null));
//	    principal.getStudents().forEach(student -> student.setPrincipal(null));
//		school.setPrincipal(null);
//		principal.setSchool(null);
//		if(principal!=null) {
//			 et.begin();
//			 em.remove(principal);
//			 em.merge(school);
//			 et.commit();
//			 return true;
//			 }
//		return false;
//	}
}
	


