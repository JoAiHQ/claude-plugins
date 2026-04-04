---
name: use-appointments
description: Use the Appointments JoAi app plugin when the task needs Appointments tools or workflows.
---

# Appointments

Connect Appointments to Claude, Codex, and ChatGPT through JoAi's hosted MCP app server.

Use the MCP tools exposed by this plugin instead of describing the workflow abstractly. Start by identifying the most relevant action, then call the MCP tool directly.

## Example Prompts

- List the Appointments tools available in this app.
- Explain what setup or authentication Appointments needs before I run an action.
- Use Appointments to help me with the task I describe next.

## Action Inventory

- `appointment-availability` (collect) — Collect booking details and return appointment availability from the current agent calendar.
- `appointment-book` (collect) — Book a confirmed appointment slot for the current agent.
- `appointment-cancel` (collect) — Cancel an existing booked appointment and optionally provide a reason. Frees up the time slot so it becomes available for new bookings again.
- `appointment-configure` (collect) — Open and update the appointment configuration for this agent.
- `appointment-onboarding` (collect) — Start appointment onboarding by opening calendar integration setup for this agent.
- `appointment-request-create` (collect) — Create an appointment request when an appointment cannot be booked natively.
- `appointment-reschedule` (collect) — Reschedule an existing booked appointment to a new confirmed slot.
- `appointment-upsert-policy` (collect) — Save the appointment booking policy for your agent. Configure timezone, office hours, slot intervals, buffer times, minimum notice periods, and available services.

## Usage Notes

- Every listed action becomes an MCP tool when the app server is connected.
- Prefer the generated provider plugin when one is available, and fall back to the raw MCP URL otherwise.

## Auth Notes

- Some actions require provider credentials or OAuth on first use.
