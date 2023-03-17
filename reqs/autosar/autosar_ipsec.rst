=========================================
AUTOSAR Requirements on IPsec Protocol
=========================================


.. note:: Original document is available here: https://www.autosar.org/fileadmin/standards/foundation/22-11/AUTOSAR_RS_IPsecProtocol.pdf

.. req:: IPsec shall be supported according to IETF RFC 4301
    :id: RS_IPSEC_00001
    :tags: autosar, autosar_ipsec
    :status: open
    :satisfies: RS_Main_00280, RS_Main_00510, RS_Main_00514

    **Description:**

    IPsec shall be supported according to IETF RFC 4301. Limitation: all requirements related to tunnel mode are optional, e.g. section 5.1.2, 7.1 and 7.2.

    **Rationale:** To enable secured communication over IP

    **Use Case:** In-vehicle secure communication

    **Supporting Material:**

    IETF RFC 4301 [5]

.. req:: The IP Authentication Header (AH) shall be supported according to IETF RFC 4302
    :id: RS_IPSEC_00002
    :tags: autosar, autosar_ipsec
    :status: open
    :depends: RS_IPSEC_00001
    :satisfies: RS_Main_00280, RS_Main_00510, RS_Main_00514

    **Description:**

    The IP Authentication Header (AH) shall be implemented in the TCP/IP stack as stated in IETF RFC 4302. Limitation: Section 3.1.2, related to tunnel mode, may or may not be implemented.

    **Rationale:** To enable secured communication over IP

    **Use Case:** In-vehicle secure communication

    **Supporting Material:**

    IETF RFC 4302 [6]


.. req:: IP Encapsulating Security Payload (ESP) shall be supported according to IETF RFC 4303
    :id: RS_IPSEC_00003
    :tags: autosar, autosar_ipsec
    :status: draft
    :depends: RS_IPSEC_00001
    :satisfies: RS_Main_00280, RS_Main_00510, RS_Main_00514

    **Description:**

    The IP Encapsulating Security Payload (ESP) shall be implemented in the TCP/IP stack as stated in IETF RFC 4303. Limitation: Any section related to tunnel mode, may or may not be implemented, e.g. section 3.1.2.

    **Rationale:** To enable secured communication over IP

    **Use Case:** In-vehicle secure communication

    **Supporting Material:**

    IETF RFC 4303 [7]

.. req:: The Internet Key Exchange (IKEv2) Protocol shall be supported according to IETF RFC 7296
    :id: RS_IPSEC_00004
    :tags: autosar, autosar_ipsec
    :status: open
    :depends: RS_IPSEC_00001
    :satisfies: RS_Main_00280, RS_Main_00510, RS_Main_00514

    **Description:**

    The Internet Key Exchange (IKEv2) Protocol shall be implemented in the TCP/IP stack as stated in IETF RFC 7296. The old IKEv1 shall not be supported. Limitation: Support is limited to scenario 1.1.2 Endpoint-to-Endpoint Transport.

    **Rationale:** To enable secured communication over IP.

    **Use Case:** In-vehicle secure communication.

    **Supporting Material:**

    * IETF RFC 7296 [8]


.. req:: Extended sequence numbers (ESN) for AH and ESP shall be supported according to IETF RFC 4304
    :id: RS_IPSEC_00005
    :tags: autosar, autosar_ipsec
    :status: open
    :depends: RS_IPSEC_00002, RS_IPSEC_00003
    :satisfies: RS_Main_00280, RS_Main_00510

    **Description:**

    Extended sequence numbers (ESN) for AH and ESP shall be supported according to IETF RFC 4304.

    **Rationale:** To enable secured communication over IP.

    **Use Case:** In-vehicle secure communication.

    **Supporting Material:**

    * IETF RFC 4304 [9]


.. req:: If encryption is used in IPsec, authentication shall be used as well
    :id: RS_IPSEC_00006
    :tags: autosar, autosar_ipsec
    :status: open
    :depends: RS_IPSEC_00001
    :satisfies: RS_Main_00280, RS_Main_00510, RS_Main_00514

    **Description:**

    If encryption is used in IPsec, authentication shall be used as well according to IETF RFC 8221 section 4.

    **Rationale:** Unauthenticated encryption is insecure.

    **Use Case:** In-vehicle secure communication.

    **Supporting Material:**

    * IETF RFC 8221 [10]


