Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3364335591B
	for <lists+usrp-users@lfdr.de>; Tue,  6 Apr 2021 18:24:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1307B384139
	for <lists+usrp-users@lfdr.de>; Tue,  6 Apr 2021 12:23:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="BOPiRtSL";
	dkim-atps=neutral
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 1A6303840B8
	for <usrp-users@lists.ettus.com>; Tue,  6 Apr 2021 12:23:16 -0400 (EDT)
Received: by mail-ot1-f43.google.com with SMTP id w31-20020a9d36220000b02901f2cbfc9743so15159473otb.7
        for <usrp-users@lists.ettus.com>; Tue, 06 Apr 2021 09:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Mf1r+bjcheREt1ULRZly3WG7gXpyXnzoDvmfTDoIRZA=;
        b=BOPiRtSLILOrTxdkOaYbbcjGpsaR3Cr8lJH2oDtkvGZYc3BAiCA0H+0B8XzyXe7psZ
         glvlXi3/voxNAlAJeWMXml46ULiXvPmwLColyybS96eFdASetWFyWzxpXqhxjwDlxMzw
         74F6cpSZpCBh0mu2D8zi+c311xvjx/GpOs5PJK21fyYW52hHOrPhRDU8B75YwGOjL084
         dsqTi9+IgI3+v4bQAaEqyd25FxAgnXGgeCxPiNrZ3AawY3L+/u07m3EDLmAliPqWaAqQ
         iww92QMMvAkE3U4rd9ni14D8yZq7vjWjvC/cPh4UO5OcKiGWg8PhKj8Y45o+Gh5ldxFw
         5gMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Mf1r+bjcheREt1ULRZly3WG7gXpyXnzoDvmfTDoIRZA=;
        b=mBNejY+byKG+B/jwDGmS6N5KkxfJkhCbeBqNE4mc0fcZavLjPHDVxcKIh9rC/dgjdL
         XWbYlVAPeFShGPL1fWIFyH3ylVaIoUh7XUOfVPuHagzDm0EeW37amwkzPudw84uRJd7B
         eyGGk46P3dBT0aV9USf86a47vmTF2soJuV/ilWm+SHW0QPkGwEqnbQBnHyCut0fV5CCK
         eMJZNBuRX/LDrE9R3jadyn8295vVqovrl9Vdgd7Hk28Ni6wml/916U7i4zWJueOgNGld
         /5EDVXfT8mAd2Np9a5EPH72xq5P5XSZm7dPchGvZZfUl44Xwcxc+Y49sqny9Y/J0ME66
         iwVw==
X-Gm-Message-State: AOAM531iiS8f/pYb7dwIxn94PQHMG+PMK0Qi0Gy42JmiubpZem3tO76/
	L9rwyVrZI7/DHs+oK0AuKiXvxoHTMxpNBFTtB3l5rw==
X-Google-Smtp-Source: ABdhPJz2WLgmx5K3TcyJvotwK3Q1PfwoaiY6Oa/Mv+h2+7hBlvmq10RYd1rEJ8nx02jCvQ/FRVsDwVjeMEJVBJ/92MM=
X-Received: by 2002:a05:6830:161a:: with SMTP id g26mr9563918otr.302.1617726196240;
 Tue, 06 Apr 2021 09:23:16 -0700 (PDT)
MIME-Version: 1.0
References: <e642027b70c841ec87fde1edc61dcabb@campus.tu-berlin.de>
In-Reply-To: <e642027b70c841ec87fde1edc61dcabb@campus.tu-berlin.de>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 6 Apr 2021 12:23:05 -0400
Message-ID: <CAB__hTTEeTcNJJWQidAU3zRftkyHQGS51i9jBvn1Hxg_Pzs8Ow@mail.gmail.com>
To: "Chang, Kaixin" <k.chang@campus.tu-berlin.de>
Message-ID-Hash: MWGKCI4AHZFUUYWMFCOCCUSL7HR2SWXU
X-Message-ID-Hash: MWGKCI4AHZFUUYWMFCOCCUSL7HR2SWXU
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: dpdk, VFIO group is not viable
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MWGKCI4AHZFUUYWMFCOCCUSL7HR2SWXU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8332009923956503177=="

--===============8332009923956503177==
Content-Type: multipart/alternative; boundary="00000000000045976d05bf503b89"

--00000000000045976d05bf503b89
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Kasim,
There are some previous posts to the user's list around Feb 2-3, 2021
regarding some DPDK troubles I was having. In particular, Aaron Rossetto
mentioned putting just a few symlinks in a new folder and using the
dpdk_driver variable from uhd.conf to point to this folder.  This may be
helpful for your case.
Rob

On Tue, Apr 6, 2021 at 9:37 AM Chang, Kaixin <k.chang@campus.tu-berlin.de>
wrote:

