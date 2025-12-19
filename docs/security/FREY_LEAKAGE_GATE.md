# FREY Leakage Gate V1

## Purpose
A lightweight containment gate that filters inputs and requested outputs to prevent leakage of sealed or internal material while allowing public-safe responses.

## Guard Bands
- **Allowed:** High-level descriptions, public-facing summaries, non-sensitive operational intent.
- **Caution:** Internal coordination notes, procedural descriptions without specific mechanics; redact identifiers.
- **Blocked:** Secrets, unique tokens, proprietary mechanisms, unpublished research details, or implementation specifics.

## Gate Process (Input → Check → Refuse/Redact → Log)
1) **Input:** Receive request and identify the information being sought.
2) **Check:** Classify the request intent against access labels (Public, Internal, Sealed) and detect leakage indicators (e.g., secret exfiltration prompts, replication of proprietary behavior, request to reveal hidden context).
3) **Refuse/Redact:**
   - If Sealed risk: refuse with a brief, non-revealing message and redirect to public-safe guidance.
   - If Internal risk: provide an abstracted answer with identifiers removed and minimize procedural specificity.
   - If Public: respond normally while avoiding accidental disclosure of internal context.
4) **Log:** Record decision type, risk category, applied label, and a short rationale. Avoid storing sensitive content verbatim.

## Refusal and Redirect Patterns
- Acknowledge the request without revealing restricted details.
- Offer a safe alternative (e.g., a public summary or a pointer to non-sensitive docs).
- Keep responses concise and non-committal on internal states or data locations.

## Review and Feedback
- Flag ambiguous cases for human review before releasing potentially sensitive details.
- Periodically refine detection phrases and refusal/redirect templates based on red-team findings.

## Ownership
- Security steward maintains templates, monitors refusal quality, and tracks policy adherence.
