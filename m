Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C5E57EB01
	for <lists+usrp-users@lfdr.de>; Sat, 23 Jul 2022 03:13:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A423C383CD8
	for <lists+usrp-users@lfdr.de>; Fri, 22 Jul 2022 21:13:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658538835; bh=fgm97PqmrVPsFd2Rmdjb7ycda5D13ovYiMdMNA41MgM=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=jQGHQwbMHre4o75JIlB1xzgKgkItuEs2Mu/h5s+AsaKv2aiU1Ztgvo0c4eQ3+FeT3
	 GBtX2m8l0f+wRAgHamVj0KqJFNjoPHu2Ov6kQwnAlvCCDmSFrp2rCZLWYuWPVpBcRk
	 Mgx4ZeHZVsjsspLz23ud3ZUjDLs9khwC5yfhVEJWU42pQJ7e78o8BaZDkIatxv3Szi
	 IJ3CJwF+FaHncrhk96Qirel0FXPnj/nH6fAEJS/THw6ShdIi0X+P+I+0ECBn/qV85g
	 90jxFBTCk3axIa91jYhNgaGkt/YuCSGSRNo/LQX7xlP2tABs4EnaWiA0fd8IGHRxVN
	 IxeF38Z2ASTIA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 97E813839A4
	for <usrp-users@lists.ettus.com>; Fri, 22 Jul 2022 21:12:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658538773; bh=8zr3HE/UHQm3gQzVhhL3SkT0DkNd+PzTDe4mzjkwhDc=;
	h=Date:To:From:Subject:From;
	b=VH0h9uxqoA0XVXbCRjv001W6QrfViJC+AzrZOgTdmR1M2WzJhhvEWqGqEw8ESTqon
	 WECQOJfpq8gkdZ5iwgquTht2nbwEnHBNlYuWHpyaBKD9Wwflp3rp7+ezQuAvBUtw2O
	 8nXBOVblWavqQTlRDg147/JaZgBZx7Fv/xi+S3Hodq1QWF5D4MZM7xsN/cppMyRj6v
	 QGDf8BK5YF2yUZsDid6w92d93Gk/cE1tBy6fM4UD2Qxm1v4pUvc92Jwr8y3ywxtoeb
	 +6c5nSbJCb8zF/W7TwWic/6h5/u/94JJMe2SEJj93a5mF/3BoYreuc2I2wQKHs94RC
	 o1nY9ojSY+PsQ==
Date: Sat, 23 Jul 2022 01:12:53 +0000
To: usrp-users@lists.ettus.com
From: balinfd3@gmail.com
Message-ID: <hqzcXCdL6e3hc3yrpepNEDUBXUsv1xhuYpH2bTHJk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: RIM6CJ3ZKFZPGSQFKCBC5WRWA4ZMWNPX
X-Message-ID-Hash: RIM6CJ3ZKFZPGSQFKCBC5WRWA4ZMWNPX
X-MailFrom: balinfd3@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Diagnosing Overflow (out of sequence) errors on four x300 multi 8 channel system
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RIM6CJ3ZKFZPGSQFKCBC5WRWA4ZMWNPX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1922478054534069950=="

This is a multi-part message in MIME format.

--===============1922478054534069950==
Content-Type: multipart/alternative;
 boundary="b1_hqzcXCdL6e3hc3yrpepNEDUBXUsv1xhuYpH2bTHJk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_hqzcXCdL6e3hc3yrpepNEDUBXUsv1xhuYpH2bTHJk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Everyone,

I have 4  x300 (8 channels) recording 20MHz bandwidth continuously on all=
 8 channels at the same time onto a RAID. That=E2=80=99s 645MB/s of data =
rate recorded onto the RAID. Sometimes the recording goes on for 10 hours=
 without any issues whatsoever=E2=80=A6sometimes it hiccups every 4 hours=
 with ***=E2=80=9COverflow (Out of Sequence)*** errors. Below is the syst=
em specs. Continued after system specs=E2=80=A6

=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94-

**CPU:**  AMD Ryzen 7 5700G 8:  Cores 16 threads

**RAM**: 32GB RAM DD4

**Motherboard:** ASUS Pro WS x570-ACE with latest BIOS ver 4201

**Ethernet Card**: 4-Port Intel X710 10G Ethernet Card with i40e driver a=
s of March 2022 =E2=80=94> plugged into PCIe x8 and running at x8

**OS**:  Linux Mint 20.3 Una 64 bit with Kernel 5.15.041 (Clean, fresh in=
stall via reformat)

**OS Drive**:  1TB Samsung NVME EVO 970 Plus

**RAID:**  Areca 1883IX-24:  RAID 6 w/12x  16TB Seagate Exos (145TB ext4 =
partition) =E2=80=94> plugged into PCIe x8 and running at x8. Latest Firm=
ware/BIOS/Bootloader package dated June 2022.=20

=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94-

**UHD ver:**  3.15.0.0.rc3 (UHD_3.15.0.HEAD-0-g4e06022c)

