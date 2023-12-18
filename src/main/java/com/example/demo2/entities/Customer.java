package com.example.demo2.entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Entity
@Table(name = "customers")
@Setter
@Getter
@ToString

@NamedQueries({
        @NamedQuery(
                name = "CUSTOMER.FIND_ALL" ,query = "SELECT c FROM  Customer c "
        )
})
public class Customer {
    @Id
    private Integer customerNumber;
    private String customerName;
    private String contactLastName;
    private String contactFirstName;
    private String phone;
    private String addressLine1;
    private String addressLine2;
    private String city;
    private String state;
    private String postalCode;
    private String country;
    private Integer salesRepEmployeeNumber;
    private Double creditLimit;

    @OneToMany(mappedBy = "employeeNumber")
    private List<Employee> customerList;
}
