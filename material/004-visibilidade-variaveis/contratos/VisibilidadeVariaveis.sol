// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
public   - podem ser chamadas de dentro e de fora do contrato.
private  - podem ser chamadas somente de dentro do contrato em que foram declaradas.
internal - podem ser chamadas de dentro do contrato em que foram declaradas ou de contratos herdeiros.
*/

contract VisibilidadeVariaveis {
    uint public contadorPublico = 0;
    uint private contadorPrivado = 0;
    uint internal contadorInterno = 0;
    // uint contadorInterno = 0;
    
    function aumentarContador() external {
        contadorPublico++;
        contadorPrivado++;
        contadorInterno++;
    }

    function getContador() external view returns(uint[3] memory) {
        return [
            contadorPublico,
            contadorPrivado,
            contadorInterno
        ];
    }
}