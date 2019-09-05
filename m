Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 70959AACAF
	for <lists+usrp-users@lfdr.de>; Thu,  5 Sep 2019 22:04:04 +0200 (CEST)
Received: from [::1] (port=55002 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i5xz7-0002zZ-UL; Thu, 05 Sep 2019 16:04:01 -0400
Received: from mail-lj1-f177.google.com ([209.85.208.177]:42971)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1i5xz4-0002sc-6k
 for usrp-users@lists.ettus.com; Thu, 05 Sep 2019 16:03:58 -0400
Received: by mail-lj1-f177.google.com with SMTP id y23so3786867lje.9
 for <usrp-users@lists.ettus.com>; Thu, 05 Sep 2019 13:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=da15ro8uZ585UmJFp0hS8tfOaWLOixbyynkLLG08QQ0=;
 b=uGDjhlimJ1X/O+SGwKHK0+UYIaC0r5qkodj3vcpea7I72JKThhGMOUQhXjfGBe3amk
 UbfsfMheQYkbh/AIsWjaZBtE//X4vMcpWdal3mFQ4VfDGGYNu9HI7cmws+HUx/fQ4cuV
 O4gp4STT2vvEeT12BkULjA3U/U6s7zq0Ez/RUx71AAWPU7fJQIdYPTEgbLGYj8cEJmz0
 +MiWMBk/ee9zA4d1NwS68/ZE4JD0Fie1jGhCdGH/jblMQtI9uoWxsB5ADMuEx4ySNYNl
 uXhi0Td1eGN8O0yyFiyQ7BkZjq/P9idCOoChGYZFUoUa3vOaaqeYB9onKrI4bYvgSEJx
 kg4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=da15ro8uZ585UmJFp0hS8tfOaWLOixbyynkLLG08QQ0=;
 b=g4j4xD0rnTZr5xmOculr8gkDcVEcu53jnvs1a576s7ibkFlf2Y1V4EDR9MSDlVueSP
 R3YOsbJOZb4XReWgx+qk+sTsP7NOhJJ7Nmped/FU0wl1ktRv0xdCLrl5fvij3jVALW+f
 w6WtpdYkDeZN/s8VnHjY0oqAkj5BzjO8jU10ZXlkVjegKluSU3EPwqJqkMxjEy162aon
 OhZLWeXRjCYvt8Y/42NnwGxvsHFaArD2nos+JDWoX5YQ7yyfNE+CckGd/R+aD75FD3aa
 1asTrzOt0oYURFeAmFeBkl2A2TdyrtuTxMgRhNd3Tjcfy0w6uTMxJESfeATH/OOfvqJB
 mUFg==
X-Gm-Message-State: APjAAAUL5K0jkePLIvjBRJB+uHAFUlAp5TLdcTkxzuy03HwVg2hLMG2E
 6Ssk1frP++1fSLoX3a751EUCmP6Pffz4QAPho4HCLPkG
X-Google-Smtp-Source: APXvYqx6I27slakLKqr4N25JS5OodOZKG7r25jSqluUntErHhynQ+GgIKqIHueD/ZeOH/SQnza1MxWR+3C+7Z949mCg=
X-Received: by 2002:a2e:3e16:: with SMTP id l22mr3242617lja.238.1567713796885; 
 Thu, 05 Sep 2019 13:03:16 -0700 (PDT)
MIME-Version: 1.0
References: <CABO=5RoRfGFhoyRyRKr=RjX0Scv1eB0agVcmQ88j8dxT2hp7sQ@mail.gmail.com>
 <CANf970Y19wuC4PdsV8+tUJE=3c6E-SwmnxqzJ2KRrPLXNLuFtA@mail.gmail.com>
 <CABO=5RqM9LMP8Mo8WGQU0ApJTiDkAyyNzF8CuwjXoRFpFJ6P4w@mail.gmail.com>
In-Reply-To: <CABO=5RqM9LMP8Mo8WGQU0ApJTiDkAyyNzF8CuwjXoRFpFJ6P4w@mail.gmail.com>
Date: Thu, 5 Sep 2019 15:03:05 -0500
Message-ID: <CANf970b9wTdfsEMfvcuLHiCGKnM_ony0joPTo87WchfnGTYHTA@mail.gmail.com>
To: Saimanoj Katta <saimanoj.katta@cumucore.com>
Subject: Re: [USRP-users] Detection of USRP X310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8093585211479732585=="
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

--===============8093585211479732585==
Content-Type: multipart/alternative; boundary="000000000000f923960591d3cf52"

--000000000000f923960591d3cf52
Content-Type: text/plain; charset="UTF-8"

Saimanoj,

Depending on which red lights you're talking about, that's not necessarily
indicative of an issue.

Can you tell me a bit more about what was going on when you had the issue?
Were you trying to write an FPGA image to the device, or did it just die
out of nowhere?

Additionally, I'd like to know if you experience any issues during the jtag
process. Screenshots are always helpful.

Sam Reiter
SDR Support Engineer
Ettus Research


On Tue, Sep 3, 2019 at 2:52 AM Saimanoj Katta <saimanoj.katta@cumucore.com>
wrote:

> Hi Sam,
>
> Thank you for the information. Yes, you were right. I didn't see the LEDs
> on the SFP port illuminating. I followed your instructions and the USRP
> worked like a charm for all these days.
>
> However, I didn't have any issues until yesterday. Yesterday, it suddenly
> stopped working. I could see the Red LED lights from the side and from my
> earlier observation(as LEDs were not illuminating in SFP port), I concluded
> it to be in the earlier state. I tried reprogramming the same way and it
> doesn't work now. Any further points on how to bring back the device to the
> normal state?  I am still hopeful of it getting fixed.
>
> Looking forward to your reply. Thank you for your time and consideration.
>
> Regards,
> Saimanoj
>
> On Tue, Jul 23, 2019 at 11:59 PM Sam Reiter <sam.reiter@ettus.com> wrote:
>
>> When you plug in either link, do you see the LEDs on the SFP ports
>> illuminate? You may have bricked the X310 if these ports are unresponsive.
>>
>> Here's a *discovery* guide that might be helpful:
>> https://kb.ettus.com/Troubleshooting_X300/X310_Device_Discovery_Issues
>>
>> Here's a *recovery* guide if that fails:
>> https://kb.ettus.com/X300/X310_Device_Recovery
>>
>> Best,
>>
>> Sam Reiter
>> SDR Support Engineer
>> Ettus Research
>>
>>
>> On Fri, Jul 19, 2019 at 6:03 AM Saimanoj Katta via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi,
>>>
>>> I was previously working with the USRP X310. I wanted to enable Dual
>>> Connectivity mode for enabling two ports with 10 Giga bit connectivity. I
>>> ran the update:  uhd_image_loader --args "type=x300,addr=192.168.50.2,
>>> fpga=XG". Since this, I have not been able to detect my USRP.
>>>
>>> *My setup: * Ubuntu is 18.04 and the UHD version is
>>> UHD_3.14.1.0-0-gbfb9c1c7
>>> I have connected to the laptop via thunderbolt port which is equivalent
>>> to USB-3.0. Firewall is disabled. It is not behind a router/switch. Host
>>> interface IP address is 192.168.10.3 and subnet is 255.255.255.0
>>>
>>> I have tried the following:
>>>
>>> 1) Ran as root user - uhd_find_devices, uhd_usrp_probe and
>>> uhd_images_downloader.
>>> Device is not found in first two options. And, the fpga_default images
>>> seem to be up to date.
>>> 2) By default, USRPs have addresses from the 192.168.10.XXX range (XXX=2
>>> in factory settings). I searched addresses in this range, but still USRP
>>> not detected. Ping to the address also fails.
>>>
>>> Any suggestions would be appreciated to detect the device! Many thanks
>>> in advance.
>>>
>>> Regards,
>>> Saimanoj
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--000000000000f923960591d3cf52
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Saimanoj,</div><div><br></div><div>Depending on which=
 red lights you&#39;re talking about, that&#39;s not necessarily indicative=
 of an issue. <br></div><div><br></div><div>Can you tell me a bit more abou=
