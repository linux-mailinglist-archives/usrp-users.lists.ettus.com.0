Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EA47C2101FF
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jul 2020 04:24:59 +0200 (CEST)
Received: from [::1] (port=39650 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jqSQh-0004rc-Sw; Tue, 30 Jun 2020 22:24:55 -0400
Received: from mail-lf1-f43.google.com ([209.85.167.43]:46324)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <youngn111@gmail.com>) id 1jqSQd-0004nP-TP
 for usrp-users@lists.ettus.com; Tue, 30 Jun 2020 22:24:52 -0400
Received: by mail-lf1-f43.google.com with SMTP id m26so12646181lfo.13
 for <usrp-users@lists.ettus.com>; Tue, 30 Jun 2020 19:24:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=tIN1wfBXZRNWfXPoQniWne+NzaqT/XAHdZao7g8jzF8=;
 b=lFF1zCf/XZQ7zrfKaPCbiZynXwGbY6DymW+ioquEmxUFOpCw5Q+24LjM0cx2pXiLLc
 0F4tOlHMcdJ2KdeyRd2QSk/6hMUB4R70KPhW8657D+DHf4mmP/SGo/2dM2dreJfbmEeC
 oQvPSXfSuVJuBuow9I7YVfwT/MhE07CkjN8tU7aJShHZkn70EpFPZT1YcwQ1V8F+nQyq
 RtZ0c5QACJrMre7PXnEMoJSTSQMEcDE8WA0kVxhOfPrkF7g2dR1AmeabPEtILiloYYvy
 EAXQ+ooVDysgiGS8REiPKBViLXUAJWmDUj5QOtdIv0EAWueZGketOTW0l8mSGtCay3F+
 V5LA==
X-Gm-Message-State: AOAM531pd8J0E6rGuP2Kf2qbyTBeJ6T556DLKPDH9anA8fg0GOXU/74j
 yLhI9+errQzwgA4ndVccsEudYqS9IUhBST/1P6kvc3E=
X-Google-Smtp-Source: ABdhPJwQEl8o1u1me5+tGLEqYd6LPwNUJJUALX+C1xHnuzk0gO07RZsTMPATqHSolBtS6u88iiq2OnW7WIc5jGL2n3k=
X-Received: by 2002:a19:c194:: with SMTP id r142mr13424024lff.87.1593570250099; 
 Tue, 30 Jun 2020 19:24:10 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 30 Jun 2020 21:23:59 -0500
Message-ID: <CAJU_EcVqLsgWuRCPfQAjcpmrRFUMepJXMfn7Y3ZPpe0wOVgBnA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Exception in uhd_usrp_make (b205mini)
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
Content-Type: multipart/mixed; boundary="===============7093833026660092425=="
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

--===============7093833026660092425==
Content-Type: multipart/alternative; boundary="000000000000ae924d05a957fcb3"

--000000000000ae924d05a957fcb3
Content-Type: text/plain; charset="UTF-8"

Hi All.

I have an Ettus b205 that is being used in a customized HDL design that has
been working reliably for many months through the development and addition
of many features.


Recently, the design stopped working and is now providing the following
error during uhd_usrp_make() call from the host:

[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
UHD_3.15.0.0-124-geb448043

[INFO] [B200] Detected Device: B205mini

[INFO] [B200] Operating over USB 3.

*[ERROR] [UHD] Exception caught in safe-call.*

*  in virtual radio_ctrl_core_3000_impl::~radio_ctrl_core_3000_impl()*

  at /home/xyz/uhd/host/lib/usrp/cores/radio_ctrl_core_3000.cpp:63

*this->peek32(0); _async_task.reset(); -> AssertionError: accum_timeout <
_timeout*

  in uint64_t radio_ctrl_core_3000_impl::wait_for_ack(bool)

  at /home/xyz/uhd/host/lib/usrp/cores/radio_ctrl_core_3000.cpp:220

To my knowledge, nothing has changed (Linux drivers, application C code or
FPGA/HDL).     Previous code revisions (that have been working for months)
no longer work.
I have debugged and am starting to wonder if my b205 is broken.

My system setup is an ODROID XU4 running the UHD firmware, connected over
USB3 to the b205.  I have replaced the ODROID XU4, as well as the cable,
but still get the same error.

Linux lsusb sees the b205 with what I believe are the correct vendor and
product ID.

>> Bus 004 Device 004: ID 2500:0022

The ODROID appears to be able to talk to the b205, as uhd_find_devices
finds the b205.

[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
UHD_3.15.0.0-124-geb448043

--------------------------------------------------

-- UHD Device 0

--------------------------------------------------

Device Address:

    serial: 319B8D5

    name: B205i

    product: B205mini

    type: b200

In addition, the FPGA .bin file is being loaded.  I can generate custom
FPGA builds that toggle various LEDs.. proving that the FPGA and at least
one of its clocks are working.


So, in summary, I get a timeout from radio_ctrl_core_3000's read of
peek32(0).

The host computer (ODROID XU4) sees the b205 via lsusb.

The host computer can find the b205 using uhd_find_devices.

The FPGA bitstream is being downloaded.

Replacing the ODROID and the cable did not help.


That is a strange combination. It seems to indicate the b205 is broken, but
still working enough to download the fpga? Seems odd to me.

I am working to get a new b205 to use as a comparison, but that will take a
week or so.

In the meantime, does anyone have suggestions on other ideas to try, or HDL
changes (using Chipscope) that I might try to monitor to see if something
is broken?

Thank you very much.

Nate

--000000000000ae924d05a957fcb3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span id=3D"gmail-docs-internal-guid-72b458cd-7fff-772b-d0=
71-5f31b0a6b4a4"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;ma=
rgin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:rgb(=
0,0,0);background-color:transparent;font-variant-numeric:normal;font-varian=
t-east-asian:normal;vertical-align:baseline;white-space:pre-wrap">Hi All.</=
span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin=
-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,=
0);background-color:transparent;font-variant-numeric:normal;font-variant-ea=
st-asian:normal;vertical-align:baseline;white-space:pre-wrap">I have an Ett=
us b205 that is being used in a customized HDL design that has been working=
 reliably for many months through the development and addition of many feat=
ures.</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;mar=
gin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0=
,0,0);background-color:transparent;font-variant-numeric:normal;font-variant=
-east-asian:normal;vertical-align:baseline;white-space:pre-wrap"><br></span=
><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);backgroun=
d-color:transparent;font-variant-numeric:normal;font-variant-east-asian:nor=
mal;vertical-align:baseline;white-space:pre-wrap">Recently, the design stop=
ped working and is now providing the following error during uhd_usrp_make()=
 call from the host:</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38=
