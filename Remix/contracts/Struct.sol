// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "../EnumGame.sol";

contract Struct{

    Games[] private games;

    function get(uint _index) public view returns(Games memory){
        return games[_index];
    }

    function createGame(string memory _description) public {
        games.push(Games(_description, false));

        // games.push(Games({description: _description, played: false}));

        // Games memory game;
        // game.description = _description;
        // game.played = false;
        // games.push(game);

    }

    function updateDescription(uint _index, string memory _description) public {
        Games storage game = games[_index];
        game.description = _description;
    }

    function setOpposite(uint _index) public {
        Games storage game = games[_index];
        game.played = !game.played;
    }
}