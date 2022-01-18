const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Bend", function () {
  it("Should be deployed", async function () {
    const Bend = await ethers.getContractFactory("Bend");
    const soon = await Bend.deploy();
    await soon.deployed();

    expect(await soon.symbol()).to.equal("BEND");
  });
});
