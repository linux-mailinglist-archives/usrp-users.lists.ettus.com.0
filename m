Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D4ED2AE055
	for <lists+usrp-users@lfdr.de>; Mon,  9 Sep 2019 23:44:18 +0200 (CEST)
Received: from [::1] (port=40204 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i7RSL-0006r0-DI; Mon, 09 Sep 2019 17:44:17 -0400
Received: from mail-io1-f47.google.com ([209.85.166.47]:43529)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.west@ettus.com>)
 id 1i7RSH-0006m4-Eh
 for usrp-users@lists.ettus.com; Mon, 09 Sep 2019 17:44:13 -0400
Received: by mail-io1-f47.google.com with SMTP id r8so7617021iol.10
 for <usrp-users@lists.ettus.com>; Mon, 09 Sep 2019 14:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oGMeM+xvhIKLl0deb53lzdAs29uINIm9QW4ii6pDMyw=;
 b=MgavP2Bq2dV68WyV8AI/Z7DPDTyg0u3lEZhEBZ1qt8vQm0tsJ3PVLVY4GjP63rmtXQ
 ei0TcnjDFuZPT1RtV+W4adgYkOMtXOMtivnkiwIRZ5FHo7LjkpfBcqNoU73luxD7OWPX
 5mKeX60W6gpqkeYGlKlbIoj8VoaYOFjKzU8wWWbL6XOAzR9T2RfwbSmQXDGFLOU2dIHQ
 IR5CrNpmqVnpXM7BPDM8xO4gVo3CWkPOWsxBfkf+54S3kM0vZAuWSeFWxRAegMuaUc8N
 WvQHcKQEv50r3LM5ARPzir1PbpvWerCd+WVyE/MqzqiyIImbU3iaxe6L8gw9QlXHBSCR
 0eXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oGMeM+xvhIKLl0deb53lzdAs29uINIm9QW4ii6pDMyw=;
 b=HrUbEzBQxkv/J9SNQOHn3q2u1w/NIGux2RIPbslNFGfa9oouYBT84pIA9cqoDahuPQ
 csTkU4hO80m1VqDmMVO3mAbka/dvaiOttuGR0mV83JAV6onHfqRVp4zc7iiE0mC+PorG
 +d6HLTh4ivN3ghCrI19HHpH+5P8ek/0UHiyWluH4PhMAVsTWPixV5orfCTjwZ2cetWSt
 tO5zqti1YOqCwjNInlUesaGE0cVVb1w0t79ljZAw7nCtSkzuFH0ddT95G/mpHww8IeWj
 aIfdc/srNZvVxAW8LkA4vFakeXod8txRrdD+w9d1Om7U1hJsoPOi1dkgexxpzDKlbKsY
 yT7g==
X-Gm-Message-State: APjAAAVql/yoJDCzdIQ8ifwL93hqHTIYMUv49O2iUFaS8InHCvUgEhuV
 ucWNx5jszHLM+JkNaYNBOQK2oC6haTgCZVB1GpsFMPVZ
X-Google-Smtp-Source: APXvYqygqdyNc5AYuEw7+mL4L3NbrcIkXA7Bvg975RhoBrus2hmzrG4dur4RDj5RhiALOT9+UxlmrlNHAs9UEd9KStE=
X-Received: by 2002:a6b:6603:: with SMTP id a3mr29858498ioc.50.1568065412650; 
 Mon, 09 Sep 2019 14:43:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTTexps+cnkJ4STrAtJpJgM9OfVo84CLDp+si=np8ni-xg@mail.gmail.com>
 <CACSOXP31eCM+Dw=+pEJ4epAGB7QaUmRftXb9A=v=ymq5CVTTuQ@mail.gmail.com>
 <CAB__hTTQSHxhUqmYfNzdFdam-owkt0Av46Y+ZOgBF+XSyghGjw@mail.gmail.com>
 <CAB__hTSOKND9tyWBbk6H5B1NWT4-zUsHePjAZmUsj0iFg4-M_Q@mail.gmail.com>
