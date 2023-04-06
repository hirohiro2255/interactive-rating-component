<script>
  import { createEventDispatcher } from 'svelte';
  import iconStar from './../images/icon-star.svg';

  const dispatch = createEventDispatcher();

  export let pickedNumber;

  const numberOptions = [1, 2, 3, 4, 5];

  function handleClick(option) {
    dispatch('handleClick', { option });
  }
  function onSubmit() {
    dispatch('handleSubmit');
  }
</script>

<div class="input-card-group">
  <section class="img-container">
    <div>
      <img class="star" src={iconStar} alt="star-icon" />
    </div>
  </section>
  <section class="description-group">
    <h1 class="heading-title">How did we do?</h1>
    <p class="paragraph">
      Please let us know how we did with your support request. All feedback is
      appreciated to help us improve our offering!
    </p>
  </section>
  <section class="button-container">
    {#each numberOptions as option}
      <button
        on:click={() => handleClick(option)}
        class="button"
        class:active={pickedNumber === option}>{option}</button
      >
    {/each}
  </section>
  <button
    on:click={onSubmit}
    class="submit-button"
    disabled={pickedNumber === null}
    class:disabled_status={pickedNumber === null}>SUBMIT</button
  >
</div>

<style>
  .input-card-group {
    margin-top: 24px;
    margin-bottom: 32px;
    margin-right: 22px;
    margin-left: 22px;
  }
  .img-container div {
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: var(--neutral-dark-blue);
    border-radius: 50%;
    width: 40px;
    height: 40px;
  }
  .star {
    width: 13.96px;
    height: 13.33px;
  }
  .description-group {
    margin-top: 16px;
  }
  .heading-title {
    color: var(--neutral-white);
    font-size: 1.5rem;
    font-weight: 700;
    line-height: 1.25;
  }
  .paragraph {
    color: var(--neutral-light-grey);
    font-size: 0.875rem;
    line-height: 1.57;
    margin-top: 17px;
  }
  .button-container {
    display: flex;
    justify-content: space-between;
    margin-top: 24px;
  }
  .button {
    width: 42px;
    height: 42px;
    border-radius: 50%;
    background-color: var(--neutral-dark-blue);
    border-style: none;
    color: var(--neutral-medium-grey);
    font-weight: 700;
    font-size: 0.875rem;
    line-height: 1.7;
    text-align: center;
  }

  .button:hover {
    background-color: var(--primary-orange);
    color: var(--neutral-white);
    transition: 0.15s ease-in;
  }

  .active {
    background-color: var(--neutral-medium-grey);
    color: var(--neutral-white);
  }

  .submit-button {
    margin-top: 24px;
    width: 100%;
    padding-top: 14px;
    padding-bottom: 14px;
    border-style: none;
    border-radius: 22.5px;
    background-color: var(--primary-orange);
    color: var(--neutral-white);
    font-weight: 700;
    font-size: 0.875rem;
    line-height: 1.28;
    letter-spacing: 1.87px;
  }
  .submit-button:hover {
    background-color: var(--neutral-white);
    color: var(--primary-orange);
    transition: 0.15s ease-in;
  }

  .disabled_status {
    pointer-events: none;
    opacity: 0.1;
  }

  @media screen and (min-width: 768px) {
    .input-card-group {
      margin-top: 32px;
      margin-right: 32px;
      margin-left: 32px;
    }
    .img-container div {
      width: 48px;
      height: 48px;
    }
    .star {
      width: 1rem;
      height: 1rem;
    }
    .description-group {
      margin-top: 30px;
    }
    .heading-title {
      font-size: 1.75rem;
      line-height: 1.268;
    }
    .paragraph {
      margin-top: 7px;
      font-size: 0.9375rem;
      line-height: 1.6;
    }
    .button {
      width: 51px;
      height: 51px;
      font-size: 1rem;
    }
    .submit-button {
      margin-top: 32px;
      font-size: 0.9375rem;
      line-height: 1.267;
      letter-spacing: 2px;
    }
  }
</style>
