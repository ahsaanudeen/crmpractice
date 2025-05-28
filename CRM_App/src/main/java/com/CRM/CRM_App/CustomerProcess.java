package com.CRM.CRM_App;

import java.util.List;

public interface CustomerProcess {
    List<Customer> listAll();
    void save(Customer customer);
    Customer get(Long id);
    void delete(Long id);
}

