## Prerequisites
1. AWS account with activated payment available
2. AWS CLI installed and configured to interact with your AWS account
3. Terraform & kubectl set up so you can interact with your AWS infrastructure

## Your practical task

Currently, much of the practical work circles around CI/CD, Infrastructure-as-Code and
containerized workloads. That said, we have prepared a practical task for you, that some
platform team members wish to discuss with you in a Code-Review meeting.
Please aim to implement a good part of these requirements in your AWS + ”Favorite Git platform”
(= Github or Gitlab):

1.Please code a small “Hello World” web-application in a language of your choice and put it
into a runnable docker container.
2. Create a new repository (or repositories, you decide on the structure) on your favorite git
platform which will hold both the application code from above and all other required
code from the tasks below, including the CI/CD configuration.
3. Set up the required AWS infrastructure for AWS EKS, including the parts necessary to run
it effectively (e.g. ECR, IAM policies, etc.) Please contribute terraform code that creates
the required resources into infrastructure-as-code. If you run out of time, please at least
be ready to manage parts of the stack through terraform.
4. Set up a CI/CD pipeline (= Github Actions? Gitlab CI? …?) that
a. … is triggered on every push to the main branch of the repository
b. … builds the docker image & pushes it to the ECR
c. … deploys the docker image to the EKS cluster once the image is built and pushed
d. … publicly exposes the updated application in the cluster, so we can see the “Hello World” output.

The overall goal, and best demo possible, would be to introduce a change in your web-app’s
code (e.g. “Hello World” changed to “Hallo Welt”) that gets pushed through the CI/CD pipeline and
ultimately gets displayed through the Kubernetes setup as a publicly accessible website a few
moments later.

Please share the code in advance with Aroundhome, for example by providing a link to a
GitLab/Github repository.

The next possible step would be a review meeting with the Platform team. Please be prepared to
guide us through your thoughts and implementations of this setup. Please demo as much as
reasonably possible and get prepared for a code-review or even some smaller hands-on work
that the team will go through with you.

We would love to understand where you felt confident and where you struggled. It’s not
necessary to provide a perfect solution and shortcuts are allowed, but the overall setup should
work in major parts.
We look forward to going through the process with you and appreciate you taking part in it. 🙂
