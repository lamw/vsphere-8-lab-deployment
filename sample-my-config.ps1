# vCenter Server used to deploy vSphere & vSAN 8 Lab
$VIServer = "192.168.30.3"
$VIUsername = "administrator@vsphere.local"
$VIPassword = "VMware1!"

# Full Path to the Nested ESXi 8.0 VA & Extracted VCSA 8.0 ISO
$NestedESXiApplianceOVA = "/Volumes/Storage/Software/Nested_ESXi8.0u3c_Appliance_Template_v1.ova"
$VCSAInstallerPath = "/Volumes/Storage/Software/VMware-VCSA-all-8.0.3-24022515"

# Nested ESXi VMs to deploy
$NestedESXiHostnameToIPs = @{
    "esxi-1" = "192.168.30.181"
    "esxi-2" = "192.168.30.182"
    "esxi-3" = "192.168.30.183"
}

# Nested ESXi VM Resources
$NestedESXivCPU = "4"
$NestedESXivMEM = "10" #GB
$NestedESXiCachingvDisk = "8" #GB
$NestedESXiCapacityvDisk = "40" #GB

# VCSA Deployment Configuration
$VCSADeploymentSize = "tiny"
$VCSADisplayName = "vcsa-1"
$VCSAIPAddress = "192.168.30.180"
$VCSAHostname = "192.168.30.180" #Change to IP if you don't have valid DNS
$VCSAPrefix = "24"
$VCSASSODomainName = "vsphere.local"
$VCSASSOPassword = "VMware1!"
$VCSARootPassword = "VMware1!"
$VCSASSHEnable = "true"

# General Deployment Configuration for Nested ESX & VCSA VM
$VMDatacenter = "Primp-Datacenter"
$VMCluster = "Supermicro-Cluster"
$VMNetwork = "VM Network"
$VMDatastore = "sm-vsanDatastore"
$VMNetmask = "255.255.255.0"
$VMGateway = "192.168.30.1"
$VMDNS = "192.168.30.2"
$VMNTP = "45.87.78.35"
$VMPassword = "VMware1!"
$VMDomain = "primp-industries.local"
$VMSyslog = "172.17.33.3"
$VMFolder = "Workloads"
# Applicable to Nested ESXi only
$VMSSH = "true"
$VMVMFS = "false"

# Name of new vSphere Datacenter/Cluster when VCSA is deployed
$NewVCDatacenterName = "Datacenter"
$NewVCVSANClusterName = "Cluster"
$NewVCVDSName = "VDS"
$NewVCMgmtPortgroupName = "DVPG-Management-Network"

# Advanced Configurations
# Set to 1 only if you have DNS (forward/reverse) for ESXi hostnames
$addHostByDnsName = 0