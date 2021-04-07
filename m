Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A18356C0B
	for <lists+usrp-users@lfdr.de>; Wed,  7 Apr 2021 14:27:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 104EB383BB5
	for <lists+usrp-users@lfdr.de>; Wed,  7 Apr 2021 08:27:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=campus.tu-berlin.de header.i=@campus.tu-berlin.de header.b="EtQP+mZA";
	dkim-atps=neutral
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
	by mm2.emwd.com (Postfix) with ESMTPS id D5C43383B01
	for <usrp-users@lists.ettus.com>; Wed,  7 Apr 2021 08:27:09 -0400 (EDT)
Received: from SPMA-03.tubit.win.tu-berlin.de (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id C421E6E644_6DA51BB;
	Wed,  7 Apr 2021 12:27:07 +0000 (GMT)
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "exchange.tu-berlin.de", Issuer "DFN-Verein Global Issuing CA" (verified OK))
	by SPMA-03.tubit.win.tu-berlin.de (Sophos Email Appliance) with ESMTPS id 9C88611BE76_6DA51AF;
	Wed,  7 Apr 2021 12:27:06 +0000 (GMT)
Received: from ex-03.tubit.win.tu-berlin.de (130.149.6.143) by
 ex-01.tubit.win.tu-berlin.de (130.149.6.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.858.5;
 Wed, 7 Apr 2021 14:27:06 +0200
Received: from ex-03.tubit.win.tu-berlin.de ([172.26.26.143]) by
 ex-03.tubit.win.tu-berlin.de ([172.26.26.143]) with mapi id 15.02.0858.002;
 Wed, 7 Apr 2021 14:27:06 +0200
From: "Chang, Kaixin" <k.chang@campus.tu-berlin.de>
To: Rob Kossler <rkossler@nd.edu>
Thread-Topic: [USRP-users] Re: dpdk, VFIO group is not viable
Thread-Index: AQHXK6lSVvgV1xBTIkGlr3C/Aq4nRg==
Date: Wed, 7 Apr 2021 12:27:06 +0000
Message-ID: <8550b35c12694d32abb8c3392b8e5d70@campus.tu-berlin.de>
References: <e642027b70c841ec87fde1edc61dcabb@campus.tu-berlin.de>,<CAB__hTTEeTcNJJWQidAU3zRftkyHQGS51i9jBvn1Hxg_Pzs8Ow@mail.gmail.com>,<f5701d0388b14765abfd4bdb7556fcc3@campus.tu-berlin.de>
In-Reply-To: <f5701d0388b14765abfd4bdb7556fcc3@campus.tu-berlin.de>
Accept-Language: en-GB, zh-CN, de-DE, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [193.174.67.20]
MIME-Version: 1.0
X-SASI-RCODE: 200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=campus.tu-berlin.de; h=from:to:cc:subject:date:message-id:references:in-reply-to:content-type:mime-version; s=dkim-tub; bh=cV14Z+NRADc7sQ4J60uDkis/rce7bxCuWyk7fuyBoOI=; b=EtQP+mZAldXPfrBuoke5uqxHfZHn4U4mNVKFKBXncVu1Qe/RHcFNP1n55gO7OQ8gXAorfSydhXlx+jH1zjfsFJJ9iQlW5r3F+IQ73icvpdY96MTFdT2aSEtDa+SLH22YM3CRCpqDszaC5eOUk2lz1DDW/FjoTxUXfNEvD3uTspc=
Message-ID-Hash: SY2F6ELREJOZRM6PSCGPFH2IHCR6TCWO
X-Message-ID-Hash: SY2F6ELREJOZRM6PSCGPFH2IHCR6TCWO
X-MailFrom: k.chang@campus.tu-berlin.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: dpdk, VFIO group is not viable
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SY2F6ELREJOZRM6PSCGPFH2IHCR6TCWO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5828110570664372348=="

--===============5828110570664372348==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_8550b35c12694d32abb8c3392b8e5d70campustuberlinde_"

--_000_8550b35c12694d32abb8c3392b8e5d70campustuberlinde_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

My problem is


EAL: PCI device 0000:0e:00.1 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 8086:10fb net_ixgbe
EAL:   0000:0e:00.1 VFIO group is not viable!
EAL: Requested device 0000:0e:00.1 cannot be used


I did some search and find that all devices within the iommu_group are boun=
d to their vfio bus driver. So I check the iommu_group by

find /sys/kernel/iommu_groups/ -type l

/sys/kernel/iommu_groups/15/devices/0000:0c:00.0
/sys/kernel/iommu_groups/15/devices/0000:0a:01.0
/sys/kernel/iommu_groups/15/devices/0000:09:00.0
/sys/kernel/iommu_groups/15/devices/0000:07:01.0
/sys/kernel/iommu_groups/15/devices/0000:0a:04.0
/sys/kernel/iommu_groups/15/devices/0000:0e:00.1
/sys/kernel/iommu_groups/15/devices/0000:07:04.0
/sys/kernel/iommu_groups/15/devices/0000:0b:00.0
/sys/kernel/iommu_groups/15/devices/0000:06:00.0
/sys/kernel/iommu_groups/15/devices/0000:04:01.0
/sys/kernel/iommu_groups/15/devices/0000:0d:01.0
/sys/kernel/iommu_groups/15/devices/0000:0d:04.0
/sys/kernel/iommu_groups/15/devices/0000:0e:00.0

only the 0000:0e:00.1 and 0000:03:00.0 are my 10G Ethernets and I have boun=
d them to vfio-pci by dpdk-devbind. The others  cannot be
bound at all.

Unknown device: ...... Please specify device in "bus:slot.func" format

Does anyone have idea how to handle this?

Sincerely

Kasim


________________________________
From: Chang, Kaixin <k.chang@campus.tu-berlin.de>
Sent: 06 April 2021 19:10:19
To: Rob Kossler
Cc: usrp-users@lists.ettus.com
Subject: [USRP-users] Re: dpdk, VFIO group is not viable


Thank you Rob for the advice, actually I have made symlink as in the thread=
 introduced, however I still got the error "not viable"...

________________________________
From: Rob Kossler <rkossler@nd.edu>
Sent: 06 April 2021 18:23:05
To: Chang, Kaixin
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] dpdk, VFIO group is not viable

