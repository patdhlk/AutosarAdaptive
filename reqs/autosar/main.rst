====================================
AUTOSAR main requirements
====================================

Requirements
----------------------

.. req:: Real-Time System Software Platform
	:id: RS_Main_00001
	:tags: autosar, autosar_main

	**Description:**
	Additional Information: Real time systems are divided into hard and soft real time systems. Hard real time systems always have to deliver the correct result in the given time whereas from soft real time systems it is demanded that they compute the correct answer in a given time in a dedicated average.

.. req:: Standardized Application Communication Interface
	:id: RS_Main_00060
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall provide an application communication interface. The AUTOSAR application communication interface shall allow AUTOSAR applications to use the same interface definition independently of whether they are located on the same or on different ECUs.

	**Rationale:**
	A standardized interface definition for applications is a prerequisite for the reuse of software and hardware independent deployment.

.. req:: Hardware Abstraction Layer
	:id: RS_Main_00130
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall provide a hardware abstraction layer. The AUTOSAR hardware abstraction layer shall standardize access to the hardware for software that is not part of the abstraction layer.

	**Rationale:**
	Application software has to be independent from the underlying hardware in order to be reused (e.g. on other hardware platforms).

.. req:: Means for Functional Modeling
	:id: RS_Main_00653
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall provide means for functional modeling. The AUTOSAR means for functional modeling shall be the same for AUTOSAR and Non-AUTOSAR platforms.

	**Rationale:**
	To enable design of vehicles without the need to preselect a dedicated technology beforehand (AUTOSAR platforms, Non-AUTOSAR platforms) Dependencies:  [RS_Main_00080],

.. req:: Network Technology Support
	:id: RS_Main_00230
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall support E/E architectures that use more than one in vehicle network technology. AUTOSAR shall support interconnection of networks via gateways, bridges and repeaters.

	**Rationale:**
	Current in-vehicle E/E-architectures use multiple networks with different network technologies.

.. req:: Runtime Diagnostics Means
	:id: RS_Main_00260
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall provide runtime diagnostics means. The AUTOSAR runtime diagnostics means shall support the following standards (OBD, ISO14229) and protocols (UDS).

	**Rationale:**
	Standardized diagnostics access is required for field service, approval and production.

.. req:: Standardized Automotive Communication Protocols
	:id: RS_Main_00280
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall support standardized automotive communication protocols. AUTOSAR shall support the communication between platforms defined by AUTOSAR and platforms defined by other parties (e.g. running other operating systems).

	**Rationale:**
	Automotive networks consist of ECUs running different software platforms (including offboard systems) beside the software platforms defined by AUTOSAR.

.. req:: Function Monitoring
	:id: RS_Main_00491
	:tags: autosar, autosar_main

	**Description:**
	The AUTOSAR function monitoring shall include logging, distribution and storage of application-internal information at runtime. The AUTOSAR function monitoring shall be usable without knowing anything about the ECU internal memory usage/addressing.

	**Rationale:**
	Standardized function monitoring is required by development to be able to inspect and understand the system behavior at runtime.


.. req:: Secure Onboard Communication
  :id: RS_Main_00510
  :tags: autosar, autosar_main

  **Description:**
  AUTOSAR shall provide means for secure onboard communication. The AUTOSAR means for secure onboard communication shall include at least means to check 

  - data authenticity, 
  - data integrity,
  - optionally confidentiality,
  - optionally data freshness.


.. req:: Intra ECU Communication Support
	:id: RS_Main_01001
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall provide intra ECU communication support. The AUTOSAR intra ECU communication support shall enable software modules on the same ECU to communicate with each other with standardized means.

	**Rationale:**
	Software modules send signals to each other to exchange algorithm data.

.. req:: UDS Compliance
	:id: RS_Main_00700
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall be compliant with the ISO 14229-2 standard for Unified Diagnostic Services (UDS).

	**Rationale:**
	UDS-compliant test equipment is currently in widespread use.

.. req:: Safety Mechanisms
	:id: RS_Main_00010
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall provide safety mechanisms. The AUTOSAR safety mechanisms shall ensure freedom from interferences between safety relevant software modules. The AUTOSAR safety mechanisms shall ensure safe inter and intra ECU communication. The AUTOSAR safety mechanisms shall support the implementation of fail operational systems. The AUTOSAR safety mechanisms shall include a methodology to support the configuration and documentation of safety relevant aspects. The AUTOSAR safety mechanisms shall include a methodology how to implement safety by using the templates.

	**Rationale:**
	Facilitate the development of safety related systems by using AUTOSAR platforms. Platforms designed for the support of safety related systems are needed for safety related ECUs like digital engine control units and electronic power steering systems.

