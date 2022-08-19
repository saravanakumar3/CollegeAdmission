package com.chainsys.admissionforcollege.service;
import java.util.Iterator;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.admissionforcollege.model.CardDetails;
import com.chainsys.admissionforcollege.model.Student;
import com.chainsys.admissionforcollege.model.StudentCourseDetails;
import com.chainsys.admissionforcollege.repository.CardDetailRepository;
import com.chainsys.admissionforcollege.repository.StudentCourseDetailsRepository;
import com.chainsys.admissionforcollege.repository.StudentRepository;
import com.chainsys.admissionforcolllege.dto.StudentCourseDto;
import com.chainsys.admissionforcolllege.dto.StudentPaymentDto;
@Service
public class StudentService {
    @Autowired
    private StudentRepository studentRepository;
    @Autowired
   private StudentCourseDetailsRepository studentCourseDetailsRepository;
    @Autowired
    private CardDetailRepository cardDetailsRepository;
    public Student findByid(int id) {
        return studentRepository.findById(id);
    }
    public Student save(Student student) {
        return studentRepository.save(student);
    }
     public List<Student> getStudent() {
    	
        List<Student> listStudent = studentRepository.findAll();
        return listStudent;
    }
    @Transactional
    public void deleteById(int id) {
    	studentRepository.deleteById(id);
    }
     public  StudentCourseDto getStudentCourseDto(int id) {
	 Student student= findByid(id);
	 StudentCourseDto  dto =new StudentCourseDto();
	 dto.setStudent(student);
	 List<StudentCourseDetails> studentCourseDetails =studentCourseDetailsRepository.findByUserid(id);
	 Iterator<StudentCourseDetails> itr =studentCourseDetails.iterator();
	while(itr.hasNext()) {
		dto.addStudentCourseDetails((StudentCourseDetails)itr.next());
	}
	 return dto;}
     public  StudentPaymentDto getStudentpaymentDto(int id) {
    	 Student student= findByid(id);
    	 StudentPaymentDto  dto =new StudentPaymentDto();
    	 dto.setStudent(student);
    	 List<CardDetails> cardDetails =cardDetailsRepository.findByUserId(id);
    	 Iterator<CardDetails> itr =cardDetails.iterator();
    	while(itr.hasNext()) {
    		dto.addCardDetails((CardDetails)itr.next());
    	}
    	 return dto;}
}