Hi Kasim,
There are some previous posts to the user's list around Feb 2-3, 2021 regar=
ding some DPDK troubles I was having. In particular, Aaron Rossetto mention=
ed putting just a few symlinks in a new folder and using the dpdk_driver va=
riable from uhd.conf to point to this folder.  This may be helpful for your=
 case.
Rob

On Tue, Apr 6, 2021 at 9:37 AM Chang, Kaixin <k.chang@campus.tu-berlin.de<m=
ailto:k.chang@campus.tu-berlin.de>> wrote:

Dear Ettus team,


I followed the instruction of https://kb.ettus.com/Getting_Started_with_DPD=
K_and_UHD to enable dpdk for my X310, however I have an error when I execut=
e benchmark_rate as sudo su


[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-93-g3b=
9ced8f
EAL: Detected 4 lcore(s)
EAL: Detected 1 NUMA nodes
EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
EAL: No free hugepages reported in hugepages-1048576kB
EAL: Probing VFIO support...
EAL: VFIO support initialized
EAL: PCI device 0000:00:1f.6 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 8086:15d7 net_e1000_em
EAL: PCI device 0000:0e:00.0 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 8086:10fb net_ixgbe
EAL:   0000:0e:00.0 VFIO group is not viable!
EAL: Requested device 0000:0e:00.0 cannot be used
EAL: PCI device 0000:0e:00.1 on NUMA socket -1
EAL:   Invalid NUMA socket, default to 0
EAL:   probe driver: 8086:10fb net_ixgbe
EAL:   0000:0e:00.1 VFIO group is not viable!
EAL: Requested device 0000:0e:00.1 cannot be used
[ERROR] [DPDK] No available DPDK devices (ports) found!
[ERROR] [UHD] Device discovery error: RuntimeError: No available DPDK devic=
es (ports) found!
EAL: FATAL: already called initialization.
EAL: already called initialization.
[ERROR] [DPDK] Error with EAL initialization
[ERROR] [X300] X300 Network discovery error RuntimeError: Error with EAL in=
itialization
[00:00:00.000506] Creating the usrp device with: addr=3D192.168.30.2,second=
_addr=3D192.168.40.2,use_dpdk=3D1...
EAL: FATAL: already called initialization.
EAL: already called initialization.
[ERROR] [DPDK] Error with EAL initialization
[ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL initiali=
zation
EAL: FATAL: already called initialization.
EAL: already called initialization.
[ERROR] [DPDK] Error with EAL initialization
[ERROR] [X300] X300 Network discovery error RuntimeError: Error with EAL in=
itialization
Error: LookupError: KeyError: No devices found for ----->
Device Address:
    addr: 192.168.30.2
    second_addr: 192.168.40.2
    use_dpdk: 1

Why is 0000:0e:00.1 VFIO group is not viable!? I have checked dpdk-devbind =
--status-dev net and get

Network devices using DPDK-compatible driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
0000:0e:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb' drv=3Dvf=
io-pci unused=3Dixgbe
0000:0e:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb' drv=3Dvf=
io-pci unused=3Dixgbe

Network devices using kernel driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
0000:00:1f.6 'Ethernet Connection (4) I219-LM 15d7' if=3Denp0s31f6 drv=3De1=
000e unused=3Dvfio-pci
0000:02:00.0 'Wireless 8265 / 8275 24fd' if=3Dwlp2s0 drv=3Diwlwifi unused=
=3Dvfio-pci


which seems to be fine.


thank you for your help


sincerely


Kasim

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

--_000_8550b35c12694d32abb8c3392b8e5d70campustuberlinde_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>My problem is <br>
</p>
<p><br>
</p>
<div>EAL: PCI device 0000:0e:00.1 on NUMA socket -1<br>
EAL:&nbsp;&nbsp; Invalid NUMA socket, default to 0<br>
EAL:&nbsp;&nbsp; probe driver: 8086:10fb net_ixgbe<br>
EAL:&nbsp;&nbsp; 0000:0e:00.1 VFIO group is not viable!<br>
EAL: Requested device 0000:0e:00.1 cannot be used</div>
<p></p>
<p><br>
</p>
<p>I did some search and find that <strong>all devices within the iommu_gro=
up are bound to their vfio bus driver</strong>. So I check the iommu_group =
by
</p>
<div>
<pre class=3D"western" style=3D"text-align: left"><font style=3D"font-size:=
 10pt" size=3D"2">find /sys/kernel/iommu_groups/ -type l</font></pre>
</div>
<div>
<pre class=3D"western" style=3D"text-align: left"><font style=3D"font-size:=
 10pt" size=3D"2">/sys/kernel/iommu_groups/15/devices/0000:0c:00.0</font>=
=0A=
<font style=3D"font-size: 10pt" size=3D"2">/sys/kernel/iommu_groups/15/devi=
ces/0000:0a:01.0</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">/sys/kernel/iommu_groups/15/devi=
ces/0000:09:00.0</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">/sys/kernel/iommu_groups/15/devi=
ces/0000:07:01.0</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">/sys/kernel/iommu_groups/15/devi=
ces/0000:0a:04.0</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">/sys/kernel/iommu_groups/15/devi=
ces/0000:0e:00.1</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">/sys/kernel/iommu_groups/15/devi=
ces/0000:07:04.0</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">/sys/kernel/iommu_groups/15/devi=
ces/0000:0b:00.0</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">/sys/kernel/iommu_groups/15/devi=
ces/0000:06:00.0</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">/sys/kernel/iommu_groups/15/devi=
ces/0000:04:01.0</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">/sys/kernel/iommu_groups/15/devi=
ces/0000:0d:01.0</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">/sys/kernel/iommu_groups/15/devi=
ces/0000:0d:04.0</font>=0A=
<font style=3D"font-size: 10pt" size=3D"2">/sys/kernel/iommu_groups/15/devi=
ces/0000:0e:00.0</font></pre>
</div>
<pre class=3D"western" style=3D"text-align: left"><font style=3D"font-size:=
 10pt" size=3D"2">only the 0000:0e:00.1 and 0000:03:00.0 are my 10G Etherne=
ts and I have bound them to vfio-pci by dpdk-devbind. The others  cannot be=
 <br>bound at all.<br><br><span><span>Unknown device</span>: ...... Please =
specify device in &quot;bus:slot.func&quot; format</span><br><br>Does anyon=
e have idea how to handle this?<br><br>Sincerely<br><br>Kasim<br><br></font=
></pre>
<p></p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Chang, Kaixin &lt;k.c=
hang@campus.tu-berlin.de&gt;<br>
<b>Sent:</b> 06 April 2021 19:10:19<br>
<b>To:</b> Rob Kossler<br>
<b>Cc:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] Re: dpdk, VFIO group is not viable</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &q=
uot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &q=
uot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<p>Thank you Rob for the advice, actually I have made symlink as in the thr=
ead introduced, however I still got the error &quot;not viable&quot;...</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Rob Kossler &lt;rkoss=
ler@nd.edu&gt;<br>
<b>Sent:</b> 06 April 2021 18:23:05<br>
<b>To:</b> Chang, Kaixin<br>
<b>Cc:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] dpdk, VFIO group is not viable</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Kasim,
<div>There are some previous posts to the user's list around Feb 2-3, 2021 =
regarding some DPDK troubles I was having. In particular, Aaron Rossetto me=
ntioned putting just a few symlinks in a new folder and using the dpdk_driv=
er variable from uhd.conf to point
 to this folder.&nbsp; This may be helpful for your case.</div>
