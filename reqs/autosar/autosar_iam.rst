=====================================
AUTOSAR IAM requirements
=====================================

.. req:: Limit Adaptive Application access to the Adaptive Platform Foundation and Services. 
  :id: RS_IAM_00001
  :tags: autosar, autosar_iam
  :satisfies: RS_Main_00514
  :depends: RS_IAM_00010

  **Description:**
  An Adaptive Platform Instance shall provide means to actively restrict access of
  an Adaptive Application to those interfaces and resources of the
  Adaptive Platform Foundation and Services that the Adaptive Application
  was originally designed to use.

  **Rationale:**
  Privilege Escalation in case of an attack shall be prevented. Integrators shall be
  enabled to retrace and control intended tasks of Applications.

  **Use Case:**
  Designer of App declares intended usage of App. Integrator reviews set of
  requested actions and accepts by assigning GRANT elements to requested
  intents. Attacker controls App during runtime. Attacker gains no more
  permissions than App’s initial permissions.

.. req:: Position of Policy Enforcement 
  :id: RS_IAM_00002
  :tags: autosar, autosar_iam
  :satisfies: RS_Main_00514

  **Description:**
  Access control to interfaces of the Adaptive Platform Foundation and Services
  shall be enforced by PEP(s) located in (a) the object’s process, (b) the
  operating system, and/or (c) a process of the Adaptive Platform Foundation. A
  PEP that runs in the context of the subject Adaptive Application must not
  be used for enforcement of access control on requests by the subject itself.

  **Rationale:**
  Adaptive Applications are considered to potentially being compromised thus
  their access shall be restricted by IAM. An Adaptive Application shall not
  be able to control policy decisions restricting their own requests. The PEP that
  restricts the requesting Adaptive Application shall be implemented and
  executed using a separate process not under control of the requesting
  Adaptive Application. IPC and/or network communication must separate
  the subject Adaptive Application from the PEP.

  **Use Case:**
  Application requests a method on Service Interface. IAM (located in, e.g.,
  process of Adaptive Platform Foundation or process of the service provider)
  identifies app and enforces access restrictions. Due to process separation,
  application cannot spoof its identity or manipulate policy enforcement.

.. req:: Circumvention of AUTOSAR Policy Enforcement by Applications shall be prevented.
  :id: RS_IAM_00004
  :tags: autosar, autosar_iam
  :satisfies: RS_Main_00514, RS_Main_00060

  **Description:**
  Adaptive Platform shall prevent Applications from circumventing
  AUTOSAR policy enforcement by using other APIs than the AUTOSAR defined
  APIs

  **Rationale:**
  The runtime environment of the Adaptive Platform Foundation shall
  ensure that an Adaptive Application may not circumvent PEPs by selecting
  alternative interfaces not under access control.

  **Use Case:**
  Intents for access on Service Interface SIf provided by Service Instance SInst
  are not assigned to Application A. Communication Management exposes API
  to Adaptive Applications and forwards requests to local instances via
  IPC. A tries to open communication channel to SInst directly (implementation
  specific). Access control of runtime environment prevents direct access.

.. req:: Adaptive Platform Foundation shall enforce that only Applications that are configured accordingly are able to gain information about the permissions of other applications
  :id: RS_IAM_00005
  :tags: autosar, autosar_iam
  :satisfies: RS_Main_00514

  **Description:**
  The Adaptive Platform Foundation must prevent applications from
  gaining information about the permissions of other applications unless explicitly
  configured to be allowed to access this information, i.e. for implementing a PDP
  in this specific Application.

  **Rationale:**
  Information about the overall-system that might help attackers to analyze the
  system shall not be exposed by IAM.

  **Use Case:**
  Application A implements PDP and provides according interface to PEPs.
  During a request A gains access on processed manifests of Adaptive
  Platform Foundation in order to provide the access control decision.
  Malicious Application B requests access on processed manifests. Since the
  application was not registered as PDP access on manifests is denied.

