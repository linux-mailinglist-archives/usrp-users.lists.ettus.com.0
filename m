Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E729C990BC8
	for <lists+usrp-users@lfdr.de>; Fri,  4 Oct 2024 20:36:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8E46E3854AD
	for <lists+usrp-users@lfdr.de>; Fri,  4 Oct 2024 14:36:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728066968; bh=jaILPR2DwdWtKMv0qIVmt2Mo4txU+nu+tilyXaXL9SY=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=cc+bQk6rZAgdoLBm1fzFPOzn1dffoCnoyPlLOvgqQrla/VdKXZ0Hi4u7uTq5lTStz
	 3k1WLQgpeTFizI3gBemH4SqjRrhcdSwIrvg7jo3uAh3ttIe6EHsJ/ExAiYA0xB2lqI
	 DygRX8pNvdkR+Y2FGI1vQD7KVFXG23Y2aj7R68OWcuAFXt7V8FqAQnwT8odrJ9FtFL
	 iLG+eUxpoZWotz+XmCU8vkhylgqO0b5c+oMdcVMin126KU8hxfNk6QvbBqYII9oHY6
	 ds7SdBiHlYxB2pQXTOhxQumLI0eDW0IeMKXyCGYpAlmZpFVI929TexUFMYpF6LkrU1
	 3xF8cPvbB5pQQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5F990385497
	for <usrp-users@lists.ettus.com>; Fri,  4 Oct 2024 14:36:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728066964; bh=R6fIJsyD7Bh5miw8L5NYOsIsWeR6UIGrVtKdA9lIQqc=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=iskLBiMqExWYG6zjDgMGTSGpADFjT8SKvijZOspT7YDvNTYECw4FyMxZJKUXEHHxL
	 MPrL3cslX817Jq8atpAjRdkkqZKGE9aRddy8xo0PmzwwX0Vl6OUK2KSCf/axB6JtaM
	 FjbBocXL44Qe9p3fcTSodJBpPw84lnCFwJVy5a9sIIjCtv0Eyj+wcf5qmTmTXhKm3v
	 0tkZS5LcTxGUcc07cjHqqm6EpNOQF47Gg8rDIXwvpTcuymTc6Js/biLJAUQmfUV9rO
	 zeMko/gi8Pdx95rz/mdApGk7nF6dxRHG/4PpD+u49fQpXnC9n2bhkJ7QpWGej0/rHJ
	 p1+FIYOFa7ZSg==
Date: Fri, 4 Oct 2024 18:36:04 +0000
To: usrp-users@lists.ettus.com
Message-ID: <hKHtfSCr5fGwc7immM9jFqLhxhNjFsxH6CUwRbw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A68vM3tONkkd9+dm4UxE5EhQi5J3C04mZp-7=xUT9_T5Q@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: UEUWO3V5EHOHCQZXKYDTD57T7XFTW3IO
X-Message-ID-Hash: UEUWO3V5EHOHCQZXKYDTD57T7XFTW3IO
X-MailFrom: mruane@silveredge-gs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UEUWO3V5EHOHCQZXKYDTD57T7XFTW3IO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: mruane--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: mruane@silveredge-gs.com
Content-Type: multipart/mixed; boundary="===============4558020924392263837=="

This is a multi-part message in MIME format.

--===============4558020924392263837==
Content-Type: multipart/alternative;
 boundary="b1_hKHtfSCr5fGwc7immM9jFqLhxhNjFsxH6CUwRbw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_hKHtfSCr5fGwc7immM9jFqLhxhNjFsxH6CUwRbw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Martin,

Thanks for all of the input.   I do like the UHD build system.   Make see=
ms cryptic and convoluted at first glance, but it starts making sense pre=
tty quickly, even if you don=E2=80=99t understand some of the more nuance=
d blocks.   I agree with your assessment of the other build systems, and =
I never really could put my finger on what it was that kept me from buyin=
g in.   I think it was our discussion with Marcus that gave me a clue as =
to what it might be.   Up to this point, I=E2=80=99ve never been particul=
arly =E2=80=9Cfor=E2=80=9D or =E2=80=9Cagainst=E2=80=9D Make; it is simpl=
y something that is pretty much everywhere.   The other build systems don=
=E2=80=99t have that.   More people are familiar with Make; it is install=
ed by default on every Linux distribution I can think of, and I can prett=
y much take my code to any Linux machine with Vivado and build it.

> =C2=A0I'm glad to hear you weren't put off by the=C2=A0`rfnoc_image_bui=
lder`=C2=A0workflow on top of make (I\
> assume you've been using that given the UHD 4.7 dependency?) and it's n=
ice\
> to hear you've been successful building stuff.

Hahaha   I have to admit, I haven=E2=80=99t run `rfnoc_image_builder `yet=
, since I haven=E2=80=99t changed anything in the data-path.   To be hone=
st, I don=E2=80=99t have much experience with RFNoC because I always desi=
gn the data-path from scratch depending on what=E2=80=99s needed by the p=
rocessing blocks and the larger system.   Not that I don=E2=80=99t re-use=
 modules; it=E2=80=99s simply that I enjoy FIFOs, gearboxes, managing clo=
ck domains, flow-control, loopback, timing constraints, etc.   Is it weir=
d that I=E2=80=99ve never felt like I wished there were something that co=
uld just take care of that for me?   Hahaha   Maybe. :-)

