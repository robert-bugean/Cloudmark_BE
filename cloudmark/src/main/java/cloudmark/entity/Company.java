package cloudmark.entity;

import java.util.Set;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.annotation.Nullable;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToMany;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Entity
@Getter @Setter @NoArgsConstructor
public class Company {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "company_name", unique = true)
    @NotEmpty(message = "companyName cannot be empty")
    @Size(max = 20)
    private String companyName;

    @Column(name = "vat_number", unique = true)
    @NotEmpty(message = "vatNumber cannot be empty")
    @Size(min = 13, max = 13)
    private String vatNumber;

    @NotEmpty(message = "address cannot be empty")
    @Size(max = 20)
    private String address;

    @Column(unique = true)
    @NotEmpty(message = "iban cannot be empty")
    @Size(min = 16, max = 34)
    private String iban;

    @Column(name = "phone_number")
    @NotEmpty(message = "phoneNumber cannot be empty")
    @Size(max = 15)
    private Integer phoneNumber;

    @NotEmpty(message = "email cannot be empty")
    @Size(max = 20)
    private String email;

    @NotEmpty(message = "pec cannot be empty")
    @Size(max = 20)
    private String pec;

    @Nullable
    @Size(max = 20)
    private Integer fax;

    @JsonIgnore
    @OneToMany(mappedBy = "company", fetch = FetchType.LAZY)
    private Set<Employee> employees;

    @JsonIgnore
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "company_customer",
        joinColumns = @JoinColumn(name = "company_id"),
        inverseJoinColumns = @JoinColumn(name = "customer_id")
    )
    private Set<Customer> customers;

}
