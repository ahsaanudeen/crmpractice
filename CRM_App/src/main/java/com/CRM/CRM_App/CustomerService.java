package com.CRM.CRM_App;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerService implements CustomerProcess {

    @Autowired
    private CustomerRepository repo;

    public List<Customer> listAll() {
        return repo.findAll();
    }

    public void save(Customer customer) {
        repo.save(customer);
    }

    public Customer get(Long id) {
        return repo.findById(id).orElse(null);
    }

    public void delete(Long id) {
        repo.deleteById(id);
    }
}

