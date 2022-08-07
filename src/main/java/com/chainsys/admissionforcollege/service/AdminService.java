package com.chainsys.admissionforcollege.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.admissionforcollege.model.Admin;
import com.chainsys.admissionforcollege.repository.AdminRepository;
@Service
public class AdminService {
	@Autowired
	private AdminRepository adminRepository;
	public Admin getAdminDetailsByNameAndPassword(String email, String password) {
		return adminRepository.findByAdminEmailAndPassword(email, password);

	}
}
