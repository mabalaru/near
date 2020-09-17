# How to manage the pool
## Pre-define Params

Here are some params we used in the following commands.
```
1.stakingPool_ID, account staking pool

2.account_ID, master account

```

## Change Validator Public Key

```
# Update the stake public key with new one
near call stakingPool_ID update_staking_key ‘{“stake_public_key”:”New Public key”}’ —-accountId account_ID

```

## Ping contact

```
# Call ping when validator kicked out or update the rewards of a new era.
near call stakingPool_ID ping '{}' --accountId account_ID

```

## Get Account Total Balance

```
# Get how many the account deposit in the pool
near view stakingPool_ID get_account_total_balance '{"account_id": "account_ID"}'

```

## Get Account Staked/Unstaked Balance

```
# Get the staked balance of account in the pool
near view stakingPool_ID get_account_staked_balance '{"account_id": "account_ID"}'

# Get the unstaked balance of account in the pool
near view stakingPool_ID get_account_unstaked_balance '{"account_id": "account_ID"}'
```

## Get Creator of the staking pool:

```
near view stakingPool_ID get_owner_id '{}'
```

## Get Current pool commission:

```
near view stakingPool_ID get_reward_fee_fraction '{}'
```


## Get Back some tokens from pool

```
# Call unstake first.
near call stakingPool_ID unstake '{"amount": "200000000000000000000000000"}' --accountId account_ID


# after 3 epochs
# call withdraw

near call stakingPool_ID withdraw '{"amount": "200000000000000000000000000"}' --accountId account_ID
```


