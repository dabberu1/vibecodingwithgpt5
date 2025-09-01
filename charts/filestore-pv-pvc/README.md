# Filestore PV/PVC Helm Chart

This chart provisions a PersistentVolume and matching PersistentVolumeClaim backed by a Google Cloud Filestore instance.

## Values

| Key | Description | Default |
|-----|-------------|---------|
| `storage.size` | Requested storage size for the PV/PVC | `1Ti` |
| `storage.storageClassName` | StorageClass to associate with the PV/PVC | `standard-rwx` |
| `storage.reclaimPolicy` | Reclaim policy for the PV | `Retain` |
| `nfs.server` | IP address of the Filestore instance | `10.0.0.2` |
| `nfs.path` | Export path on the Filestore instance | `/volumes/myshare` |
| `pvc.name` | Name of the PersistentVolumeClaim | `filestore-data` |
| `pv.name` | Name of the PersistentVolume | `filestore-pv` |

## Usage

```
helm install filestore charts/filestore-pv-pvc \
  --set nfs.server="<FILESTORE_IP>" \
  --set nfs.path="<FILESTORE_PATH>"
```
