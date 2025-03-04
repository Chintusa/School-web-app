package com.org.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import com.org.dto.School;

import com.org.utilities.Helper;

public class SchoolDao { // Admin==school
	private static EntityManager em = null;
	private static EntityTransaction et = null;
	private static EntityManagerFactory emf = null;

	public List<School> fetchSchoolByEmailPassword(String email, String password) {
		emf = Helper.getEntityManagerFactory();
		em = emf.createEntityManager();
		String jpql = "select s from School s where s.email=?1 and s.password=?2";
		Query query = em.createQuery(jpql);
		query.setParameter(1, email);
		query.setParameter(2, password);

		return query.getResultList();
	}

	public List<School> fetchAllSchool() {
		emf = Helper.getEntityManagerFactory();
		em = emf.createEntityManager();
		String jpql = "select s from School s";
		Query query = em.createQuery(jpql);

		return query.getResultList();
	}

	public School fetchSchoolById(int id) {
		emf = Helper.getEntityManagerFactory();
		em = emf.createEntityManager();

		return em.find(School.class, id);
	}

	public boolean saveSchool(School school) {
		emf = Helper.getEntityManagerFactory();
		em = emf.createEntityManager();
		et = em.getTransaction();
		if (school != null) {
			et.begin();
			em.persist(school);
			et.commit();
			return true;
		}

		return false;

	}

	public List<School> fetchSchoolByEmail(String email) {
		emf = Helper.getEntityManagerFactory();
		em = emf.createEntityManager();
		et = em.getTransaction();
		return em.createQuery("SELECT s FROM School s WHERE s.email =?1").setParameter(1, email)
				.getResultList();
	}

//	public void deleteSchool(School school) {
//		et.begin();
//em.remove(school);		
//et.commit();
//	}

}