.. req:: Safety Related Process Support
	:id: RS_Main_00030
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall provide system safety support. The AUTOSAR system safety support shall include at least exchange formats for safety process relevant information in the development process. The AUTOSAR system safety support shall enable users to apply safety standards. Supporting Material:  ISO26262



.. req:: Mechanisms for Reliable Systems
	:id: RS_Main_00011
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall provide mechanisms for reliable systems.

	**Rationale:**
	Reliability is one of the important characteristics to achieve safety.

.. req:: Highly Available Systems Support
	:id: RS_Main_00012
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall provide highly available systems support. When system malfunction occurs during normal runtime then AUTOSAR highly available systems support shall ensure availability. Additional Information: Normal runtime: The runtime when systems main function is intended to operate. It excludes functions like software updates.

	**Rationale:**
	Facilitate the development of highly available systems by using AUTOSAR platforms. Highly available systems are required for automated driving applications.

.. req:: Formal Description Language
	:id: RS_Main_00080
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall provide a formal description language. The AUTOSAR formal description language shall allow users to describe AUTOSAR software.

	**Rationale:**
	Software allocability and reusability. The AUTOSAR formal description language allows users to define application models that abstract from communication configuration, mapping to ECUs and/or AUTOSAR platforms.

.. req:: Non-AUTOSAR Software Integration
	:id: RS_Main_00190
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall support AUTOSAR users to integrate non AUTOSAR-compliant software into AUTOSAR software.

	**Rationale:**
	Users want to reuse proprietary software or software based on former AUTOSAR versions.

.. req:: Resource Efficiency
	:id: RS_Main_00200
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall allow AUTOSAR users to implement AUTOSAR software efficiently with respect to - RAM - ROM, Flash - Computing power - Bus bandwith.

	**Rationale:**
	Limited resources like flash, RAM, computing power characterize automotive computers.

.. req:: Development Collaboration Support
	:id: RS_Main_00507
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall provide development collaboration support. The AUTOSAR development collaboration support shall include processes, exchange formats and methodology.

	**Rationale:**
	During the development of a vehicle, software system at different process steps information is exchanged between the various partners working independently. Supporting Material:  Automotive SPICE

.. req:: System Security Support
	:id: RS_Main_00514
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall provide system security support. The AUTOSAR system security support shall provide security mechanisms. The AUTOSAR system security support shall provide security properties. The AUTOSAR security properties shall at least include - authenticity, - confidentiality, - integrity, - non-repudiation.



.. req:: Intellectual Property Protection
	:id: RS_Main_00180
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall provide intellectual property protection. The AUTOSAR intellectual property protection shall secure the intellectual property of development artifacts exchanged between parties.

	**Rationale:**
	Integration of software solutions from different partners requires dealing with intellectual property issues. AppliesTo:  FO

.. req:: Backward Compatibility
	:id: RS_Main_00270
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall provide Backward Compatibility means. The AUTOSAR Backward Compatibility means shall enable users to assess how to migrate from AUTOSAR release n to AUTOSAR release n+1.

	**Rationale:**
	Backward compatibility means ensuring a long term usability of devices based on the AUTOSAR standard. AppliesTo:  FO

.. req:: Documented Software Architecture
	:id: RS_Main_00350
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall provide a documented software architecture. The AUTOSAR documented software architecture shall enable users to perform a safety analysis according to ISO26262.

	**Rationale:**
	In the context of the safety-related developments a confirmation that design and implementation are safe is required. Supporting Material:  ISO26262

.. req:: Variant Management Support
	:id: RS_Main_00360
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall provide variant management support. The AUTOSAR variant management support shall enable users to ensure the compatibility of application software across vehicle variants and vehicle software releases.

	**Rationale:**
	Integration of ECUs in one or different E/E-architectures requires variant management. 5 Platform Level Candidates

.. req:: AUTOSAR shall standardize methods to organize mode management on Application, ECU and System level
	:id: RS_Main_00460
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall provide a method to configure mode management mechanisms for Application Software to control or react on modes of the ECU or vehicle.

	**Rationale:**
	The behavior of Application Software highly depends on the overall mode of the ECU. Therefore the method of mode management has to be standardized to achieve the same behavior if Application Software is allocated on another ECU. AppliesTo:  FO Use Case:  Degradation of application functionality in certain power modes.

