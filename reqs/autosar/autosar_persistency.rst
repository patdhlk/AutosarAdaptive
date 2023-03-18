=====================================
AUTOSAR Requirements on Persistency
=====================================


.. note:: Original document is available here: https://www.autosar.org/fileadmin/standards/adaptive/22-11/AUTOSAR_RS_Persistency.pdf


.. req:: The layout of persistent data shall be configurable
    :id: RS_PER_00010
    :tags: autosar, autosar_persistency
    :status: draft
    :satisfies: RS_Main_00440

    **Description:**
    Persistency shall support configuration of provided key-value storage and file storage.

    **Rationale:**
    Generation of interfaces

    **Use Case:** 
    An Adaptive Application or a functional cluster needs access to persistent data and expects a dedicated interface for each set of data.

    **Supporting Material:**


.. req:: Persistency shall support storage of persistent data
    :id: RS_PER_00001
    :tags: autosar, autosar_persistency
    :status: open
    :depends: -
    :satisfies: RS_Main_00440

    **Description:**

    Persistency shall support persistent storage of data of an Adaptive Application. In case of direct storage to flash memory or other storage hardware that has a limited number of write cycles, the implementation of Persistency shall take care of wear leveling.

    **Rationale:** Applications need to preserve data from one run-time to the next.

    **Use Case:** Applications have data like settings, diagnostic data, calibration data, or error logs that they want to store on a file system or in a database.

    **Supporting Material:**


.. req:: Persistency shall support to retrieve data that has been persistently stored on a platform instance
    :id: RS_PER_00002
    :tags: autosar, autosar_persistency
    :status: open
    :depends: -
    :satisfies: RS_Main_00440

    **Description:**

    Persistency shall provide the functionality to load data which is persistently stored.

    **Rationale:** Load of persistently stored data

    **Use Case:** An Adaptive Application or functional cluster which stores persistent data needs to restore it after a restart of the Adaptive Application or the platform.

    **Supporting Material:**


.. req:: Persistency shall support identification of data using a unique identifier
    :id: RS_PER_00003
    :tags: autosar, autosar_persistency
    :status: open
    :depends: -
    :satisfies: RS_Main_00440

    **Description:**

    Data shall be stored in way that it can be accessed from an Adaptive Application or a functional cluster by using a unique identifier e.g. identify a value by a key.

    **Rationale:** Load of persistently stored data

    **Use Case:** Storage of a variety of different data objects that can be accessed individually for loading.

    **Supporting Material:**


.. req:: Persistency shall support access to file-like structures
    :id: RS_PER_00004
    :tags: autosar, autosar_persistency
    :status: open
    :depends: -
    :satisfies: RS_Main_00440

    **Description:**

    Persistency shall provide a standardized way to access file-like structures. Adaptive Applications and the other functional clusters shall be able to read and write data from file-like structures, and read associated meta data (e.g. access time). Persistent data can be represented in multiple ways, e.g. human-readable format or binary. Every format of data needs to be accessible by Persistency.

    **Rationale:** Persistency shall emulate the basic features of a file system, because PSE51 does not contain file system support.

    **Dependencies:** -

    **Use Case:** Store information that is not structured as key-value pairs.

    **Supporting Material:**


.. req:: Persistency shall support encryption/decryption of persistent data
    :id: RS_PER_00005
    :tags: autosar, autosar_persistency
    :status: open
    :depends: -
    :satisfies: RS_Main_00514

    **Description:**

    Persistency shall provide a standardized way to encrypt/decrypt persistent data.

    **Rationale:** Support of data encryption

    **Use Case:** Storage of persistent data that shall be encrypted for security reasons.

    **Supporting Material:**


.. req:: Persistency shall support detection of data corruption in persistent memory
    :id: RS_PER_00008
    :tags: autosar, autosar_persistency
    :status: open
    :depends: -
    :satisfies: RS_Main_00011, RS_SAF_10039

    **Description:**

    Persistency shall support detection of data corruption in persistently stored data. The corruption may be caused by systematic or random failures. To be able to detect corrupted data, some redundancy is needed, which can be anything from a checksum to a full copy. The actual mechanisms and the granularity of redundancy are subject to configuration.

    **Rationale:** Applications need to be sure to read valid data.

    **Use Case:** Notification to an Adaptive Application or functional cluster in case of corrupted data in persistent memory, which is essential for safety use cases. The detection of data corruption is also necessary to support data recovery mechanisms.

    **Supporting Material:**

