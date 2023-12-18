package com.example.demo2.repositories;

import com.example.demo2.entities.Environment;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class EntityManagerBuilder {
    private final static EntityManagerFactory emf = Persistence.createEntityManagerFactory(Environment.PUNIT_NAME);

    public static EntityManager getEntityManager() {
        return emf.createEntityManager();
    }
}
