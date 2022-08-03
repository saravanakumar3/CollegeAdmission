package com.chainsys.admissionforcollege.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.admissionforcollege.model.PaymentDetails;
import com.chainsys.admissionforcollege.model.StudentCompositeKey;
import com.chainsys.admissionforcollege.repository.PaymentDetailsRepository;

@Service
public class PaymentService {
	
		@Autowired
		private PaymentDetailsRepository PaymentRepository;
		
		public List<PaymentDetails> getPayment(){
			List<PaymentDetails> listofpay=PaymentRepository.findAll();
			return listofpay;
		}
		public PaymentDetails save(PaymentDetails paymentDetails) {
			return PaymentRepository.save(paymentDetails);
		}

		public Optional<PaymentDetails> findById(StudentCompositeKey id) {

			return PaymentRepository.findById(id);
		}
		@Transactional
		public void deleteById(StudentCompositeKey id) {
			PaymentRepository.deleteById(id);
		}
	}

