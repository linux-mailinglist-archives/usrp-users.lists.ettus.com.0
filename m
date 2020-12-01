Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A472CAA25
	for <lists+usrp-users@lfdr.de>; Tue,  1 Dec 2020 18:53:03 +0100 (CET)
Received: from [::1] (port=34598 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kk9pj-00067J-Jl; Tue, 01 Dec 2020 12:52:59 -0500
Received: from mail-lj1-f172.google.com ([209.85.208.172]:41006)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wandrewp@gmail.com>) id 1kk9pf-00061p-Vo
 for usrp-users@lists.ettus.com; Tue, 01 Dec 2020 12:52:56 -0500
Received: by mail-lj1-f172.google.com with SMTP id y7so4383680lji.8
 for <usrp-users@lists.ettus.com>; Tue, 01 Dec 2020 09:52:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5yAhUuvyTGKpBJB60pGT+NY9Hv/OPrcCgxHAbrdsT9k=;
 b=kJc+qfppWdhW6XwHg4KttNN753vJ4qifYJEZPESXc6apr+7iqeZ7cnnM+TYpPW76h2
 9nstuY/X9mq8ArvlxD0aaEfkSJy1Gx0z8aUtXcT4aj/D2UF+A0jX2w3Y1wD0Y3q/Dk4m
 E7SgEqYaCdlrpk1jGKlVOY/fYBBAE0g5mYBWZFLwYbmMIq897cyCpG/AQgrFSBtBVvMB
 rHq/A/pIdHkjCOWNRW4ebosrmwjB7AqcfuV36rwuhLzzdmzes3ccS4Wl78EpOlGFD2KU
 PBRywSxpBCm1LKnVMhGtgmOPeTLUNIqXSXFAQPMlgKhH8PzuQW5qNEMmtMmMkwML5gcM
 3BGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5yAhUuvyTGKpBJB60pGT+NY9Hv/OPrcCgxHAbrdsT9k=;
 b=Kq+yB3OzgC+m+yZHvB7sNvD9Qh274xG5jtWI5tjmJWQX3e6vdpAu5ZJT7uk6JnU0I+
 78Z/MNO2dPYc8JEabYMRgMNX8j7N+Ni4t2OCz6+MKWl4yCD8NN4X6AZ58N36pg0Q3DkG
 Gv6E+leSDBXofrKV7WiKkftuI4E6Fwuwlvp2U/12Tdapn1NTZ/esRx46vcjmsusckpNi
 mT2xyE5BBMZkZ0SR9nqRH0MpfED/vrEpdbdkV8Kh1HoA2/+E3J9nFujmr2dOGYKIeR8H
 udkyMlRCeAVGHGgXWeYhCQ2wYHz2ZQ06fXnVX4Dw1cIO4zEgWbig5lxqHinAbJfUuYXJ
 HGKQ==
X-Gm-Message-State: AOAM531hU8ewZNf9+ZL2wOzKIwoVXE0rmqv762Ffwm17eo305CJ17wFY
 bAPG7W0JuUdafTuiTdHtXBABP9QWOWsRY4OFoe4=
X-Google-Smtp-Source: ABdhPJyTIcIYQ83yWzoj34jPlDk0bQ/f3lEjP+mUvqOj9ZDkHJX1pFw94AZyj5Ch/h1mSxiaaQcw5pR/2SR1H6AMPYo=
X-Received: by 2002:a2e:3608:: with SMTP id d8mr1950091lja.68.1606845134485;
 Tue, 01 Dec 2020 09:52:14 -0800 (PST)
MIME-Version: 1.0
References: <CAB50+dSat-OFqtA38AxNiftepxCP4d=LuxrVjbLMKOtu6q+krg@mail.gmail.com>
 <82C8BA12-2EC5-45E9-9446-1890860A8F30@gmail.com>
 <CAB50+dT2ah526Vw7gp7q0UYNw5iWA8zt0Gyx0hOhhSF5F1Lxag@mail.gmail.com>
 <CAB50+dSFc_DDhR=-dyN85vGG_utfRwhc1Dvjciv_q3K6U3_GcA@mail.gmail.com>
 <CAB50+dTqG7GiBOn=3vBMu=n5MNS-XvpJqsw_QryGkjeP=OWQkA@mail.gmail.com>
 <1129435812.2163671.1606502063242@mail.yahoo.com>
 <9771b8e7-c78f-d270-7bc0-a811ad19ff3e@balister.org>
 <CAB50+dRrvDhpqH3+jD+WRMx6=G8Dg91P4Z+xt7_39kVSakZ9UA@mail.gmail.com>
 <e7bf1d1a-39c4-a7a2-380b-0daf553d867f@balister.org>