<div>Rob</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 6, 2021 at 9:37 AM Chang,=
 Kaixin &lt;<a href=3D"mailto:k.chang@campus.tu-berlin.de" target=3D"_blank=
">k.chang@campus.tu-berlin.de</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; border=
-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"gmail-m_-6582435989516123375gmail-m_-5764693402685408802divtagde=
faultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; color: rgb(0, 0, 0); fo=
nt-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emo=
ji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol=
&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<p>Dear Ettus team,</p>
<p><br>
</p>
<p>I followed the instruction of <a href=3D"https://kb.ettus.com/Getting_St=
arted_with_DPDK_and_UHD" id=3D"gmail-m_-6582435989516123375gmail-m_-5764693=
402685408802LPlnk765227" target=3D"_blank">
https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD</a> to enable dpdk f=
or my X310, however I have an error when I execute
<code>benchmark_rate</code> as sudo su</p>
<p><br>
</p>
<p></p>
<div>
<pre style=3D"text-align:left"><font size=3D"2" style=3D"font-size:10pt">[I=
NFO] [UHD] linux; GNU C&#43;&#43; version 9.3.0; Boost_107100; UHD_4.0.0.0-=
93-g3b9ced8f</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">EAL: Detected 4 lcore(s)</font>=
=0A=
<font size=3D"2" style=3D"font-size:10pt">EAL: Detected 1 NUMA nodes</font>=
=0A=
<font size=3D"2" style=3D"font-size:10pt">EAL: Multi-process socket /var/ru=
n/dpdk/rte/mp_socket</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">EAL: No free hugepages reported i=
n hugepages-1048576kB</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">EAL: Probing VFIO support...</fon=
t>=0A=
<font size=3D"2" style=3D"font-size:10pt">EAL: VFIO support initialized</fo=
nt>=0A=
<font size=3D"2" style=3D"font-size:10pt">EAL: PCI device 0000:00:1f.6 on N=
UMA socket -1</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">EAL:   Invalid NUMA socket, defau=
lt to 0</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">EAL:   probe driver: 8086:15d7 ne=
t_e1000_em</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">EAL: PCI device 0000:0e:00.0 on N=
UMA socket -1</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">EAL:   Invalid NUMA socket, defau=
lt to 0</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">EAL:   probe driver: 8086:10fb ne=
t_ixgbe</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">EAL:   0000:0e:00.0 VFIO group is=
 not viable!</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">EAL: Requested device 0000:0e:00.=
