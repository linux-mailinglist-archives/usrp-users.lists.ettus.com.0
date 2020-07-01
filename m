Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA5521124B
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jul 2020 20:04:12 +0200 (CEST)
Received: from [::1] (port=52536 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jqh5e-00022k-9n; Wed, 01 Jul 2020 14:04:10 -0400
Received: from mail-lf1-f48.google.com ([209.85.167.48]:42835)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <youngn111@gmail.com>) id 1jqh5a-0001dB-6I
 for USRP-users@lists.ettus.com; Wed, 01 Jul 2020 14:04:06 -0400
Received: by mail-lf1-f48.google.com with SMTP id y13so14232614lfe.9
 for <USRP-users@lists.ettus.com>; Wed, 01 Jul 2020 11:03:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Le+CEoeXkgC5ooku/5lXQ0gbLt1sf+1LUC2wJaTMuC4=;
 b=Mpr8s0nHZOTUMK/RuiukJv1ZBbDVFMhxQrCo4qcpBcZJAfsySTtWith3b4/arKt19x
 u8DSV83clOXBVer6t7l9nrTfCe6WRx4mJXhS3LAWXcUK4npF87v9VYt6z6l5c3zmWSMB
 ioBoiIqrY9VNE4eSCFhAPzGZTiZJbJM78hQFKPx4ouzROok7sWqiGoRVuoQ5zl3d9qqm
 aNkp+QNYv98Y5RognnItwpqNGKAKJrBewAyIVcG/T9o9dSCDr0ifFUZvEsiZPp3Ngp9e
 oY1eJYjdjgff5VCuM1MPRsjGcHmVh25+IBk4rQF5LvEG6BsZ8uxpIpzRFNuKp6MR32If
 7m+A==
X-Gm-Message-State: AOAM5318/KHQ2qGdhGalYqCmdQKMArg8P+7fBBR/zJHcRP8hRvQJMKSs
 Hv8Xd2rtAq2lDFDyzWGRzrwSFI282GBtPlEu7g==
X-Google-Smtp-Source: ABdhPJzmp4egaYnzG+vTO/h39QJ3yruFTql3ov+E43cB2nFDq8+/uc/6a66foma28hMOePlcKVoENEFUc0+T6JRGaAo=
X-Received: by 2002:ac2:558f:: with SMTP id v15mr15906304lfg.187.1593626604898; 
 Wed, 01 Jul 2020 11:03:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAJU_EcVqLsgWuRCPfQAjcpmrRFUMepJXMfn7Y3ZPpe0wOVgBnA@mail.gmail.com>
 <FBD35268-FBD8-4E28-ADB4-6376E3310F8B@gmail.com>
In-Reply-To: <FBD35268-FBD8-4E28-ADB4-6376E3310F8B@gmail.com>
Date: Wed, 1 Jul 2020 13:03:13 -0500
Message-ID: <CAJU_EcUrSau0mG7MJe0DWjqg+07whOhb9A=osmsv6bCfnzB_4A@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Subject: Re: [USRP-users] Exception in uhd_usrp_make (b205mini)
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
From: Nate Young via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Young <nate.young@wde-llc.com>
Content-Type: multipart/mixed; boundary="===============7634707804440536278=="
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

--===============7634707804440536278==
Content-Type: multipart/alternative; boundary="000000000000b08f6b05a9651b38"

--000000000000b08f6b05a9651b38
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for the suggestion, unfortunately, the stock image (from
/usr/local/share/uhd/images/usrp_b205mini_fpga.bin) had the same error
message.
I also ran uhd_images_downloader to make sure the images were up to date,
as well as verified the udev rules were correct.

I started probing the board, and found that the output of the U9 clock
buffer chip is not correct.  It is 40MHz, but has a slower speed (~1MHz)
on/off modulation to it.
It turns out the capacitor C90 is no longer on my board !  This capacitor
provides stability to the LDO in the CDC3RL02 clock buffer chip, and
according to TI, will cause modulation on the output waveform.

So this is likely the cause.  It looks to be an 0402 or 0201 part, so I
have ordered some of those in 2.2uF and will see if I am able to replace it=
.


