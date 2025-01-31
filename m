Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 25AF7A240F9
	for <lists+usrp-users@lfdr.de>; Fri, 31 Jan 2025 17:45:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0DCBD384D09
	for <lists+usrp-users@lfdr.de>; Fri, 31 Jan 2025 11:45:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738341952; bh=10Mr3XjbJo6285zFLqx+ZnHPzUx2ZIOFztxeMLGPVxE=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=cNZrwdGcfvQCJgtldWrDtGACpISYmkbxvXtHhcIvPl1AuhTn0pOeOTY11EBvvDxs0
	 uNrvqpsq7vl5u/Awwz9j7IvB+S9po92CucTVJvkQCzU7HBtrbDk3/OHXDGTn4/1Gni
	 VR9i3/lFX11QvFKS2FMrmVJUS8pSy8O/kE9CWTEYfQSwKSL/pQ2LTp21Af9rxpHaxi
	 KtZbZT/7lb5tUBMP0iQq/ZXgQC6OKRSP2eYRAFH0ImKCzbEXvc/UHySJ/73kuAfsYM
	 jq9BLc9JpH7f+3JjQcYI04Lhq0aDlYzE9RhEb/PcLQPNA+eVUZxMCjAObXEANKeeS9
	 nDnvlOGZpc/nA==
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 7975F385F01
	for <usrp-users@lists.ettus.com>; Fri, 31 Jan 2025 11:45:06 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="XNN7JpQB";
	dkim-atps=neutral
Received: by mail-io1-f53.google.com with SMTP id ca18e2360f4ac-844ee43460aso127243339f.1
        for <usrp-users@lists.ettus.com>; Fri, 31 Jan 2025 08:45:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1738341905; x=1738946705; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZEoZr1XjxFlpR/3cwd3jRYPQIcW4LPmLRe0aDw6HEU0=;
        b=XNN7JpQBcUstUfoyLMAANxwQ9Q7SC50+hXU+nhGyAhbdivMIvLdJmMwQhIX/PwGgA/
         +tGQ/n5dXGzJ0TDRT3YjfB2dr2eDRCRlt+Dp3aclnOKUtK5PJ/ioLNwJHrpgj3RSiJhV
         GTQo3sUZO5Dg8Xgt7aD2FK8RKHp/GZ3UHfPkJfZ6DtuZHX6TbGeKyb0NciaiAB37NIH8
         8m9hd25AShcVSG1nP5UZOXpv6fqOeVZDGBXBuKtSN+P5YOSs5B5L2EOKhu3JKaNh5Sd9
         A8n7Z3ZofWbr/LP1MSeyDpinuVUxY3FdcJQ29xPQd4cxR/O9JBlylG+be/Lj1TTxWwMJ
         TcXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738341905; x=1738946705;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZEoZr1XjxFlpR/3cwd3jRYPQIcW4LPmLRe0aDw6HEU0=;
        b=nBYLlkOj4nPUdXrcHEEjyXBB8mosAKgq+grmSYG/u6io0wnoFYTgGD0+jUamyFjqxN
         K5yjk1IHBTi6TmW8M1f6tTQrah1AI66nRap2O490iCkviiBQs9u4MtG2qverK7V9BUjK
         6DoUb3wGiZhaleqBvr0xAM4+G5DsXtI/mlIEcem38Jm86U21Sxt3AyH2YDVEQNRBIDF1
         P4a5DwOLtJToc8o6gsfPEEGZX1iC5RLtFzd+TfYMhmNbfcZs+JcBnqbH+FHO0XdPRcOx
         ADs7JqBx3L48EOKQs9bT8FFbw9DwsHE74+ag+x5OrTdhLdoqropwvkGaGOa4U+NlPdnD
         3GKg==
