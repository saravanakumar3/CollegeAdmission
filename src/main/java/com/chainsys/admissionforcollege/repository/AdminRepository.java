package com.chainsys.admissionforcollege.repository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.admissionforcollege.model.Admin;
@Repository
public interface AdminRepository extends CrudRepository<Admin, Integer> {
Admin findByAdminEmailAndPassword(String email, String password);
}
	