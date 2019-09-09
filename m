Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F249ADFFC
	for <lists+usrp-users@lfdr.de>; Mon,  9 Sep 2019 22:41:34 +0200 (CEST)
Received: from [::1] (port=47030 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i7QTZ-0001KA-48; Mon, 09 Sep 2019 16:41:29 -0400
Received: from mail-ot1-f51.google.com ([209.85.210.51]:44943)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1i7QTV-0001Dz-Lv
 for usrp-users@lists.ettus.com; Mon, 09 Sep 2019 16:41:25 -0400
Received: by mail-ot1-f51.google.com with SMTP id 21so14491669otj.11
 for <usrp-users@lists.ettus.com>; Mon, 09 Sep 2019 13:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sNBLq/FTArtd+a2mKRVTmP/lwc0Ze178hIGizsgD0uU=;
 b=LS0DJtV4yZ+96SYdrF+9J+b1UyWvpXt8TsI16V1NYM/wuqkVXmFFPzidj6ZWy3/JwS
 Qo9nHkRPvz2ZIUUCUJOjQcBSFb7wTyUA5CGZapDPLM6uds1UpowZgvupwm4wJ1sGPFjQ
 shu3uy0bKFSkSBZWNtBuTSRtgdU7jVkWonQY+P1FZji0PhdQeiWsUv9KNAKEWBlW2LFT
 PAPcq507Vc5B+ffT8A0gDXDj4cdui+ZhNk1xY9lrMKtqh2xXMUx8ti5fe/n2m8Gx1tI/
 sjePTwRuGzBG/b0/xvysrx7fllPwf3tlatIFfH0tSwCGRmX7Dx/cjPnviOWvX8tcfjy9
 6Akw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sNBLq/FTArtd+a2mKRVTmP/lwc0Ze178hIGizsgD0uU=;
 b=GBLZBhzbYiCLkMAYNSfLByglISibrjAL631CmDwPk4KU90ccs3WRDNDPfdHmAUZeUw
 rakJC0zPptBE4PUtjqbVkH4KX++I92S+Xy5exPZAMyDPK01KgrbJLh17twcdXvKibFll
 DGdLbOSQ3hxzhQiqJtqK+Oa9lyA0BLZsSu7VD7WjNDaUpKZAFPkUBR4LEOOe8w0aH2Jc
 ARpnuyK/mkdkYTlPRr7ks/wu9eh17rtb16TMDMjxFU0KA75PURwgLWiiIUEVxW3rYFoy
 kONGuOausag8QA5pH4NvHBL8syDskVm+PASkPJKIQTgvbM9TcTix6vHVxA4jONMkFlyb
 GFkw==
X-Gm-Message-State: APjAAAVgS1cW61/ylDwjoS3dZ8AvLwSHfBRoU6ImZYPUw3MQdH/dPWJf
 D9dMy8syr2e1Rv0VBXNnmb3F/sHh8ChUxbvfCOmU+g==
X-Google-Smtp-Source: APXvYqzNwJZ2DdIEuc0DCwMqEsoveohMtcqX8ANHUbwwUyrdBCFNk32Ja8MYymS0i7s5hDMA+KzZrGKOYvCj+aiCTJ4=
X-Received: by 2002:a9d:3f4b:: with SMTP id m69mr2370880otc.301.1568061644627; 
 Mon, 09 Sep 2019 13:40:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTTexps+cnkJ4STrAtJpJgM9OfVo84CLDp+si=np8ni-xg@mail.gmail.com>
 <CACSOXP31eCM+Dw=+pEJ4epAGB7QaUmRftXb9A=v=ymq5CVTTuQ@mail.gmail.com>
 <CAB__hTTQSHxhUqmYfNzdFdam-owkt0Av46Y+ZOgBF+XSyghGjw@mail.gmail.com>
In-Reply-To: <CAB__hTTQSHxhUqmYfNzdFdam-owkt0Av46Y+ZOgBF+XSyghGjw@mail.gmail.com>
Date: Mon, 9 Sep 2019 16:40:33 -0400
Message-ID: <CAB__hTSOKND9tyWBbk6H5B1NWT4-zUsHePjAZmUsj0iFg4-M_Q@mail.gmail.com>
To: Ettus Research Support <support@ettus.com>
Subject: Re: [USRP-users] Using DmaFIFO for receive on X310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3614330026520366817=="
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

--===============3614330026520366817==
Content-Type: multipart/alternative; boundary="00000000000050a91f059224cdfd"

--00000000000050a91f059224cdfd
Content-Type: text/plain; charset="UTF-8"

Hi Nate,
I looked at the link you sent (performance tuning tips) and your email.
Here are a few comments / questions:

   - Regarding my initial question, what could be the cause of WORSE
   performance when I inserted the DmaFIFO in the receive chain of my RFNoC
   graph? Recall the "Radio->DDC->host" produces no errors, but
   "Radio->DDC->DmaFIFO->host" produces errors (timeouts)
   - Regarding "cpufrequtils" (from the performance tuning tips), I have
   run the suggestions on my 18.04 Ubuntu system (Xeon E5-1620v4 3.5GHz,
   4-core/8-thread), but when I run cpufreq-info, there is often 1 or more
   CPUs that show up at 1.6 GHz or so (while the majority report ~3.6 GHz).
   It is not clear to me whether this utility is doing its job or not.
   - Regarding DPDK, I have tried to install it, but have had no success.
   The instructions say that after updating grub with "iommu=pt intel_iommu=on
   hugepages=2048", then "After you reboot, you should see
   /sys/kernel/iommu_groups populated".  I do have such a folder, but it is
   empty so I'm not sure if this step was successful or not.  Furthermore, I
   am unable to run the dpdk-devbind python script to bind the vfio-pci driver
   to my Intel X520-DA2 NIC (see error message below)
   - Regarding XFS vs EXT4, this is something I haven't tried yet, but plan
   to.  I am completely unfamiliar with XFS.  My SSD is actually 4 Samsung EVO
   850 SATA SSDs in a software RAID-0 (using mdadm).  If I copy a huge file
   from my RAM disk to the SSD, I am able to verify transfer rates greater
   than 1GB/s (I believe closer to 1.5GB/s).
   - Finally, regarding "D" (sequence errors), what is the possible cause?
   These are the most frustrating errors because their cause is a mystery to
   me.  I fully expect that when my host PC is too slow to keep up with the
   torrent of data coming from the USRP that it should eventually backpressure
   all the way to the Radio which will then generate Overflows because it has
   no place to send the A/D data.  So, if I was only seeing "O", it would make
   sense to me.  But, the "D" makes no sense to me in my point-to-point direct
   connection between host and USRP.  Do you know of any root cause for "D"?

Thanks.
Rob

*DPDK error messages during dpdk-devbind.py*
irisheyes0@irisheyes0-HP-Z440-Workstation:~$
/usr/share/dpdk/usertools/dpdk-devbind.py --status

Network devices using DPDK-compatible driver
============================================
<none>

Network devices using kernel driver
===================================
0000:00:19.0 'Ethernet Connection (2) I218-LM 15a0' if=eno1 drv=e1000e
unused= *Active*
0000:01:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
if=ens4f0 drv=ixgbe unused=
0000:01:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
if=ens4f1 drv=ixgbe unused=
0000:04:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
if=ens2f0 drv=ixgbe unused=
0000:04:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
if=ens2f1 drv=ixgbe unused=

Other Network devices
=====================
<none>

Crypto devices using DPDK-compatible driver
===========================================
<none>

Crypto devices using kernel driver
==================================
<none>

Other Crypto devices
====================
<none>

Eventdev devices using DPDK-compatible driver
=============================================
<none>

Eventdev devices using kernel driver
====================================
<none>

Other Eventdev devices
======================
<none>

Mempool devices using DPDK-compatible driver
============================================
<none>

Mempool devices using kernel driver
===================================
<none>

Other Mempool devices
=====================
<none>
irisheyes0@irisheyes0-HP-Z440-Workstation:~$ sudo
/usr/share/dpdk/usertools/dpdk-devbind.py --bind=vfio-pci 01:00.0
[sudo] password for irisheyes0:
Error - no supported modules(DPDK driver) are loaded
irisheyes0@irisheyes0-HP-Z440-Workstation:~$
/usr/share/dpdk/usertools/dpdk-devbind.py --status

Network devices using DPDK-compatible driver
============================================
<none>

Network devices using kernel driver
===================================
0000:00:19.0 'Ethernet Connection (2) I218-LM 15a0' if=eno1 drv=e1000e
unused= *Active*
0000:01:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
if=ens4f0 drv=ixgbe unused=
0000:01:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
if=ens4f1 drv=ixgbe unused=
0000:04:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
if=ens2f0 drv=ixgbe unused=
0000:04:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
if=ens2f1 drv=ixgbe unused=

Other Network devices
=====================
<none>

Crypto devices using DPDK-compatible driver
===========================================
<none>

Crypto devices using kernel driver
==================================
<none>

Other Crypto devices
====================
<none>

Eventdev devices using DPDK-compatible driver
=============================================
<none>

Eventdev devices using kernel driver
====================================
<none>

Other Eventdev devices
======================
<none>

Mempool devices using DPDK-compatible driver
============================================
<none>

Mempool devices using kernel driver
===================================
<none>

Other Mempool devices
=====================
<none>
irisheyes0@irisheyes0-HP-Z440-Workstation:~$ sudo modprobe vfio-pci
irisheyes0@irisheyes0-HP-Z440-Workstation:~$
/usr/share/dpdk/usertools/dpdk-devbind.py --status

Network devices using DPDK-compatible driver
============================================
<none>

Network devices using kernel driver
===================================
0000:00:19.0 'Ethernet Connection (2) I218-LM 15a0' if=eno1 drv=e1000e
unused=vfio-pci *Active*
0000:01:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
if=ens4f0 drv=ixgbe unused=vfio-pci
0000:01:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
if=ens4f1 drv=ixgbe unused=vfio-pci
0000:04:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
if=ens2f0 drv=ixgbe unused=vfio-pci
0000:04:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
if=ens2f1 drv=ixgbe unused=vfio-pci

Other Network devices
=====================
<none>

Crypto devices using DPDK-compatible driver
===========================================
<none>

Crypto devices using kernel driver
==================================
<none>

Other Crypto devices
====================
<none>

Eventdev devices using DPDK-compatible driver
=============================================
<none>

Eventdev devices using kernel driver
====================================
<none>

Other Eventdev devices
======================
<none>

Mempool devices using DPDK-compatible driver
============================================
<none>

Mempool devices using kernel driver
===================================
<none>

Other Mempool devices
=====================
<none>
irisheyes0@irisheyes0-HP-Z440-Workstation:~$ sudo
/usr/share/dpdk/usertools/dpdk-devbind.py --bind=vfio-pci 01:00.0
Error: bind failed for 0000:01:00.0 - Cannot bind to driver vfio-pci
Error: unbind failed for 0000:01:00.0 - Cannot open /sys/bus/pci/drivers
//unbind
irisheyes0@irisheyes0-HP-Z440-Workstation:~$



On Fri, Sep 6, 2019 at 6:02 PM Rob Kossler <rkossler@nd.edu> wrote:

> Hi Nate,
> I'm using UHD 3.14.0.1.  I am not using DPDK.
>
> Regarding the tuning, I think I was not clear in my email.  I have no
> trouble streaming to RAM disk using the standard Radio->DDC->host graph.  I
> mentioned that I was running 2x50MS/s, but I can go up to 2x200MS/s with
> success.  My issue is that after adding the DmaFIFO to the Rx chain, I got
> timeouts (i.e., I suppose that the flow stopped for some reason) when
> running the graph Radio->DDC->DmaFIFO->host.  Even at 2x50MS/s.
>
> So, my question is: why is this happening?  What is wrong with my plan to
> insert the DmaFIFO in the Rx chain?  What would possibly cause the
> streaming to terminate such that my recv() loop times out (even with a 5s
> timeout)?
>
> Rob
>
>
>
> On Fri, Sep 6, 2019 at 12:56 PM Ettus Research Support <support@ettus.com>
> wrote:
>
>> Hi Rob,
>>
>> What version of UHD are you using?
>>
>> 2x RX 50 MS/s streams should work without much issue with a fast enough
>> host, especially to a ram disk.
>>
>> Are you using DPDK? DPDK support for X3xx was recently added to UHD and
>> will reduce the overhead on the host side, which can help quite a bit. Some
>> anecdotal testing I've done with a N310, with the native UHD driver, to
>> stream 2 channels full duplex, the minimum cpu freq I was able to run
>> without any flow control errors was 3.8 GHz. Using DPDK, I was able to run
>> 2x2 @ 125 MS/s with my CPU cores locked at 1.5 GHz with no flow control
>> errors. Using DPDK, it's possible to stream 2x2 @ 200e6 on the X3xx with a
>> SRAM FPGA image (it's not possible to TX at full rate using the native
>> driver and DRAM based FPGA).
>>
>> You could try the few things listed here
>> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks
>>
>> One other bit to add, I've been able to stream 1 RX channel @ 200 MS/s
>> straight to disk using a Intel 750 Series PCIe SSD until it was full (circa
>> UHD 3.10.x). To do that, I had to use a sc16 host side data format and also
>> use a XFS file system instead of EXT4. The host was a i7-4790k @ 4.4 GHz. I
>> would recommend NVMe SSD drives now as they support faster rates than that
>> PCIe SSD.
>>
>>
>> Regards,
>> Nate Temple
>>
>> On Fri, Sep 6, 2019 at 8:37 AM Rob Kossler via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi,
>>> As part of an effort to improve capability to store incoming receive
>>> chain samples to files on my SSD without errors ('O' or 'D'), I decided to
>>> wire an X310 noc graph to include the DmaFIFO. My thought was that the
>>> DmaFIFO could better tolerate varying rates of sample consumption at the
>>> OS.
>>>
>>> Before trying this by streaming to a file on my SSD, I first ran a test
>>> which streamed to a RAM-based file (60 GB ram filesystem).  I used an
>>> X310/UBX160 with the default FPGA XG image and initiated a 2-channel
>>> receive at 50MS/s (using my C++ app & UHD).  To my surprise, I am getting
>>> frequent "timeouts" on receive, but not always at the same time.  In one
>>> case, the receive worked successfully for 28 secs (2 ch, 50 MS/s).  In
>>> other cases, it timed out immediately or after several seconds.  Note that
>>> I can reliably run this same test without error if I remove the DmaFIFO.
>>>
>>> The following works fine:
>>>   RxRadio -> DDC -> host file (in RAM file system)
>>>
>>> The following times-out at random times:
>>>   RxRadio -> DDC -> DmaFIFO -> host file (in RAM file system)
>>>
>>> What could be the cause?  Is there any reason the DmaFIFO shouldn't work
>>> in the receive chain?
>>>
>>> Rob
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--00000000000050a91f059224cdfd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Nate,<div>I looked at the link you sent (performance tu=
ning tips) and your email.=C2=A0 Here are a few comments / questions:</div>=
<div><ul><li>Regarding my initial question, what could be the cause of WORS=
E performance when I inserted the DmaFIFO in the receive chain of my RFNoC =
graph? Recall the &quot;Radio-&gt;DDC-&gt;host&quot; produces no errors, bu=
t &quot;Radio-&gt;DDC-&gt;DmaFIFO-&gt;host&quot; produces errors (timeouts)=
</li><li>Regarding &quot;cpufrequtils&quot; (from the performance tuning ti=
ps), I have run the suggestions on my 18.04 Ubuntu system (Xeon E5-1620v4 3=
.5GHz, 4-core/8-thread), but when I run cpufreq-info, there is often 1 or m=
ore CPUs that show up at 1.6 GHz or so (while the majority report ~3.6 GHz)=
.=C2=A0 It is not clear to me whether this utility is doing its job or not.=
</li><li>Regarding DPDK, I have tried to install it, but have had no succes=
s.=C2=A0 The instructions say that after updating grub with &quot;iommu=3Dp=
t intel_iommu=3Don hugepages=3D2048&quot;, then &quot;After you reboot, you=
 should see /sys/kernel/iommu_groups populated&quot;.=C2=A0 I do have such =
a folder, but it is empty so I&#39;m not sure if this step was successful o=
r not.=C2=A0 Furthermore, I am unable to run the dpdk-devbind python script=
 to bind the vfio-pci driver to my Intel X520-DA2 NIC (see error message be=
low)</li><li>Regarding XFS vs EXT4, this is something I haven&#39;t tried y=
et, but plan to.=C2=A0 I am completely unfamiliar with XFS.=C2=A0 My SSD is=
 actually 4 Samsung EVO 850 SATA SSDs in a software RAID-0 (using mdadm).=
=C2=A0 If I copy a huge file from my RAM disk to the SSD, I am able to veri=
fy transfer rates greater than 1GB/s (I believe closer to 1.5GB/s).</li><li=
>Finally, regarding &quot;D&quot; (sequence errors), what is the possible c=
ause?=C2=A0 These are the most frustrating errors because their cause is a =
mystery to me.=C2=A0 I fully expect that when my host PC is too slow to kee=
p up with the torrent of data coming from the USRP that it should eventuall=
y backpressure all the way to the Radio which will then generate Overflows =
because it has no place to send the A/D data.=C2=A0 So, if I was only seein=
g &quot;O&quot;, it would make sense to me.=C2=A0 But, the &quot;D&quot; ma=
kes no sense to me in my point-to-point direct connection between host and =
USRP.=C2=A0 Do you know of any root cause for &quot;D&quot;?</li></ul><div>=
Thanks.</div><div>Rob</div><div><br></div><div><b>DPDK error messages durin=
g dpdk-devbind.py</b></div><div>irisheyes0@irisheyes0-HP-Z440-Workstation:~=
$ /usr/share/dpdk/usertools/dpdk-devbind.py --status<br><br>Network devices=
 using DPDK-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Network devices using kernel driver<=
br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>0000:00:19.0 &#39;Ethernet Connection =
(2) I218-LM 15a0&#39; if=3Deno1 drv=3De1000e unused=3D *Active*<br>0000:01:=
00.0 &#39;82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb&#39; if=3Dens=
4f0 drv=3Dixgbe unused=3D <br>0000:01:00.1 &#39;82599ES 10-Gigabit SFI/SFP+=
 Network Connection 10fb&#39; if=3Dens4f1 drv=3Dixgbe unused=3D <br>0000:04=
:00.0 &#39;82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb&#39; if=3Den=
s2f0 drv=3Dixgbe unused=3D <br>0000:04:00.1 &#39;82599ES 10-Gigabit SFI/SFP=
+ Network Connection 10fb&#39; if=3Dens2f1 drv=3Dixgbe unused=3D <br><br>Ot=
her Network devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Crypto devices using DPDK-compatible dr=
iver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none=
&gt;<br><br>Crypto devices using kernel driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>&lt;none&gt;<br><br>Other Crypto devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Eventdev device=
s using DPDK-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Eventdev devices using kernel =
driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Other =
Eventdev devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Mempool devices using DPDK-compatible d=
river<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;n=
one&gt;<br><br>Mempool devices using kernel driver<br>=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<br>&lt;none&gt;<br><br>Other Mempool devices<br>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br>irishey=
es0@irisheyes0-HP-Z440-Workstation:~$ sudo /usr/share/dpdk/usertools/dpdk-d=
evbind.py --bind=3Dvfio-pci 01:00.0<br>[sudo] password for irisheyes0: <br>=
Error - no supported modules(DPDK driver) are loaded<br>irisheyes0@irisheye=
s0-HP-Z440-Workstation:~$ /usr/share/dpdk/usertools/dpdk-devbind.py --statu=
s<br><br>Network devices using DPDK-compatible driver<br>=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Network devi=
ces using kernel driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>0000:00:19.0 &=
#39;Ethernet Connection (2) I218-LM 15a0&#39; if=3Deno1 drv=3De1000e unused=
=3D *Active*<br>0000:01:00.0 &#39;82599ES 10-Gigabit SFI/SFP+ Network Conne=
ction 10fb&#39; if=3Dens4f0 drv=3Dixgbe unused=3D <br>0000:01:00.1 &#39;825=
99ES 10-Gigabit SFI/SFP+ Network Connection 10fb&#39; if=3Dens4f1 drv=3Dixg=
be unused=3D <br>0000:04:00.0 &#39;82599ES 10-Gigabit SFI/SFP+ Network Conn=
ection 10fb&#39; if=3Dens2f0 drv=3Dixgbe unused=3D <br>0000:04:00.1 &#39;82=
599ES 10-Gigabit SFI/SFP+ Network Connection 10fb&#39; if=3Dens2f1 drv=3Dix=
gbe unused=3D <br><br>Other Network devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Crypto devices =
using DPDK-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Crypto devices using kernel driver<br>=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Other Crypto devices<br>=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt=
;<br><br>Eventdev devices using DPDK-compatible driver<br>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Eventd=
ev devices using kernel driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&l=
t;none&gt;<br><br>Other Eventdev devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Mempool devices=
 using DPDK-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Mempool devices using kernel driver<=
br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Other Mempool devi=
ces<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&=
lt;none&gt;<br>irisheyes0@irisheyes0-HP-Z440-Workstation:~$ sudo modprobe v=
fio-pci<br>irisheyes0@irisheyes0-HP-Z440-Workstation:~$ /usr/share/dpdk/use=
rtools/dpdk-devbind.py --status<br><br>Network devices using DPDK-compatibl=
e driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&l=
t;none&gt;<br><br>Network devices using kernel driver<br>=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>0000:00:19.0 &#39;Ethernet Connection (2) I218-LM 15a0&#39;=
 if=3Deno1 drv=3De1000e unused=3Dvfio-pci *Active*<br>0000:01:00.0 &#39;825=
99ES 10-Gigabit SFI/SFP+ Network Connection 10fb&#39; if=3Dens4f0 drv=3Dixg=
be unused=3Dvfio-pci <br>0000:01:00.1 &#39;82599ES 10-Gigabit SFI/SFP+ Netw=
ork Connection 10fb&#39; if=3Dens4f1 drv=3Dixgbe unused=3Dvfio-pci <br>0000=
:04:00.0 &#39;82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb&#39; if=
=3Dens2f0 drv=3Dixgbe unused=3Dvfio-pci <br>0000:04:00.1 &#39;82599ES 10-Gi=
gabit SFI/SFP+ Network Connection 10fb&#39; if=3Dens2f1 drv=3Dixgbe unused=
=3Dvfio-pci <br><br>Other Network devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Crypto devices usi=
ng DPDK-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<br>&lt;none&gt;<br><br>Crypto devices using kernel driver<br>=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Other Crypto devices<br>=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<b=
r><br>Eventdev devices using DPDK-compatible driver<br>=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Eventdev =
devices using kernel driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;n=
one&gt;<br><br>Other Eventdev devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Mempool devices us=
ing DPDK-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Mempool devices using kernel driver<br>=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Other Mempool devices=
<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;=
none&gt;<br>irisheyes0@irisheyes0-HP-Z440-Workstation:~$ sudo /usr/share/dp=
dk/usertools/dpdk-devbind.py --bind=3Dvfio-pci 01:00.0<br><span style=3D"ba=
ckground-color:rgb(255,255,0)">Error: bind failed for 0000:01:00.0 - Cannot=
 bind to driver vfio-pci<br>Error: unbind failed for 0000:01:00.0 - Cannot =
open /sys/bus/pci/drivers</span>//unbind<br>irisheyes0@irisheyes0-HP-Z440-W=
orkstation:~$=C2=A0<br><div></div></div><div><br></div><div><br></div></div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Fri, Sep 6, 2019 at 6:02 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@=
nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Nate,</di=
v><div>I&#39;m using UHD 3.14.0.1.=C2=A0 I am not using DPDK.</div><div><br=
></div><div>Regarding the tuning, I think I was not clear in my email.=C2=
=A0 I have no trouble streaming to RAM disk using the standard Radio-&gt;DD=
C-&gt;host graph.=C2=A0 I mentioned that I was running 2x50MS/s, but I can =
go up to 2x200MS/s with success.=C2=A0 My issue is that after adding the Dm=
aFIFO to the Rx chain, I got timeouts (i.e., I suppose that the flow stoppe=
d for some reason) when running the graph Radio-&gt;DDC-&gt;DmaFIFO-&gt;hos=
t.=C2=A0 Even at 2x50MS/s.=C2=A0=C2=A0</div><div><br></div><div>So, my ques=
tion is: why is this happening?=C2=A0 What is wrong with my plan to insert =
the DmaFIFO in the Rx chain?=C2=A0 What would possibly cause the streaming =
to terminate such that my recv() loop times out (even with a 5s timeout)?</=
div><div><br></div><div>Rob</div><div><br></div><div><br></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 6, 201=
9 at 12:56 PM Ettus Research Support &lt;<a href=3D"mailto:support@ettus.co=
m" target=3D"_blank">support@ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div style=3D"font-f=
amily:verdana,sans-serif">Hi Rob,<br><br>What version of UHD are you using?=
<br><br>2x RX 50 MS/s streams should work without much issue with a fast en=
ough host, especially to a ram disk. <br><br>Are you using DPDK? DPDK suppo=
rt for X3xx was recently added to UHD and will reduce the overhead on the h=
ost side, which can help quite a bit. Some anecdotal testing I&#39;ve done =
with a N310, with the native UHD driver, to stream 2 channels full duplex, =
the minimum cpu freq I was able to run without any flow control errors was =
3.8 GHz. Using DPDK, I was able to run 2x2 @ 125 MS/s with my CPU cores loc=
ked at 1.5 GHz with no flow control errors. Using DPDK, it&#39;s possible t=
o stream 2x2 @ 200e6 on the X3xx with a SRAM FPGA image (it&#39;s not possi=
ble to TX at full rate using the native driver and DRAM based FPGA).<br><br=
>You could try the few things listed here <a href=3D"https://kb.ettus.com/U=
SRP_Host_Performance_Tuning_Tips_and_Tricks" target=3D"_blank">https://kb.e=
ttus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks</a><br><br>One other =
bit to add, I&#39;ve been able to stream 1 RX channel @ 200 MS/s straight t=
o disk using a Intel 750 Series PCIe SSD until it was full (circa UHD 3.10.=
x). To do that, I had to use a sc16 host side data format and also use a XF=
S file system instead of EXT4. The host was a i7-4790k @ 4.4 GHz. I would r=
ecommend NVMe SSD drives now as they support faster rates than that PCIe SS=
D. <br><br><br>Regards,<br>Nate Temple</div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 6, 2019 at 8:37 AM =
Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div>As p=
art of an effort to improve capability to store incoming receive chain samp=
les to files on my SSD without errors (&#39;O&#39; or &#39;D&#39;), I decid=
ed to wire an X310 noc graph to include the DmaFIFO. My thought was that th=
e DmaFIFO could better tolerate varying rates of sample consumption at the =
OS.=C2=A0</div><div><br></div><div><div>Before trying this by streaming to =
a file on my SSD, I first ran a test which streamed to a RAM-based file (60=
 GB ram filesystem).=C2=A0 I used an X310/UBX160 with the default FPGA XG i=
mage and initiated a 2-channel receive at 50MS/s (using my C++ app &amp; UH=
D).=C2=A0 To my surprise, I am getting frequent &quot;timeouts&quot; on rec=
eive, but not always at the same time.=C2=A0 In one case, the receive worke=
d successfully for 28 secs (2 ch, 50 MS/s).=C2=A0 In other cases, it timed =
out immediately or after several seconds.=C2=A0 Note that I can reliably ru=
n this same test without error if I remove the DmaFIFO.</div><div><br></div=
><div>The following works fine:</div><div>=C2=A0 RxRadio -&gt; DDC -&gt; ho=
st file (in RAM file system)</div><div><br></div><div>The following times-o=
ut at random times:</div><div></div></div><div>=C2=A0 RxRadio -&gt; DDC -&g=
t; DmaFIFO -&gt; host file (in RAM file system)</div><div><br></div><div>Wh=
at could be the cause?=C2=A0 Is there any reason the DmaFIFO shouldn&#39;t =
work in the receive chain?</div><div><br></div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>

--00000000000050a91f059224cdfd--


--===============3614330026520366817==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3614330026520366817==--