.. req:: Access control policies shall be available to the PDP 
  :id: RS_IAM_00006
  :tags: autosar, autosar_iam
  :satisfies: RS_Main_00514

  **Description:**
  Access control policies shall be available to the PDP. Policies are either
  modelled in implementation-specific ways or even represented by code.
  Policies are not part of the AUTOSAR meta-model.

  **Rationale:**
  The PDP shall provide actual decisions for access control. Those decisions are
  based on Application’s Intents and Policies, so both shall be available to PDP.

  **Use Case:**
  App requests access on resource. PEP identifies App and forwards request to
  PDP. PDP has to return binary decision, if identified App brings the required
  intents that fullfill the policy.

.. req:: The Adaptive Platform Foundation shall provide access control decisions
  :id: RS_IAM_00007
  :tags: autosar, autosar_iam
  :satisfies: RS_Main_00514

  **Description:**
  The Adaptive Platform Foundation shall provide access control
  decisions based on intents that are stored in the corresponding manifests and
  policies specific to Functional Cluster.

  **Rationale:**
  Policies used by PDP implemented in Adaptive Platform Foundation
  are well-defined by AUTOSAR.

  **Use Case:**
  Application A requests access on public interface of Functional Cluster
  (FC). The manifest of Application A defines its intents. PEP forwards
  description of request to PDP via inter-functional-cluster interface. Policies
  used by PDP are predefined by AUTOSAR. The representation of policies is
  implementation-specific and may even be hard-coded. PDP checks processed
  manifests for intents of Application A. PDP returns access control decision to
  PEP

.. req:: Access shall be denied by the PEP if the corresponding PDP is not available
  :id: RS_IAM_00008
  :tags: autosar, autosar_iam
  :satisfies: RS_Main_00514

  **Description:**
  Access shall be denied by the PEP if the corresponding PDP is not available.
  Applications that depend on access control during startup have to be covered
  by IAM. Therefore IAM should be available as soon as possible.

  **Rationale:**
  Attackers shall not gain access on resources by DoS-attacks on the PDP.

  **Use Case:**
  Attacker requests access on resource. During the request the attacker
  exhausts RAM which leads to a time-out of the communication between PEP
  and PDP. The PEP blocks access on resource.

.. req:: An Adaptive Application may provide access control decisions
  :id: RS_IAM_00009
  :tags: autosar, autosar_iam
  :satisfies: RS_Main_00514

  **Description:**
  The adaptive Adaptive Platform Foundation shall provide an interface
  to Adaptive Application to facilitate access control decisions based on
  access control policies and intents that are stored in the corresponding
  manifests. Adaptive Applications implementing a PDP are used for
  OEM-specific IAM. This interface is used at runtime during a operation
  restricted by access control. The specific PEP calls an OEM-specific PDP in
  order to block or allow a current operation usage.

  **Rationale:**
  Policies and Intents are well-defined by AUTOSAR. OEM-IAM enables the
  adaptive integration of OEM-specific access control.

  **Use Case:**
  Access on Service Interface I depends on the vehicle state. This vehicle state
  is gathered by App A via Communication Management. App A provides Policy
  Decision based on vehicle state.

.. req:: Adaptive applications shall only be able to use AUTOSAR Resources when authorized
  :id: RS_IAM_00010
  :tags: autosar, autosar_iam
  :satisfies: RS_Main_00514, RS_Main_00060

  **Description:**
  The Adaptive Platform Foundation must ensure that adaptive
  applications shall only be able to use an AUTOSAR Resource if an existing
  policy authorizes them to do so.

  **Rationale:**
  Fine grained modelling of types of access on resources shall be enabled.

  **Use Case:**
  App A uses a method derivateKey(sourceKey, targetkey). App A is defined as
  user of sourceKey and owner of targetKey. This prevents App A from writing to
  sourceKey.

