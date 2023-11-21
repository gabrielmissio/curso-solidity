// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
VIEW - não altera o estado do contrato
PURE - não altera e nem lê o estado do contrato
*/

contract MutabilidadeDeEstado {
    uint saldo = 1000000000000;

    function getSaldo() external view returns(uint) {
        return saldo;
    }

    function _getSaldo() external returns(uint) {
        return saldo;
    }

    function somador(uint n1, uint n2) external pure returns(uint) {
        return n1 + n2;
    }

    function _somador(uint n1, uint n2) external returns(uint) {
        return n1 + n2;
    }
}