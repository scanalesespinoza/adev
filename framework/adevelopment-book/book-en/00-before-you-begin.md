# Before You Begin

## A Letter to the Reader

This book begins with a simple conviction: artificial intelligence is a tool, and responsibility for what we do with it remains human. An agent can explore, propose, write code, run tests, and move through a substantial part of the delivery lifecycle. It does not, however, understand a human need in the same way as the person designing the product. Nor does it inherit responsibility for its effects simply by executing autonomously.

ADEV begins in that distance between capability and responsibility. Its name stands for **AI Agentic Development**. It describes a practice for directing software development with agents through explicit intent, durable context, small changes, and evidence. It neither personifies the tool nor presents autonomy as a substitute for judgment. Its purpose is to create the conditions for delegating execution without abandoning governance.

The perspective in these pages comes from roughly fifteen years of delivering real projects. That career began in application development and expanded into middleware, operating systems, data, networks, and infrastructure. It later grew to include quality, security, operations, architecture management, and enterprise architecture. This breadth is not offered as universal proof that ADEV works in every context. It explains the author's point of view and why the practice connects product, software, operations, and learning instead of reducing the problem to code generation.

## The Honest Promise

By the end of this book, you should be able to:

- establish a minimum shared baseline for working with agents;
- express a need as observable behavior and divide it into an atomic iteration;
- decide what an agent may execute, what must be supervised, and what requires human approval;
- preserve product, architecture, quality, and security as the blueprints for the work;
- connect implementation to tests, review, integration, deployment, and final verification;
- turn a valuable failure into a rule, test, checklist, or reusable asset.

This promise includes no universal figure for productivity, savings, or return on investment. Speed and quality depend on the maturity of the team, the product, the tools, the controls, and the environment. ADEV offers a system for making work visible and improving its probability of success. It does not remove the uncertainty inherent in software development.

## Who This Book Is For

This edition is written for experienced developers, architects, technical leaders, product owners, maintainers, and platform teams that already build software or are preparing to introduce agents into that work. It can also help someone forming a team who needs different people and agents to work from coherent expectations.

This is not an introduction to programming, model training, or data science. It is not the manual for a particular tool or vendor. The technical examples make the practice concrete, but its principles are intended to outlast changes in models, interfaces, and platforms.

## What ADEV Is—and Is Not

ADEV is a way to organize the behavior of a delivery system. It places the human in the role of responsible architect and the agent in the role of executor with bounded autonomy. It turns recurring instructions into versioned context, favors small issues, short-lived branches, and verifiable pull requests, and treats every incident as an opportunity to improve the baseline.

It is not a collection of perfect prompts. A long prompt may help at the beginning, but it does not scale as organizational memory. Nor is ADEV permission to accept code that nobody can explain or validate. Delegating complexity reduces the amount of manual work that must be observed line by line, but it increases the importance of blueprints, boundaries, tests, and observable evidence.

Finally, ADEV does not promise that an agent will get everything right in one interaction. Reality changes, specifications contain assumptions, and every implementation can fail. The practical benefit is the ability to test earlier, learn through small losses, and make that learning durable.

## How to Read the Book

The first three chapters establish the position of the practice: a tool does not receive moral responsibility, software is understood as a habitat, and the architect retains intent. Chapters 4 through 7 build the practice's operating system: the living baseline, atomic iterations, durable context, and the cycle of creating, verifying, and demonstrating.

Chapters 8 and 9 apply those principles to safe autonomy and to teams working with multiple agents. The EventFlow and Homedir cases in chapters 10 and 11 separate experience, observable artifacts, and interpretation. The final chapters propose an adoption path, examine objections and limits, and close with a concrete first action.

The appendices bridge the argument to execution. The technical asset map shows where to find reusable templates, checklists, and definitions. The glossary establishes the vocabulary, and the evidence appendix explains how to read the book's claims. You do not need to memorize these materials. Return to them while practicing in a real repository.

## One Book, One Technical System

This edition deliberately preserves two surfaces. The completed Spanish manuscript is the editorial source for this English adaptation because it captures the author's experience and cultural context with the greatest precision. The framework and technical assets maintain their public canon in English so they can be reused across tools, teams, and industries.

These are not separate projects. The book explains why the practice exists and what it is for; the assets make it applicable. When a lesson emerges during execution, it should not end as a paragraph. If it transfers beyond the incident, it should also be able to become a rule, test, checklist, or starter-kit component. In the other direction, no asset should be presented as doctrine unless it can be explained through a need or supported by evidence.

This English edition adapts the completed Spanish work rather than mechanically translating historical drafts. Meaning and clarity take priority over symmetry between languages.

## About the Evidence

The cases in this book do not all carry the same evidentiary weight. Some claims are supported by reproducible repository artifacts. Others are author observations, editorial interpretations, or proposals that still require validation. The text attempts to mark those distinctions, and Appendix C documents the method used.

A single case can establish that something happened and reveal a useful mechanism. It is not enough to prove causation, economic return, or universal applicability. When a valid comparison is missing, the book treats that absence as a limitation instead of filling it with an attractive number.

## About AI Assistance

The construction of this manuscript is itself a deliberate application of its principles. Its content emerged through extensive interviews with the author and was consolidated with artificial intelligence assistance. That assistance helped organize, contrast, edit, and connect the material to the repository assets.

The process does not transfer authorship or responsibility to the tool. The author determined the thesis, contributed the experiences, reviewed the editorial decisions, and answers for the result. When a claim lacks sufficient evidence, it must remain an experience, interpretation, or hypothesis, no matter how persuasive the prose may sound.

## The Reading Contract

You are not expected to accept ADEV on faith. You are expected to test it at a scale where being wrong is inexpensive. Choose a repository you can control, install a small baseline, define an observable need, and accompany one change until its effect has been verified. Then examine what you learned and improve the system before granting it more autonomy.

That sequence is the contract of this book. The author offers a practice that is open to challenge and improvement; the reader judges it by its ability to produce understandable, safe, and verifiable work. This edition does not close ADEV. It establishes a point from which to practice it responsibly.
