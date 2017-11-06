#!/bin/bash
ssh -i rob-amazon.pem ubuntu@$(cat PUBLIC_DNS)