X-Gm-Message-State: AOJu0Yz4kvPe/65pnT1vtxoWO831eok/3IxCHWPMVkWFgRJWfNmMuq6K
	75acxDo8Edq2letd1CDr4sv5sqyLOdRS1WnuZrPuU9QVjOB7r00wIsw3dXKTgoXfEzNE2ex7CO9
	sYw3qEwwuaa1QUjAT+oqljCHFKghmcM5xLFssioYO+xbyQckT7KU4jg==
X-Gm-Gg: ASbGnctVHlGt6FFT0m8Tjti7z/9yshaYajC3QAeY76We6o7HLmKOMxWGYM3SQVBcaOa
	IH+Tdv/RY4RI9cagCoRRlVv9E9K+Fw7NvY0fTcSWD/AyQ6VD//V/T3wlYOOvRLJi1hClubwkm
X-Google-Smtp-Source: AGHT+IGlobvfBaky280MfTt0EvLezgYOd5kVGPExfSass9pzm/FHTVtvHxPJuKA9XGPc7SzVxbaDh1hHPMkjhvlzejY=
X-Received: by 2002:a92:cd83:0:b0:3cf:b571:c08c with SMTP id
 e9e14a558f8ab-3cffe3d1bc2mr109996515ab.3.1738341905400; Fri, 31 Jan 2025
 08:45:05 -0800 (PST)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Fri, 31 Jan 2025 10:44:29 -0600
X-Gm-Features: AWEUYZnXRLQBUeCuDogwWG4U-7gxqd6h-yGjAx9pHhH9s2jAKWpswugbdSCIzls
Message-ID: <CACaXmv-BZbsM7vsstNwigkn5L39xJ0FNb9FBezomzrH2Bxg+oA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: ZB73WKBWHBDIJATG3H5JIKZZ2PIGUW3S
X-Message-ID-Hash: ZB73WKBWHBDIJATG3H5JIKZZ2PIGUW3S
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Save-the-Date: GRCon 2025 in the Greater Seattle Area on September 8 to 12
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZB73WKBWHBDIJATG3H5JIKZZ2PIGUW3S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3432083991035103475=="

--===============3432083991035103475==
Content-Type: multipart/alternative; boundary="000000000000c52025062d034374"

--000000000000c52025062d034374
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

We are happy to announce that the venue for the GNU Radio Conference
(GRCon) 2025 has been identified.  We will be running GRcon 2025 on
September 8 to 12 at the Edward Hansen Conference Center [1] in Everett,
Washington, USA (just north of Seattle).  Please save the date, and we hope
to see you there.  More details will be provided shortly on the GNU Radio
website [2].  If you have any questions, please reach out to us at
grcon@gnuradio.org.

[1] https://www.angelofthewindsarena.com/conference-center

[2] https://www.gnuradio.org/

*=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94*
*Neel Pandeya*
*National Instruments (NI)*
*Austin, Texas, USA*
*neel.pandeya@ettus.com* <neel.pandeya@ettus.com>
*neel.pandeya@emerson.com* <neel.pandeya@emerson.com>
*+1-512-413-5696*
*=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94*

--000000000000c52025062d034374
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div class=3D"gmail_default" style=3D"font-family:ver=
dana,sans-serif"><span style=3D"font-family:Arial,Helvetica,sans-serif">We =
are happy to announce that the venue for the GNU Radio Conference (GRCon) 2=
025 has been identified.=C2=A0 We will be running GRcon 2025 on September 8=
 to 12 at the Edward Hansen Conference Center [1] in Everett, Washington, U=
SA (just north of Seattle).=C2=A0 Please save the date, and we hope to see =
you there.=C2=A0 More details will be provided shortly on the GNU Radio web=
site [2].=C2=A0 If you have any questions, please reach out to us at <a hre=
f=3D"mailto:grcon@gnuradio.org">grcon@gnuradio.org</a>.</span></div><br>[1]=
 <a href=3D"https://www.angelofthewindsarena.com/conference-center">https:/=
