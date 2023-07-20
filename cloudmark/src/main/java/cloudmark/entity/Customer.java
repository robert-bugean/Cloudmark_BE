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
import jakarta.persistence.ManyToMany;
// import jakarta.persistence.OneToMany;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Entity
@Getter @Setter @NoArgsConstructor
public class Customer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "customer_name", unique = true)
    @NotEmpty(message = "customerName cannot be empty")
    @Size(max = 20)
    private String customerName;

    @Column(name = "vat_number", unique = true)
    @NotEmpty(message = "vatNumber cannot be empty")
    @Size(min = 11, max = 11)
    private String vatNumber;

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

    @NotEmpty(message = "pec cannot be empty")
    @Size(max = 20)
    private String pec;

    @Nullable
    @Size(max = 20)
    private String fax;

    // @JsonIgnore
    // @OneToMany(mappedBy = "jobs", fetch = FetchType.LAZY)
    // private Set<Job> jobs;

    @JsonIgnore
    @ManyToMany(mappedBy = "companies", fetch = FetchType.LAZY)
    private Set<Company> companies;

}