In-Reply-To: <CAB__hTSOKND9tyWBbk6H5B1NWT4-zUsHePjAZmUsj0iFg4-M_Q@mail.gmail.com>
Date: Mon, 9 Sep 2019 14:43:21 -0700
Message-ID: <CAM4xKroOnfW5Pwn2ZWTdzHBbC7v0VO1D25uJ5WYgXwfZnN6BaA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
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
From: Michael West via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael West <michael.west@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7773394479919069774=="
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

--===============7773394479919069774==
Content-Type: multipart/alternative; boundary="000000000000e7eb30059225ad80"

--000000000000e7eb30059225ad80
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

I would recommend not using the DMA FIFO block.  Although the DMA FIFO
block should work, setting a larger socket buffer on the host or using DPDK
are much better options.  To use a larger socket buffer, just use the
device argument "recv_buff_size=<size>" and set the <size> to something
reasonably large.

As far as the Ds, there is flow control between the device and host, but
drops are still possible between the NIC and system memory if the host is
not releasing descriptors to the NIC fast enough.  For some network cards,
this can be seen by looking at "rx_missed_errors" value in the output of
'ethtool -S <interface>'.  Increasing the number of RX descriptors helps,
but is limited.  Use 'sudo ethtool -G <interface> rx 4096' to set the
descriptors to the maximum value.

For the cpufreq utils, you may have to set the governor on each core (i.e.
cpufreq-set -g performance -c <core>).  Also, if you have the intel_pstate
driver, it still may vary the CPU frequency with the performance governor.

Regards,
Michael