On Tue, Jun 30, 2020 at 9:38 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> Load the standard image and see if that makes a difference.
>
>
>
> Sent from my iPhone
>
> On Jun 30, 2020, at 10:24 PM, Nate Young via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> =EF=BB=BF
>
> Hi All.
>
> I have an Ettus b205 that is being used in a customized HDL design that
> has been working reliably for many months through the development and
> addition of many features.
>
>
> Recently, the design stopped working and is now providing the following
> error during uhd_usrp_make() call from the host:
>
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> UHD_3.15.0.0-124-geb448043
>
> [INFO] [B200] Detected Device: B205mini
>
> [INFO] [B200] Operating over USB 3.
>
> *[ERROR] [UHD] Exception caught in safe-call.*
>
> *  in virtual radio_ctrl_core_3000_impl::~radio_ctrl_core_3000_impl()*
>
>   at /home/xyz/uhd/host/lib/usrp/cores/radio_ctrl_core_3000.cpp:63
>
> *this->peek32(0); _async_task.reset(); -> AssertionError: accum_timeout <
> _timeout*
>
>   in uint64_t radio_ctrl_core_3000_impl::wait_for_ack(bool)
>
>   at /home/xyz/uhd/host/lib/usrp/cores/radio_ctrl_core_3000.cpp:220
>
> To my knowledge, nothing has changed (Linux drivers, application C code o=
r
> FPGA/HDL).     Previous code revisions (that have been working for months=
)
> no longer work.
> I have debugged and am starting to wonder if my b205 is broken.
>
> My system setup is an ODROID XU4 running the UHD firmware, connected over
> USB3 to the b205.  I have replaced the ODROID XU4, as well as the cable,
> but still get the same error.
>
> Linux lsusb sees the b205 with what I believe are the correct vendor and
> product ID.
>
> >> Bus 004 Device 004: ID 2500:0022
>
> The ODROID appears to be able to talk to the b205, as uhd_find_devices
> finds the b205.
>
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
> UHD_3.15.0.0-124-geb448043
>
> --------------------------------------------------
>
> -- UHD Device 0
>
> --------------------------------------------------
>
> Device Address:
>
>     serial: 319B8D5
>
>     name: B205i
>
>     product: B205mini
>
>     type: b200
>
> In addition, the FPGA .bin file is being loaded.  I can generate custom
> FPGA builds that toggle various LEDs.. proving that the FPGA and at least
> one of its clocks are working.
>
>
> So, in summary, I get a timeout from radio_ctrl_core_3000's read of
> peek32(0).
>
> The host computer (ODROID XU4) sees the b205 via lsusb.
>
> The host computer can find the b205 using uhd_find_devices.
>
> The FPGA bitstream is being downloaded.
>
> Replacing the ODROID and the cable did not help.
>
>
> That is a strange combination. It seems to indicate the b205 is broken,
> but still working enough to download the fpga? Seems odd to me.
>
> I am working to get a new b205 to use as a comparison, but that will take
> a week or so.
>
> In the meantime, does anyone have suggestions on other ideas to try, or
> HDL changes (using Chipscope) that I might try to monitor to see if
> something is broken?
>
> Thank you very much.
>
> Nate
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--000000000000b08f6b05a9651b38
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you for the suggestion, unfortunately, the stock ima=
ge (from /usr/local/share/uhd/images/usrp_b205mini_fpga.bin) had the same e=
rror message.<div>I also ran uhd_images_downloader to make sure the images =
were up to date, as well as verified the udev rules were correct.</div><div=
><br></div><div>I started probing the board, and found that the output of t=
he=C2=A0U9 clock buffer chip is not correct.=C2=A0 It is 40MHz, but has a s=
lower speed (~1MHz) on/off modulation to it.</div><div>It turns out the cap=
acitor C90 is no longer on my board !=C2=A0 This capacitor provides stabili=
ty to the LDO in the CDC3RL02 clock buffer chip, and according to TI, will =
cause modulation on the output=C2=A0waveform.</div><div><br></div><div>So t=
his is likely the cause.=C2=A0 It looks to be an 0402 or 0201 part, so I ha=
ve ordered some of those in 2.2uF and will see if I am able to replace=C2=
=A0it.</div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Tue, Jun 30, 2020 at 9:38 PM Marcus D Leech &=
lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"auto">Load the standard image and see if that makes a difference.=C2=
=A0<div><br></div><div><br><br><div dir=3D"ltr">Sent from my iPhone</div><d=
iv dir=3D"ltr"><br><blockquote type=3D"cite">On Jun 30, 2020, at 10:24 PM, =
Nate Young via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"=
 target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br><br></block=