t what was going on when you had the issue? Were you trying to write an FPG=
A image to the device, or did it just die out of nowhere?</div><div><br></d=
iv><div>Additionally, I&#39;d like to know if you experience any issues dur=
ing the jtag process. Screenshots are always helpful. <br></div><div><br></=
div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail=
_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam Reiter=C2=A0<div>SDR=
 Support Engineer</div><div>Ettus Research<br></div></div></div></div></div=
></div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Tue, Sep 3, 2019 at 2:52 AM Saimanoj Katta &lt;<a href=3D"mai=
lto:saimanoj.katta@cumucore.com">saimanoj.katta@cumucore.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
"><div>Hi Sam, <br></div><div><br></div><div>Thank you for the information.=
 Yes, you were right. I didn&#39;t see the LEDs on the SFP port illuminatin=
g. I followed your instructions and the USRP worked like a charm for all th=
ese days.</div><div><br></div><div>However, I didn&#39;t have any issues un=
til yesterday. Yesterday, it suddenly stopped working. I could see the Red =
LED lights from the side and from my earlier observation(as LEDs were not i=
lluminating in SFP port), I concluded it to be in the earlier state. I trie=
d reprogramming the same way and it doesn&#39;t work now. Any further point=
s on how to bring back the device to the normal state?=C2=A0 I am still hop=
eful of it getting fixed. <br></div><div><br></div><div>Looking forward to =
your reply. Thank you for your time and consideration. <br></div><div><br><=
/div><div>Regards,</div><div>Saimanoj<br></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 23, 2019 at 11:5=
9 PM Sam Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D"_blan=
k">sam.reiter@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr">When you plug in either link, do yo=
u see the LEDs on the SFP ports illuminate? You may have bricked the X310 i=
f these ports are unresponsive.=C2=A0<div><br></div><div>Here&#39;s a <b>di=
scovery</b> guide that might be helpful:=C2=A0<a href=3D"https://kb.ettus.c=
om/Troubleshooting_X300/X310_Device_Discovery_Issues" target=3D"_blank">htt=
ps://kb.ettus.com/Troubleshooting_X300/X310_Device_Discovery_Issues</a></di=
v><div><br></div><div>Here&#39;s a <b>recovery</b> guide if that fails:=C2=
=A0<a href=3D"https://kb.ettus.com/X300/X310_Device_Recovery" target=3D"_bl=
ank">https://kb.ettus.com/X300/X310_Device_Recovery</a></div><div><br></div=
><div>Best,</div><div><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmai=
l-m_748991759639638984gmail-m_3596933906674759119gmail_signature"><div dir=
=3D"ltr"><div><div dir=3D"ltr">Sam Reiter=C2=A0<div>SDR Support Engineer</d=
iv><div>Ettus Research<br></div></div></div></div></div></div><br></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Fri, Jul 19, 2019 at 6:03 AM Saimanoj Katta via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div>Hi, <br></div><div><br></div><div>I was previously=
 working with the USRP X310. I wanted to enable Dual Connectivity mode for =
