Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC21C8274CB
	for <lists+usrp-users@lfdr.de>; Mon,  8 Jan 2024 17:16:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 95CDE384EF3
	for <lists+usrp-users@lfdr.de>; Mon,  8 Jan 2024 11:16:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1704730591; bh=BfgsZzr/9p0ED3HIhPK8CQjKKqwdiINtDHHjVvzeREk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=lgwjZ5IJXoNNfavpmE6J7/7U6VLHBoxdo2q0d8P5yw32Usd4DBg8/4fG3B4+S7cni
	 6fysy3KPNRD1MwOytEhJIRdDKrI1fsZ2GlPeSOLDeMYNUkXsxprpbwOOm3oeBuTCIb
	 pTv3yAFqQ3zYz460e8ajn3xedrl0woqRBCJEG6u2H1/WZ4KOl3K1wrTzear/GC+gan
	 NVyS/72GhnpHJ1dyJZEJmY1z2llCiaXL8i/7jm8a65ZLVYpIx3engNEwe8zYGixBW4
	 t+2/SUYQWJ35RH3gHTtGRnLgkgR+foI4nSlkymLqeUaNRF87ubrHDHiE7Q0LNI9FaS
	 SyJxtT/A8CqkA==
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	by mm2.emwd.com (Postfix) with ESMTPS id D6BED38456F
	for <usrp-users@lists.ettus.com>; Mon,  8 Jan 2024 11:16:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="CTeNbq6r";
	dkim-atps=neutral
Received: by mail-il1-f182.google.com with SMTP id e9e14a558f8ab-3606ef221dbso13033865ab.2
        for <usrp-users@lists.ettus.com>; Mon, 08 Jan 2024 08:16:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1704730588; x=1705335388; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T0uUnwjD4LvYNhanNqc98oGvfLqYuqvAez/ds/9Df4s=;
        b=CTeNbq6rdfXJjR7ygD3XHZol04kYYlPpVWcGScN+gpYzFyx3bdIPElrZX7WVbaxc9t
         9f+yySxR7f7xWsa1m6NRo/dSrtIvrRZloBKnBgj9nqMOg+21HWowq34ODGrWvmVtzQdK
         N8ZZtFGSYhQeh/ds3FmIixYAh2RnIDQBFXElPE7SF228UoYD83t6VeSQJbYC2CA34dPQ
         G0dy5sMWIxnzWY5qvVfMSiu6OIn9Q9ySzK26/+HyKShsIERHmBqyQzE1kdu6OxwY/0Fn
         pT9Rc35oUYpI8PB9spRpKGOkhHH0gn7Ues377myUz9syTEAAAmiX5z0lMehf1+20CdDB
         ClVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704730588; x=1705335388;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T0uUnwjD4LvYNhanNqc98oGvfLqYuqvAez/ds/9Df4s=;
        b=kOq6zOmaaTfTJfHvxjL0t/m9Z3Y6LFi3yKXrfsEN6NT9EG6kK4cHJBUNXc4e+eTFWD
         /jLdufu/8Bl2TlZdma4hHhBX3wt55ZA4hk7Nk8C5j6lYfN8qsEq/zmAj32UlzYQo4/Fi
         uoNnyUqXOdaPlNVEJrHSbO48Ryy/pz9S8oLI1ID0u6GmWjv1u9lxmj/dREH1KKWlg//F
         1DBCJwyrmPQbO2zjnkyepoxfw+/KBb1XC+KOP4q5aRB5ufqPjEt21airSPKYUeb3i10j
         uAOTb7MyhA65ZxE44Fqs/1Kq3WJ0q036swXdoDkx1HF+zMxvkKRGCifN91XQ6rCOtXh/
         MzjA==
X-Gm-Message-State: AOJu0YwXmTWui8BrZVU9Fyb32Kfc3Gr33kU/OKHOwCKHOQ8Mmz+xu4ov
	ih6UAwKFxDHUy0q09Uu6KaJW5QT6LVpTwYPyne93GHja68B010U6JlhSWX7pPFA=
X-Google-Smtp-Source: AGHT+IGVcAcPEm6rZet19H+Y3Oloio8CUpBs1aB9CMwFLua4SORwn23vyGJYst70H3YPTcQUxRFQAnVPupxQBXzQuyg=
X-Received: by 2002:a05:6e02:1d97:b0:35d:2f2e:f17 with SMTP id
 h23-20020a056e021d9700b0035d2f2e0f17mr7130454ila.1.1704730587823; Mon, 08 Jan
 2024 08:16:27 -0800 (PST)
