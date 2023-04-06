<script lang="ts">
  import MainCard from './components/MainCard.svelte';
  import SubmittedCard from './components/SubmittedCard.svelte';

  let pickedNumber: number | null = null;
  let isSubmitted = false;

  function handleClick(event) {
    pickedNumber = event.detail.option;
  }
  function handleSubmit() {
    isSubmitted = true;
  }
</script>

{#if !isSubmitted}
  <MainCard
    on:handleSubmit={handleSubmit}
    on:handleClick={handleClick}
    {pickedNumber}
  />
{:else}
  <SubmittedCard {pickedNumber} />
{/if}