On Mon, Sep 9, 2019 at 1:41 PM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Nate,
> I looked at the link you sent (performance tuning tips) and your email.
> Here are a few comments / questions:
>
>    - Regarding my initial question, what could be the cause of WORSE
>    performance when I inserted the DmaFIFO in the receive chain of my RFNoC
>    graph? Recall the "Radio->DDC->host" produces no errors, but
>    "Radio->DDC->DmaFIFO->host" produces errors (timeouts)
>    - Regarding "cpufrequtils" (from the performance tuning tips), I have
>    run the suggestions on my 18.04 Ubuntu system (Xeon E5-1620v4 3.5GHz,
>    4-core/8-thread), but when I run cpufreq-info, there is often 1 or more
>    CPUs that show up at 1.6 GHz or so (while the majority report ~3.6 GHz).
>    It is not clear to me whether this utility is doing its job or not.
>    - Regarding DPDK, I have tried to install it, but have had no
>    success.  The instructions say that after updating grub with "iommu=pt
>    intel_iommu=on hugepages=2048", then "After you reboot, you should see
>    /sys/kernel/iommu_groups populated".  I do have such a folder, but it is
>    empty so I'm not sure if this step was successful or not.  Furthermore, I
>    am unable to run the dpdk-devbind python script to bind the vfio-pci driver
>    to my Intel X520-DA2 NIC (see error message below)
>    - Regarding XFS vs EXT4, this is something I haven't tried yet, but
>    plan to.  I am completely unfamiliar with XFS.  My SSD is actually 4
>    Samsung EVO 850 SATA SSDs in a software RAID-0 (using mdadm).  If I copy a
>    huge file from my RAM disk to the SSD, I am able to verify transfer rates
>    greater than 1GB/s (I believe closer to 1.5GB/s).
>    - Finally, regarding "D" (sequence errors), what is the possible
>    cause?  These are the most frustrating errors because their cause is a
>    mystery to me.  I fully expect that when my host PC is too slow to keep up
>    with the torrent of data coming from the USRP that it should eventually
>    backpressure all the way to the Radio which will then generate Overflows
>    because it has no place to send the A/D data.  So, if I was only seeing
>    "O", it would make sense to me.  But, the "D" makes no sense to me in my
>    point-to-point direct connection between host and USRP.  Do you know of any
>    root cause for "D"?
>
> Thanks.
> Rob
>
> *DPDK error messages during dpdk-devbind.py*
> irisheyes0@irisheyes0-HP-Z440-Workstation:~$
> /usr/share/dpdk/usertools/dpdk-devbind.py --status
>
> Network devices using DPDK-compatible driver
> ============================================
> <none>
>
> Network devices using kernel driver
> ===================================
> 0000:00:19.0 'Ethernet Connection (2) I218-LM 15a0' if=eno1 drv=e1000e
> unused= *Active*
> 0000:01:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
> if=ens4f0 drv=ixgbe unused=
> 0000:01:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
> if=ens4f1 drv=ixgbe unused=
> 0000:04:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
> if=ens2f0 drv=ixgbe unused=
> 0000:04:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
> if=ens2f1 drv=ixgbe unused=
>
> Other Network devices
> =====================
> <none>
>
> Crypto devices using DPDK-compatible driver
> ===========================================
> <none>
>
> Crypto devices using kernel driver
> ==================================
> <none>
>
> Other Crypto devices
> ====================
> <none>
>
> Eventdev devices using DPDK-compatible driver
> =============================================
> <none>
>
> Eventdev devices using kernel driver
> ====================================
> <none>
>
> Other Eventdev devices
> ======================
> <none>
>
> Mempool devices using DPDK-compatible driver
> ============================================
> <none>
>
> Mempool devices using kernel driver
> ===================================
> <none>
>
> Other Mempool devices
> =====================
> <none>
> irisheyes0@irisheyes0-HP-Z440-Workstation:~$ sudo
> /usr/share/dpdk/usertools/dpdk-devbind.py --bind=vfio-pci 01:00.0
> [sudo] password for irisheyes0:
> Error - no supported modules(DPDK driver) are loaded
> irisheyes0@irisheyes0-HP-Z440-Workstation:~$
> /usr/share/dpdk/usertools/dpdk-devbind.py --status
>
> Network devices using DPDK-compatible driver
> ============================================
> <none>
>
> Network devices using kernel driver
> ===================================
> 0000:00:19.0 'Ethernet Connection (2) I218-LM 15a0' if=eno1 drv=e1000e
> unused= *Active*
> 0000:01:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
> if=ens4f0 drv=ixgbe unused=
> 0000:01:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
> if=ens4f1 drv=ixgbe unused=
> 0000:04:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
> if=ens2f0 drv=ixgbe unused=
> 0000:04:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
> if=ens2f1 drv=ixgbe unused=
>
> Other Network devices
> =====================
> <none>
>
> Crypto devices using DPDK-compatible driver
> ===========================================
> <none>
>
> Crypto devices using kernel driver
> ==================================
> <none>
>
> Other Crypto devices
> ====================
> <none>
>
> Eventdev devices using DPDK-compatible driver
> =============================================
> <none>
>
> Eventdev devices using kernel driver
> ====================================
> <none>
>
> Other Eventdev devices
> ======================
> <none>
>
> Mempool devices using DPDK-compatible driver
> ============================================
> <none>
>
> Mempool devices using kernel driver
> ===================================
> <none>
>
> Other Mempool devices
> =====================
> <none>
> irisheyes0@irisheyes0-HP-Z440-Workstation:~$ sudo modprobe vfio-pci
> irisheyes0@irisheyes0-HP-Z440-Workstation:~$
> /usr/share/dpdk/usertools/dpdk-devbind.py --status
>
> Network devices using DPDK-compatible driver
> ============================================
> <none>
>
> Network devices using kernel driver
> ===================================
> 0000:00:19.0 'Ethernet Connection (2) I218-LM 15a0' if=eno1 drv=e1000e
> unused=vfio-pci *Active*
> 0000:01:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
> if=ens4f0 drv=ixgbe unused=vfio-pci
> 0000:01:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
> if=ens4f1 drv=ixgbe unused=vfio-pci
> 0000:04:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
> if=ens2f0 drv=ixgbe unused=vfio-pci
> 0000:04:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
> if=ens2f1 drv=ixgbe unused=vfio-pci
>
> Other Network devices
> =====================
> <none>
>
> Crypto devices using DPDK-compatible driver
> ===========================================
> <none>
>
> Crypto devices using kernel driver
> ==================================
> <none>
>
> Other Crypto devices
> ====================
> <none>
>
> Eventdev devices using DPDK-compatible driver
> =============================================
> <none>
>
> Eventdev devices using kernel driver
> ====================================
> <none>
>
> Other Eventdev devices
> ======================
> <none>
>
> Mempool devices using DPDK-compatible driver
> ============================================
> <none>
>
> Mempool devices using kernel driver
> ===================================
> <none>
>
> Other Mempool devices
> =====================
> <none>
> irisheyes0@irisheyes0-HP-Z440-Workstation:~$ sudo
> /usr/share/dpdk/usertools/dpdk-devbind.py --bind=vfio-pci 01:00.0
> Error: bind failed for 0000:01:00.0 - Cannot bind to driver vfio-pci
> Error: unbind failed for 0000:01:00.0 - Cannot open /sys/bus/pci/drivers
> //unbind
> irisheyes0@irisheyes0-HP-Z440-Workstation:~$
>
>
>
> On Fri, Sep 6, 2019 at 6:02 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi Nate,
>> I'm using UHD 3.14.0.1.  I am not using DPDK.
>>
>> Regarding the tuning, I think I was not clear in my email.  I have no
>> trouble streaming to RAM disk using the standard Radio->DDC->host graph.  I
>> mentioned that I was running 2x50MS/s, but I can go up to 2x200MS/s with
>> success.  My issue is that after adding the DmaFIFO to the Rx chain, I got
>> timeouts (i.e., I suppose that the flow stopped for some reason) when
>> running the graph Radio->DDC->DmaFIFO->host.  Even at 2x50MS/s.
>>
>> So, my question is: why is this happening?  What is wrong with my plan to
>> insert the DmaFIFO in the Rx chain?  What would possibly cause the
>> streaming to terminate such that my recv() loop times out (even with a 5s
>> timeout)?
>>
>> Rob
>>
>>
>>
>> On Fri, Sep 6, 2019 at 12:56 PM Ettus Research Support <support@ettus.com>
>> wrote:
>>
>>> Hi Rob,
>>>
>>> What version of UHD are you using?
>>>
>>> 2x RX 50 MS/s streams should work without much issue with a fast enough
>>> host, especially to a ram disk.
>>>
>>> Are you using DPDK? DPDK support for X3xx was recently added to UHD and
>>> will reduce the overhead on the host side, which can help quite a bit. Some
>>> anecdotal testing I've done with a N310, with the native UHD driver, to
>>> stream 2 channels full duplex, the minimum cpu freq I was able to run
>>> without any flow control errors was 3.8 GHz. Using DPDK, I was able to run
>>> 2x2 @ 125 MS/s with my CPU cores locked at 1.5 GHz with no flow control
>>> errors. Using DPDK, it's possible to stream 2x2 @ 200e6 on the X3xx with a
>>> SRAM FPGA image (it's not possible to TX at full rate using the native
>>> driver and DRAM based FPGA).
>>>
>>> You could try the few things listed here
>>> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks
>>>
>>> One other bit to add, I've been able to stream 1 RX channel @ 200 MS/s
>>> straight to disk using a Intel 750 Series PCIe SSD until it was full (circa
>>> UHD 3.10.x). To do that, I had to use a sc16 host side data format and also
>>> use a XFS file system instead of EXT4. The host was a i7-4790k @ 4.4 GHz. I
>>> would recommend NVMe SSD drives now as they support faster rates than that
>>> PCIe SSD.
>>>
>>>
>>> Regards,
>>> Nate Temple
>>>
>>> On Fri, Sep 6, 2019 at 8:37 AM Rob Kossler via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Hi,
>>>> As part of an effort to improve capability to store incoming receive
>>>> chain samples to files on my SSD without errors ('O' or 'D'), I decided to
>>>> wire an X310 noc graph to include the DmaFIFO. My thought was that the
>>>> DmaFIFO could better tolerate varying rates of sample consumption at the
>>>> OS.
>>>>
>>>> Before trying this by streaming to a file on my SSD, I first ran a test
>>>> which streamed to a RAM-based file (60 GB ram filesystem).  I used an
>>>> X310/UBX160 with the default FPGA XG image and initiated a 2-channel
>>>> receive at 50MS/s (using my C++ app & UHD).  To my surprise, I am getting
>>>> frequent "timeouts" on receive, but not always at the same time.  In one
>>>> case, the receive worked successfully for 28 secs (2 ch, 50 MS/s).  In
>>>> other cases, it timed out immediately or after several seconds.  Note that
>>>> I can reliably run this same test without error if I remove the DmaFIFO.
>>>>
>>>> The following works fine:
>>>>   RxRadio -> DDC -> host file (in RAM file system)
>>>>
>>>> The following times-out at random times:
>>>>   RxRadio -> DDC -> DmaFIFO -> host file (in RAM file system)
>>>>
>>>> What could be the cause?  Is there any reason the DmaFIFO shouldn't
>>>> work in the receive chain?
>>>>
>>>> Rob
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000e7eb30059225ad80
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Rob,</div><div><br></div><div>I would recommend no=
t using the DMA FIFO block.=C2=A0 Although the DMA FIFO block should work, =
setting a larger socket buffer on the host or using DPDK are much better op=
tions.=C2=A0 To use a larger socket buffer, just use the device argument &q=
uot;recv_buff_size=3D&lt;size&gt;&quot; and set the &lt;size&gt; to somethi=
ng reasonably large.<div><br></div><div>As far as the Ds, there is flow=20
control between the device and host, but drops are still possible=20
between the NIC and system memory if the host is not releasing=20
descriptors to the NIC fast enough.=C2=A0 For some network cards, this can =
be seen by=20
looking at=20
&quot;rx_missed_errors&quot; value in the output of &#39;ethtool -S=20
&lt;interface&gt;&#39;.=C2=A0 Increasing the number of RX descriptors helps=
, but=20
is limited.=C2=A0 Use &#39;sudo ethtool -G &lt;interface&gt; rx 4096&#39; t=
o set the=20
descriptors to the maximum value.</div></div><div><br></div><div>For the cp=
ufreq utils, you may have to set the governor on each core (i.e. cpufreq-se=
t -g performance -c &lt;core&gt;).=C2=A0 Also, if you have the intel_pstate=
 driver, it still may vary the CPU frequency with the performance governor.=
