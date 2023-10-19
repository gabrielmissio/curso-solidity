// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TiposValor {
    bool public booleano;
    int256 public numeroInteiro;
    uint256 public numeroInteiroNaoNegativo;
    address public endereco;
    bytes32 public matrizDeBytes;

    enum Status { Pendente, Aprovado, Rejeitado }
    Status public status;
    Status public constant statusPadrao = Status.Pendente;

    function setBooleano(bool _boleano) public {
        booleano = _boleano;
    }

    function setNumeroInteiro(int _numeroInteiro) public {
        numeroInteiro = _numeroInteiro;
    }

    function setNumeroInteiroNaoNegativo(uint _numeroInteiroNaoNegativo) public {
        numeroInteiroNaoNegativo = _numeroInteiroNaoNegativo;
    }

    function setEndereco(address _endereco) public {
        endereco = _endereco;
    }

    function getBalancoEndereco() public view returns(uint) {
        return endereco.balance;
    }

    function getBalancoEndereco(address _endereco) public view returns(uint) {
        return _endereco.balance;
    }

    function setMatrizDeBytes(bytes1 _matrizDeBytes) public {
        matrizDeBytes = _matrizDeBytes;
    }

    function setStatus(Status _status) public {
        status = _status;
    }
}