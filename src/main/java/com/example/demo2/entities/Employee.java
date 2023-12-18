package com.example.demo2.entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "employees")
@Getter
@Setter
@ToString

@NamedQueries({
        @NamedQuery(
                name = "EMPLOYEE.FIND_ALL",query ="SELECT e FROM Employee e"
        ),
        @NamedQuery(
                name = "EMPLOYEE.FIND_BY_NAME",query = "SELECT e FROM Employee e WHERE e.firstName = :first_name OR " + "e.lastName like :last_name"
        )
})

public class Employee {
    @Id
    private Integer employeeNumber;
    private String lastName;
    private String firstName;
    private String extension;
    private String email;
    // private String officeCode;
    private Integer reportsTo;
    private String jobTitle;

    @ManyToOne
    @JoinColumn(name = "officeCode", insertable = false, updatable = false)
    private Office office;
}
