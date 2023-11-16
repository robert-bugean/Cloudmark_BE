package cloudmark.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import cloudmark.entity.Job;


public interface JobRepository extends JpaRepository<Job,Integer> {

    List<Job> findByCustomersId(Integer customerId);
    
}
