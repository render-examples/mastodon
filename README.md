# mastodon-on-render
This repo can be used to deploy [Mastodon](https://joinmastodon.org/) on [Render](https://render.com/).

## Prerequisites
Make sure you have the following:
- A 3rd party SMTP service provider account. I use [sendinblue](https://www.sendinblue.com/) because its free plan doesn't require a credit card. 
- A [Render account](https://dashboard.render.com/register).

## Deployment
1. Fork this repo.
2. Click to deploy

   [![Deploy to Render](http://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy)

3. You will be prompted to input the VAPID private/public key and SMTP setting. You can put any placeholder string for the VAPID key for now.
4. After all services are created, in the Render dashboard, find the `mastodon-web` service. Go to the Shell tab and run `bundle exec rake mastodon:webpush:generate_vapid_key`. Copy the private key and public key and update `VAPID_PRIVATE_KEY` and `VAPID_PUBLIC_KEY` in the Environment tab.
5. That's it. Open the `mastodon-web-<anything>.onrender.com` URL of the `mastodon-web` service and your Mastodon website is up. 

## Notes
- If you have your own domain, update `MY_LOCAL_DOMAIN` in the `render.yaml`. The value will be used in Mastodon's `LOCAL_DOMAIN` environment variable.