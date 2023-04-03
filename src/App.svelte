<script>
  import iconStar from './images/icon-star.svg';
  let isSubmitted = false;
</script>

{#if !isSubmitted}
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
      <button class="button">1</button>
      <button class="button">2</button>
      <button class="button">3</button>
      <button class="button">4</button>
      <button class="button">5</button>
    </section>
    <button class="submit-button">SUBMIT</button>
  </div>
{:else}
  <div class="submitted-group">Hi</div>
{/if}

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
    font-size: 0.875px;
    line-height: 1.28;
    letter-spacing: 1.87px;
  }

  .submitted-group {
    margin-top: 24px;
    margin-bottom: 32px;
    margin-right: 22px;
    margin-left: 22px;
  }
</style>
