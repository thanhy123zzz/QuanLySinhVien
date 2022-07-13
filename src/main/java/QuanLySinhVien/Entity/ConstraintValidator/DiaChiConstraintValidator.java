package QuanLySinhVien.Entity.ConstraintValidator;

import javax.validation.ConstraintValidator;  
import javax.validation.ConstraintValidatorContext;  
  
public class DiaChiConstraintValidator implements ConstraintValidator<DiaChi,String> {  
  
    public boolean isValid(String s, ConstraintValidatorContext cvc) {  
    	if(s.contains("Việt Nam")||s.isEmpty())
        return true;  
    	return false;
    }  
}  