# sui-cross-chain-asset-manager

Examples of managing and bridging assets to/from Sui using the Sui TypeScript SDK.

## Overview
Starter repository demonstrating asset management and cross-chain bridging patterns on Sui (Move language). Includes a basic shared object manager and deposit logic.

## Tech Stack
- Move (Sui Move)
- @mysten/sui.js (TypeScript SDK)
- React (optional frontend)

## Getting Started
```bash
git clone https://github.com/Proxtox/sui-cross-chain-asset-manager.git
cd sui-cross-chain-asset-manager
sui move build
```

## Key Files
- `sources/asset_manager.move` - Basic shared AssetManager with deposit functionality

## Next Steps
- Add proper bridge integration (Wormhole or native)
- Implement withdrawal and cross-chain messaging
- Add TypeScript client examples
- Build a simple dashboard

## License
MIT