</div><div><br></div><div>Regards,</div><div>Michael<br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 9=
, 2019 at 1:41 PM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-use=
rs@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Nate,<div=
>I looked at the link you sent (performance tuning tips) and your email.=C2=
=A0 Here are a few comments / questions:</div><div><ul><li>Regarding my ini=
tial question, what could be the cause of WORSE performance when I inserted=
 the DmaFIFO in the receive chain of my RFNoC graph? Recall the &quot;Radio=
-&gt;DDC-&gt;host&quot; produces no errors, but &quot;Radio-&gt;DDC-&gt;Dma=
FIFO-&gt;host&quot; produces errors (timeouts)</li><li>Regarding &quot;cpuf=
requtils&quot; (from the performance tuning tips), I have run the suggestio=
ns on my 18.04 Ubuntu system (Xeon E5-1620v4 3.5GHz, 4-core/8-thread), but =
when I run cpufreq-info, there is often 1 or more CPUs that show up at 1.6 =
GHz or so (while the majority report ~3.6 GHz).=C2=A0 It is not clear to me=
 whether this utility is doing its job or not.</li><li>Regarding DPDK, I ha=
ve tried to install it, but have had no success.=C2=A0 The instructions say=
 that after updating grub with &quot;iommu=3Dpt intel_iommu=3Don hugepages=
