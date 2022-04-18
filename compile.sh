func -SPA -o ./build/jetton-wallet.fif ./stdlib.fc ./src/math.func ./src/utils.func ./src/params.fc ./src/op-codes.fc ./src/jetton-utils.fc ./src/jetton-wallet.fc
echo '"build/jetton-wallet.fif" include 2 boc+>B "build/jetton-wallet.boc" B>file' | fift -s

func -SPA -o ./build/jetton-minter.fif ./stdlib.fc ./src/math.func ./src/utils.func ./src/params.fc ./src/op-codes.fc ./src/jetton-utils.fc ./src/jetton-minter.fc
echo '"build/jetton-minter.fif" include 2 boc+>B "build/jetton-minter.boc" B>file' | fift -s

fift -s build/print-hex.fif
