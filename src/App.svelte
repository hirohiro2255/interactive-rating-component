<script>
  import MainCard from './components/MainCard.svelte';
  import SubmittedCard from './components/SubmittedCard.svelte';

  let isSubmitted = true;
</script>

{#if !isSubmitted}
  <MainCard />
{:else}
  <SubmittedCard />
{/if}

<style>
</style>