quote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D=
"ltr"><span id=3D"gmail-m_-5195433791794380176gmail-docs-internal-guid-72b4=
58cd-7fff-772b-d071-5f31b0a6b4a4"><p dir=3D"ltr" style=3D"line-height:1.38;=
margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family=
:Arial;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:n=
ormal;font-variant-east-asian:normal;vertical-align:baseline;white-space:pr=
e-wrap">Hi All.</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;marg=
in-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Ari=
al;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:norma=
l;font-variant-east-asian:normal;vertical-align:baseline;white-space:pre-wr=
ap">I have an Ettus b205 that is being used in a customized HDL design that=
 has been working reliably for many months through the development and addi=
tion of many features.</span></p><p dir=3D"ltr" style=3D"line-height:1.38;m=
argin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:=
Arial;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:no=
rmal;font-variant-east-asian:normal;vertical-align:baseline;white-space:pre=
-wrap"><br></span><span style=3D"font-size:11pt;font-family:Arial;color:rgb=
(0,0,0);background-color:transparent;font-variant-numeric:normal;font-varia=
nt-east-asian:normal;vertical-align:baseline;white-space:pre-wrap">Recently=
, the design stopped working and is now providing the following error durin=
g uhd_usrp_make() call from the host:</span></p><br><p dir=3D"ltr" style=3D=
"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-siz=
e:11pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent;font=
-style:italic;font-variant-numeric:normal;font-variant-east-asian:normal;ve=
rtical-align:baseline;white-space:pre-wrap">[INFO] [UHD] linux; GNU C++ ver=
sion 7.4.0; Boost_106501; UHD_3.15.0.0-124-geb448043</span></p><p dir=3D"lt=
r" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=
=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:tran=
sparent;font-style:italic;font-variant-numeric:normal;font-variant-east-asi=
an:normal;vertical-align:baseline;white-space:pre-wrap">[INFO] [B200] Detec=
ted Device: B205mini</span></p><p dir=3D"ltr" style=3D"line-height:1.38;mar=
gin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Ar=
ial;color:rgb(0,0,0);background-color:transparent;font-style:italic;font-va=
riant-numeric:normal;font-variant-east-asian:normal;vertical-align:baseline=
;white-space:pre-wrap">[INFO] [B200] Operating over USB 3.</span></p><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span =
style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color=
:transparent;font-style:italic;font-variant-numeric:normal;font-variant-eas=
t-asian:normal;vertical-align:baseline;white-space:pre-wrap"><b>[ERROR] [UH=
D] Exception caught in safe-call.</b></span></p><p dir=3D"ltr" style=3D"lin=
e-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11=
pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent;font-sty=
le:italic;font-variant-numeric:normal;font-variant-east-asian:normal;vertic=
al-align:baseline;white-space:pre-wrap"><b>=C2=A0=C2=A0in virtual radio_ctr=
l_core_3000_impl::~radio_ctrl_core_3000_impl()</b></span></p><p dir=3D"ltr"=
 style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D=
"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:transpa=
rent;font-style:italic;font-variant-numeric:normal;font-variant-east-asian:=
normal;vertical-align:baseline;white-space:pre-wrap">=C2=A0=C2=A0at /home/x=
yz/uhd/host/lib/usrp/cores/radio_ctrl_core_3000.cpp:63</span></p><p dir=3D"=
ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span styl=
e=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:tra=
nsparent;font-style:italic;font-variant-numeric:normal;font-variant-east-as=
ian:normal;vertical-align:baseline;white-space:pre-wrap"><b>this-&gt;peek32=
(0); _async_task.reset(); -&gt; AssertionError: accum_timeout &lt; _timeout=
</b></span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;marg=
in-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,=
0,0);background-color:transparent;font-style:italic;font-variant-numeric:no=
rmal;font-variant-east-asian:normal;vertical-align:baseline;white-space:pre=
-wrap">=C2=A0=C2=A0in uint64_t radio_ctrl_core_3000_impl::wait_for_ack(bool=
)</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-=
bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0=
);background-color:transparent;font-style:italic;font-variant-numeric:norma=
l;font-variant-east-asian:normal;vertical-align:baseline;white-space:pre-wr=
ap">=C2=A0=C2=A0at /home/xyz/uhd/host/lib/usrp/cores/radio_ctrl_core_3000.c=
pp:220</span></p><div><br></div><div>To my knowledge, nothing has changed (=
Linux drivers, application C code or FPGA/HDL).=C2=A0=C2=A0