.. req:: AUTOSAR shall provide means to assure interoperability of AUTOSAR implementations (ICC1 level) on application level (RTE) and bus level 
	:id: RS_Main_00120
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall provide specified test cases and the essential test methodology to ensure interoperability on application (RTE side) and bus level for BSW on ICC1 level (Black Box Test). These specified test cases and its related methodology shall be developed to test implementations of AUTOSAR basic software.

	**Rationale:**
	Acceptance tests are strongly needed to provide evidence that a product complies with the AUTOSAR specification i.e. to ensure a certain behavior of the regarded elements at the interfaces to application and communication busses. Use Case:  Integration of the infrastructure SW into a specific ECU, bring it into the E/E-architecture without backlashes on the system. Example from real world: Integration of BSW stack (ICC1 level) to applications and the ECU infrastructure without difficulties. Support test of any ICC implementations (from ICC1 to ICC3). Reuse of the same test specification even when the ICC3 specification details change

.. req:: AUTOSAR methodology shall provide a predefinition of typical roles and activities
	:id: RS_Main_00250
	:tags: autosar, autosar_main

	**Description:**
	The definition and description of roles and activities in the design methodology should support a work-share model.

	**Rationale:**
	As AUTOSAR enables work-share on different positions and activities it shall provide a common understanding of roles and activities. AppliesTo:  FO Use Case:  Share activities like AUTOSAR configuration and Application Software partitioning between software integrator and software architect.

.. req:: AUTOSAR shall provide data exchange formats to support work-share in large inter and intra company development groups
	:id: RS_Main_00300
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall support the work-share in large development projects via well-defined exchange formats.

	**Rationale:**
	A typical AUTOSAR system is expected to carry a huge number of signals per vehicle. To develop vehicle descriptions a good organization of work-share is needed. To support such organizations, well defined concepts for information exchange are required. AppliesTo:  FO Use Case:  Data sharing between OEM and 1st Tier supplier.

.. req:: AUTOSAR shall provide formats to specify system development
	:id: RS_Main_00320
	:tags: autosar, autosar_main

	**Description:**
	In AUTOSAR it shall be possible to describe all requirements of Application Software to their platform environment. This enables the integrator to provide the Application Software in such an environment on an ECU.

	**Rationale:**
	The AUTOSAR format will include system, ECU and SW specification and is necessary for the ECU integration process. AppliesTo:  FO Use Case:  OEM designs an Application Software and a Supplier will integrate these AUTOSAR Software Applications on an ECU.

.. req:: AUTOSAR shall support the continuous timing requirement analysis
	:id: RS_Main_00340
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall support observation, assessment and methodology of timing requirements throughout the development cycle.

	**Rationale:**
	Application Software has specific timing requirements which have to follow the common methodology in order to provide reliable and comparable information towards timing. AppliesTo:  FO Use Case:  Real time control of todays gasoline injection system.

.. req:: AUTOSAR shall provide naming conventions
	:id: RS_Main_00500
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall define naming conventions for internal and external symbols created and used by the standard.

	**Rationale:**
	Naming conventions shall be defined in specification documents to achieve a standardized and consistent documentation. This is good documentary practice, helps for better understanding, reduces ambiguities and improves cooperation AppliesTo:  FO Use Case:  Work-share models between OEM and supplier. Development of AUTOSAR specifications.

.. req:: AUTOSAR shall provide a software platform for high performance computing platforms
	:id: RS_Main_00002
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall provide a software platform called AUTOSAR Adaptive Platform, which targets the domain of automotive applications with high demands regarding computing power and memory.

	**Rationale:**
	Advanced automotive applications require a huge amount of ressources (computing power and memory). To develop efficiently such systems a software platform with different characteristics as required for RS_Main_00001 is required e.g. different scheduling strategies, dynamic memory management etc. AppliesTo:  FO Use Case:  Development of applications for automated driving and advanced driving assistance systems

.. req:: AUTOSAR shall provide a layered software architecture
	:id: RS_Main_00400
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall provide a software architecture, which distinguishes between Application Software, a Runtime Environment and Basic Software.

	**Rationale:**
	The Runtime Environment defines a standardized programming interface for the Application Software. This enables the reallocation and reuse of Software Components. AppliesTo:  CP Use Case:  Relocation of yaw rate control from one ECU to another.