.. req:: Pre-shared keys (PSK) may be used in combination with IKEv2
    :id: RS_IPSEC_00007
    :tags: autosar, autosar_ipsec
    :status: open
    :depends: RS_IPSEC_00004
    :satisfies: RS_Main_00280, RS_Main_00510

    **Description:**

    Pre-shared keys (PSK) may be used in combination with IKEv2.

    **Rationale:** Makes slightly faster startup possible, compared to using digital signatures, but at the cost of additional key management.

    **Use Case:** In-vehicle secure communication.

    **Supporting Material:**



.. req:: Pre-shared keys (PSK) shall not be used for directly setting up IPsec security associations (SAs)
    :id: RS_IPSEC_00008
    :tags: autosar, autosar_ipsec
    :status: open
    :depends: RS_IPSEC_00001
    :satisfies: RS_Main_00280, RS_Main_00510

    **Description:**

    Pre-shared keys (PSK) shall not be used for directly setting up IPsec security associations (SAs). See IETF RFC 8221 section 3.

    **Rationale:** Using PSKs to set up SAs directly would break many security features like perfect forward secrecy and make replay attacks easier.

    **Use Case:** In-vehicle secure communication.

    **Supporting Material:**

    * IETF RFC 8221 [10]



.. req:: Counter mode encryption algorithms shall not be used in combination with pre-shared keys when setting up SAs directly
    :id: RS_IPSEC_00009
    :tags: autosar, autosar_ipsec
    :status: open
    :depends: RS_IPSEC_00001
    :satisfies: RS_Main_00280, RS_Main_00510

    **Description:**

    Counter mode encryption algorithms, e.g. ENCR_AES_CCM_16 and ENCR_AES_GCM_16, shall not be used in combination with pre-shared keys when setting up SAs directly according to IETF RFC 8221 section 3.

    **Rationale:** Counter mode algorithms break even more security assumptions than RS_IPSEC_00008.

    **Use Case:** In-vehicle secure communication.

    **Supporting Material:**

    * IETF RFC 8221 [10]



.. req:: IKEv2 shall support periodic reauthentication and rekeying
    :id: RS_IPSEC_00010
    :tags: autosar, autosar_ipsec
    :status: open
    :depends: RS_IPSEC_00004
    :satisfies: RS_Main_00280, RS_Main_00510, RS_Main_00514

    **Description:**

    IKEv2 shall support periodic reauthentication and rekeying of the IKEv2 communication partners according to IETF RFC 7296 section 1.3.2 and 1.3.3.

    **Rationale:** Considered good security practice, limits usefulness of stolen keys to shorter time periods.

    **Use Case:** In-vehicle secure communication.

    **Supporting Material:**

    * IETF RFC 7296 [8]


.. req:: IKEv2 shall support a seamless handover of exchanged keys
    :id: RS_IPSEC_00011
    :tags: autosar, autosar_ipsec
    :status: open
    :depends: RS_IPSEC_00004
    :satisfies: RS_Main_00280, RS_Main_00510

    **Description:**

    IKEv2 shall support a seamless handover of exchanged keys according to IETF RFC 7296 section 2.8. That means, during rekeying or reauthentication it should create new overlapping SAs first before it deletes the old SAs ("make before break"), so that the service is not interrupted. IETF RFC 4478 may be supported.

    **Rationale:** To avoid service interruption during rekeying phases.

    **Dependencies:** RS_IPSEC_00004

    **Use Case:** In-vehicle secure communication.

    **Supporting Material:**

    * IETF RFC 7296 [8]
    * IETF RFC 4478 [11]

.. req:: IKEv2 shall gracefully delete all SAs on shutdown and rebuild the deleted SAs immediately after the next startup
    :id: RS_IPSEC_00012
    :tags: autosar, autosar_ipsec
    :status: open
    :depends: RS_IPSEC_00004
    :satisfies: RS_Main_00280, RS_Main_00510

    **Description:**

    IKEv2 shall gracefully delete all SAs on shutdown according to IETF RFC 7296 section 1.4.1 and rebuild the deleted SAs immediately after the next startup.

    **Rationale:** To keep the stateless properties of IPsec while minimizing service interruptions.

    **Use Case:** In-vehicle secure communication.

    **Supporting Material:**

    * IETF RFC 7296 [8]



.. .. req:: IKEv2 shall support periodic reauthentication and rekeying
..     :id: RS_IPSEC_00010
..     :tags: autosar, autosar_ipsec
..     :status: open
..     :depends: RS_IPSEC_00004
..     :satisfies: RS_Main_00280, RS_Main_00510, RS_Main_00514

