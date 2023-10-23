INSERT INTO company (company_name, vat_number, address, iban, phone_number, email, pec, fax)
VALUES
  ('azienda 1', 'it99131003460', 'via firenze 84', 'it22m0300203280982955485721', 0487925101, 'info@azienda1.com', 'azienda1@pec.com', NULL),
  ('azienda 2', 'it87656182089', 'via callicratide 127', 'it79g0300203280493833225987', 0982467855, 'info@azienda2.com', 'azienda2@pec.com', NULL),
  ('azienda 3', 'it11485751687', 'via giacinto gigante 60', 'it06g0300203280941962747712', 0489272045, 'info@azienda3.com', 'azienda3@pec.com', NULL),
  ('azienda 4', 'it35747960392', 'via giulio camuzzoni 135', 'it95z0300203280256541646238', 0235144314, 'info@azienda4.com', 'azienda4@pec.com', NULL),
  ('azienda 5', 'it96118811958', 'via sergente maggiore 115', 'it02q0300203280277473699699', 0464588413, 'info@azienda5.com', 'azienda5@pec.com', NULL),
  ('azienda 6', 'it22042638358', 'via di santa melania 117', 'it37h0300203280197597785287', 0366969936, 'info@azienda6.com', 'azienda6@pec.com', NULL),
  ('azienda 7', 'it88247650717', 'via leopardi 19', 'it25x0300203280994785429143', 0823138450, 'info@azienda7.com', 'azienda7@pec.com', NULL),
  ('azienda 8', 'it04476303922', 'via vipacco 148', 'it60i0300203280687639896355', 0367361481, 'info@azienda8.com', 'azienda8@pec.com', NULL),
  ('azienda 9', 'it46527679107', 'via catullo 55', 'it36o0300203280821415726633', 0771644259, 'info@azienda9.com', 'azienda9@pec.com', NULL),
  ('azienda 10', 'it11126885278', 'via scuderlando 71', 'it63z0300203280223298838312', 0263687793, 'info@azienda10.com', 'azienda10@pec.com', NULL);


INSERT INTO customer (customer_name, vat_number, address, cap, city, iban, phone_number, email, pec, fax)
VALUES
  ('cliente 1', 'it19153550359', 'via varrone 81', 95121, 'catania', 'it08n0300203280861231471683', 3304872683, 'cliente1@email.com', 'cliente1@pec.com', NULL),
  ('cliente 2', 'it97452220124', 'via zannoni 49', 38011, 'trento', 'it53y0300203280194131412944', 3434286622, 'cliente2@email.com', 'cliente2@pec.com', NULL),
  ('cliente 3', 'it13266385367', 'via del carmine 145', 36060, 'vicenza', 'it03l0300203280652262656572', 3522700838, 'cliente3@email.com', 'cliente3@pec.com', NULL),
  ('cliente 4', 'it03262863326', 'via pisanelli 129', 48010, 'ravenna', 'it23d0300203280572513371928', 3785644671, 'cliente4@email.com', 'cliente4@pec.com', NULL),
  ('cliente 5', 'it80764559438', 'via croce rossa 119', 08034, 'nuoro', 'it89u0300203280917377427247', 3675103906, 'cliente5@email.com', 'cliente5@pec.com', NULL),
  ('cliente 6', 'it70810980424', 'via san domenico 110', 39030, 'bolzano', 'it06h0300203280268582117762', 3171430916, 'cliente6@email.com', 'cliente6@pec.com', NULL),
  ('cliente 7', 'it39423029250', 'via archimede 94', 40062, 'bologna', 'it31t0300203280629848162521', 3850461832, 'cliente7@email.com', 'cliente7@pec.com', NULL),
  ('cliente 8', 'it27833252354', 'via santa teresa 17', 96010, 'siracusa', 'it24x0300203280888788363426', 3498547323, 'cliente8@email.com', 'cliente8@pec.com', NULL),
  ('cliente 9', 'it33091429285', 'via piave 133', 66030, 'chieti', 'it67p0300203280351252564847', 3126439669, 'cliente9@email.com', 'cliente9@pec.com', NULL),
  ('cliente 10', 'it26939645679', 'via guantai nuovi 31', 80030, 'napoli', 'it28f0300203280484683778657', 3569065195, 'cliente10@email.com', 'cliente10@pec.com', NULL);

