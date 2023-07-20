INSERT INTO company (company_name, vat_number, address, iban, phone_number, email, pec, fax)
VALUES
  ("azienda 1", "it01234567890", "via roma 1", "it60x0542811101000000123456", "0212345678", "info@azienda1.it", "azienda1@pec.it", NULL),
  ("azienda 2", "it09876543210", "via milano 10", "it60x0542811101000000987654", "0312345678", "info@azienda2.it", "azienda2@pec.it", NULL),
  ("azienda 3", "it11223344556", "via napoli 5", "it60x0542811101000001122334", "0412345678", "info@azienda3.it", "azienda3@pec.it", NULL),
  ("azienda 4", "it99887766554", "via torino 8", "it60x0542811101000009988776", "0512345678", "info@azienda4.it", "azienda4@pec.it", NULL),
  ("azienda 5", "it66778899001", "via firenze 15", "it60x0542811101000006677889", "0612345678", "info@azienda5.it", "azienda5@pec.it", NULL),
  ("azienda 6", "it12345678902", "via bologna 20", "it60x0542811101000001234567", "0712345678", "info@azienda6.it", "azienda6@pec.it", NULL),
  ("azienda 7", "it34567890123", "via palermo 3", "it60x0542811101000003456789", "0812345678", "info@azienda7.it", "azienda7@pec.it", NULL),
  ("azienda 8", "it56789012345", "via venezia 25", "it60x0542811101000005678901", "0912345678", "info@azienda8.it", "azienda8@pec.it", NULL),
  ("azienda 9", "it90909090909", "via genova 6", "it60x0542811101000009090909", "1012345678", "info@azienda9.it", "azienda9@pec.it", NULL),
  ("azienda 10", "it10101010101", "via padova 30", "it60x0542811101000001010101", "1112345678", "info@azienda10.it", "azienda10@pec.it", NULL);


INSERT INTO customer (customer_name, vat_number, address, cap, city, iban, phone_number, email, pec, fax)
VALUES
  ("cliente 1", "it46785342986", "via bologna 3", "78253", "bologna", "it70x0542811101000003456789", "0612345678", "cliente1@email.com", "cliente1@pec.com", NULL),
  ("cliente 2", "it78965342136", "via roma 10", "00100", "roma", "it70x0542811101000000987654", "0312345678", "cliente2@email.com", "cliente2@pec.com", NULL),
  ("cliente 3", "it12567890456", "via milano 15", "20121", "milano", "it70x0542811101000001122334", "0412345678", "cliente3@email.com", "cliente3@pec.com", NULL),
  ("cliente 4", "it54321234567", "via firenze 5", "50123", "firenze", "it70x0542811101000009988776", "0512345678", "cliente4@email.com", "cliente4@pec.com", NULL),
  ("cliente 5", "it97890123456", "via torino 8", "10100", "torino", "it70x0542811101000006677889", "0612345678", "cliente5@email.com", "cliente5@pec.com", NULL),
  ("cliente 6", "it67890123432", "via napoli 23", "80100", "napoli", "it70x0542811101000001234567", "0712345678", "cliente6@email.com", "cliente6@pec.com", NULL),
  ("cliente 7", "it34567898765", "via palermo 15", "90100", "palermo", "it70x0542811101000006456789", "0812345678", "cliente7@email.com", "cliente7@pec.com", NULL),
  ("cliente 8", "it12345678899", "via venezia 10", "30100", "venezia", "it70x0542811101000005678901", "0912345678", "cliente8@email.com", "cliente8@pec.com", NULL),
  ("cliente 9", "it98765432109", "via genova 20", "16100", "genova", "it70x0542811101000009090909", "1012345678", "cliente9@email.com", "cliente9@pec.com", NULL),
  ("cliente 10", "it10101010101", "via padova 5", "35100", "padova", "it70x0542811101000001010101", "1112345678", "cliente10@email.com", "cliente10@pec.com", NULL);