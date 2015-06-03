update crm_claim c1 set num_facture = (select "x_Fact" from crm_claim c2 where c2.id = c1.id )
