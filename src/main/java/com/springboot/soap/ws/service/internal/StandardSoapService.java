package com.springboot.soap.ws.service.internal;

import org.springframework.stereotype.Service;
import com.springboot.soap.ws.client.SoapClient;
import com.springboot.soap.ws.service.SoapService;
import com.springboot.soap.ws.client.internal.PersonObjectClient;
import org.springframework.beans.factory.annotation.Autowired;

@Service
public class StandardSoapService implements SoapService {

    @Autowired
    private SoapClient soapClient;

    public String firstRequest(PersonObjectService person) {

        PersonObjectClient personClient = new PersonObjectClient();
        personClient.setName(person.getName());
        personClient.setLastname(person.getLastname());
        personClient.setEmail(person.getEmail());
        personClient.setStatus(person.getStatus());

        return soapClient.firstRequest(personClient);
    }

    public String secondRequest(PersonObjectService person) {

        PersonObjectClient personClient = new PersonObjectClient();
        personClient.setName(person.getName());
        personClient.setLastname(person.getLastname());
        personClient.setEmail(person.getEmail());
        personClient.setStatus(person.getStatus());

        return soapClient.secondRequest(personClient);
    }

    public String thirdRequest(PersonObjectService person) {

        PersonObjectClient personClient = new PersonObjectClient();
        personClient.setName(person.getName());
        personClient.setLastname(person.getLastname());
        personClient.setEmail(person.getEmail());
        personClient.setStatus(person.getStatus());

        return soapClient.thirdRequest(personClient);
    }

}