;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-famil=
y:Arial;color:rgb(0,0,0);background-color:transparent;font-style:italic;fon=
t-variant-numeric:normal;font-variant-east-asian:normal;vertical-align:base=
line;white-space:pre-wrap">[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost=
_106501; UHD_3.15.0.0-124-geb448043</span></p><p dir=3D"ltr" style=3D"line-=
height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt=
;font-family:Arial;color:rgb(0,0,0);background-color:transparent;font-style=
:italic;font-variant-numeric:normal;font-variant-east-asian:normal;vertical=
-align:baseline;white-space:pre-wrap">[INFO] [B200] Detected Device: B205mi=
ni</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin=
-bottom:0pt"><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,=
0);background-color:transparent;font-style:italic;font-variant-numeric:norm=
al;font-variant-east-asian:normal;vertical-align:baseline;white-space:pre-w=
rap">[INFO] [B200] Operating over USB 3.</span></p><p dir=3D"ltr" style=3D"=
line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size=
:11pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent;font-=
style:italic;font-variant-numeric:normal;font-variant-east-asian:normal;ver=
tical-align:baseline;white-space:pre-wrap"><b>[ERROR] [UHD] Exception caugh=
t in safe-call.</b></span></p><p dir=3D"ltr" style=3D"line-height:1.38;marg=
in-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Ari=
al;color:rgb(0,0,0);background-color:transparent;font-style:italic;font-var=
iant-numeric:normal;font-variant-east-asian:normal;vertical-align:baseline;=
white-space:pre-wrap"><b>=C2=A0=C2=A0in virtual radio_ctrl_core_3000_impl::=
~radio_ctrl_core_3000_impl()</b></span></p><p dir=3D"ltr" style=3D"line-hei=
ght:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;fo=
nt-family:Arial;color:rgb(0,0,0);background-color:transparent;font-style:it=
alic;font-variant-numeric:normal;font-variant-east-asian:normal;vertical-al=
ign:baseline;white-space:pre-wrap">=C2=A0=C2=A0at /home/xyz/uhd/host/lib/us=
rp/cores/radio_ctrl_core_3000.cpp:63</span></p><p dir=3D"ltr" style=3D"line=
-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11p=
t;font-family:Arial;color:rgb(0,0,0);background-color:transparent;font-styl=
e:italic;font-variant-numeric:normal;font-variant-east-asian:normal;vertica=
l-align:baseline;white-space:pre-wrap"><b>this-&gt;peek32(0); _async_task.r=
eset(); -&gt; AssertionError: accum_timeout &lt; _timeout</b></span></p><p =
dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><sp=
an style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-co=
lor:transparent;font-style:italic;font-variant-numeric:normal;font-variant-=
east-asian:normal;vertical-align:baseline;white-space:pre-wrap">=C2=A0=C2=
=A0in uint64_t radio_ctrl_core_3000_impl::wait_for_ack(bool)</span></p><p d=
ir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><spa=
n style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-col=
or:transparent;font-style:italic;font-variant-numeric:normal;font-variant-e=
ast-asian:normal;vertical-align:baseline;white-space:pre-wrap">=C2=A0=C2=A0=
at /home/xyz/uhd/host/lib/usrp/cores/radio_ctrl_core_3000.cpp:220</span></p=
><div><br></div><div>To my knowledge, nothing has changed (Linux drivers, a=
pplication C code or FPGA/HDL).=C2=A0=C2=A0

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

--000000000000ae924d05a957fcb3--


--===============7093833026660092425==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7093833026660092425==--

