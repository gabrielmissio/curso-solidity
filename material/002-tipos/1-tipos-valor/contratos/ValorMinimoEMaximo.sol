// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TiposValor {
    enum Status { Pendente, Aprovado, Rejeitado }

    // Minimo de um inteiro sem sinal (uint) é 0 (zero)
    // Modifique o codigo para obter o valor minimo e maximo de "outros tipos" (ex: uint8, int32, etc...)

    function getMaxUint256() public pure returns(uint256) {
        return type(uint256).max;
    }

    function getMinInt256() public pure returns(int256) {
        return type(int256).min;
    }

    function getMaxInt256() public pure returns(int256) {
        return type(int256).max;
    }

    function getMinStatus() public pure returns(Status) {
        return type(Status).min;
    }

    function getMaxStatus() public pure returns(Status) {
        return type(Status).max;
    }
}