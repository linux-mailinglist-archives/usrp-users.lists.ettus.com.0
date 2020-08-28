Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 732D1255965
	for <lists+usrp-users@lfdr.de>; Fri, 28 Aug 2020 13:31:45 +0200 (CEST)
Received: from [::1] (port=41530 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kBcbd-0006YV-Kd; Fri, 28 Aug 2020 07:31:41 -0400
Received: from mail-lj1-f173.google.com ([209.85.208.173]:32833)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <peter.langer41@googlemail.com>)
 id 1kBcbZ-0006SQ-QY
 for usrp-users@lists.ettus.com; Fri, 28 Aug 2020 07:31:37 -0400
Received: by mail-lj1-f173.google.com with SMTP id r13so929218ljm.0
 for <usrp-users@lists.ettus.com>; Fri, 28 Aug 2020 04:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=Ipz127X5R7tjOnETDf1s4VUb+H+4nSHexSGLFra/PN4=;
 b=aOYEEjNPcEyT61cFI2LEjJ5UUjMPP8icmHJ+6HYiWe/+MwkdKlz/mRYlpgdwE9zrWn
 J1+uzyEJyrUHpWeCDsqm3d/wpGjBw9/+soLn/6NgZXytXF9ifv+xgaRGZteDy7tYe1du
 /z+uSk7kuh4nNA0EzZhW5KJ/NdkfytN7/f3aszVMoBFjjFBlkhISa7u3zLNnl+2l2LvU
 kJgeJO5n4TuWwL8dukzy07UKvGpzEVlqHPpBbj7w8UaAMMrivy+P+IuWYwzazqK8ayUW
 Bw94+w5QSSyKCHgPNbQ8Q4BHco6UV6b5ODM0tiqoTQMibiDZIR9HAdY0mt74pnlO7kfQ
 BsJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=Ipz127X5R7tjOnETDf1s4VUb+H+4nSHexSGLFra/PN4=;
 b=ntbhd5DcA8Jy7LzRP7ozLnFRz/LhKda45c8fDkV5coEZaaegrPTn1Pfdnbm9kcp10X
 Tn38sqCn66UaIHU7o4kCWuH4rLlSWMemV4+qNEn2NJRYebBwsVC3/3mKGFBnHlgfy3mu
 Z8zOTy37dcJ/+7/rewnkEWayhfnT2lWEngwhWHv8CGX6M6edw4op7RrYqFk/pMBOJ9ye
 Y3MJw+DlxcX6xfDpf/eW25AUkLPsScpDSDF1TIPtX23/OEn6TaWDUizTGNTcw53XmV2p
 hhsuEaoceosgs7T+4+NSm+K1emU8ZqAh69uIzFplGJBBDx8D4zveUkGvkzHa/MlL85G4
 X4yw==
X-Gm-Message-State: AOAM532/m3IrhljrPNrWOl1CUvJ6JZ+BfUvXf59L9YoYBK+KsDl9ZN8H
 LW9PSwGGEHumogwb6/p1qe0K/wQl6RnfNdfNDYOXqQRiacE=
X-Google-Smtp-Source: ABdhPJz1Nh3BFnH3d82cs507DnnUsOvO4uIpG9rU2/sksGBC4BF7Yfw/naQ0jHBRjVeqq/8jsUJXUzn8y+G+iNOsYvQ=
X-Received: by 2002:a2e:6c07:: with SMTP id h7mr638504ljc.287.1598614255885;
 Fri, 28 Aug 2020 04:30:55 -0700 (PDT)
MIME-Version: 1.0
References: <CALpvgREVsUy5rDPUpLq-VoTO8-j1uPFe+cPpeQckdW3Ptb4TGQ@mail.gmail.com>
In-Reply-To: <CALpvgREVsUy5rDPUpLq-VoTO8-j1uPFe+cPpeQckdW3Ptb4TGQ@mail.gmail.com>
Date: Fri, 28 Aug 2020 13:30:44 +0200
Message-ID: <CALpvgRGY2Q5qOPvmAFDR8M58HrrumRsEew3kPiBVsi+XMAL5nw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Sporadic N310 kernel panics when under load
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
From: Peter Langer via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Peter Langer <peter.langer41@googlemail.com>
Content-Type: multipart/mixed; boundary="===============2809253981576365437=="
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

--===============2809253981576365437==
Content-Type: multipart/alternative; boundary="000000000000dadf1705adee629b"

--000000000000dadf1705adee629b
Content-Type: text/plain; charset="UTF-8"

