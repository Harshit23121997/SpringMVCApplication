package com.harshit.springdemo.dao;

import java.util.List;

import com.harshit.springdemo.entity.Customer;

public interface CustomerDAO {

	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomer);

	public Customer getCustomer(int id);

	public void deleteCustomer(int theId);

	
}
