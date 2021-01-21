/*
    Copyright 2021 Ethic Money Devs <devs@ethic.money> and Copyright 2020 Empty Set Squad <emptysetsquad@protonmail.com>

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

pragma solidity ^0.5.17;
pragma experimental ABIEncoderV2;

import "../oracle/Pool.sol";

contract MockPool is Pool {
    address private _dai;
    address private _dao;
    address private _ethic;
    address private _univ2;

    constructor(address dai) Pool() public {
        _dai = dai;
    }

    function set(address dao, address ethic, address univ2) external {
        _dao = dao;
        _ethic = ethic;
        _univ2 = univ2;
    }

    function dai() public view returns (address) {
        return _dai;
    }

    function dao() public view returns (IDAO) {
        return IDAO(_dao);
    }

    function ethic() public view returns (IEthic) {
        return IEthic(_ethic);
    }

    function univ2() public view returns (IERC20) {
        return IERC20(_univ2);
    }

    function getReserves(address tokenA, address tokenB) internal view returns (uint reserveA, uint reserveB) {
        (reserveA, reserveB,) = IUniswapV2Pair(address(univ2())).getReserves();
    }
}