In-Reply-To: <e7bf1d1a-39c4-a7a2-380b-0daf553d867f@balister.org>
Date: Tue, 1 Dec 2020 17:52:03 +0000
Message-ID: <CAB50+dTkR-tzW0hAk+gOhKJdTR-xTF_DBLga8ywzM=QwHkXBhQ@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Subject: Re: [USRP-users] Fwd: E310: Change MAC Address?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Andrew Payne via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andrew Payne <wandrewp@gmail.com>
Cc: Andrew Payne via USRP-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5514662821198146316=="
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

--===============5514662821198146316==
Content-Type: multipart/alternative; boundary="000000000000733cb405b56ac9cd"

--000000000000733cb405b56ac9cd
Content-Type: text/plain; charset="UTF-8"

That worked as planned, no more duplicate MAC addresses now.

As you can see from the following 3 boot message blocks (1. before, 2.
after applying said env settings, 3. thereafter) it knew the environment
MAC didn't match the ROM MAC.  But it's just a warning.

Thanks!

---------------------------------------------------------------------------------------
1. before
---------------------------------------------------------------------------------------
U-Boot 2018.07 (Dec 16 2019 - 20:52:43 +0000)

Model: NI Ettus Research E31x SDR
DRAM:  ECC disabled 1 GiB
MMC:   sdhci@e0100000: 0
Loading Environment from MMC... OK
In:    serial@e0000000
Out:   serial@e0000000
Err:   serial@e0000000
NI Ettus Research  E31x SG3 SDR Rev H s/n 31370F8
Net:   ZYNQ GEM: e000b000, phyaddr 0, interface rgmii-id

Warning: ethernet@e000b000 MAC addresses don't match:
Address in ROM is          00:80:2f:18:24:ef
Address in environment is  00:80:2f:19:4c:37
eth0: ethernet@e000b000
Automatic boot in 3s...
Enter 'noautoboot' to enter prompt without timeout
ni-e31x-uboot>

---------------------------------------------------------------------------------------
2. after applying said env settings
---------------------------------------------------------------------------------------
U-Boot 2018.07 (Dec 16 2019 - 20:52:43 +0000)

Model: NI Ettus Research E31x SDR
DRAM:  ECC disabled 1 GiB
MMC:   sdhci@e0100000: 0
Loading Environment from MMC... OK
In:    serial@e0000000
Out:   serial@e0000000
Err:   serial@e0000000
NI Ettus Research  E31x SG3 SDR Rev H s/n 31370F8
Net:   ZYNQ GEM: e000b000, phyaddr 0, interface rgmii-id

Warning: ethernet@e000b000 using MAC address from ROM
eth0: ethernet@e000b000
Automatic boot in 3s...
Enter 'noautoboot' to enter prompt without timeout
Saving Environment to MMC... Writing to redundant MMC(0)... OK
Copying FIT from SD to RAM...
5866988 bytes read in 336 ms (16.7 MiB/s)
## Loading kernel from FIT Image at 02000000 ...

---------------------------------------------------------------------------------------
3. thereafter
---------------------------------------------------------------------------------------
U-Boot 2018.07 (Dec 16 2019 - 20:52:43 +0000)

Model: NI Ettus Research E31x SDR
DRAM:  ECC disabled 1 GiB
MMC:   sdhci@e0100000: 0
Loading Environment from MMC... OK
In:    serial@e0000000
Out:   serial@e0000000
Err:   serial@e0000000
NI Ettus Research  E31x SG3 SDR Rev H s/n 31370F8
Net:   ZYNQ GEM: e000b000, phyaddr 0, interface rgmii-id
eth0: ethernet@e000b000
Automatic boot in 3s...
Enter 'noautoboot' to enter prompt without timeout
Copying FIT from SD to RAM...
5866988 bytes read in 336 ms (16.7 MiB/s)
## Loading kernel from FIT Image at 02000000 ...

On Fri, Nov 27, 2020 at 7:39 PM Philip Balister <philip@balister.org> wrote:

