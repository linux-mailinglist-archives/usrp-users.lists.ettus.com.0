Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D636AE165
	for <lists+usrp-users@lfdr.de>; Tue, 10 Sep 2019 01:14:26 +0200 (CEST)
Received: from [::1] (port=59372 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i7SrW-0004oh-7g; Mon, 09 Sep 2019 19:14:22 -0400
Received: from mail-ot1-f47.google.com ([209.85.210.47]:34635)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1i7SrR-0004j3-TY
 for usrp-users@lists.ettus.com; Mon, 09 Sep 2019 19:14:17 -0400
Received: by mail-ot1-f47.google.com with SMTP id z26so5933871oto.1
 for <usrp-users@lists.ettus.com>; Mon, 09 Sep 2019 16:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8C38ihMsB7t8pBtrPSgpriF8K0uloNk+/AvLMvwLxbs=;
 b=gs5CKex12q28cbcmzze8gfKu64NP60X7/qVYv0TTmFTyM9tdrhGWDt4c5rbVYkaHbq
 bgOh3tsBQFdwbVZWxYneaVLMdirO15IMuNbcQfp511CGj207qqNP6Up4d+JXgxIWAWJN
 iPn5MG9MzkTRIZWuJdIKlNDsLEx/1PlF27V1wtZc5FI+YIjngC9vYHTD08mrAkLA1jgX
 J/iMNMiQ3XnSpCuYzef+NFGgVKEx3N35fQDNi6pW8D7/aXkSA7wLVb+anny5UcjriiHz
 eI3scqQUGvUw8ndHEDHc+Kc2Y6b+6RHEnTiBmTJWJ+Foac8Dc+JqjKBC/wccG4J5Aut3
 Ulsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8C38ihMsB7t8pBtrPSgpriF8K0uloNk+/AvLMvwLxbs=;
 b=k5tzt65Hrt0zroPoteQt5nQmEDw3ia0czyT/bh9ywzZWvjX7R1M3tloCOqdDnlPtzi
 LVT0RpZdJpPs28/m92krVPHjYrEnMcFR40Cd9f59gb+k2skHai16/WqPF//BzjBAt4hX
 56/Z0lvf3/jHMc6O+HUZVzNC+x2dllcgbq8Cpx+KpWI8eUmkyGdooQdw8VHAwJLw+0Sl
 vbsEYQMdEmjghu22bUgoa/JmloGbYaLFY0oZazBzlI/vZEhysM0ffVU/YeMWSvdOlLhn
 iQyKAR5juh3MlCTXDwpf+dP+5LL9I23iWOCnInolBHeHiw3ZAWXgzO5ixTP0QZjBy2Mp
 OezA==
X-Gm-Message-State: APjAAAXgqo3Gau14y/nBOfFyPrx7FduRII6puIuyOJWCrU/anAL9axLo
 QiNVlPn1lh/F/59R0b3PeQPzPNokyOgzmj0L1gSm7A==
X-Google-Smtp-Source: APXvYqy+ASvXxl8YRRJ57y8QRFyIKNXyufTdJ8oNZCe5DLYXMcI3940TpccuZR8Tkf0FlXhiFmBT7cYFkGKiolxKuc0=
X-Received: by 2002:a9d:d27:: with SMTP id 36mr22756189oti.327.1568070816985; 
 Mon, 09 Sep 2019 16:13:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTTexps+cnkJ4STrAtJpJgM9OfVo84CLDp+si=np8ni-xg@mail.gmail.com>
 <CACSOXP31eCM+Dw=+pEJ4epAGB7QaUmRftXb9A=v=ymq5CVTTuQ@mail.gmail.com>
 <CAB__hTTQSHxhUqmYfNzdFdam-owkt0Av46Y+ZOgBF+XSyghGjw@mail.gmail.com>
 <CAB__hTSOKND9tyWBbk6H5B1NWT4-zUsHePjAZmUsj0iFg4-M_Q@mail.gmail.com>
 <CAM4xKroOnfW5Pwn2ZWTdzHBbC7v0VO1D25uJ5WYgXwfZnN6BaA@mail.gmail.com>
In-Reply-To: <CAM4xKroOnfW5Pwn2ZWTdzHBbC7v0VO1D25uJ5WYgXwfZnN6BaA@mail.gmail.com>
Date: Mon, 9 Sep 2019 19:13:25 -0400
Message-ID: <CAB__hTREnFjyZaUv93v_aBCRYbrL4ym71w2ikx_9Mb8dyZWCPg@mail.gmail.com>
To: Michael West <michael.west@ettus.com>
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
Content-Type: multipart/mixed; boundary="===============4582179365159487435=="
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

--===============4582179365159487435==
Content-Type: multipart/alternative; boundary="00000000000007c56b059226f05b"

--00000000000007c56b059226f05b
Content-Type: text/plain; charset="UTF-8"

Thanks Michael,
This info was very helpful.

Regarding "recv_buff_size", I tried setting to 100M and received a warning
that it could not do so because rmem_max was only 33M.  Given that my
rmem_max was set all along to 33M, would the recv_buff_size default to 33M
or does it default to something lower such that I still need to set this
device arg?

Regarding cpufrequtils, I have done everything I can find to get the CPUs
to stay at 3.5GHz.  On Ubuntu 14.04, this worked well.  And, I have tried
to disable the intel_pstate driver with the appropriate grub setting, but I
have not been successful in Ubuntu 18.04 at keeping the CPU freqs max-ed.

Finally, regarding DPDK, this seems like the way to go, but with the
limited amount of info available, it is difficult to get this properly
configured.

Rob


On Mon, Sep 9, 2019 at 5:43 PM Michael West <michael.west@ettus.com> wrote:

> Hi Rob,
>
> I would recommend not using the DMA FIFO block.  Although the DMA FIFO
> block should work, setting a larger socket buffer on the host or using DPDK
> are much better options.  To use a larger socket buffer, just use the
> device argument "recv_buff_size=<size>" and set the <size> to something
> reasonably large.
>
> As far as the Ds, there is flow control between the device and host, but
> drops are still possible between the NIC and system memory if the host is
> not releasing descriptors to the NIC fast enough.  For some network cards,
> this can be seen by looking at "rx_missed_errors" value in the output of
> 'ethtool -S <interface>'.  Increasing the number of RX descriptors helps,
> but is limited.  Use 'sudo ethtool -G <interface> rx 4096' to set the
> descriptors to the maximum value.
>
> For the cpufreq utils, you may have to set the governor on each core (i.e.
> cpufreq-set -g performance -c <core>).  Also, if you have the intel_pstate
> driver, it still may vary the CPU frequency with the performance governor.
>
> Regards,
> Michael
>
> On Mon, Sep 9, 2019 at 1:41 PM Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi Nate,
>> I looked at the link you sent (performance tuning tips) and your email.
>> Here are a few comments / questions:
>>
>>    - Regarding my initial question, what could be the cause of WORSE
>>    performance when I inserted the DmaFIFO in the receive chain of my RFNoC
>>    graph? Recall the "Radio->DDC->host" produces no errors, but
>>    "Radio->DDC->DmaFIFO->host" produces errors (timeouts)
>>    - Regarding "cpufrequtils" (from the performance tuning tips), I have
>>    run the suggestions on my 18.04 Ubuntu system (Xeon E5-1620v4 3.5GHz,
>>    4-core/8-thread), but when I run cpufreq-info, there is often 1 or more
>>    CPUs that show up at 1.6 GHz or so (while the majority report ~3.6 GHz).
>>    It is not clear to me whether this utility is doing its job or not.
>>    - Regarding DPDK, I have tried to install it, but have had no
>>    success.  The instructions say that after updating grub with "iommu=pt
>>    intel_iommu=on hugepages=2048", then "After you reboot, you should see
>>    /sys/kernel/iommu_groups populated".  I do have such a folder, but it is
>>    empty so I'm not sure if this step was successful or not.  Furthermore, I
>>    am unable to run the dpdk-devbind python script to bind the vfio-pci driver
>>    to my Intel X520-DA2 NIC (see error message below)
>>    - Regarding XFS vs EXT4, this is something I haven't tried yet, but
>>    plan to.  I am completely unfamiliar with XFS.  My SSD is actually 4
>>    Samsung EVO 850 SATA SSDs in a software RAID-0 (using mdadm).  If I copy a
>>    huge file from my RAM disk to the SSD, I am able to verify transfer rates
>>    greater than 1GB/s (I believe closer to 1.5GB/s).
>>    - Finally, regarding "D" (sequence errors), what is the possible
>>    cause?  These are the most frustrating errors because their cause is a
>>    mystery to me.  I fully expect that when my host PC is too slow to keep up
>>    with the torrent of data coming from the USRP that it should eventually
>>    backpressure all the way to the Radio which will then generate Overflows
>>    because it has no place to send the A/D data.  So, if I was only seeing
>>    "O", it would make sense to me.  But, the "D" makes no sense to me in my
>>    point-to-point direct connection between host and USRP.  Do you know of any
>>    root cause for "D"?
>>
>> Thanks.
>> Rob
>>
>> *DPDK error messages during dpdk-devbind.py*
>> irisheyes0@irisheyes0-HP-Z440-Workstation:~$
>> /usr/share/dpdk/usertools/dpdk-devbind.py --status
>>
>> Network devices using DPDK-compatible driver
>> ============================================
>> <none>
>>
>> Network devices using kernel driver
>> ===================================
>> 0000:00:19.0 'Ethernet Connection (2) I218-LM 15a0' if=eno1 drv=e1000e
>> unused= *Active*
>> 0000:01:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
>> if=ens4f0 drv=ixgbe unused=
>> 0000:01:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
>> if=ens4f1 drv=ixgbe unused=
>> 0000:04:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
>> if=ens2f0 drv=ixgbe unused=
>> 0000:04:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
>> if=ens2f1 drv=ixgbe unused=
>>
>> Other Network devices
>> =====================
>> <none>
>>
>> Crypto devices using DPDK-compatible driver
>> ===========================================
>> <none>
>>
>> Crypto devices using kernel driver
>> ==================================
>> <none>
>>
>> Other Crypto devices
>> ====================
>> <none>
>>
>> Eventdev devices using DPDK-compatible driver
>> =============================================
>> <none>
>>
>> Eventdev devices using kernel driver
>> ====================================
>> <none>
>>
>> Other Eventdev devices
>> ======================
>> <none>
>>
>> Mempool devices using DPDK-compatible driver
>> ============================================
>> <none>
>>
>> Mempool devices using kernel driver
>> ===================================
>> <none>
>>
>> Other Mempool devices
>> =====================
>> <none>
>> irisheyes0@irisheyes0-HP-Z440-Workstation:~$ sudo
>> /usr/share/dpdk/usertools/dpdk-devbind.py --bind=vfio-pci 01:00.0
>> [sudo] password for irisheyes0:
>> Error - no supported modules(DPDK driver) are loaded
>> irisheyes0@irisheyes0-HP-Z440-Workstation:~$
>> /usr/share/dpdk/usertools/dpdk-devbind.py --status
>>
>> Network devices using DPDK-compatible driver
>> ============================================
>> <none>
>>
>> Network devices using kernel driver
>> ===================================
>> 0000:00:19.0 'Ethernet Connection (2) I218-LM 15a0' if=eno1 drv=e1000e
>> unused= *Active*
>> 0000:01:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
>> if=ens4f0 drv=ixgbe unused=
>> 0000:01:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
>> if=ens4f1 drv=ixgbe unused=
>> 0000:04:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
>> if=ens2f0 drv=ixgbe unused=
>> 0000:04:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
>> if=ens2f1 drv=ixgbe unused=
>>
>> Other Network devices
>> =====================
>> <none>
>>
>> Crypto devices using DPDK-compatible driver
>> ===========================================
>> <none>
>>
>> Crypto devices using kernel driver
>> ==================================
>> <none>
>>
>> Other Crypto devices
>> ====================
>> <none>
>>
>> Eventdev devices using DPDK-compatible driver
>> =============================================
>> <none>
>>
>> Eventdev devices using kernel driver
>> ====================================
>> <none>
>>
>> Other Eventdev devices
>> ======================
>> <none>
>>
>> Mempool devices using DPDK-compatible driver
>> ============================================
>> <none>
>>
>> Mempool devices using kernel driver
>> ===================================
>> <none>
>>
>> Other Mempool devices
>> =====================
>> <none>
>> irisheyes0@irisheyes0-HP-Z440-Workstation:~$ sudo modprobe vfio-pci
>> irisheyes0@irisheyes0-HP-Z440-Workstation:~$
>> /usr/share/dpdk/usertools/dpdk-devbind.py --status
>>
>> Network devices using DPDK-compatible driver
>> ============================================
>> <none>
>>
>> Network devices using kernel driver
>> ===================================
>> 0000:00:19.0 'Ethernet Connection (2) I218-LM 15a0' if=eno1 drv=e1000e
>> unused=vfio-pci *Active*
>> 0000:01:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
>> if=ens4f0 drv=ixgbe unused=vfio-pci
>> 0000:01:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
>> if=ens4f1 drv=ixgbe unused=vfio-pci
>> 0000:04:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
>> if=ens2f0 drv=ixgbe unused=vfio-pci
>> 0000:04:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
>> if=ens2f1 drv=ixgbe unused=vfio-pci
>>
>> Other Network devices
>> =====================
>> <none>
>>
>> Crypto devices using DPDK-compatible driver
>> ===========================================
>> <none>
>>
>> Crypto devices using kernel driver
>> ==================================
>> <none>
>>
>> Other Crypto devices
>> ====================
>> <none>
>>
>> Eventdev devices using DPDK-compatible driver
>> =============================================
>> <none>
>>
>> Eventdev devices using kernel driver
>> ====================================
>> <none>
>>
>> Other Eventdev devices
>> ======================
>> <none>
>>
>> Mempool devices using DPDK-compatible driver
>> ============================================
>> <none>
>>
>> Mempool devices using kernel driver
>> ===================================
>> <none>
>>
>> Other Mempool devices
>> =====================
>> <none>
>> irisheyes0@irisheyes0-HP-Z440-Workstation:~$ sudo
>> /usr/share/dpdk/usertools/dpdk-devbind.py --bind=vfio-pci 01:00.0
>> Error: bind failed for 0000:01:00.0 - Cannot bind to driver vfio-pci
>> Error: unbind failed for 0000:01:00.0 - Cannot open /sys/bus/pci/drivers
>> //unbind
>> irisheyes0@irisheyes0-HP-Z440-Workstation:~$
>>
>>
>>
>> On Fri, Sep 6, 2019 at 6:02 PM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> Hi Nate,
>>> I'm using UHD 3.14.0.1.  I am not using DPDK.
>>>
>>> Regarding the tuning, I think I was not clear in my email.  I have no
>>> trouble streaming to RAM disk using the standard Radio->DDC->host graph.  I
>>> mentioned that I was running 2x50MS/s, but I can go up to 2x200MS/s with
>>> success.  My issue is that after adding the DmaFIFO to the Rx chain, I got
>>> timeouts (i.e., I suppose that the flow stopped for some reason) when
>>> running the graph Radio->DDC->DmaFIFO->host.  Even at 2x50MS/s.
>>>
>>> So, my question is: why is this happening?  What is wrong with my plan
>>> to insert the DmaFIFO in the Rx chain?  What would possibly cause the
>>> streaming to terminate such that my recv() loop times out (even with a 5s
>>> timeout)?
>>>
>>> Rob
>>>
>>>
>>>
>>> On Fri, Sep 6, 2019 at 12:56 PM Ettus Research Support <
>>> support@ettus.com> wrote:
>>>
>>>> Hi Rob,
>>>>
>>>> What version of UHD are you using?
>>>>
>>>> 2x RX 50 MS/s streams should work without much issue with a fast enough
>>>> host, especially to a ram disk.
>>>>
>>>> Are you using DPDK? DPDK support for X3xx was recently added to UHD and
>>>> will reduce the overhead on the host side, which can help quite a bit. Some
>>>> anecdotal testing I've done with a N310, with the native UHD driver, to
>>>> stream 2 channels full duplex, the minimum cpu freq I was able to run
>>>> without any flow control errors was 3.8 GHz. Using DPDK, I was able to run
>>>> 2x2 @ 125 MS/s with my CPU cores locked at 1.5 GHz with no flow control
>>>> errors. Using DPDK, it's possible to stream 2x2 @ 200e6 on the X3xx with a
>>>> SRAM FPGA image (it's not possible to TX at full rate using the native
>>>> driver and DRAM based FPGA).
>>>>
>>>> You could try the few things listed here
>>>> https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks
>>>>
>>>> One other bit to add, I've been able to stream 1 RX channel @ 200 MS/s
>>>> straight to disk using a Intel 750 Series PCIe SSD until it was full (circa
>>>> UHD 3.10.x). To do that, I had to use a sc16 host side data format and also
>>>> use a XFS file system instead of EXT4. The host was a i7-4790k @ 4.4 GHz. I
>>>> would recommend NVMe SSD drives now as they support faster rates than that
>>>> PCIe SSD.
>>>>
>>>>
>>>> Regards,
>>>> Nate Temple
>>>>
>>>> On Fri, Sep 6, 2019 at 8:37 AM Rob Kossler via USRP-users <
>>>> usrp-users@lists.ettus.com> wrote:
>>>>
>>>>> Hi,
>>>>> As part of an effort to improve capability to store incoming receive
>>>>> chain samples to files on my SSD without errors ('O' or 'D'), I decided to
>>>>> wire an X310 noc graph to include the DmaFIFO. My thought was that the
>>>>> DmaFIFO could better tolerate varying rates of sample consumption at the
>>>>> OS.
>>>>>
>>>>> Before trying this by streaming to a file on my SSD, I first ran a
>>>>> test which streamed to a RAM-based file (60 GB ram filesystem).  I used an
>>>>> X310/UBX160 with the default FPGA XG image and initiated a 2-channel
>>>>> receive at 50MS/s (using my C++ app & UHD).  To my surprise, I am getting
>>>>> frequent "timeouts" on receive, but not always at the same time.  In one
>>>>> case, the receive worked successfully for 28 secs (2 ch, 50 MS/s).  In
>>>>> other cases, it timed out immediately or after several seconds.  Note that
>>>>> I can reliably run this same test without error if I remove the DmaFIFO.
>>>>>
>>>>> The following works fine:
>>>>>   RxRadio -> DDC -> host file (in RAM file system)
>>>>>
>>>>> The following times-out at random times:
>>>>>   RxRadio -> DDC -> DmaFIFO -> host file (in RAM file system)
>>>>>
>>>>> What could be the cause?  Is there any reason the DmaFIFO shouldn't
>>>>> work in the receive chain?
>>>>>
>>>>> Rob
>>>>> _______________________________________________
>>>>> USRP-users mailing list
>>>>> USRP-users@lists.ettus.com
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>
>>>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--00000000000007c56b059226f05b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Michael,<div>This info was very helpful.</div><div>=
<br></div><div><div>Regarding &quot;recv_buff_size&quot;, I tried setting t=
o 100M and received a warning that it could not do so because rmem_max was =
only 33M.=C2=A0 Given that my rmem_max was set all along to 33M, would the =
recv_buff_size default to 33M or does it default to something lower such th=
at I still need to set this device arg?</div><div><br></div><div>Regarding =
cpufrequtils, I have done everything I can find to get the CPUs to stay at =
3.5GHz.=C2=A0 On Ubuntu 14.04, this worked well.=C2=A0 And, I have tried to=
 disable the intel_pstate driver with the appropriate grub setting, but I h=
ave not been successful in Ubuntu 18.04 at keeping the CPU freqs max-ed.</d=
iv><div><br></div><div>Finally, regarding DPDK, this seems like the way to =
go, but with the limited amount of info available, it is difficult to get t=
his properly configured.</div><div><br></div><div>Rob</div><div><br></div><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Mon, Sep 9, 2019 at 5:43 PM Michael West &lt;<a href=3D"mailto:mich=
ael.west@ettus.com">michael.west@ettus.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Rob,</di=
v><div><br></div><div>I would recommend not using the DMA FIFO block.=C2=A0=
 Although the DMA FIFO block should work, setting a larger socket buffer on=
 the host or using DPDK are much better options.=C2=A0 To use a larger sock=
et buffer, just use the device argument &quot;recv_buff_size=3D&lt;size&gt;=
&quot; and set the &lt;size&gt; to something reasonably large.<div><br></di=
v><div>As far as the Ds, there is flow=20
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
rs@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr">Hi Nate,<div>I looked at the link you sent (performance tuning tips) =
and your email.=C2=A0 Here are a few comments / questions:</div><div><ul><l=
i>Regarding my initial question, what could be the cause of WORSE performan=
ce when I inserted the DmaFIFO in the receive chain of my RFNoC graph? Reca=
ll the &quot;Radio-&gt;DDC-&gt;host&quot; produces no errors, but &quot;Rad=
io-&gt;DDC-&gt;DmaFIFO-&gt;host&quot; produces errors (timeouts)</li><li>Re=
garding &quot;cpufrequtils&quot; (from the performance tuning tips), I have=
 run the suggestions on my 18.04 Ubuntu system (Xeon E5-1620v4 3.5GHz, 4-co=
re/8-thread), but when I run cpufreq-info, there is often 1 or more CPUs th=
at show up at 1.6 GHz or so (while the majority report ~3.6 GHz).=C2=A0 It =
is not clear to me whether this utility is doing its job or not.</li><li>Re=
garding DPDK, I have tried to install it, but have had no success.=C2=A0 Th=
e instructions say that after updating grub with &quot;iommu=3Dpt intel_iom=
mu=3Don hugepages=3D2048&quot;, then &quot;After you reboot, you should see=
 /sys/kernel/iommu_groups populated&quot;.=C2=A0 I do have such a folder, b=
ut it is empty so I&#39;m not sure if this step was successful or not.=C2=
=A0 Furthermore, I am unable to run the dpdk-devbind python script to bind =
the vfio-pci driver to my Intel X520-DA2 NIC (see error message below)</li>=
<li>Regarding XFS vs EXT4, this is something I haven&#39;t tried yet, but p=
lan to.=C2=A0 I am completely unfamiliar with XFS.=C2=A0 My SSD is actually=
 4 Samsung EVO 850 SATA SSDs in a software RAID-0 (using mdadm).=C2=A0 If I=
 copy a huge file from my RAM disk to the SSD, I am able to verify transfer=
 rates greater than 1GB/s (I believe closer to 1.5GB/s).</li><li>Finally, r=
egarding &quot;D&quot; (sequence errors), what is the possible cause?=C2=A0=
 These are the most frustrating errors because their cause is a mystery to =
me.=C2=A0 I fully expect that when my host PC is too slow to keep up with t=
he torrent of data coming from the USRP that it should eventually backpress=
ure all the way to the Radio which will then generate Overflows because it =
has no place to send the A/D data.=C2=A0 So, if I was only seeing &quot;O&q=
uot;, it would make sense to me.=C2=A0 But, the &quot;D&quot; makes no sens=
e to me in my point-to-point direct connection between host and USRP.=C2=A0=
 Do you know of any root cause for &quot;D&quot;?</li></ul><div>Thanks.</di=
v><div>Rob</div><div><br></div><div><b>DPDK error messages during dpdk-devb=
ind.py</b></div><div>irisheyes0@irisheyes0-HP-Z440-Workstation:~$ /usr/shar=
e/dpdk/usertools/dpdk-devbind.py --status<br><br>Network devices using DPDK=
-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<br>&lt;none&gt;<br><br>Network devices using kernel driver<br>=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br>0000:00:19.0 &#39;Ethernet Connection (2) I218-=
LM 15a0&#39; if=3Deno1 drv=3De1000e unused=3D *Active*<br>0000:01:00.0 &#39=
;82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb&#39; if=3Dens4f0 drv=
=3Dixgbe unused=3D <br>0000:01:00.1 &#39;82599ES 10-Gigabit SFI/SFP+ Networ=
k Connection 10fb&#39; if=3Dens4f1 drv=3Dixgbe unused=3D <br>0000:04:00.0 &=
#39;82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb&#39; if=3Dens2f0 dr=
v=3Dixgbe unused=3D <br>0000:04:00.1 &#39;82599ES 10-Gigabit SFI/SFP+ Netwo=
rk Connection 10fb&#39; if=3Dens2f1 drv=3Dixgbe unused=3D <br><br>Other Net=
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
.py --bind=3Dvfio-pci 01:00.0<br>[sudo] password for irisheyes0: <br>Error =
- no supported modules(DPDK driver) are loaded<br>irisheyes0@irisheyes0-HP-=
Z440-Workstation:~$ /usr/share/dpdk/usertools/dpdk-devbind.py --status<br><=
br>Network devices using DPDK-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Network devices us=
ing kernel driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>0000:00:19.0 &#39;Et=
hernet Connection (2) I218-LM 15a0&#39; if=3Deno1 drv=3De1000e unused=3D *A=
ctive*<br>0000:01:00.0 &#39;82599ES 10-Gigabit SFI/SFP+ Network Connection =
10fb&#39; if=3Dens4f0 drv=3Dixgbe unused=3D <br>0000:01:00.1 &#39;82599ES 1=
0-Gigabit SFI/SFP+ Network Connection 10fb&#39; if=3Dens4f1 drv=3Dixgbe unu=
sed=3D <br>0000:04:00.0 &#39;82599ES 10-Gigabit SFI/SFP+ Network Connection=
 10fb&#39; if=3Dens2f0 drv=3Dixgbe unused=3D <br>0000:04:00.1 &#39;82599ES =
10-Gigabit SFI/SFP+ Network Connection 10fb&#39; if=3Dens2f1 drv=3Dixgbe un=
used=3D <br><br>Other Network devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Crypto devices using =
DPDK-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<br>&lt;none&gt;<br><br>Crypto devices using kernel driver<br>=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Other Crypto devices<br>=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><=
br>Eventdev devices using DPDK-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Eventdev dev=
ices using kernel driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none=
&gt;<br><br>Other Eventdev devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Mempool devices using=
 DPDK-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<br>&lt;none&gt;<br><br>Mempool devices using kernel driver<br>=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Other Mempool devices<br=
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;non=
e&gt;<br>irisheyes0@irisheyes0-HP-Z440-Workstation:~$ sudo modprobe vfio-pc=
i<br>irisheyes0@irisheyes0-HP-Z440-Workstation:~$ /usr/share/dpdk/usertools=
/dpdk-devbind.py --status<br><br>Network devices using DPDK-compatible driv=
er<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none=
&gt;<br><br>Network devices using kernel driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D<br>0000:00:19.0 &#39;Ethernet Connection (2) I218-LM 15a0&#39; if=3D=
eno1 drv=3De1000e unused=3Dvfio-pci *Active*<br>0000:01:00.0 &#39;82599ES 1=
0-Gigabit SFI/SFP+ Network Connection 10fb&#39; if=3Dens4f0 drv=3Dixgbe unu=
sed=3Dvfio-pci <br>0000:01:00.1 &#39;82599ES 10-Gigabit SFI/SFP+ Network Co=
nnection 10fb&#39; if=3Dens4f1 drv=3Dixgbe unused=3Dvfio-pci <br>0000:04:00=
.0 &#39;82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb&#39; if=3Dens2f=
0 drv=3Dixgbe unused=3Dvfio-pci <br>0000:04:00.1 &#39;82599ES 10-Gigabit SF=
I/SFP+ Network Connection 10fb&#39; if=3Dens2f1 drv=3Dixgbe unused=3Dvfio-p=
ci <br><br>Other Network devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Crypto devices using DPDK-c=
ompatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<br>&lt;none&gt;<br><br>Crypto devices using kernel driver<br>=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Other Crypto devices<br>=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Eve=
ntdev devices using DPDK-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Eventdev devices u=
sing kernel driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<b=
r><br>Other Eventdev devices<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Mempool devices using DPDK-=
compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>&lt;none&gt;<br><br>Mempool devices using kernel driver<br>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt;<br><br>Other Mempool devices<br>=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>&lt;none&gt=
;<br>irisheyes0@irisheyes0-HP-Z440-Workstation:~$ sudo /usr/share/dpdk/user=
tools/dpdk-devbind.py --bind=3Dvfio-pci 01:00.0<br><span style=3D"backgroun=
d-color:rgb(255,255,0)">Error: bind failed for 0000:01:00.0 - Cannot bind t=
o driver vfio-pci<br>Error: unbind failed for 0000:01:00.0 - Cannot open /s=
ys/bus/pci/drivers</span>//unbind<br>irisheyes0@irisheyes0-HP-Z440-Workstat=
ion:~$=C2=A0<br><div></div></div><div><br></div><div><br></div></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri=
, Sep 6, 2019 at 6:02 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu"=
 target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Nate,</div><div>=
I&#39;m using UHD 3.14.0.1.=C2=A0 I am not using DPDK.</div><div><br></div>=
<div>Regarding the tuning, I think I was not clear in my email.=C2=A0 I hav=
e no trouble streaming to RAM disk using the standard Radio-&gt;DDC-&gt;hos=
t graph.=C2=A0 I mentioned that I was running 2x50MS/s, but I can go up to =
2x200MS/s with success.=C2=A0 My issue is that after adding the DmaFIFO to =
the Rx chain, I got timeouts (i.e., I suppose that the flow stopped for som=
e reason) when running the graph Radio-&gt;DDC-&gt;DmaFIFO-&gt;host.=C2=A0 =
Even at 2x50MS/s.=C2=A0=C2=A0</div><div><br></div><div>So, my question is: =
why is this happening?=C2=A0 What is wrong with my plan to insert the DmaFI=
FO in the Rx chain?=C2=A0 What would possibly cause the streaming to termin=
ate such that my recv() loop times out (even with a 5s timeout)?</div><div>=
<br></div><div>Rob</div><div><br></div><div><br></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 6, 2019 at 12:5=
6 PM Ettus Research Support &lt;<a href=3D"mailto:support@ettus.com" target=
=3D"_blank">support@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr"><div style=3D"font-family:ver=
dana,sans-serif">Hi Rob,<br><br>What version of UHD are you using?<br><br>2=
x RX 50 MS/s streams should work without much issue with a fast enough host=
, especially to a ram disk. <br><br>Are you using DPDK? DPDK support for X3=
xx was recently added to UHD and will reduce the overhead on the host side,=
 which can help quite a bit. Some anecdotal testing I&#39;ve done with a N3=
10, with the native UHD driver, to stream 2 channels full duplex, the minim=
um cpu freq I was able to run without any flow control errors was 3.8 GHz. =
Using DPDK, I was able to run 2x2 @ 125 MS/s with my CPU cores locked at 1.=
5 GHz with no flow control errors. Using DPDK, it&#39;s possible to stream =
2x2 @ 200e6 on the X3xx with a SRAM FPGA image (it&#39;s not possible to TX=
 at full rate using the native driver and DRAM based FPGA).<br><br>You coul=
d try the few things listed here <a href=3D"https://kb.ettus.com/USRP_Host_=
Performance_Tuning_Tips_and_Tricks" target=3D"_blank">https://kb.ettus.com/=
USRP_Host_Performance_Tuning_Tips_and_Tricks</a><br><br>One other bit to ad=
d, I&#39;ve been able to stream 1 RX channel @ 200 MS/s straight to disk us=
ing a Intel 750 Series PCIe SSD until it was full (circa UHD 3.10.x). To do=
 that, I had to use a sc16 host side data format and also use a XFS file sy=
stem instead of EXT4. The host was a i7-4790k @ 4.4 GHz. I would recommend =
NVMe SSD drives now as they support faster rates than that PCIe SSD. <br><b=
r><br>Regards,<br>Nate Temple</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 6, 2019 at 8:37 AM Rob Kossl=
er via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div>As part of a=
n effort to improve capability to store incoming receive chain samples to f=
iles on my SSD without errors (&#39;O&#39; or &#39;D&#39;), I decided to wi=
re an X310 noc graph to include the DmaFIFO. My thought was that the DmaFIF=
O could better tolerate varying rates of sample consumption at the OS.=C2=
=A0</div><div><br></div><div><div>Before trying this by streaming to a file=
 on my SSD, I first ran a test which streamed to a RAM-based file (60 GB ra=
m filesystem).=C2=A0 I used an X310/UBX160 with the default FPGA XG image a=
nd initiated a 2-channel receive at 50MS/s (using my C++ app &amp; UHD).=C2=
=A0 To my surprise, I am getting frequent &quot;timeouts&quot; on receive, =
but not always at the same time.=C2=A0 In one case, the receive worked succ=
essfully for 28 secs (2 ch, 50 MS/s).=C2=A0 In other cases, it timed out im=
mediately or after several seconds.=C2=A0 Note that I can reliably run this=
 same test without error if I remove the DmaFIFO.</div><div><br></div><div>=
The following works fine:</div><div>=C2=A0 RxRadio -&gt; DDC -&gt; host fil=
e (in RAM file system)</div><div><br></div><div>The following times-out at =
random times:</div><div></div></div><div>=C2=A0 RxRadio -&gt; DDC -&gt; Dma=
FIFO -&gt; host file (in RAM file system)</div><div><br></div><div>What cou=
ld be the cause?=C2=A0 Is there any reason the DmaFIFO shouldn&#39;t work i=
n the receive chain?</div><div><br></div><div>Rob</div></div>
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
</blockquote></div>

--00000000000007c56b059226f05b--


--===============4582179365159487435==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4582179365159487435==--

