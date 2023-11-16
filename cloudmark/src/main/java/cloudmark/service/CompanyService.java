package cloudmark.service;

import java.util.List;

import cloudmark.entity.Company;


public interface CompanyService {

    Company createCompany(Company company);

    Company updateCompany(Company company);

    Boolean deleteCompany(Integer companyId);

    List<Company> findAll();
    
}