.. req:: AUTOSAR shall support the deployment and reallocation of AUTOSAR Application Software
	:id: RS_Main_00150
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall develop means to enable reallocation of AUTOSAR Application Software at the following points in time: - Design-time: During development of the ECUs - Run-time: Time between start-up and shut-down of the software stack - Life-time: Time after start of production

	**Rationale:**
	Enable the reallocation of Application Software to different ECUs. AppliesTo:  AP Dependencies:  RS_Main_00141 Use Case: - OEM provides safety or security related software for installation onto vehicle - OEM provides additional QM software for installation onto vehicle - Developer performs agile development of vehicle functions - Reallocation of yaw rate control from one ECU to another at development-time - Optimization of overall system architecture. - Update of (single) Adaptive Application or update of specific configurations over the air

.. req:: AUTOSAR shall provide specifications for routines commonly used by Application Software to support sharing and optimization
	:id: RS_Main_00410
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall support the development of Application Software by providing standardized libraries with commonly used functions.

	**Rationale:**
	Share routines between different Applications. Use of optimized routines by Applications integrated in different ECUs. AppliesTo:  FO Use Case:  Relocation of SW component from ECU A to ECU B with a different microcontroller.

.. req:: AUTOSAR shall support redundancy concepts
	:id: RS_Main_00501
	:tags: autosar, autosar_main

	**Description:**
	In engineering, redundancy is the duplication of critical components or functionalities of a system with the intention of increasing reliability of the system. AUTOSAR shall support the freedom of interference according to ISO26262.

	**Rationale:**
	Use-Cases like highly automated driving require a high system reliability. AppliesTo:  FO Dependencies:  ISO26262 Use Case:  Driver temporarily/partially passes responsibility for driving task to vehicle. Supporting Material:  http://en.wikipedia.org/wiki/Redundancy_(engineering) http://en.wikipedia.org/wiki/Active_redundancy

.. req:: AUTOSAR shall support virtualization
	:id: RS_Main_00511
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall support virtualization in a way that it can be hosted and executed as a guest operating system in a virtualized environment.

	**Rationale:**
	It shall be possible to run AUTOSAR on top of existing hypervisor solutions. AppliesTo:  FO Use Case:  Development of ECUs which contain infotainment as well as control functionality

.. req:: AUTOSAR shall use established software standards and consolidate de-facto standards for basic software functionality
	:id: RS_Main_00420
	:tags: autosar, autosar_main



	**Rationale:**
	Historically, OEMs and the major Tier1 suppliers have created proprietary standard core solutions, with partly different functionality. To achieve a common standard, which is accepted and used by all of the participating partners these solutions shall be consolidated by AUTOSAR. If an agreed common solution supported by OEMs and Tier 1 already exists, this solution shall be adopted by AUTOSAR in order to ease reuse of existing software. AppliesTo:  FO Use Case:  Operating System in AUTOSAR ECUs. Partial Networking. Network Management. POSIX

.. req:: AUTOSAR shall standardize access to non-volatile memory
	:id: RS_Main_00440
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall standardize access to non-volatile memory for code and data memory.

	**Rationale:**
	Since the current AUTOSAR memory stack only targets non-volatile data memory access, adding the statement clarifies that the memory stack shall also be capable of accessing code memory. AppliesTo:  AP, CP Use Case:  NV data storage, software update (OTA, flash bootloader)

.. req:: AUTOSAR shall standardize access to crypto-specific HW and SW
	:id: RS_Main_00445
	:tags: autosar, autosar_main

	**Description:**
	The AUTOSAR platforms shall support access to crypto and security related Hardware and define Software to access those.

	**Rationale:**
	Software Components need to encrypt, authenticate and store data in a secure memory for protection against malicious entities. AppliesTo:  FO Use Case:  Security

.. req:: AUTOSAR shall provide secure access to ECU data and services
	:id: RS_Main_00170
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall provide secured access to ECU data and services by secure authentication of external ECU users. For this mechanisms access control decisions need to be enforced.

	**Rationale:**
	Secure access and authentication mechanisms are required for prevention of unauthorized access. AppliesTo:  FO Dependencies:  To fulfill this requirement it is also necessary that the environment that is not standardized by AUTOSAR (e.g. bootloader) matches the same security requirements. Use Case:  Secure V2X connection