=C2=A0 Previous code revisions (that have been working for months) no longe=
r work.</div><div>I have debugged and am starting to wonder if my b205 is b=
roken.</div><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;mar=
gin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0=
,0,0);background-color:transparent;font-variant-numeric:normal;font-variant=
-east-asian:normal;vertical-align:baseline;white-space:pre-wrap">My system =
setup is an ODROID XU4 running the UHD firmware, connected over USB3 to the=
 b205.=C2=A0 I have replaced the ODROID XU4, as well as the cable, but stil=
l get the same error.</span></p><br><p dir=3D"ltr" style=3D"line-height:1.3=
8;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-fami=
ly:Arial;color:rgb(0,0,0);background-color:transparent;font-variant-numeric=
:normal;font-variant-east-asian:normal;vertical-align:baseline;white-space:=
pre-wrap">Linux lsusb sees the b205 with what I believe are the correct ven=
dor and product ID.</span></p><p dir=3D"ltr" style=3D"line-height:1.38;marg=
in-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Ari=
al;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:norma=
l;font-variant-east-asian:normal;vertical-align:baseline;white-space:pre-wr=
ap">&gt;&gt; Bus 004 Device 004: ID 2500:0022</span></p><br><p dir=3D"ltr" =
style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"=
font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:transpar=
ent;font-variant-numeric:normal;font-variant-east-asian:normal;vertical-ali=
gn:baseline;white-space:pre-wrap">The ODROID appears to be able to talk to =
the b205, as uhd_find_devices finds the b205.</span></p><br><p dir=3D"ltr" =
style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"=
font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:transpar=
ent;font-style:italic;font-variant-numeric:normal;font-variant-east-asian:n=
ormal;vertical-align:baseline;white-space:pre-wrap">[INFO] [UHD] linux; GNU=
 C++ version 7.4.0; Boost_106501; UHD_3.15.0.0-124-geb448043</span></p><p d=
ir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><spa=
n style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-col=
or:transparent;font-style:italic;font-variant-numeric:normal;font-variant-e=
ast-asian:normal;vertical-align:baseline;white-space:pre-wrap">------------=
--------------------------------------</span></p><p dir=3D"ltr" style=3D"li=
ne-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:1=
1pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent;font-st=
yle:italic;font-variant-numeric:normal;font-variant-east-asian:normal;verti=
cal-align:baseline;white-space:pre-wrap">-- UHD Device 0</span></p><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span =
style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color=
:transparent;font-style:italic;font-variant-numeric:normal;font-variant-eas=
t-asian:normal;vertical-align:baseline;white-space:pre-wrap">--------------=
------------------------------------</span></p><p dir=3D"ltr" style=3D"line=
-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11p=
t;font-family:Arial;color:rgb(0,0,0);background-color:transparent;font-styl=
e:italic;font-variant-numeric:normal;font-variant-east-asian:normal;vertica=
l-align:baseline;white-space:pre-wrap">Device Address:</span></p><p dir=3D"=
ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span styl=
e=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:tra=
nsparent;font-style:italic;font-variant-numeric:normal;font-variant-east-as=
ian:normal;vertical-align:baseline;white-space:pre-wrap">=C2=A0=C2=A0=C2=A0=
=C2=A0serial: 319B8D5</span></p><p dir=3D"ltr" style=3D"line-height:1.38;ma=
rgin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:A=
rial;color:rgb(0,0,0);background-color:transparent;font-style:italic;font-v=
ariant-numeric:normal;font-variant-east-asian:normal;vertical-align:baselin=
e;white-space:pre-wrap">=C2=A0=C2=A0=C2=A0=C2=A0name: B205i</span></p><p di=
r=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span=
 style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-colo=