MIME-Version: 1.0
References: <Fuot9L9oqsqulvnSDET1JGzXtXsC2UkNbk6DalbMo@lists.ettus.com> <b708e42d-b752-43cc-92e1-930da2e7d99c@gmail.com>
In-Reply-To: <b708e42d-b752-43cc-92e1-930da2e7d99c@gmail.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Mon, 8 Jan 2024 11:16:16 -0500
Message-ID: <CAGNhwTO=vwBFLqL5Y8jgOt9GvUOJ=qPbWRVE+wO+sXCx-3SgQw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: ELL73BZKJS2K5ABBM2OD2RLBSORQY3GS
X-Message-ID-Hash: ELL73BZKJS2K5ABBM2OD2RLBSORQY3GS
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [WARNING] [DPDK::IO_SERVICE] Dropping packet: No link entry in rx table, Lookup error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ELL73BZKJS2K5ABBM2OD2RLBSORQY3GS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7152696813203422335=="

--===============7152696813203422335==
Content-Type: multipart/alternative; boundary="000000000000201556060e71853f"

--000000000000201556060e71853f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

What does "uhd_find_devices" return for "mgmt_addr" on the USRP? Is the 1
GbE/RJ-45 link connected to the same LAN as the host computer attached to
the USRP?

I'm literally right now working with another customer and Ettus R&D on this
exact same issue and we have determined that the 1 GbE / RJ-45 MGMT link
needs to be up and accessible from the same computer as is connected to the
USRP. If I remove the "mgmt_addr=3DXX" part of the device args. then the DP=
DK
link fails; same thing if I disable "eth0" on the USRP, or if I set
"mgmt_addr" to the link that will be overtaken by DPDK.

Worth a try! - MLD
---
Dr Michael L Dickens
NI is now part of Emerson!
Principal Emerson/NI/Ettus Technical Support Engineer
Teams: +1-512-683-5305
Cell: +1-512-585-1391
michael.dickens@ni.com
michael.dickens@ettus.com

DISCLAIMER: Any attached Code is provided As Is. It has not been tested or
validated as a product, for use in a deployed application or system, or for
use in hazardous environments. You assume all risks for use of the Code.
Use of the Code is subject to terms of the licenses to the UHD or RFNoC
code with which the Code is used. Standard licenses to UHD and RFNoC can be
found at https://www.ettus.com/sdr-software/licenses/ .

NI will only perform services based on its understanding and condition that
the goods or services (i) are not for the use in the production or
development of any item produced, purchased, or ordered by any entity with
a footnote 1 designation in the license requirement column of Supplement
No. 4 to Part 744, U.S. Export Administration Regulations and (ii) such a
company is not a party to the transaction.  If our understanding is
incorrect, please notify us immediately because a specific authorization
may be required from the U.S. Commerce Department before the transaction
may proceed further.


On Wed, Jan 3, 2024 at 9:42=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmail=
.com>
wrote:

> On 03/01/2024 15:18, jmaloyan@umass.edu wrote:
>
> Hello,
>
> I am currently trying to use DPDK, however, there is an error I currently
> am unable to resolve.
>
> ./benchmark_rate --rx_rate 245.76e6 --rx_channels 0 --tx_rate 245.76e6
> --tx_channels 0 --args "addr=3D192.168.10.2,use_dpdk=3D1"
>
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11;
> UHD_4.5.0.main-2-ga7657c80
>
> [WARNING] [PREFS] Loaded config from /root/.uhd. This location is
> considered deprecated, consider moving your config file to /root/.config
> instead.
>
> EAL: Detected 32 lcore(s)
>
> EAL: Detected 1 NUMA nodes
>
> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
>
> EAL: Selected IOVA mode 'PA'
>
> EAL: No available hugepages reported in hugepages-1048576kB
>
> EAL: Probing VFIO support...
>
> EAL: VFIO support initialized
>
> EAL: PCI device 0000:06:00.0 on NUMA socket -1
>
> EAL: probe driver: 15b3:1017 net_mlx5
>
> EAL: PCI device 0000:06:00.1 on NUMA socket -1
>
> EAL: probe driver: 15b3:1017 net_mlx5
>
> [WARNING] [DPDK::IO_SERVICE] Dropping packet: No link entry in rx table
>
> [00:00:00.000350] Creating the usrp device with:
> addr=3D192.168.10.2,use_dpdk=3D1...
>
> [WARNING] [DPDK::IO_SERVICE] Dropping packet: No link entry in rx table
>
> Error: LookupError: KeyError: No devices found for ----->
>
> Device Address:
>
> addr: 192.168.10.2
>
> use_dpdk: 1
>
> The error displays as a warning, however, the program immediately goes
> into a lookup error where it says the device can not be found. I do not
> know how to resolve either of these issues, or know if they are related.
> Any help is greatly appreciated.
>
> Thanks,
>
> Joe
>
> My *guess* is that DPDK hasn't been configured to use your NIC at the
> desired address (probably 192.168.10.1).
>
> Also, you haven't said which device type this is, nor what your exact
> physical network setup is.
>
> I'll note that for some USRPs, the 192.168.10.X address is used by defaul=
t
> by the 1Gbit configuration of the hardware.
>
> For example, on the X310, with the HG image, the SFP0 port has the
> 192.168.10.2 address, and operates at 1Gbit, while
>   the 2nd SFP port operates at 10Gbit, with an address of 192.168.40.2.
>
> I'll note further that using DPDK at 1GBit is unlikely to see much, if
> any, performance improvement.
>
> https://files.ettus.com/manual/page_usrp_x3x0.html
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000201556060e71853f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">What does &quot;uhd_find_devices&quot; return for &quot;mg=
mt_addr&quot; on the USRP? Is the 1 GbE/RJ-45 link connected to the same LA=
N as the host computer attached to the USRP?<div><br></div><div>I&#39;m lit=
erally right now working with another customer and Ettus R&amp;D on this ex=
act same issue and we have determined that the 1 GbE / RJ-45 MGMT link need=
s to be up and accessible from the same computer as is connected to the USR=
P. If I remove the &quot;mgmt_addr=3DXX&quot; part of the device args. then=
 the DPDK link fails; same thing if I disable &quot;eth0&quot; on the USRP,=
 or if I set &quot;mgmt_addr&quot; to the link that will be overtaken by DP=
