// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ValorVsReferencia {
    uint valor = 42;
    uint[] referencia = [42];

    function incrementarVariaveis() external {
        uint copiaValor = valor;
        uint[] storage copiaReferencia = referencia;

        copiaValor++;
        copiaReferencia[0]++;
    }

    function getValor() external view returns(uint) {
        return valor;
    }

    function getReferencia() external view returns(uint[] memory) {
        return referencia;
    }
}