=3D2048&quot;, then &quot;After you reboot, you should see /sys/kernel/iomm=
u_groups populated&quot;.=C2=A0 I do have such a folder, but it is empty so=
 I&#39;m not sure if this step was successful or not.=C2=A0 Furthermore, I =
am unable to run the dpdk-devbind python script to bind the vfio-pci driver=
 to my Intel X520-DA2 NIC (see error message below)</li><li>Regarding XFS v=
s EXT4, this is something I haven&#39;t tried yet, but plan to.=C2=A0 I am =
completely unfamiliar with XFS.=C2=A0 My SSD is actually 4 Samsung EVO 850 =
SATA SSDs in a software RAID-0 (using mdadm).=C2=A0 If I copy a huge file f=
rom my RAM disk to the SSD, I am able to verify transfer rates greater than=
 1GB/s (I believe closer to 1.5GB/s).</li><li>Finally, regarding &quot;D&qu=
ot; (sequence errors), what is the possible cause?=C2=A0 These are the most=
 frustrating errors because their cause is a mystery to me.=C2=A0 I fully e=
xpect that when my host PC is too slow to keep up with the torrent of data =
coming from the USRP that it should eventually backpressure all the way to =
the Radio which will then generate Overflows because it has no place to sen=
d the A/D data.=C2=A0 So, if I was only seeing &quot;O&quot;, it would make=
 sense to me.=C2=A0 But, the &quot;D&quot; makes no sense to me in my point=
