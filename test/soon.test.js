const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Bend", function () {
  it("Should be deployed", async function () {
    const Bend = await ethers.getContractFactory("Bend");
    const soon = await Bend.deploy();
    await soon.deployed();

    expect(await soon.symbol()).to.equal("BEND");
  });
  // it('has a total supply', async function () {
  //   // Use large integer comparisons
  //   expect(await this.token.totalSupply()).to.be.bignumber.equal(TOTAL_SUPPLY);
  // });
  //
  // it('has a name', async function () {
  //   expect(await this.token.name()).to.be.equal(NAME);
  // });
  //
  // it('has a symbol', async function () {
  //   expect(await this.token.symbol()).to.be.equal(SYMBOL);
  // });
  //
  // it('assigns the initial total supply to the creator', async function () {
  //   expect(await this.token.balanceOf(creator)).to.be.bignumber.equal(TOTAL_SUPPLY);
  // });
});