> OK try this at the u-boot prompt:
>
> env default -a
> env save
>
> and then
>
> reset
>
> This should reset the u-boot env to the default values and I think this
> resets the ethaddr variable. Then you write it to the  mmc (99%
> certain). On the next hard reset hopefully it reads the address from the
> eeprom.
>
> Philip
>
> On 11/27/20 2:20 PM, Andrew Payne wrote:
> > Thanks Aneesh but the decompiled dts file has no mention of the exact MAC
> > address for eth0, but just to read from the eeprom from what I can
> gather.
> > Plus an md5sum of the dtb file on the sdimg from Ettus is the same
> checksum
> > as an e310 that has booted.
> >
> > On Fri, Nov 27, 2020 at 1:40 PM Philip Balister <philip@balister.org>
> wrote:
> >
> >> On 11/27/20 1:34 PM, aneesh patel via USRP-users wrote:
> >>> Hi Andrew,
> >>> The MAC may be in the devicetree blobs in the boot area of the SD
> image.
> >>> You will need dtcedit to decompile, edit, and recompile as needed.
> >>
> >> I don't think so, since the first time the card boots it does read from
> >> the i2c eeprom.
> >>
> >> I'm guessing u-boot sets the ethaddr env var and saves it in the
> >> environment, but I forget where that might be saved. Need to review the
> >> u-boot configuration for setting about the u-boot env (maybe getting
> >> saved to the sd card).
> >>
> >> Anyone from Ettus paying attention? This is a pretty serious problem for
> >> people copying cards and using them in different units. The correct
> >> behavior is follow the MAC address programmed into the i2c eeprom.
> >>
> >> Philip
> >>
> >>> Amp
> >>>
> >>> Sent from Yahoo Mail on Android
> >>>
> >>>   On Fri, Nov 27, 2020 at 1:23 PM, Andrew Payne via USRP-users<
> >> usrp-users@lists.ettus.com> wrote:
> >>  _______________________________________________
> >>> USRP-users mailing list
> >>> USRP-users@lists.ettus.com
> >>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>>
> >>>
> >>>
> >>> _______________________________________________
> >>> USRP-users mailing list
> >>> USRP-users@lists.ettus.com
> >>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>>
> >>
> >
>

--000000000000733cb405b56ac9cd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>That worked as planned, no more duplicate MAC address=
es now.</div><div><br></div><div>As you can see from the following 3 boot m=
essage blocks (1. before, 2. after applying said env settings, 3. thereafte=
r) it knew the environment MAC didn&#39;t match the ROM MAC.=C2=A0 But it&#=
39;s just a warning.</div><div><br></div><div>Thanks!<br></div><div><br></d=
iv><div>-------------------------------------------------------------------=
--------------------</div><div>1. before</div><div>------------------------=
---------------------------------------------------------------</div>U-Boot=
 2018.07 (Dec 16 2019 - 20:52:43 +0000)<br><br>Model: NI Ettus Research E31=
x SDR<br>DRAM: =C2=A0ECC disabled 1 GiB<br>MMC: =C2=A0 sdhci@e0100000: 0<br=
>Loading Environment from MMC... OK<br>In: =C2=A0 =C2=A0serial@e0000000<br>=
Out: =C2=A0 serial@e0000000<br>Err: =C2=A0 serial@e0000000<br>NI Ettus Rese=
arch =C2=A0E31x SG3 SDR Rev H s/n 31370F8<br>Net: =C2=A0 ZYNQ GEM: e000b000=
, phyaddr 0, interface rgmii-id<br><br>Warning: ethernet@e000b000 MAC addre=
sses don&#39;t match:<br>Address in ROM is =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A000:80:2f:18:24:ef<br>Address in environment is =C2=A000:80:2f:19:4c:37<b=
r>eth0: ethernet@e000b000<br>Automatic boot in 3s...<br>Enter &#39;noautobo=
ot&#39; to enter prompt without timeout<br><div>ni-e31x-uboot&gt;</div><div=
><br></div><div>-----------------------------------------------------------=
----------------------------<br></div><div>2. after applying said env setti=
ngs</div><div>-------------------------------------------------------------=
--------------------------</div>U-Boot 2018.07 (Dec 16 2019 - 20:52:43 +000=
0)<br><br>Model: NI Ettus Research E31x SDR<br>DRAM: =C2=A0ECC disabled 1 G=
iB<br>MMC: =C2=A0 sdhci@e0100000: 0<br>Loading Environment from MMC... OK<b=
r>In: =C2=A0 =C2=A0serial@e0000000<br>Out: =C2=A0 serial@e0000000<br>Err: =
=C2=A0 serial@e0000000<br>NI Ettus Research =C2=A0E31x SG3 SDR Rev H s/n 31=
370F8<br>Net: =C2=A0 ZYNQ GEM: e000b000, phyaddr 0, interface rgmii-id<br><=
br>Warning: ethernet@e000b000 using MAC address from ROM<br>eth0: ethernet@=
e000b000<br>Automatic boot in 3s...<br>Enter &#39;noautoboot&#39; to enter =
prompt without timeout<br>Saving Environment to MMC... Writing to redundant=
 MMC(0)... OK<br>Copying FIT from SD to RAM...<br>5866988 bytes read in 336=
 ms (16.7 MiB/s)<br>## Loading kernel from FIT Image at 02000000 ...<br><di=