Hi,

I've been dealing with that issue for some time now but...
finally noticed that the uboot image seems to tell the N310 that it has 4
GB of RAM.
The output of free -m tells me that it does not have 4GB of RAM. It has 1
GB.

There were some people on the Xilinx forums that had a similar problem with
kernel panics because their uboot device tree configuration specified this:

memory@0{
                   device_type = "memory";
                   reg = <0x0 0x40000000>
 }

So if i hexdump -C /proc/device-tree/memory/reg i get: 00 00 00 00 04 00 00
00

As i don't really have experience with configuring uboot, someone knows an
easy way to change that?

Kind regards,
Peter

Am Mi., 26. Aug. 2020 um 17:09 Uhr schrieb Peter Langer <
peter.langer41@googlemail.com>:

> Hi,
>
> on two different computers, that both have identical hardware specs we
> encountered stability issues with the N310 receiver. Here are the hardware
> specs for the computers, though we strongly suspect that the issue is with
> the software(kernel/drivers) present on the N310.
>
> The issue is that basically everything runs perfectly well until at some
> point it does not anymore and the device runs into a kernel panic and
> reboots. From our understanding of the linux kernel it must be inside some
> interrupt, because the kernel panic is not written to any logfile (we made
> logs permanent on the device to ensure that fact). It is _sometimes_ issued
> over SSH if we monitor with tail -f /var/log/messages (yes, we see it
> there, but it is not written to disk). This only happens if the N310 runs
> for a longer period of time - in our case between 1 to 3 days. We
> encountered that issue several times now and we verified it with the
> standard FPGA image.
>
> Our problem seems to be related (though with another device) to the issue
> that was mentioned in January in this thread:
> http://ettus.80997.x6.nabble.com/USRP-users-Kernel-Panic-with-v3-15-0-0-on-E320-td14098.html
>
> Aside from the snippet below there are no other messages printed to the
> messages log file.
>
> --Snippet from /var/log/messages--
> Aug 25 07:44:31 ni-n3xx-31AFFD1 kern.alert kernel: [82689.450921] Unable
> to handle kernel paging request at virtual address fffffffe
> Aug 25 07:44:31 ni-n3xx-31AFFD1 kern.alert kernel: [82689.458127] pgd =
> d3d33249
> Aug 25 07:44:31 ni-n3xx-31AFFD1 kern.alert kernel: [82689.460785]
> [fffffffe] *pgd=2fffd861, *pte=00000000, *ppte=00000000
> Aug 25 07:44:31 ni-n3xx-31AFFD1 kern.emerg kernel: [82689.467121] Internal
> error: Oops: 80000007 [#1] PREEMPT SMP ARM
>
> --Specs--
> Processor: AMD Ryzen Threadripper 3970X 32-Core Processor
> RAM: 256 GB RAM
> Network device: Intel X710-DA2 10GbE with SFP+ direct attach cables
> Direct attach cables: Cisco H10GB-10GB-CU3M
>
> The N310 device has the latest stable firmware/fpga image for UHD 3.15-LTS
> as of today:
> Mender: n3xx/meta-ettus-v3.15.0.0/n3xx_common_mender_default-v3.15.0.0.zip
> FPGA: n3xx/fpga-9ba275de0b/n3xx_n310_fpga_default-g9ba275de.zip
>
> we use the XG FPGA image present in the zipfile.
>
> Our test flowgraph with the standard FPGA image only features two radio
> blocks that stream at a master_clock_rate of 122.88 Mhz and are each
> connected to a DDC that decimates by a factor of 2 (though a factor of 3
> and 4 lead to the same issue) and then both connect to a null sink in
> gnuradio.
>
> We would appreciate anyone looking into reproducing that or any ideas how
> to resolve the issue.
>
> Kind regards,
> Peter
>

--000000000000dadf1705adee629b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;ve been dealing with that iss=
ue for some time now but...</div><div>finally noticed that the uboot image =
seems to tell the N310 that it has 4 GB of RAM.=C2=A0</div><div>The output =
of free -m tells me that it does not have 4GB of RAM. It has 1 GB.</div><di=
v><br></div><div>There were some people on the Xilinx forums that had a sim=
ilar problem with kernel panics because their uboot device tree configurati=
on=C2=A0specified this:</div><div><br></div><div>memory@0{ <br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0device_type =3D =
&quot;memory&quot;;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0reg =3D &lt;0x0 0x40000000&gt;<br>=C2=A0}<br><br></div><di=
v>So if i hexdump -C /proc/device-tree/memory/reg i get: 00 00 00 00 04 00 =
00 00</div><div><br></div><div>As i don&#39;t really have experience with c=
onfiguring uboot, someone knows an easy way to change that?</div><div><br><=
/div><div>Kind regards,</div><div>Peter</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">Am Mi., 26. Aug. 2020 um 17:09=
=C2=A0Uhr schrieb Peter Langer &lt;<a href=3D"mailto:peter.langer41@googlem=
ail.com">peter.langer41@googlemail.com</a>&gt;:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,=C2=A0<div><br></div><=
div>on two different computers, that both have identical hardware specs we =
encountered stability issues with the N310 receiver. Here are the hardware =
specs for the computers, though we strongly suspect that the issue is with =
the software(kernel/drivers) present on the N310.</div><div><br></div><div>=
The issue is that basically everything runs perfectly well until at some po=
int it does not anymore and the device runs into a kernel panic and reboots=
. From our understanding of the linux kernel it must be inside some interru=
pt, because the kernel panic is not written to any logfile (we made logs pe=
rmanent on the device to ensure that fact). It is _sometimes_ issued over S=
SH if we monitor with tail -f /var/log/messages (yes, we see it there, but =
it is not written to disk). This only happens if the N310 runs for a longer=
 period of time - in our case between 1 to 3 days. We encountered that issu=
e several times now and we verified it with the standard FPGA image.</div><=
div><br></div><div>Our problem seems to be related (though with another dev=
ice) to the issue that was mentioned in January in this thread:=C2=A0<a hre=
f=3D"http://ettus.80997.x6.nabble.com/USRP-users-Kernel-Panic-with-v3-15-0-=
0-on-E320-td14098.html" target=3D"_blank">http://ettus.80997.x6.nabble.com/=
USRP-users-Kernel-Panic-with-v3-15-0-0-on-E320-td14098.html</a></div><div><=
br></div><div>Aside from the snippet below there are no other messages prin=
ted to the messages log file.</div><div><br></div><div>--Snippet from /var/=
log/messages--</div><div>Aug 25 07:44:31 ni-n3xx-31AFFD1 kern.alert kernel:=
 [82689.450921] Unable to handle kernel paging request at virtual address f=
ffffffe</div><div>Aug 25 07:44:31 ni-n3xx-31AFFD1 kern.alert kernel: [82689=
.458127] pgd =3D d3d33249<br></div><div>Aug 25 07:44:31 ni-n3xx-31AFFD1 ker=
n.alert kernel: [82689.460785] [fffffffe] *pgd=3D2fffd861, *pte=3D00000000,=
 *ppte=3D00000000<br></div><div>Aug 25 07:44:31 ni-n3xx-31AFFD1 kern.emerg =
kernel: [82689.467121] Internal error: Oops: 80000007 [#1] PREEMPT SMP ARM<=
br></div><div><br></div><div>--Specs--</div><div>Processor: AMD Ryzen Threa=
dripper 3970X 32-Core Processor</div><div>RAM: 256 GB RAM</div><div>Network=
 device: Intel X710-DA2 10GbE with SFP+ direct attach cables</div><div>Dire=
ct attach cables: Cisco H10GB-10GB-CU3M</div><div><br></div><div>The N310 d=
evice has the latest stable firmware/fpga image for UHD 3.15-LTS as of toda=
y:</div><div>Mender:=C2=A0n3xx/meta-ettus-v3.15.0.0/n3xx_common_mender_defa=
ult-v3.15.0.0.zip</div><div>FPGA:=C2=A0n3xx/fpga-9ba275de0b/n3xx_n310_fpga_=
default-g9ba275de.zip</div><div><br></div><div>we use the XG FPGA image pre=
sent in the zipfile.</div><div><br></div><div>Our test flowgraph with the s=
tandard FPGA image only features two radio blocks that stream at a master_c=
lock_rate of 122.88 Mhz and are each connected to a DDC that decimates by a=
 factor of 2 (though a factor of 3 and 4 lead to the same issue) and then b=
oth connect to a null sink in gnuradio.</div><div><br></div><div>We would a=
ppreciate anyone looking into reproducing that or any ideas how to resolve =
the issue.</div><div><br></div><div>Kind regards,</div><div>Peter</div></di=
v>
</blockquote></div>

--000000000000dadf1705adee629b--


--===============2809253981576365437==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2809253981576365437==--

