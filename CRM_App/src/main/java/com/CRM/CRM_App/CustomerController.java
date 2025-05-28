package com.CRM.CRM_App;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class CustomerController {

    @Autowired
    private CustomerService service;

    @GetMapping("/crm")
    public String viewHomePage(Model model) {
        model.addAttribute("listCustomers", service.listAll());
        return "customer";
    }

    @GetMapping("/new")
    public String showNewCustomerForm(Model model) {
        model.addAttribute("customer", new Customer());
        return "customer_form";
    }

    @PostMapping("/save")
    public String saveCustomer(@ModelAttribute("customer") Customer customer) {
        service.save(customer);
        return "redirect:/crm";
    }

    @GetMapping("/edit/{id}")
    public String showFormForEdit(@PathVariable Long id, Model model) {
        Customer customer = service.get(id);
        model.addAttribute("customer", customer);
        return "customer_form";
    }

    @GetMapping("/delete/{id}")
    public String deleteCustomer(@PathVariable Long id) {
        service.delete(id);
        return "redirect:/crm";
    }
    


@GetMapping("/name")
    public String name()
    {
    	return "Gayu";
    }
}

