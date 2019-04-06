package com.fujitsu.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.fujitsu.exception.ServiceException;
import com.fujitsu.services.CustomerService;


@Controller
public class CustController {
	
	@Autowired
	private CustomerService customerService;
	
	@GetMapping("/customers")
	public String viewAllCustomers(HttpSession session)
	{
		try {
			List<Customer> 	customer=customerService.findAllCustomer();
			session.setAttribute("customerList",customers);
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "customerview";
	}
	
	@GetMapping("/add")
	public String customeraddForm()
	{
		return "customeraddform";
	}
	
	@PostMapping("/addCustomer")
	public String addCustomer(Customer customer,ModelMap map)
	{
		try {
			customerService.add(customer);
			map.addAttribute("message","Customer "+customer.getcustomerId()+" is added successfully");
			return "success";

		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			map.addAttribute("Error","Sorry!  could not be added ");
			return "addcustomerform";

		}
		
	}
	
	//Request Mapping
	@GetMapping("/edit")
	public String editCustomerForm() {
		return "customereditform";
	}
	
	@PostMapping("/editCustomer")
	public String editCustomer(Customer customer,ModelMap map)
	{
		try {
			customerService.update(customer);
			map.addAttribute("message","Customer"+customer.getCustomerId()+" is updated successfully");
			return "success";

		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			map.addAttribute("Error","Sorry! Data could not be saved ");
			return "customereditform";

		}
		
	}
	
	@GetMapping("/delete")
	public String deleteCustomerForm() {
		return "customerdeleteform";
	}
	
	@PostMapping("/deleteCustomer")
	public String deleteCustomer(Customer customer,ModelMap map)
	{
		try {
			customerService.remove(customer);
			map.addAttribute("message","Customer "+customer.getCustomerId()+" is deleted successfully");
			return "success";

		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			map.addAttribute("Error","Sorry! Data could not be deleted ");
			return "customerdeleteform";

		}
		
	}
}
