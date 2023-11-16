package cloudmark.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cloudmark.entity.Company;
import cloudmark.repository.CompanyRepository;


@Service
public class CompanyServiceImpl implements CompanyService {
    
    @Autowired
    CompanyRepository companyRepository;

    @Override
    public Company createCompany(Company company) {
        return companyRepository.save(company);
    }

    @Override
    public Company updateCompany(Company company) {
        return companyRepository.save(company);
    }

    @Override
    public Boolean deleteCompany(Integer companyId) {
        
        if (companyRepository.existsById(companyId)) {
            companyRepository.deleteById(companyId);
            return true;
        }
        else {
            return false;
        }

    }

    @Override
    public List<Company> findAll() {
        return companyRepository.findAll();
    }

}
