public class ValidadorCPFCNPJ {
    
    public String CPF {get; set;}
    public String CNPJ {get; set;}
    
    public ValidadorCPFCNPJ(){
        
    }
    
    public Boolean isValidCPF() {
        
        if (
            CPF == '00000000000' ||
            CPF == '11111111111' ||
            CPF == '22222222222' ||
            CPF == '33333333333' ||
            CPF == '44444444444' ||
            CPF == '55555555555' ||
            CPF == '66666666666' ||
            CPF == '77777777777' ||
            CPF == '88888888888' ||
            CPF == '99999999999' ||
            CPF.length() != 11
        ) {
            system.debug('CPF inválido');
            return false;
        }
        
        // Calcula o primeiro dígito verificador
        Integer soma = 0;
        
        for (Integer i = 0; i < 9; i++) {
            soma += integer.ValueOf(CPF.substring(i,i + 1)) * (10 - i);
        }
        
        Integer primeiroDigito = math.mod((soma * 10), 11);
        
        if (primeiroDigito == 10 || primeiroDigito == 11) {
            primeiroDigito = 0;
        }
        
        
        // Verifica se o primeiro dígito verificador é igual ao décimo dígito do CPF
        if (primeiroDigito != integer.ValueOf(CPF.substring(9, 10))) {
            return false;
        }
        
        // Calcula o segundo dígito verificador
        soma = 0;
        for (Integer i = 0; i < 10; i++) {
            soma += integer.ValueOf(CPF.substring(i,i + 1)) * (11 - i);
        }
        Integer segundoDigito = math.mod((soma * 10), 11);
        
        if (segundoDigito == 10 || segundoDigito == 11) {
            segundoDigito = 0;
        }
        
        // Verifica se o segundo dígito verificador é igual ao décimo primeiro dígito do CPF
        if (segundoDigito != integer.ValueOf(CPF.substring(10, 11))) {
            return false;
        }
        
        // Se todas as verificações passaram, o CPF é válido
        return true;
    }
}