-to-point direct connection between host and USRP.=C2=A0 Do you know of any=
 root cause for &quot;D&quot;?</li></ul><div>Thanks.</div><div>Rob</div><di=
v><br></div><div><b>DPDK error messages during dpdk-devbind.py</b></div><di=
v>irisheyes0@irisheyes0-HP-Z440-Workstation:~$ /usr/share/dpdk/usertools/dp=
dk-devbind.py --status<br><br>Network devices using DPDK-compatible driver<=
br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt=
;<br><br>Network devices using kernel driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>0000:00:19.0 &#39;Ethernet Connection (2) I218-LM 15a0&#39; if=3Deno=
1 drv=3De1000e unused=3D *Active*<br>0000:01:00.0 &#39;82599ES 10-Gigabit S=
FI/SFP+ Network Connection 10fb&#39; if=3Dens4f0 drv=3Dixgbe unused=3D <br>=
0000:01:00.1 &#39;82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb&#39; =
if=3Dens4f1 drv=3Dixgbe unused=3D <br>0000:04:00.0 &#39;82599ES 10-Gigabit =
SFI/SFP+ Network Connection 10fb&#39; if=3Dens2f0 drv=3Dixgbe unused=3D <br=
>0000:04:00.1 &#39;82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb&#39;=
 if=3Dens2f1 drv=3Dixgbe unused=3D <br><br>Other Network devices<br>=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<b=
r><br>Crypto devices using DPDK-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Crypto devices usi=
ng kernel driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Oth=
er Crypto devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<br>&lt;none&gt;<br><br>Eventdev devices using DPDK-compatible driver=
<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;n=
one&gt;<br><br>Eventdev devices using kernel driver<br>=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Other Eventdev devices<br>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<b=
r><br>Mempool devices using DPDK-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Mempool devices=
 using kernel driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><=
br>Other Mempool devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br>irisheyes0@irisheyes0-HP-Z440-Worksta=
tion:~$ sudo /usr/share/dpdk/usertools/dpdk-devbind.py --bind=3Dvfio-pci 01=
:00.0<br>[sudo] password for irisheyes0: <br>Error - no supported modules(D=
PDK driver) are loaded<br>irisheyes0@irisheyes0-HP-Z440-Workstation:~$ /usr=
/share/dpdk/usertools/dpdk-devbind.py --status<br><br>Network devices using=
 DPDK-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<br>&lt;none&gt;<br><br>Network devices using kernel driver<br>=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>0000:00:19.0 &#39;Ethernet Connection (2) I2=
