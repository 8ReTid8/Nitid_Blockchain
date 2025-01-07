
pragma solidity ^0.6.0;

contract SimpleStorage{
    uint256 fnum;
    bool fbool;

    struct people{
        uint fnum;
        string name;
    }

    people[] public peopleA;
    mapping(string => uint256) public nfnum;
    // people public person = people ({fnum: 2,name: "mom"});

    function store(uint256 _fnum) public {
        fnum = _fnum;
    }

    function retrieve() public view returns(uint256){
        return fnum;
    }

    function addperson(string memory _name,uint256 _fnum) public {
        peopleA.push(people({fnum: _fnum,name: _name}));
        nfnum[_name] = _fnum;
    }
}