# Overtime App

## Key requirements: company needs documentation that salaried employees did or did not get overtime each week

## Models
- x Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI
- AuditLog

## Features
- Approval Workflow
- SMS Sending -> link to approval or overtime input
- x Administrate admin dashboard
- x Block non admin and guest users
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime

## UI
- x Bootstrap -> formatting
- x Icons from glyphicons
- x Update the styles for forms

## TODOS
- Integrate validation for phone attribute in User:
    # No spaces or dashes
    # Exactly 10 characters
    # All characters have to be a number