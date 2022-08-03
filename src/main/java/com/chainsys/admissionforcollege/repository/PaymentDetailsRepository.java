package com.chainsys.admissionforcollege.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.admissionforcollege.model.PaymentDetails;
import com.chainsys.admissionforcollege.model.StudentCompositeKey;

public interface PaymentDetailsRepository extends CrudRepository<PaymentDetails,StudentCompositeKey>{
	Optional<PaymentDetails> findById(StudentCompositeKey id);
	PaymentDetails save(PaymentDetails paymentDetails);
	void deleteById(StudentCompositeKey id);
	List<PaymentDetails> findAll();
//	List<PaymentDetails> findByCourseId(int id);
//	List<PaymentDetails> findByStudentId(int id);
//	List<PaymentDetails> findByRegistrationId(long id);
}