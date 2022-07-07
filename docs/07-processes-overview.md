# Processes Overview

The hardware loops relies on a lot of processes to manage the complexity. We have made an attempt to document that in the diagram below.

```mermaid
graph TD
	A[Create a PR] --> B[Versionbot Triggered]
	B --> C[Versionbot checks for repo.yml]
	C -->D[Versionbot enables hw checkruns]
	D -->E[CI creates rfq]
	E -->F[CI stores rfq on github]
	F -->G[CI sends an email]
	G -->H[Reply sent on email]
	H -->I[Mailgun receives email]
	I -->J[Mailgun sends wehhook to versionbot/mail URL]
	J -->K[HW lab handler under versionbot triggered]
	K -->L[HW lab handler parses email and sets checkrun status]
```

![hw process overview](./images/mermaid-diagram-2022-07-07-082213.png)
![processes overview 0.3.4](./images/HardwareLoopProcesses.png)

[Source for the diagram](https://docs.google.com/drawings/d/1UYh5VfTJEuB8VCKdgM0RBZHtQcYBXavk9bzItHL82T0/edit)