> Dear Ettus team,
>
>
> I followed the instruction of
> https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD to enable dpdk for
> my X310, however I have an error when I execute benchmark_rate as sudo su
>
>
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-93-g=
3b9ced8fEAL: Detected 4 lcore(s)EAL: Detected 1 NUMA nodesEAL: Multi-proces=
s socket /var/run/dpdk/rte/mp_socketEAL: No free hugepages reported in huge=
pages-1048576kBEAL: Probing VFIO support...EAL: VFIO support initializedEAL=
: PCI device 0000:00:1f.6 on NUMA socket -1EAL:   Invalid NUMA socket, defa=
ult to 0EAL:   probe driver: 8086:15d7 net_e1000_emEAL: PCI device 0000:0e:=
00.0 on NUMA socket -1EAL:   Invalid NUMA socket, default to 0EAL:   probe =
driver: 8086:10fb net_ixgbeEAL:   0000:0e:00.0 VFIO group is not viable!EAL=
: Requested device 0000:0e:00.0 cannot be usedEAL: PCI device 0000:0e:00.1 =
on NUMA socket -1EAL:   Invalid NUMA socket, default to 0EAL:   probe drive=
r: 8086:10fb net_ixgbeEAL:   0000:0e:00.1 VFIO group is not viable!EAL: Req=
uested device 0000:0e:00.1 cannot be used[ERROR] [DPDK] No available DPDK d=
evices (ports) found![ERROR] [UHD] Device discovery error: RuntimeError: No=
 available DPDK devices (ports) found!EAL: FATAL: already called initializa=
tion.EAL: already called initialization.[ERROR] [DPDK] Error with EAL initi=
alization[ERROR] [X300] X300 Network discovery error RuntimeError: Error wi=
th EAL initialization[00:00:00.000506] Creating the usrp device with: addr=
=3D192.168.30.2,second_addr=3D192.168.40.2,use_dpdk=3D1...EAL: FATAL: alrea=
dy called initialization.EAL: already called initialization.[ERROR] [DPDK] =
Error with EAL initialization[ERROR] [UHD] Device discovery error: RuntimeE=
rror: Error with EAL initializationEAL: FATAL: already called initializatio=
n.EAL: already called initialization.[ERROR] [DPDK] Error with EAL initiali=
zation[ERROR] [X300] X300 Network discovery error RuntimeError: Error with =
EAL initializationError: LookupError: KeyError: No devices found for ----->=
Device Address:
>     addr: 192.168.30.2
>     second_addr: 192.168.40.2
>     use_dpdk: 1
>
> Why is 0000:0e:00.1 VFIO group is not viable!? I have checked
> dpdk-devbind --status-dev net and get
>
> Network devices using DPDK-compatible driver
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> 0000:0e:00.0 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
> drv=3Dvfio-pci unused=3Dixgbe
> 0000:0e:00.1 '82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb'
> drv=3Dvfio-pci unused=3Dixgbe
>
> Network devices using kernel driver
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> 0000:00:1f.6 'Ethernet Connection (4) I219-LM 15d7' if=3Denp0s31f6
> drv=3De1000e unused=3Dvfio-pci
> 0000:02:00.0 'Wireless 8265 / 8275 24fd' if=3Dwlp2s0 drv=3Diwlwifi
> unused=3Dvfio-pci
>
> which seems to be fine.
>
>
> thank you for your help
>
>
> sincerely
>
>
> Kasim
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000045976d05bf503b89
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Kasim,<div>There are some previous posts to the user&#3=
9;s list around Feb 2-3, 2021 regarding some DPDK troubles I was having. In=
 particular, Aaron Rossetto mentioned putting just a few symlinks in a new =
