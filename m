Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B8B4ABD1B
	for <lists+usrp-users@lfdr.de>; Mon,  7 Feb 2022 12:57:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2C44738570B
	for <lists+usrp-users@lfdr.de>; Mon,  7 Feb 2022 06:57:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KbGb6gl6";
	dkim-atps=neutral
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 80590384EEA
	for <usrp-users@lists.ettus.com>; Mon,  7 Feb 2022 06:56:13 -0500 (EST)
Received: by mail-yb1-f177.google.com with SMTP id m6so39042698ybc.9
        for <usrp-users@lists.ettus.com>; Mon, 07 Feb 2022 03:56:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Sm343xI26B5pGtKDAjxuH30VCtmxvU1zRfgYvwmdMaU=;
        b=KbGb6gl6bYf4psdTNThl49qb1zMmz/m1MxneWZUAnFuHpEE2oIY/63CtmS5nFs3DHX
         0CHICOyEY4CVibRPuc2TI1sWBisFKQK0vl9fJwFOM/TELPSC/Jsy+68buYXVPZLmNRZs
         9Vj13GVId/a0xwNRARDl3iHBjifWcWZxFLfeARd7wqIy7uCGiqdMaJI8zQI9nWvdvqeD
         3E11E8qmloIMfI9XAqO7ZsGsNxS4UW1+raDfWDD/eScakQNwUPOefb3tAZGyAzqz7IPU
         2ZDQ6KsiypzCY7yKqx+EIdiWOZYQqbMWDESb+LY00caCiOoXiGX17DcyviAwMDkD7M5b
         1NJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Sm343xI26B5pGtKDAjxuH30VCtmxvU1zRfgYvwmdMaU=;
        b=tYVGrGUFk+252FmmqizJTend6UQR+hG0u5k6kevRKIAvED+OVty+AG43IbJ9WJcjjf
         dST+0Fk4hyrnpTB72tUyafN2XDTGuMCrew/uNYMaTOfSNQhZtSRpu3d9s7dEsTFotDG/
         vdIYBSNFfcxXmpJGvxrFHTLUYx+anqal6JJyYevoKjjLqJ2QS+w9Q6j9smaGgIb2EFGP
         DCuNetJVD1TH7QrnSuMJCVsrvyRnSgj+LE2yQIjnh9TVSPKGpRWexbldunT7BUdLTEq2
         qw+08AI3uhZNAlL7nYH2GMHdww5A/4XkrnLpaSZsUYtRVo7anlk14+eDaXhqdfkZDuE0
         RTPA==
X-Gm-Message-State: AOAM533fbEkXX10AfNPAAWFaEdHAxypzT/vONS5h553j5D2wDjGpOmRI
	N2kN5tXu/mRIoTtOnYZeodpfayeJ5EKJX//mx6k=
X-Google-Smtp-Source: ABdhPJwnXnwmmwoDf5Hd5rmoKm70Jw6Oxi1hjnMSycirTQfNAO4iDpjQ3cqbzmPZveLO0Vfh+5T5GdiOiVf/ciZoWYE=
X-Received: by 2002:a25:e702:: with SMTP id e2mr7105799ybh.150.1644234972501;
 Mon, 07 Feb 2022 03:56:12 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3Pt1itmEnH62eLNapn=3V3GBOyLNTXqzDrjwK_PPgTi-fQ@mail.gmail.com>
In-Reply-To: <CAA=S3Pt1itmEnH62eLNapn=3V3GBOyLNTXqzDrjwK_PPgTi-fQ@mail.gmail.com>
From: Arash Jafari <arash.jafari.telecom@gmail.com>
Date: Mon, 7 Feb 2022 12:56:01 +0100
Message-ID: <CANzM3hyE-NLwM+TuhN6ewaudHa4EQBbcMd4aeTHo989LK9PUig@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>
Message-ID-Hash: XTYX6HWDIGEDO6AXULE2Z5W6E5KIGNSL
X-Message-ID-Hash: XTYX6HWDIGEDO6AXULE2Z5W6E5KIGNSL
X-MailFrom: arash.jafari.telecom@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Vivado: Version 2019.1 not found error when i want to a built a custom RFNOC block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XTYX6HWDIGEDO6AXULE2Z5W6E5KIGNSL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7405854266414592369=="

--===============7405854266414592369==
Content-Type: multipart/alternative; boundary="000000000000769cff05d76c49c1"

--000000000000769cff05d76c49c1
Content-Type: text/plain; charset="UTF-8"

Hello sp h,

I did it about 3 years ago, as I remember, there is a Tcl file in the make
folder or s.w else the Vivado version is defined there, you need to change
the Vivado version there.
Please keep this in mind, in some scenarios the Vivado version must be
exactly the same as configured in the mentioned Tcl file, otherwise due to
some kind of incompatibility you can't proceed.
use *grep -r vivado *command or s.t similar in ubuntu to find where to
configure it.

Kind Regards
------------------------
Dipl.-Ing. Arash Jafari
Phone: +43 650 844 3617
E-mail: arash.jafari.telecom@gmail.com

On Sun, Feb 6, 2022 at 5:10 PM sp h <stackprogramer@gmail.com> wrote:

