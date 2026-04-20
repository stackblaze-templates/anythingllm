FROM mintplexlabs/anythingllm:latest@sha256:c9dcfee8d9504a63afadb735e8ea9780b5ecb2da4d0dfeb1af5450d91ed1af03

EXPOSE 3001

HEALTHCHECK --interval=30s --timeout=10s --start-period=60s --retries=3 \
  CMD curl -f http://localhost:3001/api/ping || exit 1
