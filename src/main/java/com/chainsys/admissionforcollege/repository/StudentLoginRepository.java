package com.chainsys.admissionforcollege.repository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.chainsys.admissionforcollege.model.Student;
@Repository
public interface StudentLoginRepository  extends CrudRepository<Student,Integer> {
	Student findByEmail(String email);

}
