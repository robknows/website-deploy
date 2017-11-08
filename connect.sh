#!/bin/bash
ssh -i $(cat KEY_PATH) ubuntu@$(cat PUBLIC_DNS)
