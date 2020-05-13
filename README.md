# Team - Mavericks

This project was our `Google Dev Fest 2019` Hackathon project.

@fortune @sai @sofia @serena

## Google Dev Fest hackathon

For `Google Dev Fest` Hackathon we built a prototype that allows to identify racist and sexist comments in Slack workspaces.\ We used Google Auto ML product to train our model to detect hateful speeach.\ 
We used the Slack API Webhooks to process and respond to messages sent in Slack channels. 

We built a Conversational Chat bot using `Google DialogueFlow` to educate the person who sent the message about the matter. 

Finally we used the `Google Speech-to-text` to parse voice and analyse it for inappropriate comments.

## Dataset
We used these 2 datasets to train our model that contained pre-classified racist or sexist tweets:

- https://github.com/ZeerakW/hatespeech
- https://github.com/AkshitaJha/NLP_CSS_201

## Next steps

- [ ] Get it out of POC phase.
- [ ] As workplace communications are different than twitter communications we need to expand our dataset and train our models accodingly.
- [ ] Expand to more workplace channels.
