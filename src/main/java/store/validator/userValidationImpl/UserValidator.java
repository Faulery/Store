package store.validator.userValidationImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import store.dao.UserDao;
import store.entity.User;

@Component("userValidator")
public class UserValidator implements store.validator.Validator {

    @Autowired
    private UserDao userDao;

    public void validate(Object object) throws Exception {
        User user = (User) object;

        if(user.getName().isEmpty()){
            throw new UserValidatorException(UserValidationMasseges.EMPTY_USERNAME_FIELD);
        }

        if(userDao.findByName(user.getName()) != null) {
            throw  new UserValidatorException((UserValidationMasseges.NAME_ALREADY_EXIST));
        }

        if (user.getEmail().isEmpty()) {
            throw new UserValidatorException(UserValidationMasseges.EMPTY_EMAIL_FIELD);
        }

        if (user.getPassword().isEmpty()) {
            throw new UserValidatorException(UserValidationMasseges.EMPTY_PASSWORD_FIELD);
        }
    }
}
