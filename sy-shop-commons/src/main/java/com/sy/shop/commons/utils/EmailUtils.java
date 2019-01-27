package com.sy.shop.commons.utils;

import org.apache.commons.mail.Email;
import org.apache.commons.mail.EmailException;
import org.springframework.beans.factory.annotation.Autowired;


public class EmailUtils {
    @Autowired
    Email email;
    public void send(String subject, String msg, String... toList) {
        try {
            email.setSubject(subject);
            email.setMsg(msg);
            email.addTo(toList);

            email.setSSLOnConnect(true);
            email.send();
        } catch (EmailException e) {
            e.printStackTrace();
        }

    }
//        Email email = new SimpleEmail();
//        email.setHostName("smtp.qq.com");
//        email.setSmtpPort(465);
//        email.setAuthenticator(new DefaultAuthenticator("admin@slhczz.com", "ydupggvzajhkcajc"));
//        email.setSSLOnConnect(true);
//        email.setFrom("admin@slhczz.com");
//        email.setSubject("TestMail");
//        email.setMsg("This is a test mail ... :-)");
//        email.addTo("slhczxz@gmail.com");
//        email.send();

}
