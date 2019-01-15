## Automate Gatsby Site Deployment with CircleCI Restful API

This is a sample uses CircleCI Restful API trigger and Github push trigger Gatsby site build and deploy to S3 continuously

1.  **Install Gatsby Cli as development dependencies **

    CircleCi can use the Gatsby CLI `node_modules/.bin/gatsby` to create a new site, specifying the blog starter.

    ```sh
    npm install --save-dev gatsby-cli
    ```

2.  **Config CircleCI**

    Replace s3 bucket and region in .circleci/config.yml

3.  **Trigger CircleCI Project Build from CI Restful API**

    You can tell CircleCi to build and deploy your site by calling CircleCI's Restful API

    ```
    curl -X POST https://circleci.com/api/v1.1/project/:vcs-type/:username/:project/build?circle-token=:token
    ```

    eg.

    ```
     curl -X POST https://circleci.com/api/v1.1/project/github/neami/Gatsby-Site-Auto-depoyment-with-CircleCI/20/retry?circle-token=[YOUR_CI_TOKEN]
    ```

    Response

    ```
    {
      "status": 200,
      "body": "Build created"
      }
    ```

4.  **Creating a Personal API Token**

- In the CircleCI application, go to your User settings.
- Click Personal API Tokens.
- Click the Create New Token button.
- In the Token name field, type a memorable name for the token.
- Click the Add API Token button.
- After the token appears, copy and paste it to another location. You will not be able to view the token again.
