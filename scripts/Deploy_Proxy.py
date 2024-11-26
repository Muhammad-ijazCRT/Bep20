from brownie import UChildERC20Proxy, accounts

def main():
    # Load the account
    dev = accounts.load('deployment_account')
    
    # Set the address of the implementation contract
    implementation_address = "0x4bBE854C39766B003bA9f6D22010FaB08F57e6f8"
    
    # Deploy the proxy contract
    proxy = UChildERC20Proxy.deploy(implementation_address, {"from": dev})
    
    print(f"Proxy contract deployed at: {proxy.address}")