18-LM 15a0&#39; if=3Deno1 drv=3De1000e unused=3D *Active*<br>0000:01:00.0 &=
#39;82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb&#39; if=3Dens4f0 dr=
v=3Dixgbe unused=3D <br>0000:01:00.1 &#39;82599ES 10-Gigabit SFI/SFP+ Netwo=
rk Connection 10fb&#39; if=3Dens4f1 drv=3Dixgbe unused=3D <br>0000:04:00.0 =
&#39;82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb&#39; if=3Dens2f0 d=
rv=3Dixgbe unused=3D <br>0000:04:00.1 &#39;82599ES 10-Gigabit SFI/SFP+ Netw=
ork Connection 10fb&#39; if=3Dens2f1 drv=3Dixgbe unused=3D <br><br>Other Ne=
twork devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<br>&lt;none&gt;<br><br>Crypto devices using DPDK-compatible driver<b=
r>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<b=
r><br>Crypto devices using kernel driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br=
>&lt;none&gt;<br><br>Other Crypto devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Eventdev devices usin=
g DPDK-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Eventdev devices using kernel driver=
<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Other Eventd=
ev devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<br>&lt;none&gt;<br><br>Mempool devices using DPDK-compatible driver<=
br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt=
;<br><br>Mempool devices using kernel driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>&lt;none&gt;<br><br>Other Mempool devices<br>=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br>irisheyes0@ir=
isheyes0-HP-Z440-Workstation:~$ sudo modprobe vfio-pci<br>irisheyes0@irishe=
yes0-HP-Z440-Workstation:~$ /usr/share/dpdk/usertools/dpdk-devbind.py --sta=
tus<br><br>Network devices using DPDK-compatible driver<br>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Network d=
evices using kernel driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>0000:00:19.=
0 &#39;Ethernet Connection (2) I218-LM 15a0&#39; if=3Deno1 drv=3De1000e unu=
sed=3Dvfio-pci *Active*<br>0000:01:00.0 &#39;82599ES 10-Gigabit SFI/SFP+ Ne=
twork Connection 10fb&#39; if=3Dens4f0 drv=3Dixgbe unused=3Dvfio-pci <br>00=
00:01:00.1 &#39;82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb&#39; if=
=3Dens4f1 drv=3Dixgbe unused=3Dvfio-pci <br>0000:04:00.0 &#39;82599ES 10-Gi=
gabit SFI/SFP+ Network Connection 10fb&#39; if=3Dens2f0 drv=3Dixgbe unused=
=3Dvfio-pci <br>0000:04:00.1 &#39;82599ES 10-Gigabit SFI/SFP+ Network Conne=
ction 10fb&#39; if=3Dens2f1 drv=3Dixgbe unused=3Dvfio-pci <br><br>Other Net=
work devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<br>&lt;none&gt;<br><br>Crypto devices using DPDK-compatible driver<b=
r>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<b=
r><br>Crypto devices using kernel driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br=
>&lt;none&gt;<br><br>Other Crypto devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Eventdev devices usin=
g DPDK-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Eventdev devices using kernel driver=
<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Other Eventd=
ev devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<br>&lt;none&gt;<br><br>Mempool devices using DPDK-compatible driver<=
br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt=
;<br><br>Mempool devices using kernel driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>&lt;none&gt;<br><br>Other Mempool devices<br>=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br>irisheyes0@ir=
isheyes0-HP-Z440-Workstation:~$ sudo /usr/share/dpdk/usertools/dpdk-devbind=
.py --bind=3Dvfio-pci 01:00.0<br><span style=3D"background-color:rgb(255,25=
5,0)">Error: bind failed for 0000:01:00.0 - Cannot bind to driver vfio-pci<=
br>Error: unbind failed for 0000:01:00.0 - Cannot open /sys/bus/pci/drivers=
</span>//unbind<br>irisheyes0@irisheyes0-HP-Z440-Workstation:~$=C2=A0<br><d=
iv></div></div><div><br></div><div><br></div></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 6, 2019 at 6=
:02 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank"=
>rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr"><div>Hi Nate,</div><div>I&#39;m using UHD =
3.14.0.1.=C2=A0 I am not using DPDK.</div><div><br></div><div>Regarding the=
 tuning, I think I was not clear in my email.=C2=A0 I have no trouble strea=
