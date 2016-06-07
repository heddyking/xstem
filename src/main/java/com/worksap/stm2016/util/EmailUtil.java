package com.worksap.stm2016.util;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.scheduling.annotation.Async;

import com.worksap.stm2016.global.Constants;

/**
 * Created by wang_xiaox on 5/21/2016.
 */
public class EmailUtil {

//    public static void main(String[] args) {
//        sendEmail("981088636@qq.com","[校悉网]账户密码","qwe234");
//    }
	
//	@Async
    public static boolean sendEmail(String receiver, String subject, String text){
        final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
        // Get a Properties object
        Properties props = System.getProperties();
        props.setProperty("mail.smtp.host", "smtp.qq.com");
        props.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);
        props.setProperty("mail.smtp.socketFactory.fallback", "false");
        props.setProperty("mail.smtp.port", "465");
        props.setProperty("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.auth", "true");
        props.put("mail.debug", "true");
        props.put("mail.store.protocol", "pop3");
        props.put("mail.transport.protocol", "smtp");
        String email="shuimuyanyuan@qq.com";
        try {
            Session session = Session.getDefaultInstance(props,
                    new Authenticator() {
                        protected PasswordAuthentication getPasswordAuthentication() {
                            return new PasswordAuthentication(email, new String(Constants.
                            		mail).toString().replace("@", "")
                            		.replace(".", 
                            		"").replace("x", ""));
                        }
                    });

            // -- Create a new message --
            Message msg = new MimeMessage(session);

            // -- Set the FROM and TO fields --
            msg.setFrom(new InternetAddress(email));
            msg.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(receiver, false));
            msg.setSubject(subject);
            msg.setText(text);
            msg.setSentDate(new Date());
            Transport.send(msg);
            System.out.println("Message sent."+receiver);
            return true;
        } catch (MessagingException e) {
            System.out.println("Error send email, cause: " + e);
            return false;
        }
    }

}
