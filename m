Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE5D66B2B7
	for <lists+usrp-users@lfdr.de>; Sun, 15 Jan 2023 18:05:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 14F7D38433F
	for <lists+usrp-users@lfdr.de>; Sun, 15 Jan 2023 12:05:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673802357; bh=QyqyojKeWAwTI+f+U2UxH9r1WzYNlKzBLLiO0+CEoRI=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=rv8NlYf3kD+SLzwwkbUSwVEoXlwbxL4xvZoX6XadHNKQfF2N7SXTWamjykvEA+5xo
	 oUO9ezDUXaWBgrWp21bMNnCKRcsP4Q8zypfqqmpBBDFgNneDDwRZt7prIbyf7BFhJi
	 OjS/yO4Pu4GQ5AyfLyOA7QfMZmOcTj+v9R1hTfOQbFZdpOotBZi1xj0KA1h0efcxzI
	 Jy/3uAk2L2mF4Sk5yK4YHdByVoidEPZow3tG/B+YoUcEC9ol6ZuPgIJXR3RCc/S3fu
	 xvYEYCMQC7Mf+/H+Kw47ZdJ4pmZDfys0vN761E5t9F349AV2u0cPbxyDfK+cpzMzNN
	 TbKRRF9JSCiHA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C0D073842EC
	for <usrp-users@lists.ettus.com>; Sun, 15 Jan 2023 12:05:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673802310; bh=XoOTfQKsZSlIMfQEFR441bw4HotcISsdg0qjxIRIFFc=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=nLztKtXfPfigai1DhApHLCHvKlo7rnIAa1B+L1vlEX10J6r6Io/YX+uU8oBucyh1Q
	 s7Pd0oOuzvh/E7UhJQ1tzXar+rfXFvlxTdeyYSyVMc8I4adltq9fRjqE0ZJdrkKMaz
	 m+qKH3D+pF6mCo5spUnNAcxnbngiILQ1SztMzQUVZr01czun5mtUDjnS0g2wwLtqVO
	 u/nsjoeSa8t6WEVamj3FGAwM+QS2OY2ntLmwO+uffRiEpmwpTBuP+xrP5LDLXsUIlX
	 wmieI2hPJmflXzeXzw59MaJnhLPKh8UTObddLEq22NlJDQgh+oCfqtIP1Uoon6+59O
	 pdgShzAoys5jg==
Date: Sun, 15 Jan 2023 17:05:10 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <HmBPsCPNqJe8IfD3rwjM2dEN9kjVchhqH2fT3sbUE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAEXYVK7yOxAd2_AVR_WwEEJqxH2w8S7QQc79_ytNnuAGLbG+bg@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: 77FZJA3IJVCN5OGZV2CXPKIJ4YJW6J6K
X-Message-ID-Hash: 77FZJA3IJVCN5OGZV2CXPKIJ4YJW6J6K
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 Temporary FPGA Loading
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/77FZJA3IJVCN5OGZV2CXPKIJ4YJW6J6K/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4136288277683519732=="

This is a multi-part message in MIME format.

--===============4136288277683519732==
Content-Type: multipart/alternative;
 boundary="b1_HmBPsCPNqJe8IfD3rwjM2dEN9kjVchhqH2fT3sbUE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_HmBPsCPNqJe8IfD3rwjM2dEN9kjVchhqH2fT3sbUE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Brian Padalino wrote:

> I am building some experimental/development FPGAs for an X410 and I am
> looking at loading them temporarily for a quick runtime test without
> committing to overwriting default images.
>
> With the X310 I am able to achieve this with a JTAG connection.  With t=
he
> X410, being an SoC, I think this would be pretty terrible to do.
>
> Are there any recommended ways to load temporary/development FPGA image=
s on
> the X410 without overwriting default images?
>
> Thanks,
> Brian

Hello Brian,

I don=E2=80=99t know what is recommended way by NI to do that (use Mender=
, or\
something=E2=80=A6) but I can describe what worked (and still works) for =
me during X411\
development (the port of X410 code to ZCU111).

Booting the board looks like this:

I=E2=80=99m power-cycling the board - in my case with use of external rem=
otely controlled\
power switch. X410 (as far as I know) has ability to power-cycle itself w=
ith use\
of builtin microcontroller.

Then the bootloaders are loaded through JTAG. The PC connected to the boa=
rd has\
installed and configured DHCP (so u-boot can obtain IP), TFTP (so u-boot =
can\
download the kernel) and NFS servers (to mount remote rootfs during init)=
.

When I need to change the FPGA bitstream I just create a symbolic link on=
 the side of\
that the board points to it:

ln -s /path/to/new/bitstream /lib/firmware/x411.bin.

After creating the symbolic link a restart of the usrp-hwd service is nee=
ded on\
the board, so the new bitstream is loaded:

systemctl restart usrp-hwd

What this setup gives me is a lot of flexibility - i.e. like ability to r=
emotely\
bring the board back to life even after biggest screw-ups (like messing t=
he\
bootloader) or having constant access to the board=E2=80=99s rootfs - eve=
n when it=E2=80=99s\
turned off.

If in your case it is not needed, you can just do the part with linking (=
i.e. by\
logging through ssh to your X410) and restarting the usrp-hwd daemon. In =
your\
case the symbolic link will be named /lib/firmware/x410.bin and probably =
it is a\
good idea to backup the original file.

If you are interested in this setup I can give more details.

Best Regards,\
Piotr Krysik

--b1_HmBPsCPNqJe8IfD3rwjM2dEN9kjVchhqH2fT3sbUE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Brian Padalino wrote:</p><blockquote><p>I am building some experimental/=
development FPGAs for an X410 and I am
looking at loading them temporarily for a quick runtime test without
committing to overwriting default images.</p><p>With the X310 I am able to =
achieve this with a JTAG connection.  With the
X410, being an SoC, I think this would be pretty terrible to do.</p><p>Are =
there any recommended ways to load temporary/development FPGA images on
the X410 without overwriting default images?</p><p>Thanks,
Brian</p></blockquote><p><br></p><p>Hello Brian,</p><p>I don=E2=80=99t know=
 what is recommended way by NI to do that (use Mender, or<br>something=
=E2=80=A6) but I can describe what worked (and still works) for me during X=
411<br>development (the port of X410 code to ZCU111).</p><p>Booting the boa=
rd looks like this:</p><p>I=E2=80=99m power-cycling the board - in my case =
with use of external remotely controlled<br>power switch. X410 (as far as I=
 know) has ability to power-cycle itself with use<br>of builtin microcontro=
ller.</p><p>Then the bootloaders are loaded through JTAG. The PC connected =
to the board has<br>installed and configured DHCP (so u-boot can obtain IP)=
, TFTP (so u-boot can<br>download the kernel) and NFS servers (to mount rem=
ote rootfs during init).</p><p>When I need to change the FPGA bitstream I j=
ust create a symbolic link on the side of<br>that the board points to it:</=
p><p>ln -s /path/to/new/bitstream /lib/firmware/x411.bin.</p><p>After creat=
ing the symbolic link a restart of the usrp-hwd service is needed on<br>the=
 board, so the new bitstream is loaded:</p><p>systemctl restart usrp-hwd</p=
><p>What this setup gives me is a lot of flexibility - i.e. like ability to=
 remotely<br>bring the board back to life even after biggest screw-ups (lik=
e messing the<br>bootloader) or having constant access to the board=
=E2=80=99s rootfs - even when it=E2=80=99s<br>turned off.</p><p>If in your =
case it is not needed, you can just do the part with linking (i.e. by<br>lo=
gging through ssh to your X410) and restarting the usrp-hwd daemon. In your=
<br>case the symbolic link will be named /lib/firmware/x410.bin and probabl=
y it is a<br>good idea to backup the original file.</p><p>If you are intere=
sted in this setup I can give more details.</p><p>Best Regards,<br>Piotr Kr=
ysik</p>

--b1_HmBPsCPNqJe8IfD3rwjM2dEN9kjVchhqH2fT3sbUE--

--===============4136288277683519732==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4136288277683519732==--
