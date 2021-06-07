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

import "./external/Decimal.sol";

library Constants {
    /* Chain */
    uint256 private constant CHAIN_ID = 1; //  Mainnet 
    
    /* Bootstrapping */
    uint256 private constant BOOTSTRAPPING_PERIOD = 120; // 7 days at 6 epochs per day
    uint256 private constant BOOTSTRAPPING_PRICE = 11e17; // 1.10 DAI
    uint256 private constant BOOTSTRAPPING_SPEEDUP_FACTOR = 2; // 
    
    /* Oracle */                                   
    address private constant DAI_ADDRESS = address(0x6B175474E89094C44Da98b954EedeAC495271d0F); //  Mainnet DAI addr 
    uint256 private constant ORACLE_RESERVE_MINIMUM = 1e10; // 10,000 DAI
    
    /* Bonding */
    uint256 private constant INITIAL_STAKE_MULTIPLE = 1e6; // 100 ETHC -> 100M ETHCS
    
    /* Epoch */
    struct EpochStrategy {
        uint256 offset;
        uint256 start;
        uint256 period;
    }
    
    uint256 private constant EPOCH_OFFSET = 0;    // no offset
    uint256 private constant EPOCH_START = 1613221200;  // Friday, Saturday, February 13, 2021 1:00:00 PM GMT 
    uint256 private constant EPOCH_PERIOD = 14400;  // 4 hours
    
    /* Governance */
    uint256 private constant GOVERNANCE_PERIOD = 24; // 24 epochs = 4 days
    uint256 private constant GOVERNANCE_EXPIRATION = 6; // 6 + 1 epochs = 24 hours
    uint256 private constant GOVERNANCE_QUORUM = 30e16; // 30% - higher quorum for better governance
    uint256 private constant GOVERNANCE_PROPOSAL_THRESHOLD = 1e16; // 1% - higher proposal threshold
    uint256 private constant GOVERNANCE_SUPER_MAJORITY = 6e17; // 60% - lower supermajority
    uint256 private constant GOVERNANCE_EMERGENCY_DELAY = 18; // 18 epochs = 3 days
    
    /* DAO */
    
    uint256 private constant INITIALIZE_INCENTIVE = 2e21; // 2,000 ETHC gas fees for launching update
    uint256 private constant INCENTIVE = 4e20; // 120 ETHC total incentive
    uint256 private constant ADVANCE_INCENTIVE = (INCENTIVE/100)*25; // 25% of incentive. 100 ETHC
    uint256 private constant TREASURY_INCENTIVE = (INCENTIVE/100)*75; // 75% of incentive. 300 ETHC
    uint256 private constant DAO_ENTRANCE_LOCKUP_EPOCHS = 24; // 24 epochs fluid = 4 days
    uint256 private constant DAO_EXIT_LOCKUP_EPOCHS = 42; // 42 epochs fluid = 7 days
    
    /* Pool */
    uint256 private constant POOL_EXIT_LOCKUP_EPOCHS = 24; // 24 epochs fluid = 4 days
    
    /* Market */
    uint256 private constant COUPON_EXPIRATION = 270; // 270 epochs = 45 days
    uint256 private constant DEBT_RATIO_CAP = 24e16; // 24%
    uint256 private constant INITIAL_COUPON_REDEMPTION_PENALTY = 5e17; // 50%
    uint256 private constant COUPON_REDEMPTION_PENALTY_DECAY = 3600; // 1 hour 

    /* Regulator */
    uint256 private constant SUPPLY_CHANGE_LIMIT = 15e15; // 1.5% per epoch = 9% per day
    uint256 private constant COUPON_SUPPLY_CHANGE_LIMIT = 6e16; // 6%
    uint256 private constant ORACLE_POOL_RATIO = 20; // 20%
    uint256 private constant TREASURY_RATIO = 225; // 2.25%
    
    /* Deployed */
    address private constant DAO_ADDRESS = address(0xb5C18e59Ac0Ee2fe1a91542981DD5eFD8b6eE5C0); // 
    address private constant ETHIC_ADDRESS = address(0x223B787a82d286BeC67b9f8068c1D679cA4cfB4a); // 
    address private constant PAIR_ADDRESS = address(0xdB312a0952705484F3C685074F547c877EaA244b); // 
    address private constant TREASURY_ADDRESS = address(0x25825313BeAd63Ab5b93Aae07f1879A6bC501F6E); // Gnosis Safe mainnet treasury msig address
    
    /**
     * Getters
     */

    function getDaiAddress() internal pure returns (address) {
        return DAI_ADDRESS;
    }

    function getOracleReserveMinimum() internal pure returns (uint256) {
        return ORACLE_RESERVE_MINIMUM;
    }

    function getEpochStrategy() internal pure returns (EpochStrategy memory) {
        return EpochStrategy({
            offset: EPOCH_OFFSET,
            start: EPOCH_START,
            period: EPOCH_PERIOD
        });
    }

    function getInitialStakeMultiple() internal pure returns (uint256) {
        return INITIAL_STAKE_MULTIPLE;
    }

    function getBootstrappingPeriod() internal pure returns (uint256) {
        return BOOTSTRAPPING_PERIOD;
    }

    function getBootstrappingPrice() internal pure returns (Decimal.D256 memory) {
        return Decimal.D256({value: BOOTSTRAPPING_PRICE});
    }

    function getBootstrappingSpeedupFactor() internal pure returns (uint256) {
        return BOOTSTRAPPING_SPEEDUP_FACTOR;
    }

    function getGovernancePeriod() internal pure returns (uint256) {
        return GOVERNANCE_PERIOD;
    }

    function getGovernanceExpiration() internal pure returns (uint256) {
        return GOVERNANCE_EXPIRATION;
    }

    function getGovernanceQuorum() internal pure returns (Decimal.D256 memory) {
        return Decimal.D256({value: GOVERNANCE_QUORUM});
    }

    function getGovernanceProposalThreshold() internal pure returns (Decimal.D256 memory) {
        return Decimal.D256({value: GOVERNANCE_PROPOSAL_THRESHOLD});
    }

    function getGovernanceSuperMajority() internal pure returns (Decimal.D256 memory) {
        return Decimal.D256({value: GOVERNANCE_SUPER_MAJORITY});
    }

    function getGovernanceEmergencyDelay() internal pure returns (uint256) {
        return GOVERNANCE_EMERGENCY_DELAY;
    }

    function getInitializeIncentive() internal pure returns (uint256) {
        return INITIALIZE_INCENTIVE;
    } 

    function getAdvanceIncentive() internal pure returns (uint256) {
        return ADVANCE_INCENTIVE;
    }

    function getTreasuryIncentive() internal pure returns (uint256) {
        return TREASURY_INCENTIVE;
    }    
    
    function getDAOExitLockupEpochs() internal pure returns (uint256) {
        return DAO_EXIT_LOCKUP_EPOCHS;
    }

    function getDAOEntranceLockupEpochs() internal pure returns (uint256) {
        return DAO_ENTRANCE_LOCKUP_EPOCHS;
    }
    
    function getPoolExitLockupEpochs() internal pure returns (uint256) {
        return POOL_EXIT_LOCKUP_EPOCHS;
    }

    function getCouponExpiration() internal pure returns (uint256) {
        return COUPON_EXPIRATION;
    }

    function getDebtRatioCap() internal pure returns (Decimal.D256 memory) {
        return Decimal.D256({value: DEBT_RATIO_CAP});
    }

    function getInitialCouponRedemptionPenalty() internal pure returns (Decimal.D256 memory) {
        return Decimal.D256({value: INITIAL_COUPON_REDEMPTION_PENALTY});
    }

    function getCouponRedemptionPenaltyDecay() internal pure returns (uint256) {
        return COUPON_REDEMPTION_PENALTY_DECAY;
    }

    function getSupplyChangeLimit() internal pure returns (Decimal.D256 memory) {
        return Decimal.D256({value: SUPPLY_CHANGE_LIMIT});
    }

    function getCouponSupplyChangeLimit() internal pure returns (Decimal.D256 memory) {
        return Decimal.D256({value: COUPON_SUPPLY_CHANGE_LIMIT});
    }

    function getOraclePoolRatio() internal pure returns (uint256) {
        return ORACLE_POOL_RATIO;
    }

    function getTreasuryRatio() internal pure returns (uint256) {
        return TREASURY_RATIO;
    }

    function getChainId() internal pure returns (uint256) {
        return CHAIN_ID;
    }

    function getDaoAddress() internal pure returns (address) {
        return DAO_ADDRESS;
    }

    function getEthicAddress() internal pure returns (address) {
        return ETHIC_ADDRESS;
    }

    function getPairAddress() internal pure returns (address) {
        return PAIR_ADDRESS;
    }

    function getTreasuryAddress() internal pure returns (address) {
        return TREASURY_ADDRESS;
    }
}
