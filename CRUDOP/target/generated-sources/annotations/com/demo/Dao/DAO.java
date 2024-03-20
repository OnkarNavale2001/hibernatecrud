package com.demo.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.demo.ENTITY.Student;

public class DAO {
  public static SessionFactory sess()
  {
	 SessionFactory factory=null;
	return factory =new Configuration().configure("/com/demo/resources/hibernate.cfg.xml").buildSessionFactory();
	
	 
  }
  public static boolean inertdata(Student s)
  { boolean 
	  b=false;
  SessionFactory sessionFactory=sess();
  Session s1=sessionFactory.openSession();
  Transaction tr=s1.beginTransaction();
  
	   try {
		   
		   s1.save(s);
		   tr.commit();
		   b=true;
		   
		  b=true;
	} catch (Exception e) {
	tr.rollback();
	}
	   return b;
  }
  
  public static List<Student> getAllStudents() {
      List<Student> students = null;
      try {
          SessionFactory sessionFactory = sess();
          Session session = sessionFactory.openSession();
          Transaction transaction = session.beginTransaction();
          students = session.createQuery("from Student", Student.class).getResultList();
          System.out.println(students);
          transaction.commit();
      } catch (Exception e) {
          e.printStackTrace();
      }
      return students;
  }
  public static boolean deletedata(Student s)
  { boolean 
	  b=false;
  SessionFactory sessionFactory=sess();
  Session s1=sessionFactory.openSession();
  Transaction tr=s1.beginTransaction();
  
	   try {
		   
		Student s3=s1.get(Student.class, s.getId());
		s3.setId(s.getId());
		   s1.delete(s3);
		   tr.commit();
		   b=true;
		   
		  b=true;
	} catch (Exception e) {
	tr.rollback();
	}
	   return b;
  }
  public static Student editedata(Student s)
  {
	  Student s2=null;
  SessionFactory sessionFactory=sess();
  Session s1=sessionFactory.openSession();
  s2=s1.get(Student.class, s.getId())  ;
  return s2;
  }
  public static boolean editdata(Student s)
  { boolean 
	  b=false;
  SessionFactory sessionFactory=sess();
  Session s1=sessionFactory.openSession();
  Transaction tr=s1.beginTransaction();
  
	   try {
		   
		Student s3=s1.get(Student.class, s.getId());
		s3.setId(s.getId());
		s3.setEmail(s.getEmail());
		s3.setName(s.getName());
		s3.setPhone(s.getPhone());
		System.out.println(s3);

		
		   s1.update(s3);
		   tr.commit();
		   b=true;
		   
		  b=true;
	} catch (Exception e) {
	tr.rollback();
	}
	   return b;
  }
}