..     **Description:**

..     IKEv2 shall support periodic reauthentication and rekeying of the IKEv2 communication partners according to IETF RFC 7296 section 1.3.2 and 1.3.3.

..     **Rationale:** 

..     Considered good security practice, limits usefulness of stolen keys to shorter time periods.

..     **Use Case:** 

..     In-vehicle secure communication.

..     **Supporting Material:**

..     IETF RFC 7296 [8]

.. .. req:: IKEv2 shall support a seamless handover of exchanged keys
..     :id: RS_IPSEC_00011
..     :tags: autosar, autosar_ipsec
..     :status: open
..     :depends: RS_IPSEC_00004
..     :satisfies: RS_Main_00280, RS_Main_00510

..     **Description:**

..     IKEv2 shall support a seamless handover of exchanged keys according to IETF RFC 7296 section 2.8. That means, during rekeying or reauthentication it should create new overlapping SAs first before it deletes the old SAs ("make before break"), so that the service is not interrupted. IETF RFC 4478 may be supported.

..     **Rationale:**

..     To avoid service interruption during rekeying phases.

..     **Use Case:** 

..     In-vehicle secure communication.

..     **Supporting Material:**

..     IETF RFC 7296 [8], IETF RFC 4478 [11]

.. .. req:: IKEv2 shall gracefully delete all SAs on shutdown and rebuild the deleted SAs immediately after the next startup
..     :id: RS_IPSEC_00012
..     :tags: autosar, autosar_ipsec
..     :status: open
..     :depends: RS_IPSEC_00004
..     :satisfies: RS_Main_00280, RS_Main_00510

..     **Description:**

..     IKEv2 shall gracefully delete all SAs on shutdown according to IETF RFC 7296 section 1.4.1 and rebuild the deleted SAs immediately after the next startup.

..     **Rationale:**

..     To keep the stateless properties of IPsec while minimizing service interruptions.

..     **Use Case:** 

..     In-vehicle secure communication.

..     **Supporting Material:**

..     IETF RFC 7296 [8]

.. req:: IKEv2 shall support dead peer detection
    :id: RS_IPSEC_00013
    :tags: autosar, autosar_ipsec
    :status: open
    :depends: RS_IPSEC_00004
    :satisfies: RS_Main_00280, RS_Main_00510

    **Description:**

    IKEv2 shall use dead peer detection according to IETF RFC 7296 section 2.4. IETF RFC 3706 may be supported.

    **Rationale:**

    Bandwidth management, to avoid sending data to dead peers.

    **Use Case:** 

    In-vehicle secure communication.

    **Supporting Material:**

    IETF RFC 7296 [8], IETF RFC 3706 [12]

.. req:: IKEv2 shall support authentication based on X.509v3 certificates with digital signatures
    :id: RS_IPSEC_00014
    :tags: autosar, autosar_ipsec
    :status: open
    :depends: RS_IPSEC_00004
    :satisfies: RS_Main_00280, RS_Main_00510, RS_Main_00514

    **Description:**

    IKEv2 shall support authentication based on X.509v3 certificates with digital signatures according to IETF RFC 7427.

    **Rationale:** Support industry security standard

    **Use Case:** In-vehicle secure communication

    **Supporting Material:**

    IETF RFC 7427 [13]


.. req:: IPsec shall support the following authentication algorithm: AES Galois Message Authentication Code with 256 bit keys
    :id: RS_IPSEC_00015
    :tags: autosar, autosar_ipsec
    :status: open
    :depends: RS_IPSEC_00002, RS_IPSEC_00003, RS_IPSEC_00004
    :use_case: In-vehicle secure communication
    :satisfies: RS_Main_00280, RS_Main_00510, RS_Main_00514

    **Description:**

    IPsec shall support the following authentication algorithm: AES Galois Message Authentication Code (AUTH_AES_256_GMAC) with 256 bit keys according to IETF RFC 4543.

    **Rationale:** Support industry security standard

    **Use Case:** In-vehicle secure communication

    **Supporting Material:**

    IETF RFC 4543 [14]