.. req:: AUTOSAR shall support up -and download of data and software
	:id: RS_Main_00650
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall support standardized up-and download of data and software. For all kind of data exchange between off-and onboard artifacts mechanisms and methods shall be defined. These mechanisms and methods shall support common protocols used for data-transfer. Partial updates of the software shall be supported. Independent access control rules and policies apply.

	**Rationale:**
	Up-and download of data and software is required for software updates using standardized mechanisms. AppliesTo:  AP Use Case:  Download of dedicated Software Components in ECU.

.. req:: AUTOSAR shall provide means for calibration
	:id: RS_Main_00261
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall provide a unified way for off-and onboard data calibration. The calibration data shall be accessable by Applications.

	**Rationale:**
	Use of calibration data for production and field service. AppliesTo:  FO Use Case:  Measurement and logging of customer data in product use

.. req:: AUTOSAR shall support high speed and high bandwidth communication between executed SW
	:id: RS_Main_00026
	:tags: autosar, autosar_main

	**Description:**
	The middleware shall support high speed and high bandwidth communication between executed SW.

	**Rationale:**
	Requirements for communication speed and bandwidth have grown at a rapid pace in the past and continue to grow at an unbroken rate. AppliesTo:  FO Use Case:  High-bandwidth data like image or sensor data is exchanged between components within automotive networks.

.. req:: AUTOSAR shall support service-oriented communication
	:id: RS_Main_01002
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall support service-oriented communication between applications independently of the location of the applications.

	**Rationale:**
	Reuseability of services and dynamic configuration of communication paths. AppliesTo:  AP Dependencies:  RS_Main_00150 Use Case:  A parking assistant application wants to use camera and radar services.

.. req:: AUTOSAR shall support data-oriented communication
	:id: RS_Main_01003
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall support data-oriented communication between applications. This means that applications are able to send data to all applications configured to receive the respective data.

	**Rationale:**
	Transfer data to applications on other ECUs or on the same ECU. AppliesTo:  FO Dependencies:  RS_Main_00150 Use Case:  Send current vehicle speed over CAN bus to various applications.

.. req:: AUTOSAR shall support debugging of software on the target and onboard
	:id: RS_Main_01025
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall provide a standardized method and interface to enable debugging the software of AUTOSAR systems with awareness of the AUTOSAR architecture. If a module provides methods of obtaining internal state information to be used by debuggers then it shall use this standardized method.

	**Rationale:**
	Debugging tools need internal information to visualize the state of the software. Components and modules implementing this requirement shall provide the necessary state information that can be used by internal and external tools. AppliesTo:  FO Use Case:  Debugging the software.

.. req:: AUTOSAR shall support tracing and profiling on the target and onboard
	:id: RS_Main_01026
	:tags: autosar, autosar_main

	**Description:**
	and profiling the software of AUTOSAR systems with awareness of the AUTOSAR architecture. If a module provides methods of obtaining internal event information to be used by trace analysis tools, then it shall use this standardized method.

	**Rationale:**
	Tracing and timing analysis tools need internal information to visualize and inspect the run-time behavior of the software. Components and modules implementing this requirement shall provide the necessary details and hooks that can be used by tools. AppliesTo:  FO Use Case:  Run-time tracing the software, profiling, timing measurement.

.. req:: AUTOSAR shall support change of communication and application software at runtime.
	:id: RS_Main_00503
	:tags: autosar, autosar_main

	**Description:**
	Advanced systems require dynamic allocation of AUTOSAR Applications and adaptations of the communication topology after development and production at life-time of the system AUTOSAR shall provide a technical possibility which provides these Software changes at runtime.

	**Rationale:**
	Advanced driving assistance functions have to be updated (e.g. after development or production). AppliesTo:  AP Use Case:  Update of Application Software or update of configuration over the air

.. req:: AUTOSAR shall support standards for wireless off-board communication
	:id: RS_Main_01004
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR communication shall support standards for wireless off-board communication.

	**Rationale:**
	To be compatible with off-board service providers, the AUTOSAR communication needs to support off-board communication standards. AppliesTo:  AP Use Case:  Services for automotive applications can be provided in cloud instances or vehicle backend

.. req:: AUTOSAR shall provide secure communication with off-board entities
	:id: RS_Main_01008
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR communication shall provide secure communication with off-board entities.

	**Rationale:**
	Data should be securely transferred between the vehicle and off-board entities to protect data integrity, privacy and prevent misuse. AppliesTo:  FO Use Case:  Purchasing applications or unlocking functionality through the headunit HMI should be safe and secure.

