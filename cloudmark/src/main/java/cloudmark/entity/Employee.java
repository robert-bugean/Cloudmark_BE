package cloudmark.entity;

import java.util.Date;
// import java.util.Set;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
// import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Entity
@Getter @Setter @NoArgsConstructor
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "first_name", unique = true)
    @NotEmpty(message = "firstName cannot be empty")
    @Size(max = 20)
    private String firstName;

    @Column(name = "last_name", unique = true)
    @NotEmpty(message = "lastName cannot be empty")
    @Size(max = 20)
    private String lastName;

    @NotEmpty(message = "address cannot be empty")
    @Size(max = 20)
    private String address;

    @NotEmpty(message = "cap cannot be empty")
    @Size(max = 5)
    private String cap;

    @NotEmpty(message = "city cannot be empty")
    @Size(max = 20)
    private String city;

    @Column(unique = true)
    @NotEmpty(message = "iban cannot be empty")
    @Size(min = 16, max = 34)
    private String iban;

    @Column(name = "phone_number")
    @NotEmpty(message = "phoneNumber cannot be empty")
    @Size(max = 15)
    private String phoneNumber;

    @NotEmpty(message = "email cannot be empty")
    @Size(max = 20)
    private String email;

    @Column(name = "contract_type")
    @NotEmpty(message = "contractType cannot be empty")
    @Enumerated(EnumType.STRING)
    private ContractType contractType;

    public enum ContractType {
        indeterminato,
        determinato,
        apprendistato,
        tirocinio
    }

    @Column(name = "contract_start", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date contractStart;

    // @ManyToMany(mappedBy = "jobs", fetch = FetchType.LAZY)
    // private Set<Job> jobs;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "company_id")
    private Company company;
    
}
