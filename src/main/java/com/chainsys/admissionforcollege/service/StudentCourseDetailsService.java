package com.chainsys.admissionforcollege.service;
import java.util.List;
import java.util.Optional;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.admissionforcollege.model.StudentCourseDetails;
import com.chainsys.admissionforcollege.repository.StudentCourseDetailsRepository;
import com.chainsys.admissionforcolllege.compositekey.StudentCompositeKey;
@Service
public class StudentCourseDetailsService {
		@Autowired
		private StudentCourseDetailsRepository studentCourseDetailsRepository;
		public List<StudentCourseDetails> getStudententCourse(){
			List<StudentCourseDetails> liststudentcourse =studentCourseDetailsRepository.findAll();
			return liststudentcourse;
		}
		public StudentCourseDetails save(StudentCourseDetails studentCourseDetails) {
			return studentCourseDetailsRepository.save(studentCourseDetails);
		}

		public Optional<StudentCourseDetails> findById(StudentCompositeKey id) {

			return studentCourseDetailsRepository.findById(id);
		}
		@Transactional
		public void deleteById(StudentCompositeKey id) {
			studentCourseDetailsRepository.deleteById(id);
		}
		
	}

		
	

