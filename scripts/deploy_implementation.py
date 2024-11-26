from brownie import ChildERC20Implementation, accounts

def main():
    # Load the account
    account = accounts.load("deployment_account")
    
    # Deploy the contract
    child_erc20 = ChildERC20Implementation.deploy({"from": account})
    
    print(f"Contract deployed at: {child_erc20.address}")