r:transparent;font-style:italic;font-variant-numeric:normal;font-variant-ea=
st-asian:normal;vertical-align:baseline;white-space:pre-wrap">=C2=A0=C2=A0=
=C2=A0=C2=A0product: B205mini</span></p><p dir=3D"ltr" style=3D"line-height=
:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-=
family:Arial;color:rgb(0,0,0);background-color:transparent;font-style:itali=
c;font-variant-numeric:normal;font-variant-east-asian:normal;vertical-align=
:baseline;white-space:pre-wrap">=C2=A0=C2=A0=C2=A0=C2=A0type: b200</span></=
p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom=
:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);back=
ground-color:transparent;font-variant-numeric:normal;font-variant-east-asia=
n:normal;vertical-align:baseline;white-space:pre-wrap">In addition, the FPG=
A .bin file is being loaded.=C2=A0 I can generate custom FPGA builds that t=
oggle various LEDs.. proving that the FPGA and at least one of its clocks a=
re working.</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0=
pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color=
:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;font-v=
ariant-east-asian:normal;vertical-align:baseline;white-space:pre-wrap"><br>=
</span></p><p style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><=
span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-=
color:transparent;font-variant-numeric:normal;font-variant-east-asian:norma=
l;vertical-align:baseline;white-space:pre-wrap">So, in summary, I get a tim=
eout from radio_ctrl_core_3000&#39;s read of peek32(0).</span></p><p style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-=
size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent;f=
ont-variant-numeric:normal;font-variant-east-asian:normal;vertical-align:ba=
seline;white-space:pre-wrap">The host computer (ODROID XU4) sees the b205 v=
ia lsusb.</span></p><p style=3D"line-height:1.38;margin-top:0pt;margin-bott=
om:0pt"><font color=3D"#000000" face=3D"Arial"><span style=3D"font-size:14.=
6667px;white-space:pre-wrap">The host computer can find the b205 using uhd_=
find_devices.</span></font></p><p style=3D"line-height:1.38;margin-top:0pt;=
margin-bottom:0pt">The FPGA bitstream is being downloaded.=C2=A0=C2=A0<font=
 color=3D"#000000" face=3D"Arial"><span style=3D"font-size:14.6667px;white-=
space:pre-wrap"><br></span></font></p><p style=3D"line-height:1.38;margin-t=
op:0pt;margin-bottom:0pt"><font color=3D"#000000" face=3D"Arial"><span styl=
e=3D"font-size:14.6667px;white-space:pre-wrap">Replacing the ODROID and the=
 cable did not help.</span></font></p><p style=3D"line-height:1.38;margin-t=
op:0pt;margin-bottom:0pt"><font color=3D"#000000" face=3D"Arial"><span styl=
e=3D"font-size:14.6667px;white-space:pre-wrap"></span></font></p><p style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><font color=3D"#0000=
00" face=3D"Arial"><span style=3D"font-size:14.6667px;white-space:pre-wrap"=
><br></span></font></p><p style=3D"line-height:1.38;margin-top:0pt;margin-b=
ottom:0pt"><font color=3D"#000000" face=3D"Arial"><span style=3D"font-size:=
14.6667px;white-space:pre-wrap">That is a strange combination.  It seems to=
 indicate the b205 is broken, but still working enough to download the fpga=
?  Seems odd to me.</span></font></p><div><span><br></span></div>I am worki=
ng to get a new b205 to use as a comparison, but that will take a week or s=
o.</span><div><span><br></span></div><div><span>In the meantime, does anyon=
e have suggestions on other ideas to try, or HDL changes (using Chipscope) =
that I might try to monitor to see if something is broken?</span></div><div=
><span><br></span></div><div>Thank you very much.</div><div><span><p dir=3D=
"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span sty=
le=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:tr=
ansparent;font-variant-numeric:normal;font-variant-east-asian:normal;vertic=
al-align:baseline;white-space:pre-wrap">Nate</span></p><br></span></div></d=
iv>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list</span><br><span><a href=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank">USRP-users@lists.ettus.com</a></span><br><span><a h=
ref=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" =
target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.=
ettus.com</a></span><br></div></blockquote></div></div></blockquote></div>

--000000000000b08f6b05a9651b38--


--===============7634707804440536278==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7634707804440536278==--