folder and using the dpdk_driver variable from uhd.conf to point to this fo=
lder.=C2=A0 This may be helpful for your case.</div><div>Rob</div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, A=
pr 6, 2021 at 9:37 AM Chang, Kaixin &lt;<a href=3D"mailto:k.chang@campus.tu=
-berlin.de" target=3D"_blank">k.chang@campus.tu-berlin.de</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_-6582435989516123375gmail-m_-5764693402685408802divtagde=
faultwrapper" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,=
Helvetica,sans-serif" dir=3D"ltr">
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
<pre style=3D"text-align:left"><font style=3D"font-size:10pt" size=3D"2">[I=
NFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-93-g3b9c=
ed8f</font>
<font style=3D"font-size:10pt" size=3D"2">EAL: Detected 4 lcore(s)</font>
<font style=3D"font-size:10pt" size=3D"2">EAL: Detected 1 NUMA nodes</font>
<font style=3D"font-size:10pt" size=3D"2">EAL: Multi-process socket /var/ru=
n/dpdk/rte/mp_socket</font>
<font style=3D"font-size:10pt" size=3D"2">EAL: No free hugepages reported i=
n hugepages-1048576kB</font>
<font style=3D"font-size:10pt" size=3D"2">EAL: Probing VFIO support...</fon=
t>
<font style=3D"font-size:10pt" size=3D"2">EAL: VFIO support initialized</fo=
nt>
<font style=3D"font-size:10pt" size=3D"2">EAL: PCI device 0000:00:1f.6 on N=
UMA socket -1</font>
<font style=3D"font-size:10pt" size=3D"2">EAL:   Invalid NUMA socket, defau=
lt to 0</font>
<font style=3D"font-size:10pt" size=3D"2">EAL:   probe driver: 8086:15d7 ne=
t_e1000_em</font>
<font style=3D"font-size:10pt" size=3D"2">EAL: PCI device 0000:0e:00.0 on N=
UMA socket -1</font>
<font style=3D"font-size:10pt" size=3D"2">EAL:   Invalid NUMA socket, defau=
lt to 0</font>
<font style=3D"font-size:10pt" size=3D"2">EAL:   probe driver: 8086:10fb ne=
t_ixgbe</font>
<font style=3D"font-size:10pt" size=3D"2">EAL:   0000:0e:00.0 VFIO group is=
 not viable!</font>
<font style=3D"font-size:10pt" size=3D"2">EAL: Requested device 0000:0e:00.=
0 cannot be used</font>
<font style=3D"font-size:10pt" size=3D"2">EAL: PCI device 0000:0e:00.1 on N=
UMA socket -1</font>
<font style=3D"font-size:10pt" size=3D"2">EAL:   Invalid NUMA socket, defau=
lt to 0</font>
<font style=3D"font-size:10pt" size=3D"2">EAL:   probe driver: 8086:10fb ne=
t_ixgbe</font>
<font style=3D"font-size:10pt" size=3D"2">EAL:   0000:0e:00.1 VFIO group is=
 not viable!</font>
<font style=3D"font-size:10pt" size=3D"2">EAL: Requested device 0000:0e:00.=
1 cannot be used</font>
<font style=3D"font-size:10pt" size=3D"2">[ERROR] [DPDK] No available DPDK =
devices (ports) found!</font>
<font style=3D"font-size:10pt" size=3D"2">[ERROR] [UHD] Device discovery er=
ror: RuntimeError: No available DPDK devices (ports) found!</font>
<font style=3D"font-size:10pt" size=3D"2">EAL: FATAL: already called initia=
lization.</font>
<font style=3D"font-size:10pt" size=3D"2">EAL: already called initializatio=
n.</font>
<font style=3D"font-size:10pt" size=3D"2">[ERROR] [DPDK] Error with EAL ini=
tialization</font>
<font style=3D"font-size:10pt" size=3D"2">[ERROR] [X300] X300 Network disco=
very error RuntimeError: Error with EAL initialization</font>
<font style=3D"font-size:10pt" size=3D"2">[00:00:00.000506] Creating the us=
rp device with: addr=3D192.168.30.2,second_addr=3D192.168.40.2,use_dpdk=3D1=
...</font>
<font style=3D"font-size:10pt" size=3D"2">EAL: FATAL: already called initia=
lization.</font>
<font style=3D"font-size:10pt" size=3D"2">EAL: already called initializatio=
n.</font>
<font style=3D"font-size:10pt" size=3D"2">[ERROR] [DPDK] Error with EAL ini=
tialization</font>
<font style=3D"font-size:10pt" size=3D"2">[ERROR] [UHD] Device discovery er=
ror: RuntimeError: Error with EAL initialization</font>
<font style=3D"font-size:10pt" size=3D"2">EAL: FATAL: already called initia=
lization.</font>
<font style=3D"font-size:10pt" size=3D"2">EAL: already called initializatio=
n.</font>
<font style=3D"font-size:10pt" size=3D"2">[ERROR] [DPDK] Error with EAL ini=
tialization</font>
<font style=3D"font-size:10pt" size=3D"2">[ERROR] [X300] X300 Network disco=
very error RuntimeError: Error with EAL initialization</font>
<font style=3D"font-size:10pt" size=3D"2">Error: LookupError: KeyError: No =
devices found for -----&gt;</font>
<font style=3D"font-size:10pt" size=3D"2">Device Address:</font>
    <font style=3D"font-size:10pt" size=3D"2">addr: 192.168.30.2</font>
    <font style=3D"font-size:10pt" size=3D"2">second_addr: 192.168.40.2</fo=
nt>
    <font style=3D"font-size:10pt" size=3D"2">use_dpdk: 1</font></pre>
</div>
Why is <font style=3D"font-size:10pt" size=3D"2">0000:0e:00.1 VFIO group is=
 not viable!</font>? I have checked dpdk-devbind --status-dev net and get
<span id=3D"gmail-m_-6582435989516123375gmail-m_-5764693402685408802ms-rter=
angepaste-end"></span><br>
<div><br>
Network devices using DPDK-compatible driver<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
0000:0e:00.0 &#39;82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb&#39; =
drv=3Dvfio-pci unused=3Dixgbe<br>
0000:0e:00.1 &#39;82599ES 10-Gigabit SFI/SFP+ Network Connection 10fb&#39; =
drv=3Dvfio-pci unused=3Dixgbe<br>
<br>
Network devices using kernel driver<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
0000:00:1f.6 &#39;Ethernet Connection (4) I219-LM 15d7&#39; if=3Denp0s31f6 =
drv=3De1000e unused=3Dvfio-pci
<br>
0000:02:00.0 &#39;Wireless 8265 / 8275 24fd&#39; if=3Dwlp2s0 drv=3Diwlwifi =
unused=3Dvfio-pci <br>
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
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000045976d05bf503b89--

--===============8332009923956503177==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8332009923956503177==--
