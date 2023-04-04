<script>
  import thankYouIllustration from './../images/illustration-thank-you.svg';
</script>

<div class="submitted-group">
  <section class="img-container">
    <img class="payment-img" src={thankYouIllustration} alt="thank-you-img" />
  </section>
  <p class="result-paragraph">You selected 4 out of 5</p>
  <section class="description-group">
    <h1>Thank you!</h1>
    <p>
      We appreciate you taking the time to give a rating. If you ever need more
      support, don’t hesitate to get in touch!
    </p>
  </section>
</div>

<style>
  .submitted-group {
    margin-top: 34px;
    margin-bottom: 37px;
    margin-right: 24px;
    margin-left: 24px;
  }
  .payment-img {
    display: block;
    margin-left: auto;
    margin-right: auto;
  }
  .result-paragraph {
    margin-top: 24px;
    background-color: var(--neutral-dark-blue);
    color: var(--primary-orange);
    width: 168px;
    padding-top: 5px;
    padding-bottom: 5px;
    padding-left: 12px;
    padding-right: 12px;
    margin-left: auto;
    margin-right: auto;
    font-size: 0.875rem;
    line-height: 1.57;
    border-radius: 22.5px;
  }
  .description-group {
    margin-top: 24px;
  }
  .description-group h1 {
    color: var(--neutral-white);
    font-weight: 700;
    font-size: 1.5rem;
    line-height: 1.25;
    text-align: center;
  }
  .description-group p {
    margin-top: 17px;
    color: var(--neutral-light-grey);
    font-size: 0.875rem;
    line-height: 1.57;
    text-align: center;
  }
</style>