.. req:: IPsec shall support the following authentication algorithm: AES Cipher-based Message Authentication Code with 128 bit keys
    :id: RS_IPSEC_00016
    :tags: autosar, autosar_ipsec
    :status: open
    :depends: RS_IPSEC_00002, RS_IPSEC_00003, RS_IPSEC_00004
    :use_case: In-vehicle secure communication
    :satisfies: RS_Main_00280, RS_Main_00510, RS_Main_00514

    **Description:**

    IPsec shall support the following authentication algorithm: AES Cipher-based Message Authentication Code (AUTH_AES_CMAC_96) with 128 bit keys according to IETF RFC 4494.

    **Rationale:** Support industry security standard

    **Use Case:** In-vehicle secure communication

    **Supporting Material:**

    IETF RFC 4494 [15]

.. req:: IPsec shall support the following encryption algorithm: AES Galois/Counter Mode with 256 bit keys and an integrity check value (ICV) of 16 octets
    :id: RS_IPSEC_00017
    :tags: autosar, autosar_ipsec
    :status: draft
    :depends: RS_IPSEC_00003, RS_IPSEC_00004
    :use_case: In-vehicle secure communication
    :satisfies: RS_Main_00280, RS_Main_00510, RS_Main_00514

    **Description:**

    IPsec shall support the following encryption algorithm: AES Galois/Counter Mode (ENCR_AES_GCM_16) with 256 bit keys and an integrity check value (ICV) of 16 octets according to IETF RFC 4106.

    **Rationale:** Support industry security standard

    **Use Case:** In-vehicle secure communication

    **Supporting Material:**

    IETF RFC 4106 [16]

.. req:: IPsec shall support the following encryption algorithm: AES in Counter with CBC-Mac Mode with 256 bit keys and an integrity check value (ICV) of 16 octets
    :id: RS_IPSEC_00018
    :tags: autosar, autosar_ipsec
    :status: draft
    :depends: RS_IPSEC_00003, RS_IPSEC_00004
    :use_case: In-vehicle secure communication
    :satisfies: RS_Main_00280, RS_Main_00510, RS_Main_00514

    **Description:**

    IPsec shall support the following encryption algorithm: AES in Counter with CBC-Mac Mode (ENCR_AES_CCM_16) with 256 bit keys and an integrity check value (ICV) of 16 octets according to IETF RFC 4309.

    **Rationale:** Support industry security standard

    **Use Case:** In-vehicle secure communication

    **Supporting Material:**

    IETF RFC 4309 [17]

.. req:: IPsec and IKEv2 shall support the following cryptographic suite: Suite-B-GMAC-256. If NULL encryption is used, authentication shall be provided by AH instead of ESP
    :id: RS_IPSEC_00019
    :tags: autosar, autosar_ipsec
    :status: open
    :depends: RS_IPSEC_00003, RS_IPSEC_00004
    :use_case: In-vehicle secure communication
    :satisfies: RS_Main_00280, RS_Main_00510, RS_Main_00514

    **Description:**

    IPsec and IKEv2 shall support the following cryptographic suite: Suite-B-GMAC-256 according to IETF RFC 6379 section 3.4. If NULL encryption is used, authentication shall be provided by AH instead of ESP.

    **Rationale:** Support industry security standard

    **Use Case:** In-vehicle secure communication

    **Supporting Material:**

    IETF RFC 6379 [18]


.. req:: IPsec and IKEv2 shall support the following cryptographic suite: Suite-B-GMAC-128. If NULL encryption is used, authentication shall be provided by AH instead of ESP
    :id: RS_IPSEC_00020
    :tags: autosar, autosar_ipsec
    :status: open
    :depends: RS_IPSEC_00003, RS_IPSEC_00004
    :use_case: In-vehicle secure communication
    :satisfies: RS_Main_00280, RS_Main_00510, RS_Main_00514

    **Description:**

    IPsec and IKEv2 shall support the following cryptographic suite: Suite-B-GMAC-128 according to IETF RFC 6379 section 3.3. If NULL encryption is used, authentication shall be provided by AH instead of ESP.

    **Rationale:** Support industry security standard

    **Use Case:** In-vehicle secure communication

    **Supporting Material:**

    IETF RFC 6379 [18]


.. req:: All algorithms which are classified as "MUST" in IETF RFC 8247 shall be supported by IKEv2
    :id: RS_IPSEC_00021
    :tags: autosar, autosar_ipsec
    :status: draft
    :depends: RS_IPSEC_00004
    :use_case: In-vehicle secure communication
    :satisfies: RS_Main_00280, RS_Main_00510, RS_Main_00514

    **Description:**

    All algorithms which are classified as "MUST" in IETF RFC 8247 shall be supported by IKEv2. Algorithms classified as "MUST-" or lower may be supported.

    **Rationale:** Support industry security standard

    **Use Case:** In-vehicle secure communication

    **Supporting Material:**

    IETF RFC 8247 [19]

