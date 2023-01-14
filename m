Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 805EA66A961
	for <lists+usrp-users@lfdr.de>; Sat, 14 Jan 2023 06:25:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 06595383B63
	for <lists+usrp-users@lfdr.de>; Sat, 14 Jan 2023 00:25:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673673922; bh=OBcfbp0pvIQbJbX4xJH+3aUaaoQ20nosjZPRuPRdde4=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=HDGOOkgHCKVS/enx5u0xUZCBRGWvoZlUFCvmApbekOApE+3097uFMh2rse7jVtuNT
	 HMyzINeBY8cCAyetTmqcl+/z0lCExKJWrxU8h72NsKKGCF0JayEpcwxyDbVStMURCN
	 d/xSOjdJ7Xcqo4IQDb1ssh1KDbR0ix44GkNmol+wq5jvguheVIuFfqfCTfvCDgQAkV
	 r1BSm1IoqwPaWVrDACJTuAEtNMOiuktcLWJKgTKt1v76c1wTWTytV1c5qx7VKHvcwa
	 KptrRQ1M7LiIwW9Ei64+iIm7sl2vsM1V+A89l/KVWVxN4aoBXSX3S4cTSOI2aNVqiM
	 ETrpTe41TGLKQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B6D0A3842BB
	for <usrp-users@lists.ettus.com>; Sat, 14 Jan 2023 00:24:02 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673673842; bh=yzqMYgnQ4GWIBKdqgSw1GoYe8Z7ysY++IHjHadxBv+s=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=nxba5EhHWUYoquJ6u8/NDizDfIh225A6Oorsd3uRaIfsPNLTQDaVWPdgaS8mpbWWq
	 XORZ97qyeZfJbYzJ0qLFtajrcgGbkgUGGKUXPCtVSZSIrD3CiEHXUOaauNON6jBeqs
	 j/gIMHKrXH4J0uZCZ85TBCF56Xe6lw5OdMOoEqJgj2YpsGAmbreE8zWFX7nJxtexCQ
	 baZY7Pcw9JC/hcGCamgWYiVAHBm9NUPH2Vanosu2EDCLyPlLc+nqudX+ycCSZuEJ2f
	 89jZzHmfqk326c6BHiki/JPSma+eG7avkS7RyCvjRA5stnAmZD8nlG+Vqt/D67Xykr
	 wiRFGDAlVVrqQ==
Date: Sat, 14 Jan 2023 05:24:02 +0000
To: usrp-users@lists.ettus.com
From: mgarrett@garrett-tech.com
Message-ID: <88DQeJqOrnKcbKotr03RiYXO3RiObicJIRSCjp2R02Q@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: e207eaf1-3f98-5e60-4783-6c378dc523f5@gmail.com
MIME-Version: 1.0
Message-ID-Hash: AKKBOGECR5Z5OVVHCFNTQBJHPJI3WO6A
X-Message-ID-Hash: AKKBOGECR5Z5OVVHCFNTQBJHPJI3WO6A
X-MailFrom: mgarrett@garrett-tech.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Update e310, UHD 4.0 Cross compile "How to"
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AKKBOGECR5Z5OVVHCFNTQBJHPJI3WO6A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0925445935818707391=="

This is a multi-part message in MIME format.

--===============0925445935818707391==
Content-Type: multipart/alternative;
 boundary="b1_88DQeJqOrnKcbKotr03RiYXO3RiObicJIRSCjp2R02Q"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_88DQeJqOrnKcbKotr03RiYXO3RiObicJIRSCjp2R02Q
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Well, I compiled 4.1.0.5 on the host, installed it and it recognized the =
e310, and uhd_usrp_probe worked..!

I then tried to compile gnuradio 3.8.0.0 (Which is on the sdimage (runnin=
g in the e310) I manually applied the patches, but there is some boost er=
ror that I could not find the patch for so I bailed out.

I then install 3.10.1 using apt install gnuradio=E2=80=A6 and it installe=
d, and recognized my uhd install.. and it all works, including being able=
 to use the rfnoc blocks installed in gr_rfnoc=E2=80=A6

So=E2=80=A6.. Im going to attemp to install the sdk and set up the cross =
compiler so that I can develop uhd apps (on a mounted drive on the host m=
achine), that run on the 310=E2=80=A6=20

The only thing that I am missing, since I dont have a gnu cross environme=
nt for 3.8.1 (running on the target e310) I can port my gnuradio out of t=
ree modules and run them on the e310.. But=E2=80=A6 Id rather port those =
to native UHD c code. From my understanding, they are not putting gnuradi=
o on the sdimage any more anyway=E2=80=A6

I cant tell you the number of hours Ive spent. Thank you for the links to=
 that specific revision of UHD, I used your link to download everything a=
nd get where I am!! Thank you!!

PLUS.. I can stream over the network for testing=E2=80=A6..=20

Ill report back the progress on the cross build, I think it will work fin=
e, Ive done it before in 4.1.0.0=E2=80=A6 Have a great weekend!!

Network streaming does work on 4.1.0.5..!=20

Michael

--b1_88DQeJqOrnKcbKotr03RiYXO3RiObicJIRSCjp2R02Q
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Well, I compiled 4.1.0.5 on the host, installed it and it recognized the=
 e310, and uhd_usrp_probe worked..!</p><p>I then tried to compile gnuradio =
3.8.0.0 (Which is on the sdimage (running in the e310) I manually applied t=
he patches, but there is some boost error that I could not find the patch f=
or so I bailed out.</p><p>I then install 3.10.1 using apt install gnuradio=
=E2=80=A6 and it installed, and recognized my uhd install.. and it all work=
s, including being able to use the rfnoc blocks installed in gr_rfnoc=
=E2=80=A6</p><p>So=E2=80=A6.. Im going to attemp to install the sdk and set=
 up the cross compiler so that I can develop uhd apps (on a mounted drive o=
n the host machine), that run on the 310=E2=80=A6 </p><p>The only thing tha=
t I am missing, since I dont have a gnu cross environment for 3.8.1 (runnin=
g on the target e310) I can port my gnuradio out of tree modules and run th=
em on the e310.. But=E2=80=A6 Id rather port those to native UHD c code. Fr=
om my understanding, they are not putting gnuradio on the sdimage any more =
anyway=E2=80=A6</p><p>I cant tell you the number of hours Ive spent. Thank =
you for the links to that specific revision of UHD, I used your link to dow=
nload everything and get where I am!! Thank you!!</p><p>PLUS.. I can stream=
 over the network for testing=E2=80=A6.. </p><p>Ill report back the progres=
s on the cross build, I think it will work fine, Ive done it before in 4.1.=
0.0=E2=80=A6 Have a great weekend!!</p><p><br></p><p>Network streaming does=
 work on 4.1.0.5..! </p><p>Michael</p><p><br></p><p><br></p><p><br></p><p> =
</p>

--b1_88DQeJqOrnKcbKotr03RiYXO3RiObicJIRSCjp2R02Q--

--===============0925445935818707391==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0925445935818707391==--
