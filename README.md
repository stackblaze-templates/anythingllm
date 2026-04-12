# AnythingLLM [![Version](https://img.shields.io/badge/version-latest-1a1a2e)](https://github.com/stackblaze-templates/anythingllm) [![Maintained by StackBlaze](https://img.shields.io/badge/maintained%20by-StackBlaze-blue)](https://stackblaze.com) [![Weekly Updates](https://img.shields.io/badge/updates-weekly-green)](https://github.com/stackblaze-templates/anythingllm/actions) [![License](https://img.shields.io/github/license/stackblaze-templates/anythingllm)](LICENSE) [![Deploy on StackBlaze](https://img.shields.io/badge/Deploy%20on-StackBlaze-orange)](https://stackblaze.com)

<p align="center"><img src="logo.png" alt="anythingllm" width="120"></p>

An all-in-one AI app for chatting with documents, using multiple LLM providers, and managing knowledge bases with RAG support.

> **Credits**: Built on [AnythingLLM](https://anythingllm.com) by [Mintplex Labs](https://github.com/Mintplex-Labs). All trademarks belong to their respective owners.

## Local Development

```bash
docker compose up
```

See the project files for configuration details.

## Deploy on StackBlaze

[![Deploy on StackBlaze](https://img.shields.io/badge/Deploy%20on-StackBlaze-orange)](https://stackblaze.com)

This template includes a `stackblaze.yaml` for one-click deployment on [StackBlaze](https://stackblaze.com). Both options run on **Kubernetes** for reliability and scalability.

<details>
<summary><strong>Standard Deployment</strong> — Single-instance Kubernetes setup for startups and moderate traffic</summary>

<br/>

```mermaid
flowchart LR
    U["Customers"] -->|HTTPS| LB["Edge Network\n+ SSL"]
    LB --> B["AnythingLLM\nNode.js"]
    B --> S3["Object Storage\nDocuments + Vectors"]

    style LB fill:#ff9800,stroke:#e65100,color:#fff
    style B fill:#0041ff,stroke:#002db3,color:#fff
    style S3 fill:#2196f3,stroke:#1565c0,color:#fff
```

**What you get:**
- Single AnythingLLM instance on Kubernetes
- Automatic SSL/TLS via StackBlaze edge network
- Object storage for media and assets
- Automated daily backups
- Zero-downtime deploys

**Best for:** Development, staging, and moderate-traffic production environments.

</details>

<details>
<summary><strong>High Availability Deployment</strong> — Multi-instance Kubernetes setup for business-critical production</summary>

<br/>

```mermaid
flowchart LR
    U["Customers"] -->|HTTPS| CDN["CDN\nStatic Assets"]
    CDN --> LB["Load Balancer\nAuto-scaling"]
    LB --> B1["AnythingLLM #1"]
    LB --> B2["AnythingLLM #2"]
    LB --> B3["AnythingLLM #N"]
    B1 --> R[("Redis\nSessions + Cache")]
    B2 --> R
    B3 --> R
    B1 --> S3["Object Storage\nDocuments + Vectors"]
    B2 --> S3
    B3 --> S3

    style CDN fill:#607d8b,stroke:#37474f,color:#fff
    style LB fill:#ff9800,stroke:#e65100,color:#fff
    style B1 fill:#0041ff,stroke:#002db3,color:#fff
    style B2 fill:#0041ff,stroke:#002db3,color:#fff
    style B3 fill:#0041ff,stroke:#002db3,color:#fff
    style R fill:#f44336,stroke:#c62828,color:#fff
    style S3 fill:#2196f3,stroke:#1565c0,color:#fff
```

**What you get:**
- Auto-scaling AnythingLLM pods on Kubernetes behind a load balancer
- Redis for shared sessions, cache, and queue management
- CDN for static assets
- Shared object storage across all instances
- Automated failover and self-healing
- Zero-downtime rolling deploys

**Best for:** Production workloads, high-traffic applications, business-critical deployments.

</details>

---

### Maintained by [StackBlaze](https://stackblaze.com)

This template is actively maintained by StackBlaze. We perform **weekly automated checks** to ensure:

- **Up-to-date dependencies** — frameworks, libraries, and base images are kept current
- **Security scanning** — continuous monitoring for known vulnerabilities and CVEs
- **Best practices** — configurations follow current recommendations from upstream projects

Found an issue? [Open a ticket](https://github.com/stackblaze-templates/anythingllm/issues).