0 cannot be used</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">EAL: PCI device 0000:0e:00.1 on N=
UMA socket -1</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">EAL:   Invalid NUMA socket, defau=
lt to 0</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">EAL:   probe driver: 8086:10fb ne=
t_ixgbe</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">EAL:   0000:0e:00.1 VFIO group is=
 not viable!</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">EAL: Requested device 0000:0e:00.=
1 cannot be used</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">[ERROR] [DPDK] No available DPDK =
devices (ports) found!</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">[ERROR] [UHD] Device discovery er=
ror: RuntimeError: No available DPDK devices (ports) found!</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">EAL: FATAL: already called initia=
lization.</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">EAL: already called initializatio=
n.</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">[ERROR] [DPDK] Error with EAL ini=
tialization</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">[ERROR] [X300] X300 Network disco=
very error RuntimeError: Error with EAL initialization</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">[00:00:00.000506] Creating the us=
rp device with: addr=3D192.168.30.2,second_addr=3D192.168.40.2,use_dpdk=3D1=
...</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">EAL: FATAL: already called initia=
lization.</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">EAL: already called initializatio=
n.</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">[ERROR] [DPDK] Error with EAL ini=
tialization</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">[ERROR] [UHD] Device discovery er=
ror: RuntimeError: Error with EAL initialization</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">EAL: FATAL: already called initia=
lization.</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">EAL: already called initializatio=
n.</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">[ERROR] [DPDK] Error with EAL ini=
tialization</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">[ERROR] [X300] X300 Network disco=
very error RuntimeError: Error with EAL initialization</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">Error: LookupError: KeyError: No =
devices found for -----&gt;</font>=0A=
<font size=3D"2" style=3D"font-size:10pt">Device Address:</font>=0A=
    <font size=3D"2" style=3D"font-size:10pt">addr: 192.168.30.2</font>=0A=
    <font size=3D"2" style=3D"font-size:10pt">second_addr: 192.168.40.2</fo=