.. req::  Multiple PEPs
  :id: RS_IAM_00011
  :tags: autosar, autosar_iam
  :satisfies: RS_Main_00514

  **Description:**
  IAM should support policy enforcement by multiple PEPs for one single request
  by an adaptive application

  **Rationale:**
  If multiple PEPs enforce a policy, all PEPs have to be compromised or
  circumvented for a successful attack.

  **Use Case:**
  If access control cannot be enforced at the object’s ECUs (e.g., because it is a
  legacy ECU or because its PEP has been compromised), an uncompromised
  PEP on the subject’s ECU can prevent unauthorized access. If access control
  cannot be enforced at the subject’s ECUs (e.g., because it is a legacy ECU or
  because its PEP has been compromised), an uncompromised PEP at the
  object’s ECU can prevent unauthorized access.

.. req:: Unique Adaptive Application ID
  :id: RS_IAM_00014
  :tags: autosar, autosar_iam
  :satisfies: RS_Main_00514, RS_Main_00510

  **Description:**
  An Adaptive Application ID shall be unique regarding the local machine.

  **Rationale:**
  Adaptive Applications shall be linked to and held responsible for their actions.

  **Use Case:**
  The IAM framework uses the application ID of Adaptive Applications to
  verify requests and grant access to certain AUTOSAR Resources based on the
  defined polices.

.. req:: The adaptive application ID shall be stored and handled tamper-proof throughout its lifecycle
  :id: RS_IAM_00017
  :tags: autosar, autosar_iam
  :satisfies: RS_Main_00514, RS_Main_00510
  :depends: RS_IAM_00014

  **Description:**
  An Adaptive Application ID shall be unique regarding the local machine.
  Adaptive Applications shall be linked to and held responsible for their actions.

  **Rationale:**
  The IAM framework uses the application ID of Adaptive Applications to
  verify requests and grant access to certain AUTOSAR Resources based on the
  defined polices.

  **Use Case:**
  Application Designer defined Intents in manifest. The manifest is
  cryptographically signed. During deployment the manifest is authenticated and
  checked for integrity.

.. req:: Set of intents shall be provided in the corresponding manifest
  :id: RS_IAM_00018
  :tags: autosar, autosar_iam
  :satisfies: RS_Main_00514

  **Description:**
  The set of intents of an Adaptive Application shall be provided in the
  corresponding manifest.

  **Rationale:**
  Intents defined for an Adaptive Application shall be determined by the
  corresponding manifest. If an Adaptive Application is compromised, we
  need the manifest with the intents to actually enforce the restrictions implied by
  the intents. We cannot solely rely on the correct behavior of each Adaptive
  Application. Adaptive Platform Foundation shall not provide any
  interface that allows applications to change its intents defined in the manifest
  during runtime.

  **Use Case:**
  The Application Designer defines the actions the Application will request. The
  Integrator checks plausibility. The Integrator does not need to define
  permissions.

.. req:: Intents of an Adaptive Application shall be authentically linked to the manifest
  :id: RS_IAM_0019
  :tags: autosar, autosar_iam
  :satisfies: RS_Main_00514, RS_Main_00510

  **Description:**
  The set of intents of an Adaptive Application shall be authentically linked
  to the Adaptive Application in the corresponding manifest.

  **Rationale:**
  An Adaptive Application is provided with a set of intents. It shall not be
  possible to extend or restrict this set except by signed updates. The Adaptive
  Application should always possess the same intents as defined by signed
  manifests.

  **Use Case:**
  Application designer cryptographically signes the corresponding manifest. The
  manifest is deployed. 

  - A: Attacker provides malicious update for Application. Authenticity-check prevents deployment. 
  - B: Attacker gains control of App during runtime. Intents of an App are still determined and privilege escalation is prevented.

.. req:: Adaptive Platform Foundation must allow to specify a superset manifest file of intents
  :id: RS_IAM_0020
  :tags: autosar, autosar_iam
  :satisfies: RS_Main_00514

  **Description:**
  Adaptive Platform Foundation shall allow to specify a superset
  manifest file of intents

  **Rationale:**
  An Adaptive Platform Foundation must provide a collection of all its
  current manifests in one single superset manifest for exchange with a second
  Adaptive Platform Foundation. The second Adaptive Platform
  Foundation may want to confirm an intent of the first Adaptive Platform.


All IAM related autosar requirements
--------------------------------------


.. needflow:: AUTOSAR IAM
  :tags: autosar_iam
  :show_link_names:
  