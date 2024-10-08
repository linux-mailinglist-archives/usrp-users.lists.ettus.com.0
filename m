Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6450F993E25
	for <lists+usrp-users@lfdr.de>; Tue,  8 Oct 2024 07:03:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 38D8B38596F
	for <lists+usrp-users@lfdr.de>; Tue,  8 Oct 2024 01:03:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728363786; bh=yRODYMqG80iYFTWu3aD/8Y9poL1WGHeoUhmuRS01WNk=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=jYB0Dqi8HiH3MbplAOwf7dPTPu+ZVmdWcm5byGoAX7xNBRjxDm3Z2ut1ma7L1rFlp
	 KId3gHQw33LiRlfPY5GIOA6V9Ixp7d2SQRD9d8HI3EWvSxcU2nsCgERnaGShL4kH1o
	 bgZQWt+hPLi42opNvkzCt4NBOI67VWyxV2g5KhKrmMFYBLzaP4cM6BLw2WkOez/bB0
	 GO8DQgBN1X8eZCrBuJ2jIfA0yJU53jdHR9YMdfvIz7f3rijJewl+58RjP/xx/HflnH
	 U10ztpIgOPdNqbUvRihNq5ewKhP0oGdNAHykdWneIsk35jTr47OlM6brbK6BO+FckP
	 Xo3PocTJtjR1w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0F2163858E9
	for <usrp-users@lists.ettus.com>; Tue,  8 Oct 2024 01:02:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728363765; bh=g14dNpCr/d0OXCMs8j5+7ahhiE4MjBsYX5Ffn2Nrrgg=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=AkEwhrn7SbRwCkJ8s0ozHEDALVtF5h1gR0qIydBL3WFUzLECHTiTlz/CZviiCIm9O
	 3EEuqw0Zu3McbaeyNqsrESxP1lcmteZi0LRDjUwYCwGmtQQ/jT5/7ElzKc8kbZd5iQ
	 ieKmrIOmASIDuAr6BrEc/GcI2mt3PUD6BeOeXsE+zpn9lg4sOM+R8Ru2YwIT1GpuyU
	 I6l5bwFQ031u1IlM/QxQC6tCZypiBBxib9FxB+Pl1N+SqjX8V+4zbJP++YvC0HBkGm
	 b11wnXqehM3qaFV7o9GKbIk7uoB47eJ7ZoLU8CgUtdnjmhNNO9Ey6mFLWzW4qJSc/3
	 RMAUjgRjFv9Cg==
Date: Tue, 8 Oct 2024 05:02:45 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <ibyCa56nYp7goJhmNUkA06rx68zabxvegXBJjCElBzg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: AG5jQ18ShLdWjOQf42E2WZpqXCJXo45yUnXiagkGL5g@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: C5SK6M4DZFLUQFN6RI5KOI5YB3KO7IA2
X-Message-ID-Hash: C5SK6M4DZFLUQFN6RI5KOI5YB3KO7IA2
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C5SK6M4DZFLUQFN6RI5KOI5YB3KO7IA2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7607845863372417582=="

This is a multi-part message in MIME format.

--===============7607845863372417582==
Content-Type: multipart/alternative;
 boundary="b1_ibyCa56nYp7goJhmNUkA06rx68zabxvegXBJjCElBzg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ibyCa56nYp7goJhmNUkA06rx68zabxvegXBJjCElBzg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Replace the part with setting u-boot variables:

setenv jtagboot 'run netboot'\
setenv nfsroot '/nfsroot/x410=E2=80=99\
setenv tftproot ''\
saveenv

with this (the same variables that for ZCU111 I included in u-boot code h=
ttps://github.com/ptrkrysik/meta-ettus/commit/bddb7a9fa1a119866cddb0ea0a6=
706275970bc7f, but for x410 you have to add them manually):

setenv kernel_addr_r 0x18000000\
setenv pxefile_addr_r 0x10000000\
setenv netboot_pxe =E2=80=98dhcp; if pxe get; then pxe boot; fi=E2=80=98\
setenv jtagboot =E2=80=98run netboot_pxe=E2=80=98\
saveenv

No hackish solution with copying random files is required. So ignore the =
last link.

The reset over control port is not optional as the bootmode (jtag) is set=
 there. As it is sometimes not reliable (i.e. it happens control port is =
not accessible) I additionally reset power of the device with remotely co=
ntrolled power strip.

Best,\
Piotr Krysik

--b1_ibyCa56nYp7goJhmNUkA06rx68zabxvegXBJjCElBzg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Replace the part with setting u-boot variables:</p><p>setenv jtagboot =
'run netboot'<br>setenv nfsroot '/nfsroot/x410=E2=80=99<br>setenv tftproo=
t ''<br>saveenv</p><p>with this (the same variables that for ZCU111 I inc=
luded in u-boot code https://github.com/ptrkrysik/meta-ettus/commit/bddb7=
a9fa1a119866cddb0ea0a6706275970bc7f, but for x410 you have to add them ma=
nually):</p><p>setenv kernel_addr_r 0x18000000<br>setenv pxefile_addr_r 0=
x10000000<br>setenv netboot_pxe =E2=80=98dhcp; if pxe get; then pxe boot;=
 fi=E2=80=98<br>setenv jtagboot =E2=80=98run netboot_pxe=E2=80=98<br>save=
env</p><p>No hackish solution with copying random files is required. So i=
gnore the last link.</p><p>The reset over control port is not optional as=
 the bootmode (jtag) is set there. As it is sometimes not reliable (i.e. =
it happens control port is not accessible) I additionally reset power of =
the device with remotely controlled power strip.</p><p>Best,<br>Piotr Kry=
sik</p>


--b1_ibyCa56nYp7goJhmNUkA06rx68zabxvegXBJjCElBzg--

--===============7607845863372417582==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7607845863372417582==--
