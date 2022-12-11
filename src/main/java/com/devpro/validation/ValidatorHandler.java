package com.devpro.validation;

import org.springframework.web.bind.annotation.ControllerAdvice;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

@ControllerAdvice
public class ValidatorHandler {
    private static final String PASSWORD = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]" + "+\\.[a-zA-Z]{2,6}$";
public static boolean ValidatePassWord(String password){
    Pattern pattern = Pattern.compile(PASSWORD);
    Matcher matcher = pattern.matcher(PASSWORD);
    return matcher.matches();
}
}
