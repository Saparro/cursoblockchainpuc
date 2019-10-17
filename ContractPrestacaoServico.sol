pragma solidity 0.5.12;

ContractPrestacaoServico{
    
    string public TomadorServico;
    
    string public PrestadorServico;
    
    uint256 private ValorServicoContratado;
    
    uint256 public DataValidadeServico;
    
    uint256 public DataEntregaServico;
    
    uint256 public ValorIndenizacao;
    
      event EntregaServico (uint256 DataEntregaServico)
      
      event RenegociacaoDataValidadeServico (uint NovaDataValidadeServico);
    
    modifier autorizadosRenegociacaoDataValidadeServico () {
        require (TomadorServico * PrestadorServico) "Operacao Em Comum Acordo Partes";
        _; 
    
    }
    
    constructor(
        
        string memory = nomeTomadorServico,
        
        string memory = nomePrestadorServico,
        
        uint256 = _ValorServicoContratado,
        
        uint256 = _DataEntregaServico,
        
        uint256 = _DataValidadeServico,
    
        )
    
    public{
        
        PrestadorServico = nomePrestadorServico;
        
        TomadorServico = nomeTomadorServico;
        
        ValorServicoContratado = _ValorServicoContratado;
        
        DataValidadeServico = _DataValidadeServico;
        
        DataEntregaServico = _DataValidadeServico;
        
    
    }
    
        function ValorServicoContratado () public view returns (uint256)
        
        {   
            return ValorServicoContratado;
        }
        
        function VerificarDataValidadeServico (uint256 DataValidadeServico) public 
        
        {
            require DataEntregaServico <= DataValidadeServico "Contrato Prestacao Servico Valido"
            
            if (DataValidadeServico < DataEntregaServico "Contrato Invalido")
        }
        
        function RenegociacaoDataValidadeServico (uint256 NovaDataValidadeServico)
        
        {
            DataValidadeServico = NovaDataValidadeServico 
            
        }
        
        function RenogociacaoValorServicoContratado (uint256 NovoValorServicoContratado)
        
        {
            ValorServicoContratado = NovoValorServicoContratado
        }
        
        function Pagamento (uint256 ValorServicoContratado)
        
        { 
            if EntregaServico = ValorServicoContratado;
            else ValorServicoContratado = 0;
        }
        
    }
