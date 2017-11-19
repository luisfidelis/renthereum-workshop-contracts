// --- Contracts
const Renthereum  = artifacts.require("./Renthereum.sol");
const RentLib = artifacts.require("./lib/RentLib.sol");

module.exports = function(deployer, network, accounts) {
  deployer.deploy(RentLib).then(() => {
    RentLib.deployed(lib => {
      deployer.deploy(Renthereum, lib.address);
    })
  });
};
