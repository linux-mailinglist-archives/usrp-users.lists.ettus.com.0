Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3486A253302
	for <lists+usrp-users@lfdr.de>; Wed, 26 Aug 2020 17:10:28 +0200 (CEST)
Received: from [::1] (port=48590 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kAx4A-0006YK-6O; Wed, 26 Aug 2020 11:10:22 -0400
Received: from mail-lf1-f54.google.com ([209.85.167.54]:40132)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <peter.langer41@googlemail.com>)
 id 1kAx46-0006So-RX
 for usrp-users@lists.ettus.com; Wed, 26 Aug 2020 11:10:18 -0400
Received: by mail-lf1-f54.google.com with SMTP id j15so1177181lfg.7
 for <usrp-users@lists.ettus.com>; Wed, 26 Aug 2020 08:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=egeFq5/Wg4ThiLxiaAf0h9kVf7EU02vzMu8+9oNIUq4=;
 b=G/MYP24SzaHuXHmQzCK6tyUcswLwnswoccYs8RU4G+L6CKpr5GG8/y2xqrrG5DUuHc
 q7COO56+zOsA/njPq8Md7ZX40Y4Rtkmv7/hznvINs1Rumadg/4MfdGDZS6isws6I+2Bx
 bLpT71dViPb4rvFDPE378fCRJpmDQYVseKxApDYvoUmDHPdnxjbp6l4+VCEYMMFf4A7v
 T3QA+n7HLREESva4txOnl/0AV7n2pOL78rOmPsFVmoS7pE3NBmaqZkPpl1uZDisEqHwr
 vKw0z4Y5jRgkpT1wt4CugkuI843onxQTcA9+dafWIi4eyx+fxBK9szPeYVKb969uILSN
 lhFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=egeFq5/Wg4ThiLxiaAf0h9kVf7EU02vzMu8+9oNIUq4=;
 b=SanN8TjicR79Fx8aOd7TT1YsrOUKjtj8QuWITDSqwpNFommw5nPek8qDc0sQZiV5Ln
 No9R5aaWv1Uq328n7UwHItJdD9SdbGdJLvScY1E6FatzkcdNL2J8C2ZpWnxsLXdsgBFh
 +uknrbAtZAMZNwItGoqjhi0g6KsMxxc3cn9oGj4dKj1A5ZyGv33AQIG1mNLPy/AWYr/5
 HrwISiaO8ysgF6FFZZQxtHamBYHThFy10BuNobGZV86xXyoP7iL7M0IcVO6i5wU7WBs+
 tcm/lXjCEM8OBR4vxBTXSWzQonRj91aLQsEjo9U0q0gZkTdTMKv9OU4X1gWUe7NCoVI4
 xtUQ==
X-Gm-Message-State: AOAM5334j1SZs1I0bbMo2MXemcLOKAvzs0vhkz0g38rp0CZ+Wcd+wXBW
 MqO8VUHb7NwA8vdhqaKjWa335RIeZWoThp2579A0dCFK4Cc=
X-Google-Smtp-Source: ABdhPJyeU72tuillPireOBrOwcp/msQ3ED+23rSoH2FaiJD/o8Cv93hhvZ/fvuM+aeZaxDTqCv18aTQAqpHodK1wGYM=
X-Received: by 2002:ac2:5df5:: with SMTP id z21mr3329358lfq.29.1598454572627; 
 Wed, 26 Aug 2020 08:09:32 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 26 Aug 2020 17:09:21 +0200
Message-ID: <CALpvgREVsUy5rDPUpLq-VoTO8-j1uPFe+cPpeQckdW3Ptb4TGQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Sporadic N310 kernel panics when under load
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
Content-Type: multipart/mixed; boundary="===============2581536048274724876=="
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

--===============2581536048274724876==
Content-Type: multipart/alternative; boundary="000000000000fdbf6305adc934f4"

--000000000000fdbf6305adc934f4
Content-Type: text/plain; charset="UTF-8"

Hi,

on two different computers, that both have identical hardware specs we
encountered stability issues with the N310 receiver. Here are the hardware
specs for the computers, though we strongly suspect that the issue is with
the software(kernel/drivers) present on the N310.

The issue is that basically everything runs perfectly well until at some
point it does not anymore and the device runs into a kernel panic and
reboots. From our understanding of the linux kernel it must be inside some
interrupt, because the kernel panic is not written to any logfile (we made
logs permanent on the device to ensure that fact). It is _sometimes_ issued
over SSH if we monitor with tail -f /var/log/messages (yes, we see it
there, but it is not written to disk). This only happens if the N310 runs
for a longer period of time - in our case between 1 to 3 days. We
encountered that issue several times now and we verified it with the
standard FPGA image.

Our problem seems to be related (though with another device) to the issue
that was mentioned in January in this thread:
http://ettus.80997.x6.nabble.com/USRP-users-Kernel-Panic-with-v3-15-0-0-on-E320-td14098.html

Aside from the snippet below there are no other messages printed to the
messages log file.

