module asset_manager::asset_manager {
    use sui::object::{Self, UID};
    use sui::transfer;
    use sui::tx_context::{Self, TxContext};
    use sui::coin::{Self, Coin};
    use sui::sui::SUI;

    /// Simple asset manager for cross-chain examples on Sui
    struct AssetManager has key {
        id: UID,
        total_managed: u64,
    }

    public entry fun create_manager(ctx: &mut TxContext) {
        let manager = AssetManager {
            id: object::new(ctx),
            total_managed: 0,
        };
        transfer::share_object(manager);
    }

    public entry fun deposit(manager: &mut AssetManager, coin: Coin<SUI>, _ctx: &mut TxContext) {
        let amount = coin::value(&coin);
        manager.total_managed = manager.total_managed + amount;
        // In real implementation: lock or bridge the coin
        transfer::public_transfer(coin, tx_context::sender(_ctx));
    }
}