@echo off
if %1 == update (set action=update-stack) else (set action=create-stack)
aws cloudformation %action% --stack-name %2 --template-body file://%3 --parameters file://%4