v><br></div><div>----------------------------------------------------------=
-----------------------------</div><div>3. thereafter<br></div><div>-------=
---------------------------------------------------------------------------=
-----</div><div>U-Boot 2018.07 (Dec 16 2019 - 20:52:43 +0000)<br><br>Model:=
 NI Ettus Research E31x SDR<br>DRAM: =C2=A0ECC disabled 1 GiB<br>MMC: =C2=
=A0 sdhci@e0100000: 0<br>Loading Environment from MMC... OK<br>In: =C2=A0 =
=C2=A0serial@e0000000<br>Out: =C2=A0 serial@e0000000<br>Err: =C2=A0 serial@=
e0000000<br>NI Ettus Research =C2=A0E31x SG3 SDR Rev H s/n 31370F8<br>Net: =
=C2=A0 ZYNQ GEM: e000b000, phyaddr 0, interface rgmii-id<br>eth0: ethernet@=
e000b000<br>Automatic boot in 3s...<br>Enter &#39;noautoboot&#39; to enter =
prompt without timeout<br>Copying FIT from SD to RAM...<br>5866988 bytes re=
ad in 336 ms (16.7 MiB/s)<br>## Loading kernel from FIT Image at 02000000 .=
..</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Fri, Nov 27, 2020 at 7:39 PM Philip Balister &lt;<a href=3D"mail=
to:philip@balister.org">philip@balister.org</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">OK try this at the u-boot prompt=
:<br>
<br>
env default -a<br>
env save<br>
<br>
and then<br>
<br>
reset<br>
<br>
This should reset the u-boot env to the default values and I think this<br>
resets the ethaddr variable. Then you write it to the=C2=A0 mmc (99%<br>
certain). On the next hard reset hopefully it reads the address from the<br=
>
eeprom.<br>
<br>
Philip<br>
<br>
On 11/27/20 2:20 PM, Andrew Payne wrote:<br>
&gt; Thanks Aneesh but the decompiled dts file has no mention of the exact =
MAC<br>
&gt; address for eth0, but just to read from the eeprom from what I can gat=
her.<br>
&gt; Plus an md5sum of the dtb file on the sdimg from Ettus is the same che=
cksum<br>
&gt; as an e310 that has booted.<br>
&gt; <br>
&gt; On Fri, Nov 27, 2020 at 1:40 PM Philip Balister &lt;<a href=3D"mailto:=
philip@balister.org" target=3D"_blank">philip@balister.org</a>&gt; wrote:<b=
r>
&gt; <br>
&gt;&gt; On 11/27/20 1:34 PM, aneesh patel via USRP-users wrote:<br>
&gt;&gt;&gt; Hi Andrew,<br>
&gt;&gt;&gt; The MAC may be in the devicetree blobs in the boot area of the=
 SD image.<br>
&gt;&gt;&gt; You will need dtcedit to decompile, edit, and recompile as nee=
ded.<br>
&gt;&gt;<br>
&gt;&gt; I don&#39;t think so, since the first time the card boots it does =
read from<br>
&gt;&gt; the i2c eeprom.<br>
&gt;&gt;<br>
&gt;&gt; I&#39;m guessing u-boot sets the ethaddr env var and saves it in t=
he<br>
&gt;&gt; environment, but I forget where that might be saved. Need to revie=
w the<br>
&gt;&gt; u-boot configuration for setting about the u-boot env (maybe getti=
ng<br>
&gt;&gt; saved to the sd card).<br>
&gt;&gt;<br>
&gt;&gt; Anyone from Ettus paying attention? This is a pretty serious probl=
em for<br>
&gt;&gt; people copying cards and using them in different units. The correc=
t<br>
&gt;&gt; behavior is follow the MAC address programmed into the i2c eeprom.=
<br>
&gt;&gt;<br>
&gt;&gt; Philip<br>
&gt;&gt;<br>
&gt;&gt;&gt; Amp<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Sent from Yahoo Mail on Android<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0On Fri, Nov 27, 2020 at 1:23 PM, Andrew Payne via =
USRP-users&lt;<br>
&gt;&gt; <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">us=
rp-users@lists.ettus.com</a>&gt; wrote:<br>
&gt;&gt;=C2=A0 _______________________________________________<br>
&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank=
">USRP-users@lists.ettus.com</a><br>
&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_=
lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank=
">USRP-users@lists.ettus.com</a><br>
&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_=
lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt; <br>
</blockquote></div>

--000000000000733cb405b56ac9cd--


--===============5514662821198146316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5514662821198146316==--

