const { anyValue } = require("@nomicfoundation/hardhat-chai-matchers/withArgs");
const { expect } = require("chai");

const signers = {};
let contractFactory;
let contractInstance;
let contractAddr;

describe("Lock", function () {
  describe("Deployment", function () {
    it("Should deploy the smart contract", async function () {
      const [defaultSigner] = await ethers.getSigners();
      signers.defaultSigner = defaultSigner;
      contractFactory = await ethers.getContractFactory("Testing3", defaultSigner);
      contractInstance = await contractFactory.deploy([14]);
      await contractInstance.deployed();
      contractAddr = contractInstance.address;
      console.log("Contract deployed to address: ", contractAddr);
    });

    it("Should have an initial state variable value of 14", async function () {
    const initialStateVarValue = await contractInstance.getVar();
    expect(initialStateVarValue)
    .to.equal(14);
    });
  });
});

  describe("Average", function () {
    it("Should read the assigned uint values", async function () {
      const [defaultSigner] = await ethers.getSigners();
      signers.defaultSigner = defaultSigner;
      contractFactory = await ethers.getContractFactory("Testing6", defaultSigner);
      contractInstance = await contractFactory.deploy();
      await contractInstance.deployed();
      contractAddr = contractInstance.address;
      const result = await contractInstance.promedio(7, 7, 7);
      expect(result).to.equal(7);
      });
  });

  describe("Operation values", function () {   
    it("Should read the assigned uint values and operation", async function () {
      const [defaultSigner] = await ethers.getSigners();
      signers.defaultSigner = defaultSigner;
      contractFactory = await ethers.getContractFactory("Testing4", defaultSigner);
      contractInstance = await contractFactory.deploy(7, 8);
      await contractInstance.deployed();
      contractAddr = contractInstance.address;
      });
    });

  describe("Struct Libro", function () {   
    it("Should read the assigned string and uint values", async function () {
    const [defaultSigner] = await ethers.getSigners();
    signers.defaultSigner = defaultSigner;
    contractFactory = await ethers.getContractFactory("Testing20", defaultSigner);
    contractInstance = await contractFactory.deploy("Clash of Kings", "George RR Martin", 700, 1);
    await contractInstance.deployed();
    contractAddr = contractInstance.address;
    });
  });

  describe("Second highest common factor", function () {
    it("Should read the assigned uint values", async function () {
      const [defaultSigner] = await ethers.getSigners();
      signers.defaultSigner = defaultSigner;
      contractFactory = await ethers.getContractFactory("Testing19", defaultSigner);
      contractInstance = await contractFactory.deploy();
      await contractInstance.deployed();
      contractAddr = contractInstance.address;
      const result = await contractInstance.getFactorComunMasAlto(60, 75);
      expect(result).to.equal(15);
      });
    });

  describe("Contract owner === Contract address", function () {
    it("Should return the owner of the contract", async function () {    
      const Ownership = await ethers.getContractFactory("Testing22");
      const ownerContract = await Ownership.deploy();    
      const [owner] = await ethers.getSigners();    
      expect(await ownerContract.returnOwner()).to.equal(owner.address);
      });
   });
   
  describe('Two strings concatenating', () => {
   it('Should return concat result', async function () {
    const [defaultSigner] = await ethers.getSigners();
      signers.defaultSigner = defaultSigner;      
    contractFactory = await ethers.getContractFactory(
      "Testing25",
      defaultSigner
    );
    contractInstance = await contractFactory.deploy();
    await contractInstance.deployed();
    const result = await contractInstance.concatenar("Good", "Morning");
    expect(result).to.equal("Good Morning");
    });
  });

  describe("Function expression", function () {
    it("Should return the numbers of a series", async function () {
      const [defaultSigner] = await ethers.getSigners();
      signers.defaultSigner = defaultSigner;
      contractFactory = await ethers.getContractFactory("Testing17", defaultSigner);
      contractInstance = await contractFactory.deploy(30, 40, 6);
      await contractInstance.deployed();
      contractAddr = contractInstance.address;
      });
    });