.. req:: AUTOSAR shall establish communication paths dynamically
	:id: RS_Main_01005
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR communication shall establish communication paths dynamically.

	**Rationale:**
	The deployment of services can depend on many factors, changing several times during the development process or after release in the field. AppliesTo:  AP Use Case:  A service is selected based on availability of sensor data.

.. req:: AUTOSAR communication shall assure quality of service on communication
	:id: RS_Main_01007
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR communication shall assure quality of service on communication

	**Rationale:**
	Some applications are sensitive to delays in signal reception. Other applications may need guaranteed reception of certain signals for proper operation. AppliesTo:  AP Use Case:  An algorithm in the ESP needs data from the wheel sensors with low-latency and guaranteed reception.

.. req:: AUTOSAR shall tolerate unexpected communication elements.
	:id: RS_Main_00129
	:tags: autosar, autosar_main

	**Description:**
	If unanticipated elements of a communication (e.g. new data elements of a serialized data package) are received, AUTOSAR tolerant communication mechanisms shall not invalidate the communication behaviour for anticipated communication elements.

	**Rationale:**
	This allows the extension of existing subsystems or the creation of new subsystems without requiring modifications to unrelated subsystems with shared communication elements. AppliesTo:  FO Use Case:  A component can stay unchanged despite that the network it is connected to has been modified.

.. req:: Communication filtering mechanisms
	:id: RS_Main_00131
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall support communication filtering mechanisms. The AUTOSAR communication filtering mechanisms shall be configurable by the means of the AUTOSAR formal description language.

	**Rationale:**
	With an increasing risk of remote attacks performed on cars, numerous regulations are now driving the implementation of communication filtering mechanisms in automobiles like UN R155, MIIT ICV, China Gateway GB/T. AppliesTo:  FO Use Case:  To mitigate potential attackers from taking control of vehicular functions and protect against denial-of-service attacks

.. req:: AUTOSAR shall provide an Execution Management for running multiple applications
	:id: RS_Main_00049
	:tags: autosar, autosar_main

	**Description:**
	The middleware shall provide an execution framework for adaptive SWCs.

	**Rationale:**
	SWCs can be started and stopped based on application logic. To support this, the execution management should be able to facilitate lifecycle operations for numerous SWCs. AppliesTo:  AP Use Case:  The execution management starts all required SWCs at system initialization.

.. req:: AUTOSAR shall provide an Execution Framework towards applications to implement concurrent application internal control flows
	:id: RS_Main_00050
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall provide an Execution Framework towards applications to implement concurrent application internal control flows.

	**Rationale:**
	If the execution framework manages numerous running SWCs it will handle their control flows independently. AppliesTo:  AP Use Case:  The execution framework starts several SWCs in an ordered manner.

.. req:: AUTOSAR shall provide the possibility to extend the software with new SWCs without recompiling the platform foundation
	:id: RS_Main_00106
	:tags: autosar, autosar_main

	**Description:**
	It shall be possible to extend AUTOSAR with new SWCs without recompiling the platform foundation

	**Rationale:**
	To prevent unnecessary build time, individual SWCs should be able to be compiled independently without the need to recompile all other system software. AppliesTo:  AP Use Case:  A new SWC is introduced to an ECU implementation at a later point in time during the SW project.

.. req:: AUTOSAR shall provide standardized Basic Software
	:id: RS_Main_00100
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall provide a complete functional specification of the Basic Software including interfaces and behavioral description.

	**Rationale:**
	To support reallocation of Software Components it is necessary that the Software Components can rely on identical services provided by the Basic Software. The Basic Software is a necessary stable foundation for implementing applications on multiple ECUs. AppliesTo:  CP Use Case:  Application Software shall be useable on multiple implementations of the Basic Software.

.. req:: AUTOSAR shall support established automotive communication standards
	:id: RS_Main_00430
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR ECUs shall support common established communication systems. This includes at least but is not restricted to: CAN, LIN, FlexRay, Ethernet

	**Rationale:**
	Automotive ECUs communicate over different standardized communication systems. These shall be supported by AUTOSAR. AppliesTo:  CP Use Case:  Implementation of distributed functionality e. g. driving assistance systems

