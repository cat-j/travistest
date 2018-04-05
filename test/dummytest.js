var Dummy = artifacts.require('./Dummy.sol');

contract('dummytest', function(accounts) {
    before(async() => {
        dum = await Dummy.new();
    });

    it ("dummytest", async() => {
        let a;
        a = await dum.getA.call();
        assert.equal(a.toNumber(), 1, "constructor failed");
        await dum.setA(11);
        a = await dum.getA.call();
        assert.equal(a.toNumber(), 11, "setA failed");
    });
})