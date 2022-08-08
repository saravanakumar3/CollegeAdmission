package com.chainsys.admissionforcollege.repository;
import java.util.List;
import java.util.Optional;
import org.springframework.data.repository.CrudRepository;
import com.chainsys.admissionforcollege.model.StudentCourseDetails;
import com.chainsys.admissionforcolllege.compositekey.StudentCompositeKey;
public interface StudentCourseDetailsRepository extends CrudRepository<StudentCourseDetails, StudentCompositeKey> {
		Optional<StudentCourseDetails> findById(StudentCompositeKey id);
		StudentCourseDetails save(StudentCourseDetails paymentDetails);
		void deleteById(StudentCompositeKey id);
	List<StudentCourseDetails> findAll();
	List<StudentCourseDetails> findByUserid(int id);
      List<StudentCourseDetails> findByCourseId(int id);
		
	}