.. req:: IPsec’s Security Policy Database (SPD) shall be configurable for IPs, IP ranges, protocols, ports and port ranges
    :id: RS_IPSEC_00022
    :tags: autosar, autosar_ipsec
    :status: open
    :depends: RS_IPSEC_00001
    :use_case: In-vehicle secure communication
    :satisfies: RS_Main_00280, RS_Main_00510

    **Description:**

    IPsec’s Security Policy Database (SPD) shall be configurable for IPs, IP ranges, protocols, ports and port ranges according to IETF RFC 4301 section 4.4.1.1.

    **Rationale:** Support industry security standard

    **Use Case:** In-vehicle secure communication

    **Supporting Material:**

    IETF RFC 4301 [5]



.. req:: IPsec’s Security Policy Database (SPD) default behavior shall be BYPASS
    :id: RS_IPSEC_00023
    :tags: autosar, autosar_ipsec
    :status: open
    :depends: RS_IPSEC_00001
    :satisfies: RS_Main_00280, RS_Main_00510

    **Description:**

    IPsec’s Security Policy Database (SPD) default behavior shall be BYPASS, that is not to use IPsec. That means, for any TCP/IP endpoints, for which no configuration can be found in the SPD, the traffic shall pass through without IPsec protections.

    **Rationale:** Support industry security standard

    **Use Case:** In-vehicle secure communication

    **Supporting Material:**



.. req:: IPsec shall not be used to protect the following ports: 500/UDP and 4500/UDP: used by IKEv2
    :id: RS_IPSEC_00024
    :tags: autosar, autosar_ipsec
    :status: open
    :depends: RS_IPSEC_00001
    :use_case: In-vehicle secure communication
    :satisfies: RS_Main_00280, RS_Main_00510

    **Description:**
    IPsec shall not be used to protect the following ports: 500/UDP and 4500/UDP: used by IKEv2.

    **Rationale:** Support industry security standard

    **Use Case:** In-vehicle secure communication


.. req:: IPsec’s Peer Authorization Database (PAD) shall be configurable for use with X.509v3
    :id: RS_IPSEC_00025
    :tags: autosar, autosar_ipsec
    :status: open
    :depends: RS_IPSEC_00001, RS_IPSEC_00004
    :use_case: In-vehicle secure communication
    :satisfies: RS_Main_00280, RS_Main_00510

    **Description:**

    IPsec’s Peer Authorization Database (PAD) shall be configurable for use with X.509v3 certificates according to IETF RFC 4301 section 4.4.3.

    **Rationale:** Support industry security standard

    **Use Case:** In-vehicle secure communication

    **Supporting Material:**

    IETF RFC 4301 [5]

.. req:: IPsec’s Peer Authorization Database (PAD) shall be configurable for use with pre-shared keys (PSK)
    :id: RS_IPSEC_00026
    :tags: autosar, autosar_ipsec
    :status: open
    :depends: RS_IPSEC_00004
    :use_case: In-vehicle secure communication
    :satisfies: RS_Main_00280, RS_Main_00510

    **Description:**

    IPsec’s Peer Authorization Database (PAD) shall be configurable for use with pre-shared keys (PSK).

    **Rationale:** Support industry security standard

    **Use Case:** In-vehicle secure communication

    **Supporting Material:**


.. req:: It shall be possible to define the priority order of the algorithms used by IKEv2 during the IKE_INIT negotiations
    :id: RS_IPSEC_00027
    :tags: autosar, autosar_ipsec
    :status: open
    :depends: RS_IPSEC_00004
    :use_case: In-vehicle secure communication
    :satisfies: RS_Main_00280, RS_Main_00510

    **Description:**

    IKEv2 will be used to negotiate which algorithms are used during the IKEv2 INIT phase. It shall be possible, but not required, to set a priority ordering of the algorithms which can be used.

    **Rationale:** Support industry security standard

    **Use Case:** In-vehicle secure communication

    **Supporting Material:**


All IPsec related autosar requirements
--------------------------------------


.. needflow:: AUTOSAR IPsec
  :tags: autosar_ipsec
  :show_link_names: