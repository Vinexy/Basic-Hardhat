const { expect } = require("chai");
const hre = require("hardhat");

describe("Counter", function () {
  it("should do calculating", async function () {
    const Counter = await hre.ethers.getContractFactory("Counter");
    const counter = await Counter.deploy();
    await counter.deployed();

    await counter.add(1, 2);

    await counter.subtract(7, 3);

    await counter.multiply(5, 4);

    await counter.divide(4, 2);

    const [sum, subtracted, multiplied, divided] = await counter.allResult();

    expect(sum).to.equal(3);
    expect(subtracted).to.equal(4);
    expect(multiplied).to.equal(20);
    expect(divided).to.equal(2);
  });
});