DK.</div><div><br></div><div>Worth a try! - MLD</div><div><div><div dir=3D"=
ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><div style=3D"border:0px;font-stretch:inherit;line-height:inherit;margin:=
0px;padding:0px;vertical-align:baseline;color:rgb(0,0,0)"><font face=3D"ari=
al, sans-serif">---</font></div><div style=3D"border:0px;font-stretch:inher=
it;line-height:inherit;margin:0px;padding:0px;vertical-align:baseline;color=
:rgb(0,0,0)"><font face=3D"arial, sans-serif">Dr Michael L Dickens</font></=
div><div style=3D"border:0px;font-stretch:inherit;line-height:inherit;margi=
n:0px;padding:0px;vertical-align:baseline;color:rgb(0,0,0)"><font face=3D"a=
rial, sans-serif">NI is now part of Emerson!</font></div><div style=3D"bord=
er:0px;font-stretch:inherit;line-height:inherit;margin:0px;padding:0px;vert=
ical-align:baseline;color:rgb(0,0,0)"><font face=3D"arial, sans-serif">Prin=
cipal Emerson/NI/Ettus Technical Support Engineer</font></div><div style=3D=
"border:0px;font-stretch:inherit;line-height:inherit;margin:0px;padding:0px=
;vertical-align:baseline;color:rgb(0,0,0)"><font face=3D"arial, sans-serif"=
>Teams: +1-512-683-5305<br></font></div><div style=3D"border:0px;font-stret=
ch:inherit;line-height:inherit;margin:0px;padding:0px;vertical-align:baseli=
ne;color:rgb(0,0,0)"><font face=3D"arial, sans-serif">Cell: +1-512-585-1391=
</font></div><div style=3D"border:0px;font-stretch:inherit;line-height:inhe=
rit;margin:0px;padding:0px;vertical-align:baseline;color:rgb(0,0,0)"><font =
face=3D"arial, sans-serif"><a href=3D"mailto:michael.dickens@ni.com" target=
=3D"_blank">michael.dickens@ni.com</a></font></div><div style=3D"border:0px=
;font-stretch:inherit;line-height:inherit;margin:0px;padding:0px;vertical-a=
lign:baseline;color:rgb(0,0,0)"><font face=3D"arial, sans-serif"><a href=3D=
"mailto:michael.dickens@ettus.com" target=3D"_blank">michael.dickens@ettus.=
com</a></font></div><div style=3D"border:0px;font-stretch:inherit;line-heig=
ht:inherit;margin:0px;padding:0px;vertical-align:baseline;color:rgb(0,0,0)"=
><font face=3D"arial, sans-serif"><br></font></div><div style=3D"border:0px=
;font-stretch:inherit;line-height:inherit;margin:0px;padding:0px;vertical-a=
lign:baseline;color:rgb(0,0,0)"><font face=3D"arial, sans-serif">DISCLAIMER=
: Any attached Code is provided As Is. It has not been tested or validated =
as a product, for use in a deployed application or system, or for use in ha=
zardous environments. You assume all risks for use of the Code. Use of the =
Code is subject to terms of the licenses to the UHD or RFNoC code with whic=
h the Code is used. Standard licenses to UHD and RFNoC can be found at <a h=
ref=3D"https://www.ettus.com/sdr-software/licenses/" target=3D"_blank">http=
s://www.ettus.com/sdr-software/licenses/</a> .</font></div><div style=3D"bo=
rder:0px;font-stretch:inherit;line-height:inherit;margin:0px;padding:0px;ve=
rtical-align:baseline;color:rgb(0,0,0)"><font face=3D"arial, sans-serif"><b=
r></font></div><span style=3D"color:rgb(0,0,0)"><font face=3D"arial, sans-s=
erif">NI will only perform services based on its understanding and conditio=
n that the goods or services (i) are not for the use in the production or d=
evelopment of any item produced, purchased, or ordered by any entity with a=
 footnote 1 designation in the license requirement column of Supplement No.=
 4 to Part 744, U.S. Export Administration Regulations and (ii) such a comp=
