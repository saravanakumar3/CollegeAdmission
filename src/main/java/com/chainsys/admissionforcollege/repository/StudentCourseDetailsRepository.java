package com.chainsys.admissionforcollege.repository;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import com.chainsys.admissionforcollege.model.StudentCourseDetails;
public interface StudentCourseDetailsRepository extends CrudRepository<StudentCourseDetails, Integer> {
	StudentCourseDetails findById(int id);
	StudentCourseDetails save(StudentCourseDetails studentCourseDetails);
	void deleteById(int id);
	List<StudentCourseDetails> findAll();
}
