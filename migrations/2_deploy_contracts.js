// --- Contracts
const Renthereum  = artifacts.require("./Renthereum.sol");
const RentLib = artifacts.require("./lib/RentLib.sol");

module.exports = function(deployer, network, accounts) {
  deployer.deploy(RentLib).then(() => {
    return deployer.deploy(Renthereum, RentLib.address)
  })
}

