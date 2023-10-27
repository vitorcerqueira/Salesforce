public class ImobiliariaController {
    
    //Definiçoes das variaveis
    public integer quartos {get; set;} // é a interaçao das variaveis da pagina visual force com o banco de dados, get e set é recebe e enviar as informaçoes
    public integer Banheiros {get; set;}
    public integer Sala {get; set;}
    public integer Cozinha {get; set;}
    public integer Copa {get; set;}
    public integer Suite {get; set;}
    public integer garagem {get; set;}
    public integer Valor {get; set;}
    Public string  tipoImovel {get; set;}
    Public string Mobiliado {get; set;}
    Public string Status {get; set;}
    Public string FinalidadeImovel {get; set;} 
    Public string TiposComerciais {get; set;}
    
    //Método picklist     
    public List<SelectOption> getMinhasOpcoes(){
        
        //Mapear o campo de lista de seleção/picklist que desejo listar    
        Schema.DescribeFieldResult describeResult = Imoveis__c.TipoImovel__c.getDescribe();
        
        //listar as opções válidas dentro do meu campo
        List<Schema.PicklistEntry> entries = describeResult.getPickListValues();
        
        //Cria variável de retorno do tipo de lista para o objeto SelectOption       
        List<SelectOption> optionsToReturn = new List<SelectOption>();
        
        //Adiciona as opções do campo listadas
        for(Schema.PicklistEntry pEntry : entries){
            
            //se a opção esta ativa
            //Ou pode aplicar o filtro que quiser, caso não queira mostrar todas as opções
            if(pEntry.isActive()){
                //Adiciona o nome e o valor na variável retorno
                optionsToReturn.add(new SelectOption(pEntry.getValue(), pEntry.getLabel()));
            }
            
        }
        //Retorna a lista de selectOption criamos na variável de retorno
        return optionsToReturn;     
        
    }       
    
    //Método picklist adicionar segunda  opção 
    public List<SelectOption> getMinhasOpcoes2(){ //nao pode ter a mesma variavel para difeerentes picklist porisso coloquei a variavel com o "2" no final.  
        
        //Mapear o campo de lista de seleção/picklist que desejo listar    
        Schema.DescribeFieldResult describeResult = Imoveis__c.Mobiliado__c.getDescribe();
        
        //listar as opções válidas dentro do meu campo
        List<Schema.PicklistEntry> entries = describeResult.getPickListValues();
        
        //Cria variável de retorno do tipo de lista para o objeto SelectOption       
        List<SelectOption> optionsToReturn = new List<SelectOption>();
        
        //Adiciona as opções do campo listadas
        for(Schema.PicklistEntry pEntry : entries){
            
            //se a opção esta ativa
            //Ou pode aplicar o filtro que quiser, caso não queira mostrar todas as opções
            if(pEntry.isActive()){
                //Adiciona o nome e o valor na variável retorno
                optionsToReturn.add(new SelectOption(pEntry.getValue(), pEntry.getLabel()));
            }
            
        }
        //Retorna a lista de selectOption criamos na variável de retorno
        return optionsToReturn;     
        
    }       
    
    //Método picklist adicionar terceira  opção 
    public List<SelectOption> getMinhasOpcoes3(){ //nao pode ter a mesma variavel para difeerentes picklist porisso coloquei a variavel com o "3" no final.  
        
        //Mapear o campo de lista de seleção/picklist que desejo listar    
        Schema.DescribeFieldResult describeResult = Imoveis__c.Status__c.getDescribe();
        
        //listar as opções válidas dentro do meu campo
        List<Schema.PicklistEntry> entries = describeResult.getPickListValues();
        
        //Cria variável de retorno do tipo de lista para o objeto SelectOption       
        List<SelectOption> optionsToReturn = new List<SelectOption>();
        
        //Adiciona as opções do campo listadas
        for(Schema.PicklistEntry pEntry : entries){
            
            //se a opção esta ativa
            //Ou pode aplicar o filtro que quiser, caso não queira mostrar todas as opções
            if(pEntry.isActive()){
                //Adiciona o nome e o valor na variável retorno
                optionsToReturn.add(new SelectOption(pEntry.getValue(), pEntry.getLabel()));
            }
            
        }
        //Retorna a lista de selectOption criamos na variável de retorno
        return optionsToReturn;     
        
    }
    
    //Método picklist adicionar quarta opção 
    public List<SelectOption> getMinhasOpcoes4(){ //nao pode ter a mesma variavel para difeerentes picklist porisso coloquei a variavel com o "4" no final.  
        
        //Mapear o campo de lista de seleção/picklist que desejo listar    
        Schema.DescribeFieldResult describeResult = Imoveis__c.Finalidade_do_Imovel__c.getDescribe();
        
        //listar as opções válidas dentro do meu campo
        List<Schema.PicklistEntry> entries = describeResult.getPickListValues();
        
        //Cria variável de retorno do tipo de lista para o objeto SelectOption       
        List<SelectOption> optionsToReturn = new List<SelectOption>();
        
        //Adiciona as opções do campo listadas
        for(Schema.PicklistEntry pEntry : entries){
            
            //se a opção esta ativa
            //Ou pode aplicar o filtro que quiser, caso não queira mostrar todas as opções
            if(pEntry.isActive()){
                //Adiciona o nome e o valor na variável retorno
                optionsToReturn.add(new SelectOption(pEntry.getValue(), pEntry.getLabel()));
            }
            
        }
        //Retorna a lista de selectOption criamos na variável de retorno
        return optionsToReturn;     
        
    }
    
    //Método picklist adicionar quinta opção 
    public List<SelectOption> getMinhasOpcoes5(){ //nao pode ter a mesma variavel para difeerentes picklist porisso coloquei a variavel com o "5" no final.  
        
        //Mapear o campo de lista de seleção/picklist que desejo listar    
        Schema.DescribeFieldResult describeResult = Imoveis__c.Tipos_Comerciais__c.getDescribe();
        
        //listar as opções válidas dentro do meu campo
        List<Schema.PicklistEntry> entries = describeResult.getPickListValues();
        
        //Cria variável de retorno do tipo de lista para o objeto SelectOption       
        List<SelectOption> optionsToReturn = new List<SelectOption>();
        
        //Adiciona as opções do campo listadas
        for(Schema.PicklistEntry pEntry : entries){
            
            //se a opção esta ativa
            //Ou pode aplicar o filtro que quiser, caso não queira mostrar todas as opções
            if(pEntry.isActive()){
                //Adiciona o nome e o valor na variável retorno
                optionsToReturn.add(new SelectOption(pEntry.getValue(), pEntry.getLabel()));
            }
            
        }
        //Retorna a lista de selectOption criamos na variável de retorno
        return optionsToReturn;     
        
    }
    
    
    
    //Metodo salvar
    public void salvarImoveis(){
        Imoveis__c objImoveis = new Imoveis__c(); // objeto do tipo Imoveis, essa variavel ja é o que foi criado la dentro do salesforce quando inciei o projeto antes de codar
        objImoveis.Quartos__c = quartos;  // para fazer a integraçao de salvar tenho que puxar as variaveis que exites na visual force pagina e igualar a variavel.    
        objImoveis.Sala__c = Sala;
        objImoveis.Cozinha__c = Cozinha;
        objImoveis.Copa__c = Copa;
        objImoveis.Suite__c = Suite;
        objImoveis.Garagem__c = garagem;
        objImoveis.Valor__c = Valor;
        objImoveis.TipoImovel__c = TipoImovel;
        objImoveis.Mobiliado__c = Mobiliado;
        objImoveis.Status__c = Status;
        objImoveis.Finalidade_do_Imovel__c= FinalidadeImovel;
        objImoveis.Tipos_Comerciais__c = TiposComerciais;
        
        Try{
            
            if(objImoveis.TipoImovel__c == 'Nenhum' || objImoveis.TipoImovel__c == null){
                
                ApexPages.addmessage(new ApexPages.message(ApexPages.Severity.ERROR,'o campo tipo do imóvel dever ser preenchido!'));
                
                return;
            }
            
            if( objImoveis.Mobiliado__c == 'Escolha' || objImoveis.Mobiliado__c == null){
                
                ApexPages.addmessage(new ApexPages.message(ApexPages.Severity.ERROR,'o campo mobiliado dever ser preenchido!'));
                
                return;
            }
            if( objImoveis.Status__c == 'Nenhum' || objImoveis.Status__c == null){
                
                ApexPages.addmessage(new ApexPages.message(ApexPages.Severity.ERROR,'o campo status dever ser preenchido!'));
                
                return;
            }
            if( objImoveis.Finalidade_do_Imovel__c == 'Nenhum' || objImoveis.Finalidade_do_Imovel__c == null){
                
                ApexPages.addmessage(new ApexPages.message(ApexPages.Severity.ERROR,'o campo Tipos Comerciais dever ser preenchido!'));
                
                return;
            }
            if( objImoveis.Tipos_Comerciais__c == 'Nenhum' || objImoveis.Tipos_Comerciais__c == null){
                
                ApexPages.addmessage(new ApexPages.message(ApexPages.Severity.ERROR,'o campo Tipos Comerciais dever ser preenchido!'));
                
                return;
            }
            
            Insert objImoveis; 
            
            ApexPages.addmessage(new ApexPages.message(ApexPages.Severity.CONFIRM,'Imóvel cadastrado com sucesso!'));
            // Limpa os campos apos SALVAR 
            quartos = null;
            Banheiros = null;
            Sala = null;
            Cozinha = null;
            Copa = null;
            Suite = null;
            garagem = null;
            Valor = null;
            tipoImovel = null;
            Mobiliado= null;
            Status= null;
            FinalidadeImovel = null;
            TiposComerciais = null;
            
        }catch(DmlException e){
            
            ApexPages.addmessage(new ApexPages.message(ApexPages.Severity.ERROR,'Por favor verifique todos os campos antes de salvar!'));
            
        }
    }
}