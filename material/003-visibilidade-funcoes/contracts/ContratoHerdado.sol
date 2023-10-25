// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./VisibilidadeFuncoes.sol";

contract ContratoHerdado is VisibilidadeFuncoes {
    function chamarFuncoesContratoHerdado() external {
        aumentarContadorPublico();
        aumentarContadorInterno();
    }
}