--Snippet from /var/log/messages--
Aug 25 07:44:31 ni-n3xx-31AFFD1 kern.alert kernel: [82689.450921] Unable to
handle kernel paging request at virtual address fffffffe
Aug 25 07:44:31 ni-n3xx-31AFFD1 kern.alert kernel: [82689.458127] pgd =
d3d33249
Aug 25 07:44:31 ni-n3xx-31AFFD1 kern.alert kernel: [82689.460785]
[fffffffe] *pgd=2fffd861, *pte=00000000, *ppte=00000000
Aug 25 07:44:31 ni-n3xx-31AFFD1 kern.emerg kernel: [82689.467121] Internal
error: Oops: 80000007 [#1] PREEMPT SMP ARM

--Specs--
Processor: AMD Ryzen Threadripper 3970X 32-Core Processor
RAM: 256 GB RAM
Network device: Intel X710-DA2 10GbE with SFP+ direct attach cables
Direct attach cables: Cisco H10GB-10GB-CU3M

The N310 device has the latest stable firmware/fpga image for UHD 3.15-LTS
as of today:
Mender: n3xx/meta-ettus-v3.15.0.0/n3xx_common_mender_default-v3.15.0.0.zip
FPGA: n3xx/fpga-9ba275de0b/n3xx_n310_fpga_default-g9ba275de.zip

we use the XG FPGA image present in the zipfile.

Our test flowgraph with the standard FPGA image only features two radio
blocks that stream at a master_clock_rate of 122.88 Mhz and are each
connected to a DDC that decimates by a factor of 2 (though a factor of 3
and 4 lead to the same issue) and then both connect to a null sink in
gnuradio.

We would appreciate anyone looking into reproducing that or any ideas how
to resolve the issue.

Kind regards,
Peter

--000000000000fdbf6305adc934f4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<div><br></div><div>on two different computers, t=
hat both have identical hardware specs we encountered stability issues with=
 the N310 receiver. Here are the hardware specs for the computers, though w=
e strongly suspect that the issue is with the software(kernel/drivers) pres=
ent on the N310.</div><div><br></div><div>The issue is that basically every=
thing runs perfectly well until at some point it does not anymore and the d=
evice runs into a kernel panic and reboots. From our understanding of the l=
inux kernel it must be inside some interrupt, because the kernel panic is n=
ot written to any logfile (we made logs permanent on the device to ensure t=
hat fact). It is _sometimes_ issued over SSH if we monitor with tail -f /va=
r/log/messages (yes, we see it there, but it is not written to disk). This =
only happens if the N310 runs for a longer period of time - in our case bet=
ween 1 to 3 days. We encountered that issue several times now and we verifi=
ed it with the standard FPGA image.</div><div><br></div><div>Our problem se=
ems to be related (though with another device) to the issue that was mentio=
ned in January in this thread:=C2=A0<a href=3D"http://ettus.80997.x6.nabble=
.com/USRP-users-Kernel-Panic-with-v3-15-0-0-on-E320-td14098.html">http://et=
tus.80997.x6.nabble.com/USRP-users-Kernel-Panic-with-v3-15-0-0-on-E320-td14=
098.html</a></div><div><br></div><div>Aside from the snippet below there ar=
e no other messages printed to the messages log file.</div><div><br></div><=
div>--Snippet from /var/log/messages--</div><div>Aug 25 07:44:31 ni-n3xx-31=
AFFD1 kern.alert kernel: [82689.450921] Unable to handle kernel paging requ=
est at virtual address fffffffe</div><div>Aug 25 07:44:31 ni-n3xx-31AFFD1 k=
ern.alert kernel: [82689.458127] pgd =3D d3d33249<br></div><div>Aug 25 07:4=
4:31 ni-n3xx-31AFFD1 kern.alert kernel: [82689.460785] [fffffffe] *pgd=3D2f=
ffd861, *pte=3D00000000, *ppte=3D00000000<br></div><div>Aug 25 07:44:31 ni-=
n3xx-31AFFD1 kern.emerg kernel: [82689.467121] Internal error: Oops: 800000=
07 [#1] PREEMPT SMP ARM<br></div><div><br></div><div>--Specs--</div><div>Pr=
ocessor: AMD Ryzen Threadripper 3970X 32-Core Processor</div><div>RAM: 256 =
GB RAM</div><div>Network device: Intel X710-DA2 10GbE with SFP+ direct atta=
ch cables</div><div>Direct attach cables: Cisco H10GB-10GB-CU3M</div><div><=
br></div><div>The N310 device has the latest stable firmware/fpga image for=
 UHD 3.15-LTS as of today:</div><div>Mender:=C2=A0n3xx/meta-ettus-v3.15.0.0=
/n3xx_common_mender_default-v3.15.0.0.zip</div><div>FPGA:=C2=A0n3xx/fpga-9b=
a275de0b/n3xx_n310_fpga_default-g9ba275de.zip</div><div><br></div><div>we u=
se the XG FPGA image present in the zipfile.</div><div><br></div><div>Our t=
est flowgraph with the standard FPGA image only features two radio blocks t=
hat stream at a master_clock_rate of 122.88 Mhz and are each connected to a=
 DDC that decimates by a factor of 2 (though a factor of 3 and 4 lead to th=
e same issue) and then both connect to a null sink in gnuradio.</div><div><=
br></div><div>We would appreciate anyone looking into reproducing that or a=
ny ideas how to resolve the issue.</div><div><br></div><div>Kind regards,</=
div><div>Peter</div></div>

--000000000000fdbf6305adc934f4--


--===============2581536048274724876==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2581536048274724876==--

