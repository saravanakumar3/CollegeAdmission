package com.chainsys.admissionforcollege.service;
import java.util.Iterator;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.admissionforcollege.model.Course;
import com.chainsys.admissionforcollege.model.StudentCourseDetails;
import com.chainsys.admissionforcollege.repository.CourseRepository;
import com.chainsys.admissionforcollege.repository.StudentCourseDetailsRepository;
import com.chainsys.admissionforcolllege.dto.CourseDto;
@Service
public class CourseService {
    @Autowired
    private CourseRepository courseRepository;
    @Autowired
    private StudentCourseDetailsRepository studentCourseDetailsRepository;
    public Course findByid(int id) {
        return courseRepository.findById(id);
    }
    public Course save(Course Course) {
        return courseRepository.save(Course);
    }
    public List<Course> getCourse() {
        List<Course> listCourse= courseRepository.findAll();
        System.out.println("Course");
        return listCourse;
    }
    @Transactional
    public void deleteById(int id) {
    	courseRepository.deleteById(id);
    }
     public  CourseDto getCourseDto(int id) {
	Course course= findByid(id);
	CourseDto  dto =new CourseDto();
	 dto.setCourse(course);
	 List<StudentCourseDetails> studentCourseDetails =studentCourseDetailsRepository.findBycourseId(id);
	 Iterator<StudentCourseDetails> itr =studentCourseDetails.iterator();
	while(itr.hasNext()) {
		dto.addCourseDetails((StudentCourseDetails)itr.next());
	}
	 return dto;}
}
