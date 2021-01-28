package com.login.dao;

import java.math.*;
import java.security.*;


public class Encryption{
    public String MD5(String input){
    	String hashtext = "";
    	try{
            MessageDigest md = MessageDigest.getInstance("MD5");             
            byte[] messageDigest = md.digest(input.getBytes());
            BigInteger number = new BigInteger(1,messageDigest);
            hashtext = number.toString(16);
            while(hashtext.length()<32){
                hashtext = "0"+hashtext;
            }
            return hashtext;
        }
        catch(NoSuchAlgorithmException e){
            System.err.println("Error");
        }
        return hashtext;
    }
}