enabling two ports with 10 Giga bit connectivity. I ran the update:=C2=A0 <=
span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-=
color:transparent;font-weight:400;font-style:normal;font-variant:normal;tex=
t-decoration:none;vertical-align:baseline;white-space:pre-wrap" id=3D"gmail=
-m_748991759639638984gmail-m_3596933906674759119gmail-m_-797655391132927550=
3gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635">uhd_image_l=
oader --args &quot;type=3Dx300,addr=3D192.168.50.2, fpga=3DXG&quot;.</span>=
<span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background=
-color:transparent;font-weight:400;font-style:normal;font-variant:normal;te=
xt-decoration:none;vertical-align:baseline;white-space:pre-wrap" id=3D"gmai=
l-m_748991759639638984gmail-m_3596933906674759119gmail-m_-79765539113292755=
03gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635">  Since th=
is, I have not been able to detect my USRP. <br></span></div><div><span sty=
le=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:tr=
ansparent;font-weight:400;font-style:normal;font-variant:normal;text-decora=
tion:none;vertical-align:baseline;white-space:pre-wrap" id=3D"gmail-m_74899=
1759639638984gmail-m_3596933906674759119gmail-m_-7976553911329275503gmail-d=
ocs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635"><br></span></div><d=
iv><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);backgro=
und-color:transparent;font-weight:400;font-style:normal;font-variant:normal=
;text-decoration:none;vertical-align:baseline;white-space:pre-wrap" id=3D"g=
mail-m_748991759639638984gmail-m_3596933906674759119gmail-m_-79765539113292=
75503gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635"><b>My s=
etup: </b><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);=
background-color:transparent;font-weight:400;font-style:normal;font-variant=
:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap" =
id=3D"gmail-m_748991759639638984gmail-m_3596933906674759119gmail-m_-7976553=
911329275503gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635">=
 Ubuntu is 18.04 and the UHD version is UHD_3.14.1.0-0-gbfb9c1c7</span></sp=
an></div><div><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0=
,0);background-color:transparent;font-weight:400;font-style:normal;font-var=
iant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wr=
ap" id=3D"gmail-m_748991759639638984gmail-m_3596933906674759119gmail-m_-797=
6553911329275503gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef6=
35"><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre-wrap" id=3D"=
gmail-m_748991759639638984gmail-m_3596933906674759119gmail-m_-7976553911329=
275503gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635">I have=
 connected to the laptop via thunderbolt port which is equivalent to USB-3.=
