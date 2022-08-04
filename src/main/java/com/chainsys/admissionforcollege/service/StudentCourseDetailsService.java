package com.chainsys.admissionforcollege.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.admissionforcollege.model.StudentCourseDetails;
import com.chainsys.admissionforcollege.repository.StudentCourseDetailsRepository;
@Service
public class StudentCourseDetailsService {
		@Autowired
		private StudentCourseDetailsRepository studentCourseDetailsRepository;
		public StudentCourseDetails findByid(int id) {
	        return studentCourseDetailsRepository.findById(id);
	    }

	    public StudentCourseDetails save(StudentCourseDetails studentCourseDetails) {
	        return studentCourseDetailsRepository.save(studentCourseDetails);
	    }

	    public void deleteById(int id) {
	    	studentCourseDetailsRepository.deleteById(id);
	    }

	    public List<StudentCourseDetails> getstudentCourseDetails() {
	        List<StudentCourseDetails> listStudentCourseDetails= studentCourseDetailsRepository.findAll();
	        return listStudentCourseDetails;
	    }

		
	}

