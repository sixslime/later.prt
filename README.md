
# Later: Player Relative Time | later.prt
**An extension for [later](https://github.com/sixslime/later).**
> Pause Later-delayed command execution on player leave, resume on join.

## Dependencies
- [later](https://github.com/sixslime/later)
- [six](https://github.com/sixslime/six)
- [onjoin](https://github.com/sixslime/onjoin)
- [pdata](https://github.com/sixslime/pdata)

# Overview
*Commands delayed via [later](https://github.com/sixslime/later) will be referred to as 'tasks'.*

By default, tasks are executed after their specified tick delay regardless of the existence/status of their targets. \
When PRT is enabled on a task, each target--that is a **player**--is given it's own unique delay timer that only counts down while that player is online.

PRT enabled tasks are more in-line with how most Minecraft timers work (e.g. effects, scoreboard timers, etc.) and will never "miss" the player (execute while they are offline).
# Usage

### Quick Enable
To most easily enable PRT on a task, use `later.prt:api/enable`. \
This function has no inputs and will enable PRT on the last created task. (should be put on the line after calling `later:api/delay`).

### Enable Via Task ID
To enable PRT on a task that has already been created, you must have its Task ID, and use `later.prt:api/enable_for`. \
It takes the following input under storage `later.prt:in`:
| NBT path | Type | Default Value |
|--|--|--|
| `enable_for.task_id` | int (Task ID) | *(none)* |

### Disable
Similarly to `later.prt:api/enable_for`, one can use `later.prt:api/disable_for` to disable PRT for a given task.
| NBT path | Type | Default Value |
|--|--|--|
| `disable_for.task_id` | int (Task ID) | *(none)* |

## Examples
Quick enable PRT for a delayed command:
```mcfunction
#<...>
function later:api/delay
function later.prt:api/enable
```
Enable PRT with a Task ID.
```mcfunction
#<...>
function later:api/delay
data modify storage mypack:var my_task set from storage later:out delay.result
#<...>
data modify storage later.prt:in enable_for.task_id set from storage mypack:var my_task
function later.prt:api/enable_for
```
___

<p align="center">
  <img src="https://raw.githubusercontent.com/sixslime/sixslime.github.io/refs/heads/main/info/logos/temporary_documentation.svg" width="75%" alt="Temporary Documentation Tag"/>
</p>
