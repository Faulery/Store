package store.serviceimpl;

import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import store.service.MailSenderService;
import java.util.Properties;
import javax.mail.*;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

@Service
public class MailSenderServiceImpl implements MailSenderService {

    private final static String USERNAME = "yura.comercial@gmail.com";
    private final static String PASSWORD = "fhujyvbcnbr";
    private final static String HOST = "127.0.0.1";

    @Async
    public void sendMail(String content, String mailBody, String email) {
        Properties properties = System.getProperties();

        properties.setProperty("mail.smpt.starttls.enable", "true");
        properties.setProperty("mail.smtp.auth", "true");
        properties.setProperty("mail.smtp.port", "465");
        properties.setProperty("mail.smtp.host", "smtp.gmail.com");
        properties.setProperty("mail.smtp.socketFactory.port", "465");
        properties.setProperty("mail.smtp.socketFactory.class",
                "javax.net.ssl.SSLSocketFactory");
        Session session = Session.getDefaultInstance(properties,
                new Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(USERNAME, PASSWORD);
                    }
                });
        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(USERNAME));

            message.addRecipient(Message.RecipientType.TO, new InternetAddress(
                    email));
            message.setSubject(content, "UTF-8");
            message.setText(mailBody);
            synchronized (this) {
                Transport.send(message);
            }
        } catch (MessagingException mex) {
            mex.printStackTrace();
            System.out.println("You have some problems with connection!");
        }
    }

    @Override
    public void newsletter(String mail) {
        Properties properties = System.getProperties();
        properties.setProperty("mail.smtp.host", HOST);

        Session session = Session.getDefaultInstance(properties);

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(USERNAME));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(mail));
            message.setSubject("Newsletter");
            message.setText("Now you will be able to everything");

            Transport.send(message);

        } catch (MessagingException m) {
            m.printStackTrace();
        }
    }
}