.. req:: AUTOSAR shall support automotive microcontrollers
	:id: RS_Main_00435
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall support hardware features of commonly used automotive microcontrollers.

	**Rationale:**
	Automotive ECUs use dedicated, highly integrated microcontrollers, which have to pass automotive qualification procedures. The AUTOSAR shall support the integrated features of these microcontrollers. These include, but are not limited to: Digital I/O Analog/Digital converter Pulse-width modulation Bus controllers for CAN, LIN, FlexRay, Ethernet Multiprocessor architectures Many core architectures Memory protection units Flash Microprocessors AppliesTo:  CP Use Case:  Development of typical automotive control units [UC_AD1.4] Highly Automated Driving

.. req:: AUTOSAR shall standardize access to general purpose I/O
	:id: RS_Main_00450
	:tags: autosar, autosar_main

	**Description:**
	The AUTOSAR Basic Software shall support access to general purpose I/O.

	**Rationale:**
	Software Components need to access application specific hardware (sensor and actuators) AppliesTo:  CP Use Case:  Temperature sensor for engine control.

.. req:: AUTOSAR shall support mirroring of CAN, LIN, and FlexRay to CAN, FlexRay, Ethernet, or proprietary networks
	:id: RS_Main_00651
	:tags: autosar, autosar_main

	**Description:**
	 - LIN/CAN -> CAN - LIN/CAN/CAN-FD -> CAN-FD - LIN/CAN/CAN-FD/FlexRay -> CAN XL - LIN/CAN/CAN-FD/FlexRay -> FlexRay - LIN/CAN/CAN-FD/FlexRay -> Ethernet - LIN/CAN/CAN-FD/FlexRay -> CDD

	**Rationale:**
	It is not always possible or sometimes just too complicated to connect an analysis tool directly to an internal network. Forwarding of internal communication to a diagnostic connector allows for observation of internal communication using an external tester. AppliesTo:  CP Use Case:  Debugging of internal networks without direct access from an analysis tool. Supporting Material:  Concept 634 "Bus Mirroring"

.. req:: AUTOSAR shall specify profiles for data exchange to support work-share in large inter-and intra-company development groups
	:id: RS_Main_00301
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall support the work-share in large development projects via the definition of common data exchange points and profiles which provide guidance with respect to completeness and correctness of data at these data exchange points.

	**Rationale:**
	Smooth exchange of data between different stakeholders by improved tool interoperability. Avoid iterations due to incomplete data. Clear definition of a data exchange point for all stakeholders. Early identification of possible data exchange problems. AppliesTo:  FO Dependencies:  RS_Main_00300, RS_Main_00250, RS_Main_00251 Use Case:  Data sharing between OEM and 1st Tier supplier.

.. req:: AUTOSAR shall support hierarchical Application Software design methods
	:id: RS_Main_00310
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR shall provide means to structure Application Software in a hierarchical way, so that only links to outside Software need to be treated / adapted / changed in the next hierarchical level.

	**Rationale:**
	Objective is to allow each actor in the development chain to focus on the required level and tasks. AppliesTo:  FO Use Case:  Software development of an engine management system can only be achieved by using hierarchical strategies.

.. req:: Acceptance tests shall minimize test effort and test costs
	:id: RS_Main_00121
	:tags: autosar, autosar_main

	**Description:**
	In order to avoid redundant test cycles and ease the reuse of test results for users of AUTOSAR standard, acceptance tests shall focus on reduction of test effort and test costs. Test concept shall address explicitly efficiency.

	**Rationale:**
	Users of acceptance tests will typically use these tests for checking that a BSW implementation is mature enough to enter the users ECU software development process. Within this development process, there are usually more in-depth release tests in place. The acceptance tests are thus not required to test the BSW in full depth and with full coverage and can therefore not replace release tests at OEMs or Tier1s. Standard test ease the reuse of test results because they are commonly understood by different market partners (who use the test results / who implement the tests and who execute the tests). Use Case:  BSW handover into Development process Selection of the standard tests needed for an application (where test results are required) / documentation of the standard test supported by a BSW implementation (where test results will be provided)

.. req:: Acceptance tests shall test interoperability of BSW implementations of one AUTOSAR release in one vehicle network
	:id: RS_Main_00122
	:tags: autosar, autosar_main

	**Description:**
	Acceptance tests shall ensure interoperability of BSW implementations of one AUTOSAR release in one vehicle network

	**Rationale:**
	Sourcing and differences in lifecycles of ECUs require flexibility in the choice of BSW implementations Use Case:  Heterogenic vehicle networks of ECUs with different BSW implementations of the same AUTOSAR release