> That said if you find something unnecessarily annoying with our build\
> system, please let us know. We know that building custom bitfiles for U=
SRPs\
> hasn't always been the easiest/nicest option in the past, and we would\
> really like to make the FPGA computational capacities available to more=
\
> people.

There really wasn=E2=80=99t anything that annoyed me=E2=80=A6which is rar=
e. :-)   It did take me a bit to figure out how to get the new bitfile an=
d device tree into the rootfs build system, but I think I figured it out =
well enough.   What might help people is maybe adding an environment vari=
able (or some similar mechanism) that both build tools use to point to th=
e UHD build output (usrp_x410_fpga_xxx.bit and usrp_x410_fpga_xxx.dts).  =
 The UHD build could export them, and they could be imported from there b=
y the KAS config or in a meta-ettus recipe.   Maybe that=E2=80=99s simila=
r to how it works already?   It just wasn=E2=80=99t obvious to me, so I m=
odified our KAS config yaml, `uhd-fpga-images.inc`, and `uhd-fpga-images_=
%.bbappend`.

The reason I suggest that is because anyone that may be comfortable using=
 the PetaLinux tools, but hasn=E2=80=99t yet experienced the =E2=80=9Cjoy=
=E2=80=9D (terror?) of their first pure Yocto experience is used to an `e=
xport_hardware` style relation ship between Vivado and PetaLinux that sim=
plifies getting the PL device tree and bitfile into the image.

Mike

--b1_hKHtfSCr5fGwc7immM9jFqLhxhNjFsxH6CUwRbw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Martin,</p><p>Thanks for all of the input.   I do like the UHD build =
system.   Make seems cryptic and convoluted at first glance, but it starts =
making sense pretty quickly, even if you don=E2=80=99t understand some of t=
he more nuanced blocks.   I agree with your assessment of the other build s=
ystems, and I never really could put my finger on what it was that kept me =
from buying in.   I think it was our discussion with Marcus that gave me a =
clue as to what it might be.   Up to this point, I=E2=80=99ve never been pa=
rticularly =E2=80=9Cfor=E2=80=9D or =E2=80=9Cagainst=E2=80=9D Make; it is s=
imply something that is pretty much everywhere.   The other build systems d=
on=E2=80=99t have that.   More people are familiar with Make; it is install=
ed by default on every Linux distribution I can think of, and I can pretty =
much take my code to any Linux machine with Vivado and build it.</p><blockq=
uote><p>&nbsp;I'm glad to hear you weren't put off by the&nbsp;<code>rfnoc_=
image_builder</code>&nbsp;workflow on top of make (I<br>assume you've been =
using that given the UHD 4.7 dependency?) and it's nice<br>to hear you've b=
een successful building stuff.</p></blockquote><p>Hahaha   I have to admit,=
 I haven=E2=80=99t run <code>rfnoc_image_builder </code>yet, since I haven=
=E2=80=99t changed anything in the data-path.   To be honest, I don=
=E2=80=99t have much experience with RFNoC because I always design the data=
-path from scratch depending on what=E2=80=99s needed by the processing blo=
cks and the larger system.   Not that I don=E2=80=99t re-use modules; it=
=E2=80=99s simply that I enjoy FIFOs, gearboxes, managing clock domains, fl=
ow-control, loopback, timing constraints, etc.   Is it weird that I=
=E2=80=99ve never felt like I wished there were something that could just t=
ake care of that for me?   Hahaha   Maybe. :-)</p><blockquote><p>That said =
if you find something unnecessarily annoying with our build<br>system, plea=
se let us know. We know that building custom bitfiles for USRPs<br>hasn't a=
lways been the easiest/nicest option in the past, and we would<br>really li=
ke to make the FPGA computational capacities available to more<br>people.</=
p></blockquote><p>There really wasn=E2=80=99t anything that annoyed me=
=E2=80=A6which is rare. :-)   It did take me a bit to figure out how to get=
 the new bitfile and device tree into the rootfs build system, but I think =
I figured it out well enough.   What might help people is maybe adding an e=
nvironment variable (or some similar mechanism) that both build tools use t=
o point to the UHD build output (usrp_x410_fpga_xxx.bit and usrp_x410_fpga_=
xxx.dts).   The UHD build could export them, and they could be imported fro=
m there by the KAS config or in a meta-ettus recipe.   Maybe that=E2=80=
=99s similar to how it works already?   It just wasn=E2=80=99t obvious to m=
e, so I modified our KAS config yaml, <code>uhd-fpga-images.inc</code>, and=
 <code>uhd-fpga-images_%.bbappend</code>.</p><p>The reason I suggest that i=
s because anyone that may be comfortable using the PetaLinux tools, but has=
n=E2=80=99t yet experienced the =E2=80=9Cjoy=E2=80=9D (terror?) of their fi=
rst pure Yocto experience is used to an <code>export_hardware</code> style =
relation ship between Vivado and PetaLinux that simplifies getting the PL d=
evice tree and bitfile into the image.</p><p>Mike</p><p><br></p>

--b1_hKHtfSCr5fGwc7immM9jFqLhxhNjFsxH6CUwRbw--

--===============4558020924392263837==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4558020924392263837==--