/www.angelofthewindsarena.com/conference-center</a><br><br>[2] <a href=3D"h=
ttps://www.gnuradio.org/">https://www.gnuradio.org/</a><br><br clear=3D"all=
"></div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"g=
mail_signature"><div dir=3D"ltr"><div><div style=3D"border:0px;font-stretch=
:inherit;line-height:inherit;font-size-adjust:inherit;margin:0px;padding:0p=
x;vertical-align:baseline;color:rgb(0,0,0)"><font face=3D"monospace"><b>=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94<span style=3D"fon=
t-style:inherit;font-variant:inherit;font-stretch:inherit;line-height:inher=
it;font-size-adjust:inherit;border:0px;margin:0px;padding:0px;vertical-alig=
n:baseline;color:inherit">=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94</span></b></font></div><div styl=
e=3D"border:0px;font-stretch:inherit;line-height:inherit;font-size-adjust:i=
nherit;margin:0px;padding:0px;vertical-align:baseline;color:rgb(136,136,136=
)"><font face=3D"monospace"><b>Neel Pandeya</b></font></div><div style=3D"b=
order:0px;font-stretch:inherit;line-height:inherit;font-size-adjust:inherit=
;margin:0px;padding:0px;vertical-align:baseline;color:rgb(136,136,136)"><fo=
nt face=3D"monospace"><b>National Instruments (NI)</b></font></div><div sty=
le=3D"border:0px;font-stretch:inherit;line-height:inherit;font-size-adjust:=
inherit;margin:0px;padding:0px;vertical-align:baseline;color:rgb(136,136,13=
6)"><font face=3D"monospace"><b>Austin, Texas, USA</b></font></div><div sty=
le=3D"border:0px;font-stretch:inherit;line-height:inherit;font-size-adjust:=
inherit;margin:0px;padding:0px;vertical-align:baseline;color:rgb(17,85,204)=
"><a href=3D"mailto:neel.pandeya@ettus.com" style=3D"border:0px;font-style:=
inherit;font-variant:inherit;font-stretch:inherit;line-height:inherit;font-=
size-adjust:inherit;margin:0px;padding:0px;vertical-align:baseline;color:rg=
b(17,85,204)" target=3D"_blank"><font face=3D"monospace"><b>neel.pandeya@et=
tus.com</b></font></a></div><div style=3D"border:0px;font-stretch:inherit;l=
ine-height:inherit;font-size-adjust:inherit;margin:0px;padding:0px;vertical=
-align:baseline;color:rgb(17,85,204)"><a href=3D"mailto:neel.pandeya@emerso=
n.com" style=3D"border:0px;font-style:inherit;font-variant:inherit;font-str=
etch:inherit;line-height:inherit;font-size-adjust:inherit;margin:0px;paddin=
g:0px;vertical-align:baseline;color:rgb(17,85,204)" target=3D"_blank"><font=
 face=3D"monospace"><b>neel.pandeya@emerson.com</b></font></a></div><div st=
yle=3D"border:0px;font-stretch:inherit;line-height:inherit;font-size-adjust=
:inherit;margin:0px;padding:0px;vertical-align:baseline;color:rgb(136,136,1=
36)"><font face=3D"monospace"><b>+1-512-413-5696</b></font></div><div style=
=3D"border:0px;font-stretch:inherit;line-height:inherit;font-size-adjust:in=
herit;margin:0px;padding:0px;vertical-align:baseline;color:rgb(0,0,0)"><fon=
t face=3D"monospace"><b>=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94</b></font></div></div><div style=3D"border:0px;fon=
t-stretch:inherit;line-height:inherit;font-size-adjust:inherit;margin:0px;p=
adding:0px;vertical-align:baseline;color:rgb(0,0,0)"><font face=3D"monospac=
e"><b><br></b></font></div><div style=3D"border:0px;font-stretch:inherit;li=
ne-height:inherit;font-size-adjust:inherit;margin:0px;padding:0px;vertical-=
align:baseline;color:rgb(0,0,0)"><font face=3D"monospace"><b><br></b></font=
></div></div></div></div></div>

--000000000000c52025062d034374--

--===============3432083991035103475==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3432083991035103475==--