INSERT INTO company_customer (company_id, customer_id)
VALUES
  (1, 5),
  (2, 8),
  (2, 1),
  (3, 6),
  (3, 4),
  (4, 9),
  (5, 7),
  (6, 10),
  (7, 2),
  (7, 5),
  (8, 3),
  (8, 6),
  (9, 4),
  (9, 10),
  (10, 1);

INSERT INTO employee (first_name, last_name, address, cap, city, iban, phone_number, email, contract_type, contract_start, company_id)
VALUES
  ('federico', 'moretti', 'viale ippocrate 60', 87020, 'cosenza', 'it18i0300203280572776323858', 3807046727, 'cliente1@email.com', 'tirocinio', '2020-01-16', 1),
  ('valentina', 'rizzo', 'via adua 52', 10092, 'torino', 'it11t0300203280799256355154', 3783918511, 'cliente2@email.com', 'determinato', '2020-02-14', 7),
  ('riccardo', 'de angelis', 'via scuderlando 43', 64020, 'teramo', 'it72d0300203280591577188252', 3250043585, 'cliente3@email.com', 'indeterminato', '2020-07-21', 3),
  ('eleonora', 'mancini', 'via leopardi 5', 23032, 'sondrio', 'it82o0300203280824227796836', 3351721729, 'cliente4@email.com', 'determinato', '2020-08-11', 8),
  ('davide', 'russo', 'via vipacco 134', 17031, 'savona', 'it12c0300203280514327647156', 3162139297, 'cliente5@email.com', 'tirocinio', '2020-08-18', 4),
  ('serena', 'ferrara', 'via tasso 3', 06015, 'perugia', 'it88m0300203280589251836712', 3942989152, 'cliente6@email.com', 'indeterminato', '2021-10-19', 10),
  ('alessandro', 'monti', 'via castelfidardo 52', 87030, 'cosenza', 'it33v0300203280534583938635', 3385865980, 'cliente7@email.com', 'indeterminato', '2022-05-16', 2),
  ('francesca', 'greco', 'via nolana 26', 19139, 'la spezia', 'it66s0300203280952558234812', 3627223770, 'cliente8@email.com', 'determinato', '2022-11-17', 2),
  ('lorenzo', 'fontana', 'via nuova agnano 18', 50053, 'firenze', 'it91j0300203280727575443247', 3790598204, 'cliente9@email.com', 'indeterminato', '2023-10-10', 5),
  ('elisa', 'gentile', 'via delle coste 28', 42019, 'reggio emilia', 'it22q0300203280283239846976', 3459250247, 'cliente10@email.com', 'apprendistato', '2023-10-31', 8);

INSERT INTO job (description, start_date, end_date, customer_id)
VALUES
  ('lavoro 1', '2020-03-20', '2020-04-16', 7),
  ('lavoro 2', '2020-06-16', '2021-02-20', 3),
  ('lavoro 2', '2020-10-16', '2020-11-30', 3),
  ('lavoro 3', '2021-01-08', '2021-05-24', 9),
  ('lavoro 4', '2021-01-26', '2021-07-02', 5),
  ('lavoro 5', '2021-10-27', null, 2),
  ('lavoro 6', '2022-10-21', null, 10),
  ('lavoro 7', '2023-01-23', '2023-03-08', 4),
  ('lavoro 8', '2023-07-30', '2023-08-13', 8),
  ('lavoro 9', '2023-09-20', null, 1),
  ('lavoro 10', '2023-10-07', '2023-11-30', 6),
  ('lavoro 11', '2023-12-10', null, 6);

INSERT INTO employee_job (employee_id, job_id)
VALUES
  (1, 3),
  (2, 6),
  (2, 7),
  (4, 9),
  (5, 2),
  (6, 10),
  (6, 1),
  (8, 10),
  (9, 4),
  (9, 5),
  (10, 8);