// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./VisibilidadeFuncoes.sol";

contract ContratoExterno {
    VisibilidadeFuncoes private visibilidadeFuncoes;

    constructor(address _enderecoContrato) {
        visibilidadeFuncoes = VisibilidadeFuncoes(_enderecoContrato);
    }

    function chamarFuncoesContratoExterno() external {
        visibilidadeFuncoes.aumentarContadorPublico();
        visibilidadeFuncoes.aumentarContadorExterno();
    }

    function contador() external view returns(uint256) {
        return visibilidadeFuncoes.contador();
    }
}