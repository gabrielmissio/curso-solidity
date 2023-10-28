// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./VisibilidadeVariaveis.sol";

contract ContratoHerdado is VisibilidadeVariaveis {
    function aumentarContadorContratoHerdado() external  {
        contadorPublico++;
        contadorInterno++;
    }

    function getContadorContratoExterno() external view returns(uint[2] memory) {
        return [
            contadorPublico,
            contadorInterno
        ];
    }
}