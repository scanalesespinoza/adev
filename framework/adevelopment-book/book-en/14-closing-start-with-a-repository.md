# 14. Closing: Start with a Repository

## The Practice Begins After the Reading

This book began with a position: artificial intelligence is a tool created by people, and people remain responsible for what they do with it.

From there, we built a practice.

We treated software as a habitat because someone will have to live with our decisions. We separated the architect from the agent, not to make them adversaries, but to preserve human intent while delegating execution. We turned repeated prompts into durable context. We made iterations small so uncertainty would remain manageable. We united creation and verification. We designed autonomy within boundaries. We took the practice from one person to a team and from code to production.

We also examined failures. EventFlow demonstrated capability but did not prove economic causality. Homedir supplied incidents but did not turn one project into universal truth. The objections forced us to acknowledge skill loss, dependency, concentration, and situations we should not delegate yet.

All of that matters. But understanding ADEV is not the same as practicing it.

The practice begins when a rule changes a real decision inside a repository.

## Do Not Wait for the Perfect Tool

In the future, many ADEV ideas may become part of the products we use. Agents may include better contracts, permissions, memory, reviews, and controls by default.

We do not need to wait for that future.

ADEV is deliberately portable. You can begin with the tool you already have, provided it can work within a scope you understand and you can review its effects. The practice lives primarily in the repository: product, architecture, baseline, issues, decisions, tests, and evidence.

That location also protects freedom. If you change models, interfaces, or providers, the knowledge governing the product should not disappear with the session. Adaptation will be necessary, but intent remains under the team's control.

You do not need multiple agents, an orchestration platform, or an extensive baseline to begin. You need a real problem and a cycle small enough to learn from.

## Choose the Repository

Select a repository you can modify and validate without exposing other people to risks you do not yet know how to manage.

It could be:

- a personal application you already use;
- an internal tool with a test environment;
- a small library;
- a site with a reversible change;
- a learning repository with a concrete need.

Avoid an imaginary project when a real need is available. Artificial exercises teach syntax; practice reveals itself when constraints, history, and consequences exist.

Do not choose the most critical system you know either. The first objective is not to demonstrate courage. It is to build confidence through evidence.

## Install a Minimum Baseline

Create an entry point the agent must consult. It may be named `ADEV.md`, as long as the team recognizes its authority and knows how to maintain it.

Do not copy this entire repository. Write only what the first iteration needs:

1. **Product:** who needs the change and which observable action they expect.
2. **Architecture:** which structural decision must be preserved.
3. **Quality:** which checks will accompany implementation.
4. **Security:** where the agent may act and what requires approval.
5. **Delivery:** how the change will reach review and how it will be verified.

Link existing sources instead of duplicating them. If one does not exist, record the absence. A visible gap is safer than an invented definition.

Your initial baseline can be brief. Its value is not measured in words, but in whether it prevents a poor decision or reveals an assumption.

## Define an Action, Not an Ambition

Do not ask to “improve the application” or “modernize the architecture.” Choose an action a person or system can observe.

For example:

> When a required input is empty, the interface must explain what is missing without losing values already entered.

From that action, create an issue with scope, constraints, and acceptance criteria. Ask the agent to consult the baseline, determine whether the change is atomic, and surface uncertainty before implementation.

If explaining the task grows too long, reduce the change. If the agent needs to make a structural decision, stop execution and improve the blueprints. If a second need appears, create another iteration.

The first delivery should not impress anyone. It should be explainable, reviewable, verifiable, and recoverable.

## Walk with Your Eyes Open

While the agent works, do not wait until the end to discover what it built.

Observe:

- which files it touches;
- which dependencies it introduces;
- which contracts it modifies;
- which assumptions it declares;
- which tests it runs;
- what it could not verify.

Then reproduce the evidence. Review the diff. Run the inner loop. Publish through the authorized flow. Let the outer loop challenge the change. Perform the promised action in the relevant environment.

Green checks are not the end if the user still cannot do what the issue promised.

If something fails, do not judge ADEV against the expectation that artificial intelligence should succeed on its first attempt. Judge whether the cycle made the error visible while it was manageable and whether recovery left the system better prepared.

## Close the Learning

After delivery, pause briefly.

Ask:

- Which information was missing?
- Which decision did the agent make without sufficient basis?
- Which control found the problem too late?
- Which part worked because of an existing rule?
- What should happen differently next time?

Turn the answer into the smallest asset that changes future behavior: code, test, rule, checklist, runbook, or specialized knowledge.

Do not add a rule merely to demonstrate learning. If the problem was specific and is already covered by a test, it may not need global doctrine. If the lesson conflicts with another rule, resolve precedence. If a rule is no longer useful, retire it.

The system learns when the next iteration behaves differently.

## After the First Change

Do not increase size, autonomy, and parallelism all at once.

Choose one dimension:

- a slightly larger change;
- a deeper quality control;
- a second reviewing agent;
- a progressive delivery;
- a new person using the same baseline.

Observe which new capability it requires and which friction it introduces. Maturity does not mean automating everything. It means expanding the system without losing understanding, accountability, or recoverability.

After several cycles, you will distinguish repeated instructions, stable decisions, checks that provide evidence, and permissions that can be expanded. That experience will become your version of ADEV: compatible with the practice, yet adapted to your product, team, and reality.

## The Final Invitation

I want artificial intelligence to help us build technology that returns time to people, expands opportunity, and reduces unnecessary friction. I know that the same capability can amplify mistakes and inequality. Embracing the tool is therefore not enough. We must learn to direct it.

ADEV is not finished. No living practice is. It needs professionals who test it in other contexts, publish outcomes and failures, challenge its rules, and contribute better assets.

I am not asking you to believe every claim. I am asking you to run one iteration and observe.

Take a real repository. Declare the intent. Draw the boundaries. Let the agent execute. Verify with your own eyes. Answer for the result. Preserve the learning.

Then do it again, a little better.

The tool provides capability.

You provide purpose, judgment, and responsibility.

That is where ADEV begins.

## First Action

Open [`starter-kit/DAY_0.md`](../../starter-kit/DAY_0.md), choose your repository, and complete the minimum skeleton today. Then use [`starter-kit/examples/minimal-adev-loop/`](../../starter-kit/examples/minimal-adev-loop/) to take one iteration through verification.

Do not close the cycle with “the agent finished.” Close it with evidence another person can understand.

## Chapter Outcome

After this chapter, the reader can begin ADEV without depending on a specific platform: select a low-risk repository, install a minimum baseline, express an observable action, complete a verified cycle, and turn its result into durable learning.