> I copied the RFNOC example in a folder. for building, I used these
> commands...
> Building and Installing an OOT Module
> mkdir build
> cd build
> cmake .. -DUHD_FPGA_DIR=/home/sp/Documents/uhd-4.1.0.5/fpga
> make
> Building an FPGA Image with OOT Blocks
> when I want to build FPGA I used these commands...
>
> make x310_rfnoc_image_core
>
> I faced with this error
> *Errors:*
>
>
>
> *Setting up a 64-bit FPGA build environment for the USRP-X3x0...- Vivado:
> Version 2019.1 not found in /opt/Xilinx/Vivado (ERROR.. Builds and
> simulations will not work)          Use the --vivado-path option to
> override the search pathBuilt target x310_rfnoc_image_core*
>
> When I used these options I was faced another error...
>
> make x310_rfnoc_image_core --vivado-path=/home/sp/xilinx/Vivado
>
> *Errors:*
> make: unrecognized option '--vivado-path=/home/sp/xilinx/Vivado'
>
> How can build Gain RFNOC example successfully?
> thanks in advance
>
>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000769cff05d76c49c1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello sp h,<br><br>I did it about 3 years ago, as I rememb=
er, there is a Tcl file in the make folder or s.w else the=C2=A0Vivado=C2=
=A0version is defined there, you need to change the=C2=A0Vivado=C2=A0versio=
n there.<br>Please keep this in mind, in some scenarios the Vivado version =
must be exactly the same as configured in the mentioned Tcl file, otherwise=
=C2=A0due to some kind of incompatibility=C2=A0you can&#39;t=C2=A0proceed.<=
br>use <b>grep -r vivado </b>command<b>=C2=A0</b>or s.t similar=C2=A0in ubu=
ntu to find where to configure it.<br><br>Kind Regards<div><div dir=3D"ltr"=
 class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"l=
tr"><div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font-family:monospace,=
monospace">------------------------</span></div><div dir=3D"ltr"><span styl=
e=3D"color:rgb(0,0,0);font-family:monospace,monospace">Dipl.-Ing. Arash Jaf=
ari</span><font face=3D"monospace, monospace" color=3D"#000000" size=3D"2">=
=C2=A0</font><br></div><div dir=3D"ltr"><div><span style=3D"font-family:mon=
ospace;color:rgb(0,0,0)">Phone: +43 650 844 3617</span><br></div><div><span=
 style=3D"font-family:monospace"><font color=3D"#000000" size=3D"2">E-mail:=
=C2=A0<a href=3D"mailto:arash.jafari.telecom@gmail.com" target=3D"_blank">a=
rash.jafari.telecom@gmail.com</a></font></span></div></div></div></div></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Sun, Feb 6, 2022 at 5:10 PM sp h &lt;<a href=3D"mailto:stackprogramer@=
gmail.com">stackprogramer@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I copied the RFNOC exam=
ple in a folder. for building, I used these commands...<div><h3 style=3D"co=
lor:rgb(0,0,0);background-image:none;background-position:initial;background=
-size:initial;background-repeat:initial;background-origin:initial;backgroun=
d-clip:initial;margin:0.3em 0px 0px;overflow:hidden;padding-top:0.5em;paddi=
ng-bottom:0px;border-bottom:none;line-height:1.6;font-family:&quot;Lucida S=
ans Unicode&quot;,&quot;Lucida Grande&quot;,sans-serif"><span id=3D"gmail-m=
_3487114384417369716gmail-Building_and_Installing_an_OOT_Module"><font size=
=3D"2">Building and Installing an OOT Module</font></span></h3></div><div>m=
kdir build=C2=A0<br><div>cd build</div>cmake .. -DUHD_FPGA_DIR=3D/home/sp/D=
ocuments/uhd-4.1.0.5/fpga<br><div>make<br></div></div><div><h3 style=3D"col=
or:rgb(0,0,0);background-image:none;background-position:initial;background-=
size:initial;background-repeat:initial;background-origin:initial;background=
-clip:initial;margin:0.3em 0px 0px;overflow:hidden;padding-top:0.5em;paddin=
g-bottom:0px;border-bottom:none;line-height:1.6;font-family:&quot;Lucida Sa=
ns Unicode&quot;,&quot;Lucida Grande&quot;,sans-serif"><span id=3D"gmail-m_=
3487114384417369716gmail-Building_an_FPGA_Image_with_OOT_Blocks"><font size=
=3D"2">Building an FPGA Image with OOT Blocks</font></span></h3><div><span>=
<font size=3D"2">when I want to build FPGA I used these commands...</font><=
/span></div><div><span><font size=3D"2"><br></font></span></div>make x310_r=
fnoc_image_core<br></div><div><br></div><div>I faced with this error=C2=A0<=
/div><div><b>Errors:</b></div><div><b>Setting up a 64-bit FPGA build enviro=
nment for the USRP-X3x0...<br>- Vivado: Version 2019.1 not found in /opt/Xi=
linx/Vivado (ERROR.. Builds and simulations will not work)<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 Use the --vivado-path option to override the search p=
ath<br>Built target x310_rfnoc_image_core</b><br></div><div><br></div><div>=
When I used these options I was=C2=A0faced another error...</div><div><br><=
/div><div>make x310_rfnoc_image_core --vivado-path=3D/home/sp/xilinx/Vivado=
<br></div><div><br></div><div><b>Errors:</b></div><div>make: unrecognized o=
ption &#39;--vivado-path=3D/home/sp/xilinx/Vivado&#39;<br></div><div><br></=
div><div>How can build Gain RFNOC example successfully?</div><div>thanks in=
=C2=A0advance</div><div><br></div><div><br></div><div><br></div><div><br></=
div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000769cff05d76c49c1--

--===============7405854266414592369==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7405854266414592369==--