any is not a party to the transaction.=C2=A0 If our understanding is incorr=
ect, please notify us immediately because a specific authorization may be r=
equired from the U.S. Commerce Department before the transaction may procee=
d further.</font></span><br></div></div></div></div></div></div></div><br><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Wed, Jan 3, 2024 at 9:42=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"=
mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 03/01/2024 15:18, <a href=3D"mailto:jmaloyan@umass.edu" target=
=3D"_blank">jmaloyan@umass.edu</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <p>Hello,</p>
      <p>I am currently trying to use DPDK, however, there is an error I
        currently am unable to resolve.</p>
      <p><code>./benchmark_rate --rx_rate 245.76e6 --rx_channels 0
          --tx_rate 245.76e6 --tx_channels 0 --args
          &quot;addr=3D192.168.10.2,use_dpdk=3D1&quot;</code></p>
      <p><code>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
          DPDK_19.11; UHD_4.5.0.main-2-ga7657c80</code></p>
      <p><code>[WARNING] [PREFS] Loaded config from /root/.uhd. This
          location is considered deprecated, consider moving your config
          file to /root/.config instead.</code></p>
      <p><code>EAL: Detected 32 lcore(s)</code></p>
      <p><code>EAL: Detected 1 NUMA nodes</code></p>
      <p><code>EAL: Multi-process socket /var/run/dpdk/rte/mp_socket</code>=
</p>
      <p><code>EAL: Selected IOVA mode &#39;PA&#39;</code></p>
      <p><code>EAL: No available hugepages reported in
          hugepages-1048576kB</code></p>
      <p><code>EAL: Probing VFIO support...</code></p>
      <p><code>EAL: VFIO support initialized</code></p>
      <p><code>EAL: PCI device 0000:06:00.0 on NUMA socket -1</code></p>
      <p><code>EAL: probe driver: 15b3:1017 net_mlx5</code></p>
      <p><code>EAL: PCI device 0000:06:00.1 on NUMA socket -1</code></p>
      <p><code>EAL: probe driver: 15b3:1017 net_mlx5</code></p>
      <p><code>[WARNING] [DPDK::IO_SERVICE] Dropping packet: No link
          entry in rx table</code></p>
      <p><code>[00:00:00.000350] Creating the usrp device with:
          addr=3D192.168.10.2,use_dpdk=3D1...</code></p>
      <p><code>[WARNING] [DPDK::IO_SERVICE] Dropping packet: No link
          entry in rx table</code></p>
      <p><code>Error: LookupError: KeyError: No devices found for
          -----&gt;</code></p>
      <p><code>Device Address:</code></p>
      <p><code> addr: 192.168.10.2</code></p>
      <p><code> use_dpdk: 1</code></p>
      <p>The error displays as a warning, however, the program
        immediately goes into a lookup error where it says the device
        can not be found. I do not know how to resolve either of these
        issues, or know if they are related. Any help is greatly
        appreciated.</p>
      <p>Thanks,</p>
      <p>Joe</p>
      <br>
    </blockquote>
    My *guess* is that DPDK hasn&#39;t been configured to use your NIC at
    the desired address (probably 192.168.10.1).<br>
    <br>
    Also, you haven&#39;t said which device type this is, nor what your
    exact physical network setup is.<br>
    <br>
    I&#39;ll note that for some USRPs, the 192.168.10.X address is used by
    default by the 1Gbit configuration of the hardware.<br>
    <br>
    For example, on the X310, with the HG image, the SFP0 port has the
    192.168.10.2 address, and operates at 1Gbit, while<br>
    =C2=A0 the 2nd SFP port operates at 10Gbit, with an address of
    192.168.40.2.<br>
    <br>
    I&#39;ll note further that using DPDK at 1GBit is unlikely to see much,
    if any, performance improvement.<br>
    <br>
    <a href=3D"https://files.ettus.com/manual/page_usrp_x3x0.html" target=
=3D"_blank">https://files.ettus.com/manual/page_usrp_x3x0.html</a><br>
    <br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000201556060e71853f--

--===============7152696813203422335==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7152696813203422335==--
