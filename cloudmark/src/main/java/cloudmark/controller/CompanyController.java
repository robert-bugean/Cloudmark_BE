package cloudmark.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import cloudmark.entity.Company;
import cloudmark.service.CompanyService;
import jakarta.validation.Valid;


@RestController
@RequestMapping("api/company")
public class CompanyController {

    @Autowired
    CompanyService companyService;

    @PostMapping("/")
    @ResponseStatus(HttpStatus.CREATED)
    public Company createCompany(@Valid @RequestBody Company company) {
        return companyService.createCompany(company);
    }

    @PutMapping("/")
    @ResponseStatus(HttpStatus.OK)
    public Company updateCompany(@Valid @RequestBody Company company) {
        return companyService.updateCompany(company);
    }

    @DeleteMapping("/{compnayId}")
    @ResponseStatus(HttpStatus.OK)
    public Boolean deleteCompany(@PathVariable Integer companyId) {
        return companyService.deleteCompany(companyId);
    }

    @GetMapping("/")
    @ResponseStatus(HttpStatus.OK)
    public List<Company> findlAll() {
        return companyService.findAll();
    }
    
}
