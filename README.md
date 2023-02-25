# Fractionalized-ERC20

This is a contract that extends the ERC-20 token standard to create a fractionalized token. The contract keeps track of the total number of shares that have been issued, as well as the number of shares held by each address. Each share represents a fraction of the underlying asset, and the number of shares held by each address is proportional to its share of ownership in the asset.

The mint function allows the contract owner to mint new shares and assign them to a specified recipient. The number of shares is added to the total number of shares and to the share balance of the recipient.

The transfer function allows users to transfer shares to another address. The function checks that the recipient address is not the zero address and that the sender has a sufficient balance of shares. If these conditions are met, the share balance of the sender is reduced and the share balance of the recipient is increased.

This is just a basic example, and there are many additional features and functionalities that can be added to a fractionalized ERC-20 token contract. It's important to keep in mind that creating a fractionalized token involves many other considerations beyond the code itself, including legal, regulatory, and operational aspects.