4x  x300 via 10G connection to the back of the Intel X710 4port 10G card.

**Ring buffers:**  maxed out at RX 4096 and TX 4096 on the Intel X710 on =
all 4 ports

**Memory buffers**:  rmem and wmem set to 800,000,000

Swap disabled; swappiness disabled; vm.dirty_background_ratio =3D 2, vm.d=
irty_ratio=3D5

CPU Governor overridden to =E2=80=9Cuserspace=E2=80=9D and forced to run =
at 4.67GHz on all 8 cores all the time.

=E2=80=9Cnetstat -s=E2=80=9D and =E2=80=9Cethtool -S=E2=80=9D confirms **=
not a single packed is dropped or overrun or missed.**

I am having difficulties finding where is the bottleneck=E2=80=A6and why =
is not consistent=E2=80=A6why it hiccups in 10 minutes or runs great for =
many hours=E2=80=A6.if that is what the error suggests. Benchmarking the =
RAID 6 shows 1.6GB/s write and 600MB/s read. Also, what is the difference=
 between **Overflow (overflow) and Overflow (out of sequence )** ? I am n=
ot getting the Overflow (overflow).=20

I am leading to believe that the RAID might be the culprit...but at 645MB=
 of incoming data, it should even sweat =E2=80=A6.

Any advice would be greatly appreciated! Thanks!

--b1_hqzcXCdL6e3hc3yrpepNEDUBXUsv1xhuYpH2bTHJk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello Everyone,</p><p>I have 4  x300 (8 channels) recording 20MHz bandwi=
dth continuously on all 8 channels at the same time onto a RAID. That=
=E2=80=99s 645MB/s of data rate recorded onto the RAID. Sometimes the recor=
ding goes on for 10 hours without any issues whatsoever=E2=80=A6sometimes i=
t hiccups every 4 hours with <em><strong>=E2=80=9COverflow (Out of Sequence=
)</strong></em> errors. Below is the system specs. Continued after system s=
pecs=E2=80=A6</p><p>=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94-</p><p><=
strong>CPU:</strong>  AMD Ryzen 7 5700G 8:  Cores 16 threads</p><p><strong>=
RAM</strong>: 32GB RAM DD4</p><p><strong>Motherboard:</strong> ASUS Pro WS =
x570-ACE with latest BIOS ver 4201</p><p><strong>Ethernet Card</strong>: 4-=
Port Intel X710 10G Ethernet Card with i40e driver as of March 2022 =
=E2=80=94&gt; plugged into PCIe x8 and running at x8</p><p><strong>OS</stro=
ng>:  Linux Mint 20.3 Una 64 bit with Kernel 5.15.041 (Clean, fresh install=
 via reformat)</p><p><strong>OS Drive</strong>:  1TB Samsung NVME EVO 970 P=
lus</p><p><strong>RAID:</strong>  Areca 1883IX-24:  RAID 6 w/12x  16TB Seag=
ate Exos (145TB ext4 partition) =E2=80=94&gt; plugged into PCIe x8 and runn=
ing at x8. Latest Firmware/BIOS/Bootloader package dated June 2022. </p><p>=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94-</p><p><strong>UHD ver:</strong>  3.15.0.0.rc3 (UHD_3.15=
.0.HEAD-0-g4e06022c)</p><p>4x  x300 via 10G connection to the back of the I=
ntel X710 4port 10G card.</p><p><strong>Ring buffers:</strong>  maxed out a=
t RX 4096 and TX 4096 on the Intel X710 on all 4 ports</p><p><strong>Memory=
 buffers</strong>:  rmem and wmem set to 800,000,000</p><p>Swap disabled; s=
wappiness disabled; vm.dirty_background_ratio =3D 2, vm.dirty_ratio=3D5</p>=
<p>CPU Governor overridden to =E2=80=9Cuserspace=E2=80=9D and forced to run=
 at 4.67GHz on all 8 cores all the time.</p><p>=E2=80=9Cnetstat -s=E2=80=
=9D and =E2=80=9Cethtool -S=E2=80=9D confirms <strong>not a single packed i=
s dropped or overrun or missed.</strong></p><p><br></p><p>I am having diffi=
culties finding where is the bottleneck=E2=80=A6and why is not consistent=
=E2=80=A6why it hiccups in 10 minutes or runs great for many hours=E2=80=
=A6.if that is what the error suggests. Benchmarking the RAID 6 shows 1.6GB=
/s write and 600MB/s read. Also, what is the difference between <strong>Ove=
rflow (overflow) and Overflow (out of sequence )</strong> ? I am not gettin=
g the Overflow (overflow). </p><p><br></p><p>I am leading to believe that t=
he RAID might be the culprit...but at 645MB of incoming data, it should eve=
n sweat =E2=80=A6.</p><p><br></p><p>Any advice would be greatly appreciated=
! Thanks!</p><p><br></p>

--b1_hqzcXCdL6e3hc3yrpepNEDUBXUsv1xhuYpH2bTHJk--

--===============1922478054534069950==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1922478054534069950==--