.. req:: Acceptance tests shall test interoperability of BSW implementations in vehicle networks
	:id: RS_Main_00123
	:tags: autosar, autosar_main

	**Description:**
	Acceptance tests shall test interoperability of BSW implementations in vehicle networks.

	**Rationale:**
	BSW is supplied from various sources and suppliers Use Case:  heterogenic vehicle networks of ECUs from different suppliers and gateways

.. req:: Acceptance tests shall test interoperability of BSW implementations to applications
	:id: RS_Main_00124
	:tags: autosar, autosar_main

	**Description:**
	Acceptance tests shall test interoperability of BSW implementations to applications.

	**Rationale:**
	Application development has to be independent from the different BSW implementations. The used application interfaces have to behave the same. Use Case:  Strategic, abstract and generic application development Support for different development cycles for applications and BSW implementations

.. req:: Acceptance tests shall provide means to measure the BSW implementation maturity
	:id: RS_Main_00125
	:tags: autosar, autosar_main

	**Description:**
	Acceptance tests shall provide a reference to measure maturity.

	**Rationale:**
	An existing test specification provides verification for requirements that are available with the AUTOSAR software standard. A common set of test cases as a reference enables the verification in the software implementation. Use Case:  Reuse of standard tests during the qualification process of BSW implementation.

.. req:: Acceptance tests shall cover a commonly agreed subset of AUTOSAR requirements
	:id: RS_Main_00128
	:tags: autosar, autosar_main

	**Description:**
	Acceptance tests shall cover a commonly agreed subset of AUTOSAR requirements.

	**Rationale:**
	By definition acceptance tests are designed from user perspective, the user decides to accept the BSW for further usage in projects. The configurability of AUTOSAR requires focusing on the most used features. Use Case:  Specification and implementation effort focussed on the features or test cases with the highest market needs

.. req:: AUTOSAR processes shall be compliant to ISO26262
	:id: RS_Main_00490
	:tags: autosar, autosar_main

	**Description:**
	To develop safety related automotive systems all processes applied need to follow the corresponding requirements given in ISO26262.Accordingly the applicable process related requirements of ISO26262 have to be fulfilled by AUTOSAR processes.

	**Rationale:**
	AUTOSAR shall support the development of systems according to the highest ASIL. AppliesTo:  FO Use Case:  Development of safety related automotive systems, e.g. to achieve high availability and fail-operational systems for highly automated driving Supporting Material:  ISO26262

.. req:: AUTOSAR shall support time synchronization
	:id: RS_Main_00512
	:tags: autosar, autosar_main

	**Description:**
	The AUTOSAR platforms shall support a time synchronization of ECUs with multiple timebases over automotive communication busses.

	**Rationale:**
	A synchronized time between the ECUs in a vehicle is necessary. AppliesTo:  FO Use Case:  Time synchronized applications, vehicle-wide synchronized logging and sensor fusion

.. req:: AUTOSAR shall support protocols for Intelligent Transportation Systems
	:id: RS_Main_00285
	:tags: autosar, autosar_main

	**Description:**
	AUTOSAR communication shall support geo-networking, transport protocols and facility protocols for Vehicle-2-X applications as defined by ETSI

	**Rationale:**
	Geo-networking (GN) and the basic transport protocol (BTP) are essential components of a V2X stack. The facilities (FAC) implement the functionality for reception and transmission of standardized V2X messages. V2X facilities also build the interface for vehicle specific applications. For the European market they especially support decoding, encoding and management of cooperative awareness messages. All protocols are accompanied by standardized mechanisms to secure privacy and maintain availability of the service in highly congested areas AppliesTo:  FO Use Case:  Examples e.g. enhance traffic flow by provision of infrastructure messages (traffic lights ahead, ...) to software components, implementation of standardized sending applications


All toplevel AUTOSAR requirements
------------------------------------------------

.. needlist::
   :tags: autosar_main


Traceability
------------------------------------------

.. needflow:: AUTOSAR
  :tags: autosar_main
  :show_link_names:


Traceability: Autosar big picture
-------------------------------------------

.. needtable::
   :tags: autosar_main, autosar_iam, autosar_crypto, autosar_ipsec, autosar_persistency

.. needflow:: Autosar Adaptive Big Picture
  :tags: autosar_main, autosar_iam, autosar_crypto, autosar_ipsec, autosar_persistency
  :show_link_names: