<script setup>
import { ref } from "vue";
import { createActor } from "./declarations/MotokoVue_backend";
import { safeGetCanisterEnv } from "@icp-sdk/core/agent/canister-env";






const canisterEnv = safeGetCanisterEnv();
const canisterId = canisterEnv?.["PUBLIC_CANISTER_ID:MotokoVue_backend"];

const actor = createActor(canisterId, {
  agentOptions: {
    shouldFetchRootKey: true,
  },
});

const greeting = ref("");
const data = ref("");

async function handleSubmit(event) {
  const name = event.target.elements.name.value;
  greeting.value = await actor.greet(name);
  data.value = await actor.showData();
}





</script>

<template>
  <main>
    <form @submit.prevent="handleSubmit">
      <label>Name: <input name="name" type="text" /></label>
      <button type="submit">Greet</button>
    </form>
    <p>{{ greeting }}</p>

    <p>{{ data }}</p>
    <h1>Data</h1>
  </main>
</template>
