<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="CPU_CTRL_XMC1" URI="http://resources/4.0.2/app/CPU_CTRL_XMC1/0" description="Defines the number of bits assigned to preemption priority." version="4.0.2" minDaveVersion="4.0.0" instanceLabel="CPU_CTRL_XMC1_0" appLabel="">
  <properties singleton="true" provideInit="true" sharable="true"/>
  <hwResources name="system_control" URI="http://resources/4.0.2/app/CPU_CTRL_XMC1/0/hwres_cpu" resourceGroupUri="peripheral/cpu/0/system_control" mResGrpUri="peripheral/cpu/0/system_control">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/CPU/CPU_0.dd#//@provided.0"/>
  </hwResources>
</ResourceModel:App>
