const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Soon", function () {
  it("Should return the new greeting once it's changed", async function () {
    const Soon = await ethers.getContractFactory("Soon");
    const soon = await Soon.deploy();
    await soon.deployed();

    expect(await soon.greet()).to.equal("Hello, world!");

    const setGreetingTx = await soon.setGreeting("Hola, mundo!");

    // wait until the transaction is mined
    await setGreetingTx.wait();

    expect(await soon.greet()).to.equal();
  });
});
