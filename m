Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CFBFB129884
	for <lists+usrp-users@lfdr.de>; Mon, 23 Dec 2019 16:51:29 +0100 (CET)
Received: from [::1] (port=43398 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ijPzP-0007Dg-Mm; Mon, 23 Dec 2019 10:51:23 -0500
Received: from smtp.eurecom.fr ([193.55.113.210]:56627)
 by mm2.emwd.com with esmtp (Exim 4.92)
 (envelope-from <florian.kaltenberger@eurecom.fr>) id 1ijPzL-00078K-R7
 for usrp-users@lists.ettus.com; Mon, 23 Dec 2019 10:51:20 -0500
X-IronPort-AV: E=Sophos;i="5.69,348,1571695200"; 
 d="vcf'?scan'208,217";a="11658189"
Received: from monza.eurecom.fr ([192.168.106.15])
 by drago1i.eurecom.fr with ESMTP; 23 Dec 2019 16:50:38 +0100
Received: from [192.168.200.60] (unknown [192.168.200.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by monza.eurecom.fr (Postfix) with ESMTPSA id 3440037DA
 for <usrp-users@lists.ettus.com>; Mon, 23 Dec 2019 16:50:38 +0100 (CET)
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <e44a32d6-8d73-b567-eda2-ce00144c592a@eurecom.fr>
Date: Mon, 23 Dec 2019 16:50:37 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------84779D3A19D0F9EE6A197B86"
Content-Language: en-US
Subject: [USRP-users] DPDK runtime error
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Florian Kaltenberger via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Florian Kaltenberger <florian.kaltenberger@eurecom.fr>
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

This is a multi-part message in MIME format.
--------------84779D3A19D0F9EE6A197B86
Content-Type: multipart/alternative;
 boundary="------------5412DD0E41478A6B07650AA8"


--------------5412DD0E41478A6B07650AA8
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Dear all,

we have finally managed to set up UHD (3.15) with DPDK (18.11) support 
on our RedHat 7 system (both installed from source) with our N310. I 
have configured the system as explained here 
http://files.ettus.com/manual/page_dpdk.html but when calling

uhd_usrp_probe --args 
"use_dpdk=1,mgmt_addr=192.168.12.1,addr=192.168.10.2,second_addr=192.168.20.2,master_clock_rate=122.88e6,type=n3xx"

I am getting the following runtime error (all the way at the bottom):

[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39); 
Boost_106900; UHD_3.15.0.0-0-g4e06022c
EAL: Detected 10 lcore(s)
EAL: No free hugepages reported in hugepages-1048576kB
EAL: Probing VFIO support...
EAL: VFIO support initialized
EAL: PCI device 0000:00:19.0 on NUMA socket 0
EAL:   probe driver: 8086:153a net_e1000_em
EAL: PCI device 0000:01:00.0 on NUMA socket 0
EAL:   probe driver: 8086:1572 net_i40e
EAL: PCI device 0000:01:00.1 on NUMA socket 0
EAL:   probe driver: 8086:1572 net_i40e
EAL:   using IOMMU type 1 (Type 1)
PMD: Global register is changed during enable FDIR flexible payload
PMD: Global register is changed during support QinQ parser
PMD: Global register is changed during configure hash input set
PMD: Global register is changed during configure fdir mask
PMD: Global register is changed during configure hash mask
PMD: Global register is changed during support QinQ cloud filter
PMD: Global register is changed during support TPID configuration
EAL: PCI device 0000:01:00.2 on NUMA socket 0
EAL:   probe driver: 8086:1572 net_i40e
EAL: PCI device 0000:01:00.3 on NUMA socket 0
EAL:   probe driver: 8086:1572 net_i40e
PMD: Global register is changed during enable FDIR flexible payload
PMD: Global register is changed during support QinQ parser
PMD: Global register is changed during configure hash input set
PMD: Global register is changed during configure fdir mask
PMD: Global register is changed during configure hash mask
PMD: Global register is changed during support QinQ cloud filter
PMD: Global register is changed during support TPID configuration
EAL: Waiting for links to come up...
EAL: Init DONE!
EAL: Starting I/O threads!
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
mgmt_addr=192.168.12.1,type=n3xx,product=n310,serial=31641BC,claimed=False,use_dpdk=1,addr=192.168.10.2,second_addr=192.168.20.2,master_clock_rate=122.88e6
[INFO] [MPM.PeriphManager] init() called with device args 
`mgmt_addr=192.168.12.1,product=n310,master_clock_rate=122.88e6,second_addr=192.168.20.2,use_dpdk=1,clock_source=internal,time_source=internal'.
EAL: Please set IPv4 address for port 0 before opening socket
[ERROR] [MPMD] Failure during block enumeration: AssertionError: 
_rx_sock != nullptr
   in uhd::transport::dpdk_zero_copy_impl::dpdk_zero_copy_impl(const 
uhd::transport::uhd_dpdk_ctx&, unsigned int, const string&, const 
string&, const string&, const uhd::transport::zero_copy_xport_params&)

I am also copying the output of "dpdk-devbind  --status" which shows 
that the two interfaces connected to the USRP use the vfio-pci driver 
for DPDK

Network devices using DPDK-compatible driver
============================================
0000:01:00.1 'Ethernet Controller X710 for 10GbE SFP+ 1572' drv=vfio-pci 
unused=i40e
0000:01:00.3 'Ethernet Controller X710 for 10GbE SFP+ 1572' drv=vfio-pci 
unused=i40e

Network devices using kernel driver
===================================
0000:00:19.0 'Ethernet Connection I217-LM 153a' if=enp0s25 drv=e1000e 
unused=vfio-pci *Active*
0000:01:00.0 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=p1p1 
drv=i40e unused=vfio-pci
0000:01:00.2 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=p1p3 
drv=i40e unused=vfio-pci

What surprises me is that in the output of the uhd_usrp_probe, it does 
not say it is using the driver for DPDK. any ideas what could be wrong?

Florian.

-- 
Follow us on Google+ <https://plus.google.com/+OpenairinterfaceOrg>, 
LinkedIn <https://www.linkedin.com/company/openairinterface>, or Twitter 
<https://twitter.com/osalliance5g>!

--------------5412DD0E41478A6B07650AA8
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Dear all,</p>
    <p>we have finally managed to set up UHD (3.15) with DPDK (18.11)
      support on our RedHat 7 system (both installed from source) with
      our N310. I have configured the system as explained here <a
        href="http://files.ettus.com/manual/page_dpdk.html">http://files.ettus.com/manual/page_dpdk.html</a>
      but when calling <br>
    </p>
    <p>uhd_usrp_probe --args
"use_dpdk=1,mgmt_addr=192.168.12.1,addr=192.168.10.2,second_addr=192.168.20.2,master_clock_rate=122.88e6,type=n3xx"<br>
    </p>
    <p>I am getting the following runtime error (all the way at the
      bottom):</p>
    [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat
    4.8.5-39); Boost_106900; UHD_3.15.0.0-0-g4e06022c<br>
    EAL: Detected 10 lcore(s)<br>
    EAL: No free hugepages reported in hugepages-1048576kB<br>
    EAL: Probing VFIO support...<br>
    EAL: VFIO support initialized<br>
    EAL: PCI device 0000:00:19.0 on NUMA socket 0<br>
    EAL:   probe driver: 8086:153a net_e1000_em<br>
    EAL: PCI device 0000:01:00.0 on NUMA socket 0<br>
    EAL:   probe driver: 8086:1572 net_i40e<br>
    EAL: PCI device 0000:01:00.1 on NUMA socket 0<br>
    EAL:   probe driver: 8086:1572 net_i40e<br>
    EAL:   using IOMMU type 1 (Type 1)<br>
    PMD: Global register is changed during enable FDIR flexible payload<br>
    PMD: Global register is changed during support QinQ parser<br>
    PMD: Global register is changed during configure hash input set<br>
    PMD: Global register is changed during configure fdir mask<br>
    PMD: Global register is changed during configure hash mask<br>
    PMD: Global register is changed during support QinQ cloud filter<br>
    PMD: Global register is changed during support TPID configuration<br>
    EAL: PCI device 0000:01:00.2 on NUMA socket 0<br>
    EAL:   probe driver: 8086:1572 net_i40e<br>
    EAL: PCI device 0000:01:00.3 on NUMA socket 0<br>
    EAL:   probe driver: 8086:1572 net_i40e<br>
    PMD: Global register is changed during enable FDIR flexible payload<br>
    PMD: Global register is changed during support QinQ parser<br>
    PMD: Global register is changed during configure hash input set<br>
    PMD: Global register is changed during configure fdir mask<br>
    PMD: Global register is changed during configure hash mask<br>
    PMD: Global register is changed during support QinQ cloud filter<br>
    PMD: Global register is changed during support TPID configuration<br>
    EAL: Waiting for links to come up...<br>
    EAL: Init DONE!<br>
    EAL: Starting I/O threads!<br>
    [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=192.168.12.1,type=n3xx,product=n310,serial=31641BC,claimed=False,use_dpdk=1,addr=192.168.10.2,second_addr=192.168.20.2,master_clock_rate=122.88e6<br>
    [INFO] [MPM.PeriphManager] init() called with device args
`mgmt_addr=192.168.12.1,product=n310,master_clock_rate=122.88e6,second_addr=192.168.20.2,use_dpdk=1,clock_source=internal,time_source=internal'.<br>
    <font color="#ff0000">EAL: Please set IPv4 address for port 0 before
      opening socket<br>
      [ERROR] [MPMD] Failure during block enumeration: AssertionError:
      _rx_sock != nullptr<br>
        in
      uhd::transport::dpdk_zero_copy_impl::dpdk_zero_copy_impl(const
      uhd::transport::uhd_dpdk_ctx&amp;, unsigned int, const
      string&amp;, const string&amp;, const string&amp;, const
      uhd::transport::zero_copy_xport_params&amp;)</font><br>
    <p>I am also copying the output of "dpdk-devbind  --status" which
      shows that the two interfaces connected to the USRP use the
      vfio-pci driver for DPDK<br>
    </p>
    <p>Network devices using DPDK-compatible driver<br>
      ============================================<br>
      0000:01:00.1 'Ethernet Controller X710 for 10GbE SFP+ 1572'
      drv=vfio-pci unused=i40e<br>
      0000:01:00.3 'Ethernet Controller X710 for 10GbE SFP+ 1572'
      drv=vfio-pci unused=i40e<br>
      <br>
      Network devices using kernel driver<br>
      ===================================<br>
      0000:00:19.0 'Ethernet Connection I217-LM 153a' if=enp0s25
      drv=e1000e unused=vfio-pci *Active*<br>
      0000:01:00.0 'Ethernet Controller X710 for 10GbE SFP+ 1572'
      if=p1p1 drv=i40e unused=vfio-pci <br>
      0000:01:00.2 'Ethernet Controller X710 for 10GbE SFP+ 1572'
      if=p1p3 drv=i40e unused=vfio-pci <br>
      <br>
    </p>
    <p>What surprises me is that in the output of the uhd_usrp_probe, it
      does not say it is using the driver for DPDK. any ideas what could
      be wrong?</p>
    <p>Florian.<br>
    </p>
    <div class="moz-signature">-- <br>
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <title></title>
      Follow us on <a
        href="https://plus.google.com/+OpenairinterfaceOrg">Google+</a>,
      <a href="https://www.linkedin.com/company/openairinterface">LinkedIn</a>,
      or <a href="https://twitter.com/osalliance5g">Twitter</a>!<br>
    </div>
  </body>
</html>

--------------5412DD0E41478A6B07650AA8--

--------------84779D3A19D0F9EE6A197B86
Content-Type: text/x-vcard; charset=utf-8;
 name="florian_kaltenberger.vcf"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="florian_kaltenberger.vcf"

begin:vcard
fn:Florian Kaltenberger
n:Kaltenberger;Florian
org:EURECOM;Mobile Communications
adr;dom:450 route des chappes;;Campus SophiaTech;Biot;;06410
email;internet:florian.kaltenberger@eurecom.fr
title:Assitant Professor
tel;work:+33 4 9300 8186
version:2.1
end:vcard


--------------84779D3A19D0F9EE6A197B86
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------84779D3A19D0F9EE6A197B86--

