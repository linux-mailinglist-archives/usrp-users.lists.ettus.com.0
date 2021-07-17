Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 682103CC6AF
	for <lists+usrp-users@lfdr.de>; Sun, 18 Jul 2021 00:46:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 103C5383EC0
	for <lists+usrp-users@lfdr.de>; Sat, 17 Jul 2021 18:46:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="ClJjzXds";
	dkim-atps=neutral
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 6EC18383D60
	for <usrp-users@lists.ettus.com>; Sat, 17 Jul 2021 18:45:56 -0400 (EDT)
Received: by mail-vk1-f171.google.com with SMTP id x125so3007880vkf.0
        for <usrp-users@lists.ettus.com>; Sat, 17 Jul 2021 15:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XT/33sGPWLD+j5EoqUMZ/Ud6slAj4YPpVD384f+A5d4=;
        b=ClJjzXdsorSu/6Zg9oX4bJLp+8MN/D78EjTn4j6Gm61Rps1zK2uUuKuWeKKb+dt+ON
         B/EZM87HJs0RqalXrBXhcYSFREM7T5UEtrYzp7k+0UcdchPqIFSdwmlS1mSCXxhR5l5I
         bihsuNlypGkfnD7trfHMB9NB/Rt/5pkDU7TACf5uXqx8WEzKiW3QKV6XNjOuy7/j268b
         2lwowDqohND8mWEELWYZhVFvzMvc6VNC8CDqjBmiIiIN4Z7H+Fs5MA2o1ARdZVhXfhaF
         rCaWYFGatuutBd9MZYE/j9riHWbGFR0cBbwbaC8KMVOdpvaLHmew0cO1sZwl5wCF3eLW
         bB/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XT/33sGPWLD+j5EoqUMZ/Ud6slAj4YPpVD384f+A5d4=;
        b=YlhfXFR8OrS0iIM7D3sZiDSg9IbMfmX82F2aMOiuFkzvRrWZKgkJ0sdwhzIY4Zqc4o
         my83jmkJacbHKBtcqmWsXlepMtl3uIf0DtVWsQTA7AppCLdUWVWzQFK4NOyjY5vSo72m
         EBBvpMCBF7COZ3YsZ4n862JCDGiOutKylQtqXsuQxZt9IGjI5KOGNELfaNUX08437mfz
         thYaXhtzQ1+aLDw74M6w9FIqWSaLM3iDCylnyBUKIE+1vbYJ78knN9xJRn1yLHLvTZ2Y
         fKoVcwnHHXd9LwJpIydTH99iQtqWSicefjUlYIGcd5qR39438glKbwe7lPbPziKV3p7r
         QO0g==
X-Gm-Message-State: AOAM533uPbaKmRVw9iI3hS5P7dRmo2NitE+N4Hx/GrO0mrWLTyxJ1L7x
	RaWtZJ+lR5Ea34P9gq9uXpLQz0ALJIlzAzUerl9ooVHgQRedyw==
X-Google-Smtp-Source: ABdhPJzi3verZFYWEbxD09bqZPvLgOwFGuSAFa++uKTFLYYSvZT+6tw+/A91sSUmOniT1N5k/+UGG0HDDsQyb9SUAok=
X-Received: by 2002:a1f:4589:: with SMTP id s131mr17737774vka.6.1626561955649;
 Sat, 17 Jul 2021 15:45:55 -0700 (PDT)
MIME-Version: 1.0
References: <LNXP123MB37241495636C06E84529045FCA129@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
In-Reply-To: <LNXP123MB37241495636C06E84529045FCA129@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Sat, 17 Jul 2021 18:45:19 -0400
Message-ID: <CAL7q81vVtz2sYq4-9FcGvcjQLY1m6pp4Pw8vjG9G+AHyz0tzaQ@mail.gmail.com>
To: Mark D <md964@hmgcc.gov.uk>
Message-ID-Hash: 2K63YUTMXYEGDKJVALPKGDQWDATVXDPL
X-Message-ID-Hash: 2K63YUTMXYEGDKJVALPKGDQWDATVXDPL
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: VHDL Source Files in RFNoC 4.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2K63YUTMXYEGDKJVALPKGDQWDATVXDPL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1490682800097868648=="

