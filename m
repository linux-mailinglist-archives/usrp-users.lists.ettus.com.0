Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D23C498EE7E
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2024 13:51:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7A1D8385AA1
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2024 07:51:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727956284; bh=Q42fLI3LUZHj0N1T1YbrLQq8uHb/8bRW6Gg8efRIQWY=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=X2CZ+ogvwj7p4UaQEWEth6/SciPDevcafdX54Hjamh70xsYl5vQHvBDvj0+JZoQH0
	 kzytb7jm5r04hyvcBnbJBJqnyDQQX/W0kGZkjVtS2dRLQ46y+9WrtISyCAiv96GR3R
	 B1rq3swJqJWUuF0OvaH5Y620KG/tgDl7Uby6w7EGy/PQotOANCUvf/XrNwcIoivWU2
	 NkkZH/6vUrGDECnFpfjFe183BDYVVCR8/CUo0pqgzpCMfl7P7iNYzRXMR/kfHnTN0I
	 svFE45yjoHG0e9nVG3GRqm94RjamVU1ceGczNauDpuuowD53poVhg+svIn28YBGWsJ
	 2XyMzZTgmxvlA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5279238587C
	for <usrp-users@lists.ettus.com>; Thu,  3 Oct 2024 07:50:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727956227; bh=P/qOkcLP/nNFaLF8nMyo/HvCLjQIKbtt07P9Gr49BAc=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=htV8VJroDYahGHF33A1BU0ESjAzCjsYj8HmaiJxoq66duAenwTuDcyJUG4uNX7QGr
	 T3PC0C0UvjjDMAN1fpR/vmG/8gEpnc4GTfBCi8yFVyO8ktkjeBHsCCXWq48uaRNtz4
	 kevhsPb48SPBsJdWoejCfBeUwAv7ro646VIxcr35USk3oAzGPmUc0txiECugq9F1ee
	 kVLCGSO4zOS/EJlITYycoWKruTx2dFD9dYcXHulu1Ofo1Z2Nn2TbXD7ljuteH9UcON
	 nPulDMBJObsU7jp9bfpYTDhXstrsuXwUIQ2WgiVAYpbZMq60IGdZHBpgRgjfRtHVet
	 R5hwdtwQcgbRQ==
Date: Thu, 3 Oct 2024 11:50:27 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <8n8C5jNklgthZMksPgUNSyKML3nI5AbSYNRh5nt6fw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: iMan4OLWVYET38UBwW8cl0h7XHnCvA8T0TWKagcVew@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: 3546JYUCR5OMRZJVLHR3JNGVPWV63WO4
X-Message-ID-Hash: 3546JYUCR5OMRZJVLHR3JNGVPWV63WO4
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3546JYUCR5OMRZJVLHR3JNGVPWV63WO4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5610220646301924420=="

This is a multi-part message in MIME format.

--===============5610220646301924420==
Content-Type: multipart/alternative;
 boundary="b1_8n8C5jNklgthZMksPgUNSyKML3nI5AbSYNRh5nt6fw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_8n8C5jNklgthZMksPgUNSyKML3nI5AbSYNRh5nt6fw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Mike,

I don=E2=80=99t know what your preference regarding setup is, but for me =
it was crucial to be able to make changes to the rootfs and kernel quickl=
y and to be able to remotely reset the device.

This was especially important when dealing with kernel and bootloader. As=
 I didn=E2=80=99t have much experience with editing kernel and u-boot sou=
rces, it was indispensable to be able to check my changes and applied pat=
ches quickly (the additional difficulty was that I didn=E2=80=99t have a =
X410 to see in action how things should work).

My setup consisted of NFS server hosting rootfs and TFTP server for kerne=
l. The bootloader was loaded through JTAG. This way I for example was abl=
e to make a script that: compiled and installed new kernel with the board=
 turned off or in not working state, tried to boot it, check if system st=
arted correctly and return the result to git bisect. This way (after some=
 fine-tuning) I was able to run =E2=80=98git bisect=E2=80=99 and wait for=
 it to find a commit where the board started to work. If you are interest=
ed how to configure what I=E2=80=99ve described - ask.

With this approach you could for example locate when DPU support that you=
 need was added. Your case seems to be better in one regard though: as yo=
u know what you are looking for  you can also look at commit messages and=
 the code. In my case I didn=E2=80=99t know what was source of problems -=
 the board just didn=E2=80=99t boot or (in another case) loading =E2=80=98=
nixge=E2=80=99 driver for 10Gb/s ports crashed the board.

Piotr

--b1_8n8C5jNklgthZMksPgUNSyKML3nI5AbSYNRh5nt6fw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello Mike,</p><p>I don=E2=80=99t know what your preference regarding se=
tup is, but for me it was crucial to be able to make changes to the rootfs =
and kernel quickly and to be able to remotely reset the device.</p><p>This =
was especially important when dealing with kernel and bootloader. As I didn=
=E2=80=99t have much experience with editing kernel and u-boot sources, it =
was indispensable to be able to check my changes and applied patches quickl=
y (the additional difficulty was that I didn=E2=80=99t have a X410 to see i=
n action how things should work).</p><p>My setup consisted of NFS server ho=
sting rootfs and TFTP server for kernel. The bootloader was loaded through =
JTAG. This way I for example was able to make a script that: compiled and i=
nstalled new kernel with the board turned off or in not working state, trie=
d to boot it, check if system started correctly and return the result to gi=
t bisect. This way (after some fine-tuning) I was able to run =E2=80=98git =
bisect=E2=80=99 and wait for it to find a commit where the board started to=
 work. If you are interested how to configure what I=E2=80=99ve described -=
 ask.</p><p>With this approach you could for example locate when DPU suppor=
t that you need was added. Your case seems to be better in one regard thoug=
h: as you know what you are looking for  you can also look at commit messag=
es and the code. In my case I didn=E2=80=99t know what was source of proble=
ms - the board just didn=E2=80=99t boot or (in another case) loading =
=E2=80=98nixge=E2=80=99 driver for 10Gb/s ports crashed the board.</p><p>Pi=
otr</p>

--b1_8n8C5jNklgthZMksPgUNSyKML3nI5AbSYNRh5nt6fw--

--===============5610220646301924420==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5610220646301924420==--
