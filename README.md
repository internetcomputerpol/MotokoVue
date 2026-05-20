# MotokoVue

Simple starter template for building apps on the Internet Computer using Vue + Motoko.

## To install icp-cli 
npm install -g @icp-sdk/icp-cli @icp-sdk/ic-wasm

## Stack

- Frontend: Vue
- Backend: Motoko
- Tooling:
  - ICP CLI
  - Mops

---

## Getting Started

### 1. Start local ICP network

```bash
icp network start ( in separate terminal or with -d )

Run this only once if Mops toolchain is not installed yet
mops toolchain init

Install dependencies
mops install

Build project
icp build

Deploy canisters
icp deploy