--===============1490682800097868648==
Content-Type: multipart/alternative; boundary="000000000000926fcb05c75977ce"

--000000000000926fcb05c75977ce
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Mark,

The issue is probably line 212 in CMakeLists.txt (e.g.
rfnoc-myblock/CMakeLists.txt). Probably need to change that regex to be
less strict and allow .v and .vhd files and really any kind of HDL / Xilinx
IP related files.

Jonathon

On Thu, Jul 15, 2021 at 5:39 AM Mark D via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
>
>
> I=E2=80=99m trying to add VHDL into a RFNoC design using UHD 4.0.
>
>
>
> I=E2=80=99ve added the source file into the OOT module folder along with =
the
> source files created by rfnoc mod tool. I=E2=80=99ve then added the sourc=
e file
> name into the Makefile.srcs as =E2=80=98dsp_wrapper.vhd=E2=80=99.
>
>
>
> When I run =E2=80=98make install=E2=80=99 it stops on the error can=E2=80=
=99t find
> =E2=80=9C=E2=80=A6./dsp_wrapper.v=E2=80=99
>
>
>
> The file path in the error message is correct, so it=E2=80=99s looking in=
 the
> right place, but the file name has been truncated from .vhd to .v
>
>
>
> I did notice the note at the top of Makefile.srcs that states file names
> should be =E2=80=9Cnicely detectable by a regex. Best to put one on each =
line=E2=80=9D. So
> I tried modifying the file to have one file per line and the closing
> bracket on it=E2=80=99s own line. However I still get the same error.
>
>
>
> Is there any way that I can include .vhd source files?
>
>
>
> Mark
> ------------------------------
> This email and any files transmitted with it are confidential and intende=
d
> solely for the use of the individual or entity to whom they are addressed=
.
> If you have received this email in error please notify the system manager=
.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000926fcb05c75977ce
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Mark,<div><br></div><div>The issue is probably line 212=
 in CMakeLists.txt (e.g. rfnoc-myblock/CMakeLists.txt). Probably need to ch=
ange that regex to be less strict and allow .v and .vhd files and really an=
y kind of HDL / Xilinx IP related files.<br><br></div><div>Jonathon</div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Thu, Jul 15, 2021 at 5:39 AM Mark D via USRP-users &lt;<a href=3D"mailto:u=
srp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-GB" style=3D"overflow-wrap: break-word;">
<div class=3D"gmail-m_2041513449673754592WordSection1">
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I=E2=80=99m trying to add VHDL into a RFNoC design u=
sing UHD 4.0.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I=E2=80=99ve added the source file into the OOT modu=
le folder along with the source files created by rfnoc mod tool. I=E2=80=99=
ve then added the source file name into the Makefile.srcs as =E2=80=98dsp_w=
rapper.vhd=E2=80=99.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">When I run =E2=80=98make install=E2=80=99 it stops o=
n the error can=E2=80=99t find =E2=80=9C=E2=80=A6./dsp_wrapper.v=E2=80=99<u=
></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">The file path in the error message is correct, so it=
=E2=80=99s looking in the right place, but the file name has been truncated=
 from .vhd to .v<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I did notice the note at the top of Makefile.srcs th=
at states file names should be =E2=80=9Cnicely detectable by a regex. Best =
to put one on each line=E2=80=9D. So I tried modifying the file to have one=
 file per line and the closing bracket on it=E2=80=99s own
 line. However I still get the same error.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Is there any way that I can include .vhd source file=
s?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Mark<u></u><u></u></p>
</div>
<hr>
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000926fcb05c75977ce--

--===============1490682800097868648==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1490682800097868648==--