ming to RAM disk using the standard Radio-&gt;DDC-&gt;host graph.=C2=A0 I m=
entioned that I was running 2x50MS/s, but I can go up to 2x200MS/s with suc=
cess.=C2=A0 My issue is that after adding the DmaFIFO to the Rx chain, I go=
t timeouts (i.e., I suppose that the flow stopped for some reason) when run=
ning the graph Radio-&gt;DDC-&gt;DmaFIFO-&gt;host.=C2=A0 Even at 2x50MS/s.=
=C2=A0=C2=A0</div><div><br></div><div>So, my question is: why is this happe=
ning?=C2=A0 What is wrong with my plan to insert the DmaFIFO in the Rx chai=
n?=C2=A0 What would possibly cause the streaming to terminate such that my =
recv() loop times out (even with a 5s timeout)?</div><div><br></div><div>Ro=
b</div><div><br></div><div><br></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Fri, Sep 6, 2019 at 12:56 PM Ettus Resear=
ch Support &lt;<a href=3D"mailto:support@ettus.com" target=3D"_blank">suppo=
rt@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div style=3D"font-family:verdana,sans-serif">=
Hi Rob,<br><br>What version of UHD are you using?<br><br>2x RX 50 MS/s stre=
ams should work without much issue with a fast enough host, especially to a=
 ram disk. <br><br>Are you using DPDK? DPDK support for X3xx was recently a=
dded to UHD and will reduce the overhead on the host side, which can help q=
uite a bit. Some anecdotal testing I&#39;ve done with a N310, with the nati=
ve UHD driver, to stream 2 channels full duplex, the minimum cpu freq I was=
 able to run without any flow control errors was 3.8 GHz. Using DPDK, I was=
 able to run 2x2 @ 125 MS/s with my CPU cores locked at 1.5 GHz with no flo=
w control errors. Using DPDK, it&#39;s possible to stream 2x2 @ 200e6 on th=
e X3xx with a SRAM FPGA image (it&#39;s not possible to TX at full rate usi=
ng the native driver and DRAM based FPGA).<br><br>You could try the few thi=
ngs listed here <a href=3D"https://kb.ettus.com/USRP_Host_Performance_Tunin=
g_Tips_and_Tricks" target=3D"_blank">https://kb.ettus.com/USRP_Host_Perform=
ance_Tuning_Tips_and_Tricks</a><br><br>One other bit to add, I&#39;ve been =
able to stream 1 RX channel @ 200 MS/s straight to disk using a Intel 750 S=
eries PCIe SSD until it was full (circa UHD 3.10.x). To do that, I had to u=
se a sc16 host side data format and also use a XFS file system instead of E=
XT4. The host was a i7-4790k @ 4.4 GHz. I would recommend NVMe SSD drives n=
ow as they support faster rates than that PCIe SSD. <br><br><br>Regards,<br=
>Nate Temple</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Fri, Sep 6, 2019 at 8:37 AM Rob Kossler via USRP-users=
 &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr">Hi,<div>As part of an effort to improv=
e capability to store incoming receive chain samples to files on my SSD wit=
hout errors (&#39;O&#39; or &#39;D&#39;), I decided to wire an X310 noc gra=
ph to include the DmaFIFO. My thought was that the DmaFIFO could better tol=
erate varying rates of sample consumption at the OS.=C2=A0</div><div><br></=
div><div><div>Before trying this by streaming to a file on my SSD, I first =
ran a test which streamed to a RAM-based file (60 GB ram filesystem).=C2=A0=
 I used an X310/UBX160 with the default FPGA XG image and initiated a 2-cha=
nnel receive at 50MS/s (using my C++ app &amp; UHD).=C2=A0 To my surprise, =
I am getting frequent &quot;timeouts&quot; on receive, but not always at th=
e same time.=C2=A0 In one case, the receive worked successfully for 28 secs=
 (2 ch, 50 MS/s).=C2=A0 In other cases, it timed out immediately or after s=
everal seconds.=C2=A0 Note that I can reliably run this same test without e=
rror if I remove the DmaFIFO.</div><div><br></div><div>The following works =
fine:</div><div>=C2=A0 RxRadio -&gt; DDC -&gt; host file (in RAM file syste=
m)</div><div><br></div><div>The following times-out at random times:</div><=
div></div></div><div>=C2=A0 RxRadio -&gt; DDC -&gt; DmaFIFO -&gt; host file=
 (in RAM file system)</div><div><br></div><div>What could be the cause?=C2=
=A0 Is there any reason the DmaFIFO shouldn&#39;t work in the receive chain=
?</div><div><br></div><div>Rob</div></div>
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
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000e7eb30059225ad80--


--===============7773394479919069774==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7773394479919069774==--

