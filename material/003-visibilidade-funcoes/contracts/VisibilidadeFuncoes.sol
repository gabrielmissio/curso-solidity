// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
external - podem ser chamadas somente de fora do contrato.
public   - podem ser chamadas de dentro e de fora do contrato.
internal - podem ser chamadas de dentro do contrato ou de contratos herdeiros.
private  - podem ser chamadas somente de dentro do contrato.
*/

contract VisibilidadeFuncoes {
    uint public contador = 0;
    
    function aumentarContadorExterno() external  {
        contador++;
    }

    function aumentarContadorPublico() public {
        contador++;
    }

    function aumentarContadorInterno() internal {
        contador++;
    }

    function aumentarContadorPrivado() private {
        contador++;
    }

    function chamarFuncoes() external  {
        aumentarContadorPublico();
        aumentarContadorInterno();
        aumentarContadorPrivado();
    }
}