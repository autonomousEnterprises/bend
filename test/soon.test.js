const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Soon", function () {
  it("Should be deployed", async function () {
    const Soon = await ethers.getContractFactory("Soon");
    const soon = await Soon.deploy();
    await soon.deployed();

    expect(await soon.symbol()).to.equal("SOON");
  });
});