.. req:: Persistency shall support data recovery mechanisms if persistent data was corrupted
    :id: RS_PER_00009
    :tags: autosar, autosar_persistency
    :status: open
    :depends: -
    :satisfies: RS_Main_00011, RS_SAF_10040

    **Description:**

    Persistency shall support a recovery mechanism if corruption of persistently stored data was detected. To be able to recover corrupted data, a redundant copy of the data is needed. The actual mechanisms and the granularity of redundancy are subject to configuration. Persistency shall also support a notification of the application in case recovery took place.

    **Rationale:** Applications want to recover corrupted data.

    **Use Case:** If corruption of persistent data was detected it shall be possible to recover corrupted data.

    **Supporting Material:**



.. req:: Persistency shall support installation of persistent data
    :id: RS_PER_00012
    :tags: autosar, autosar_persistency
    :status: open
    :depends: -
    :satisfies: RS_Main_00150, RS_Main_00503

    **Description**:

    Persistency shall allow for installation of pre-configured values in key-value storages and pre-configured files in a file storage. The pre-configured data is provided by the manifest.

    **Rationale**: It shall be possible to install an application with a preset.

    **Use Case**: Providing initial or fixed content for key-value storages and file storages.

    **Supporting Material**:

.. req:: Persistency shall support update of persistent data
    :id: RS_PER_00013
    :tags: autosar, autosar_persistency
    :status: open
    :depends: -
    :satisfies: RS_Main_00150, RS_Main_00503

    **Description:**

    Persistency shall allow for an update of values in key-value storages and of files in a file storage. The update strategy and updated data is provided by the manifest.

    **Rationale**: It shall be possible to update an application and set a new preset.

    **Use Case:** Providing updated content for key-value storages and file storages.

    **Supporting Material:**


.. req:: Persistency shall support roll-back of persistent data
    :id: RS_PER_00014
    :tags: autosar, autosar_persistency
    :status: open
    :depends: -
    :satisfies: RS_Main_00150, RS_Main_00503

    **Description:**

    Persistency shall allow for a roll-back of values in key-value storages and files in a file storage to the state before an update.

    **Rationale:** It shall be possible to roll back an application and return persisted data to its previous state.

    **Use Case:** Reverting the content of key-value storages and file storages.

    **Supporting Material:**

.. req:: Persistency shall support finalization of an update of persistent data
    :id: RS_PER_00016
    :tags: autosar, autosar_persistency
    :status: open
    :depends: -
    :satisfies: RS_Main_00150, RS_Main_00503

    **Description:**

    Persistency shall allow for a finalization of an update of values in key-value storages and files in a file storage.

    **Rationale:** It shall be possible to finalize an update of an application and its persisted data.

    **Use Case:** Finalizing the update of key-value storages and file storages.

    **Supporting Material:**


.. req:: Persistency shall be able to ensure and limit the amount of storage used by persisted data
    :id: RS_PER_00011
    :tags: autosar, autosar_persistency
    :status: open
    :depends: -
    :satisfies: RS_Main_00011

    **Description:**

    Persistency shall support monitoring of the storage space allocated by persistently stored data. It shall ensure that a configurable amount of storage space is always available for stored data, and that the stored data never surpasses a configurable limit.

    **Rationale:** Avoid situations where applications cannot run reliably because they cannot access the required amount of storage, or because another application uses too much storage.

    **Use Case:** Ensuring reliability of the access to the persistently stored data of a single process, and ensuring overall reliability of applications regarding access to persistently stored data.

    **Supporting Material:**


.. req:: Persistency shall be able to report the amount of currently used storage
    :id: RS_PER_00017
    :tags: autosar, autosar_persistency
    :status: open
    :depends: -
    :satisfies: RS_Main_00440

    **Description:**

    Persistency shall support querying the amount of storage currently allocated by persisted data.

    **Rationale:** It shall be possible to acquire information about persistent storage.

    **Use Case:** Polling of the current size of persisted data using a diagnostic service.

    **Supporting Material:**


All Persistency related autosar requirements
-------------------------------------------------


.. needflow:: AUTOSAR Persistency
  :tags: autosar_persistency
  :show_link_names:
