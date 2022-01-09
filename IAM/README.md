# IAM

Identity and Access Management. A core component of every AWS service is security. Not just restricting and permitting access at the network level, we also have to address authentication. The IAM service provides the means to create user accounts that can be used for either interactive or programmatic access to AWS services.

| Identity  | Access | Management |
| ------------- | ------------- | ------------- |
| Who are you?  | what you can do?  | Admin Off?  |

IAM Provide several benefits and functionalities

    - AWS service permission
    - Federated Identity
    - Fined grained permission
    - PCI (Payment card industry) Compliant
    - Multi Factor Auth
    - Billing: Free

IAM Components:

- User: An Individual entity with a defined username. Better is to not use root user
    - Access type: 
        - Programmatic Access: Secrets
        - AWS Management Console
- Policy: A set of permissions 
    - Effect
    - Action
    - Resource
    - Condition
- Groups: 
	- Collation of users.
	- Defined unique group name, Once defined do not change(it will change the ARN).
	- Have a policy Attached to it. A user in a group inherits policies of a group and can override its own policy, be different than a group.

- Roles: An identity associated with permission policies, used to delegate access to users, application or services
  Which normally don’t have access to AWS services 