0. Firewall is disabled. It is not behind a router/switch. Host interface I=
P address is 192.168.10.3 and subnet is 255.255.255.0 </span></span></div><=
div><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre-wrap" id=3D"=
gmail-m_748991759639638984gmail-m_3596933906674759119gmail-m_-7976553911329=
275503gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635"><br></=
span></div><div><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0=
,0,0);background-color:transparent;font-weight:400;font-style:normal;font-v=
ariant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-=
wrap" id=3D"gmail-m_748991759639638984gmail-m_3596933906674759119gmail-m_-7=
976553911329275503gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104e=
f635">I have tried the following: <br></span></div><div><span style=3D"font=
-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent;=
font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;=
vertical-align:baseline;white-space:pre-wrap" id=3D"gmail-m_748991759639638=
984gmail-m_3596933906674759119gmail-m_-7976553911329275503gmail-docs-intern=
al-guid-38792c7d-7fff-6350-996e-1ea2104ef635"><br></span></div><div><span s=
tyle=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:=
transparent;font-weight:400;font-style:normal;font-variant:normal;text-deco=
ration:none;vertical-align:baseline;white-space:pre-wrap" id=3D"gmail-m_748=
991759639638984gmail-m_3596933906674759119gmail-m_-7976553911329275503gmail=
-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635">1) Ran as root us=
er - uhd_find_devices, uhd_usrp_probe and uhd_images_downloader. <br></span=
></div><div><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0=
);background-color:transparent;font-weight:400;font-style:normal;font-varia=
nt:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap=
" id=3D"gmail-m_748991759639638984gmail-m_3596933906674759119gmail-m_-79765=
53911329275503gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635=
">Device is not found in first two options. And, the fpga_default images se=
em to be up to date. <br></span></div><div><span style=3D"font-size:11pt;fo=
nt-family:Arial;color:rgb(0,0,0);background-color:transparent;font-weight:4=
00;font-style:normal;font-variant:normal;text-decoration:none;vertical-alig=
n:baseline;white-space:pre-wrap" id=3D"gmail-m_748991759639638984gmail-m_35=
96933906674759119gmail-m_-7976553911329275503gmail-docs-internal-guid-38792=
c7d-7fff-6350-996e-1ea2104ef635">2) By default, USRPs have addresses from t=
he <code>192.168.10.XXX</code> range (<code>XXX=3D2</code> in factory setti=
ngs). I searched addresses in this range, but still USRP not detected. Ping=
 to the address also fails. <br></span></div><div><span style=3D"font-size:=
11pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent;font-w=
eight:400;font-style:normal;font-variant:normal;text-decoration:none;vertic=
al-align:baseline;white-space:pre-wrap" id=3D"gmail-m_748991759639638984gma=
il-m_3596933906674759119gmail-m_-7976553911329275503gmail-docs-internal-gui=
d-38792c7d-7fff-6350-996e-1ea2104ef635"><br></span></div><div><span style=
=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:tran=
sparent;font-weight:400;font-style:normal;font-variant:normal;text-decorati=
on:none;vertical-align:baseline;white-space:pre-wrap" id=3D"gmail-m_7489917=
59639638984gmail-m_3596933906674759119gmail-m_-7976553911329275503gmail-doc=
s-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635">Any suggestions would=
 be appreciated to detect the device! Many thanks in advance. <br></span></=
div><div><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);b=
ackground-color:transparent;font-weight:400;font-style:normal;font-variant:=
normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap" i=
d=3D"gmail-m_748991759639638984gmail-m_3596933906674759119gmail-m_-79765539=
11329275503gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635"><=
br></span></div><div><span style=3D"font-size:11pt;font-family:Arial;color:=
rgb(0,0,0);background-color:transparent;font-weight:400;font-style:normal;f=
ont-variant:normal;text-decoration:none;vertical-align:baseline;white-space=
:pre-wrap" id=3D"gmail-m_748991759639638984gmail-m_3596933906674759119gmail=
-m_-7976553911329275503gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea=
2104ef635">Regards, <br></span></div><div><span style=3D"font-size:11pt;fon=
t-family:Arial;color:rgb(0,0,0);background-color:transparent;font-weight:40=
0;font-style:normal;font-variant:normal;text-decoration:none;vertical-align=
:baseline;white-space:pre-wrap" id=3D"gmail-m_748991759639638984gmail-m_359=
6933906674759119gmail-m_-7976553911329275503gmail-docs-internal-guid-38792c=
7d-7fff-6350-996e-1ea2104ef635">Saimanoj<br></span></div><div><span style=
=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:tran=
sparent;font-weight:400;font-style:normal;font-variant:normal;text-decorati=
on:none;vertical-align:baseline;white-space:pre-wrap" id=3D"gmail-m_7489917=
59639638984gmail-m_3596933906674759119gmail-m_-7976553911329275503gmail-doc=
s-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635"><br></span></div></di=
v>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000f923960591d3cf52--


--===============8093585211479732585==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8093585211479732585==--

