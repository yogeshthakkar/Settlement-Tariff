package com.controller;

import java.sql.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.MimeMessage;

public class EmailAttch {
public static void testDemo() {

		Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.googlemail.com");
        props.put("mail.from", "maulikshah481997@gmail.com");
          Session session = Session.getInstance(props, null);

        try {
            MimeMessage msg = new MimeMessage(session);
            msg.setFrom();
            msg.setRecipients(Message.RecipientType.TO,
                              "maulikshah481997@gmail.com");
            msg.setSubject("JavaMail hello world example");
            msg.setSentDate(new java.util.Date());
            msg.setText("Hello, world!\n");
            Transport.send(msg);
        } catch (MessagingException mex) {
            System.out.println("send failed, exception: " + mex);
        }
	}

	public static void main(String[] args) {

		testDemo();

	}

}
