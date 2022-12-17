package com.infinite.inventory;


import java.util.List;




import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

public class InventoryDAO {

	SessionFactory sessionFactory;
	public String generateCustomerid() {
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		Criteria cr = session.createCriteria(Customer.class);
		List<Customer> customerList = cr.list();
		session.close();
		if( customerList.size()==0) {
			return "C001";
	
		}
		else {
			String id = customerList.get(customerList.size()-1).getCustomerid();
			int id1 = Integer.parseInt(id.substring(1));
			id1++;
			String id2 = String.format("C%03d", id1);
     		return id2;		
		}	
		
	}
	
	
	public String addCustomer(Customer customer) {
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		String Customerid=generateCustomerid();
		customer.setCustomerid(Customerid);
		Criteria cr = session.createCriteria(Customer.class);
		org.hibernate.Transaction transaction =  session.beginTransaction();
		session.save(customer);
		transaction.commit();
		return " Added Successsfully...";
	}
	public int authenticate(String user,String password){
        sessionFactory = SessionHelper.getConnection();
        Session session = sessionFactory.openSession();
        Criteria criteria = session.createCriteria(Customer.class);
        criteria.add(Restrictions.eq("userName", user));
        criteria.add(Restrictions.eq("passCode", password));
        List<Customer>cuList = criteria.list();
        return cuList.size();
        
            }
	
	public String updateCustomer(Customer customer){
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.saveOrUpdate(customer);
		transaction.commit();
		
		return "Customer updated Successsfully...";
	
		
	}
	public Customer searchCustomer(String customerid) {
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession(); 
		Criteria cr = session.createCriteria(Customer.class);
		cr.add(Restrictions.eq("customerid", customerid));
		List<Customer> customerList = cr.list();
		return customerList.get(0);
	}
	public List<Customer> showCustomer( ) {
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
		Criteria cr = session.createCriteria(Customer.class);
		List<Customer> customerList = cr.list();		
		return customerList;
	}
	public String deleteCustomer(Customer customer){
		sessionFactory = SessionHelper.getConnection();
		Session session = sessionFactory.openSession();
        Criteria cr = session.createCriteria(Customer.class);
              Transaction transaction = session.beginTransaction();
		cr.add(Restrictions.eq("customerid", customer));
        session.delete(customer);
        transaction.commit();
		session.close();

        return "Deleted Customer Successfully";
    }

}
	