nt>=0A=
    <font size=3D"2" style=3D"font-size:10pt">use_dpdk: 1</font></pre>
</div>
Why is <font size=3D"2" style=3D"font-size:10pt">0000:0e:00.1 VFIO group is=
 not viable!</font>? I have checked dpdk-devbind --status-dev net and get
<span id=3D"gmail-m_-6582435989516123375gmail-m_-5764693402685408802ms-rter=
angepaste-end">
</span><br>
<div><br>
Network devices using DPDK-compatible driver<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
0000:0e:00.0 '82599ES 10-Gigabit SFI/SFP&#43; Network Connection 10fb' drv=
=3Dvfio-pci unused=3Dixgbe<br>
0000:0e:00.1 '82599ES 10-Gigabit SFI/SFP&#43; Network Connection 10fb' drv=
=3Dvfio-pci unused=3Dixgbe<br>
<br>
Network devices using kernel driver<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
0000:00:1f.6 'Ethernet Connection (4) I219-LM 15d7' if=3Denp0s31f6 drv=3De1=
000e unused=3Dvfio-pci
<br>
0000:02:00.0 'Wireless 8265 / 8275 24fd' if=3Dwlp2s0 drv=3Diwlwifi unused=
=3Dvfio-pci <br>
</div>
<br>
<p></p>
<p>which seems to be fine.</p>
<p><br>
</p>
<p>thank you for your help</p>
<p><br>
</p>
<p>sincerely</p>
<p><br>
</p>
<p>Kasim<br>
</p>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_8550b35c12694d32abb8c3392b8e5d70campustuberlinde_--

--===============5828110570664372348==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5828110570664372348==--
