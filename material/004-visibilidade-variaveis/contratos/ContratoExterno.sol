// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./VisibilidadeVariaveis.sol";

contract ContratoExterno {
    VisibilidadeVariaveis private visibilidadeVariaveis;

    constructor(address _enderecoContrato) {
        visibilidadeVariaveis = VisibilidadeVariaveis(_enderecoContrato);
    }

    function getContadorContratoExterno() external view returns(uint) {
        return visibilidadeVariaveis.contadorPublico();
    }
}