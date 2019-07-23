Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AD18D72130
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2019 23:00:11 +0200 (CEST)
Received: from [::1] (port=52628 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hq1tI-0005h4-Q6; Tue, 23 Jul 2019 17:00:08 -0400
Received: from mail-lf1-f53.google.com ([209.85.167.53]:33105)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1hq1tE-0005ZC-TD
 for usrp-users@lists.ettus.com; Tue, 23 Jul 2019 17:00:05 -0400
Received: by mail-lf1-f53.google.com with SMTP id x3so30430910lfc.0
 for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2019 13:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NevtOWdxRHRFHQiXTOR+rDymKphLtXA8wJyTsbJdggI=;
 b=izrjVOE/NfRQ/6JYRSxrlJMc4t+MqdRpvqXrPULfCJ8Ozfc52935IXA11iP8amnNrm
 DgNWim2YohZISZ0oVga7UHQSF1C1y+sAan3WMVOQIjfAVUMMT0Bu7Dkl1O1YZetmD5he
 ppt/PlFgDw0WIU3cQriHIbxLByE2zKGq73B5K0+vmgLfBXorPjnbsg1givh4BKosu563
 /S8xwjTJPDT55iiu18pijT557HsW49g/GWgqwqPPAiRC/4roYmU8g6lwNP66ciSEhseE
 fw3E4JYobY6WwzQI4SL7ykpl7fohDm+k9a13J5tfSNvvFsV5ABGMJhJeEOt0j5la2CvW
 /aeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NevtOWdxRHRFHQiXTOR+rDymKphLtXA8wJyTsbJdggI=;
 b=UiugeAEPu8WZFcMu6ALqN/cYnayg9Bl0Fpi9OlpzJailjXJl5MWCq6uqLIesDjsA8p
 p95leJoC8/WjflD5nMN1KQrtQeuIuKvej8jTG89+EbpQ2KhiYD5YyTEsLRHu1lMKR+wn
 AsfpvLt9iOGQtS9k9o6FjbuO1Q3fN+XkkHRBr4Z9UmSiiaaCtknKszUI9Dl1q/vcLLXy
 29MYiBhfIikfw2ihM5xC49lzCKBNUHmCKNTk37w9CGHGbrpxXDcSGWNY8Ptx3rJ+kokX
 pHI0xXdam842CANM/QUSpwAlHPmXdZi9CXG8qBtFW7t8T/g5dXk/k4ncUNcUrYkuM3P0
 Do/w==
X-Gm-Message-State: APjAAAUIKdzMsNBcKxMAKpHXst8dSwSd9XKGbzX7IrGDebqS0jDCoP4W
 VEmF54P06Hkxcdp0fMKmyivmNTyETlW5HY5ideNnKr1B4sBayw==
X-Google-Smtp-Source: APXvYqwZYoMtzm4p6mlQ49XEeStZ3opDlWaxpQtEgEeCCZND91tWzwz0b2H6ONxyrXlBhnC3qWTfZh8NVQxDdKQagjs=
X-Received: by 2002:ac2:50c4:: with SMTP id h4mr34297772lfm.104.1563915563643; 
 Tue, 23 Jul 2019 13:59:23 -0700 (PDT)
MIME-Version: 1.0
References: <CABO=5RoRfGFhoyRyRKr=RjX0Scv1eB0agVcmQ88j8dxT2hp7sQ@mail.gmail.com>
In-Reply-To: <CABO=5RoRfGFhoyRyRKr=RjX0Scv1eB0agVcmQ88j8dxT2hp7sQ@mail.gmail.com>
Date: Tue, 23 Jul 2019 15:59:12 -0500
Message-ID: <CANf970Y19wuC4PdsV8+tUJE=3c6E-SwmnxqzJ2KRrPLXNLuFtA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============0455643347318394479=="
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

--===============0455643347318394479==
Content-Type: multipart/alternative; boundary="000000000000a143a7058e5f7768"

--000000000000a143a7058e5f7768
Content-Type: text/plain; charset="UTF-8"

When you plug in either link, do you see the LEDs on the SFP ports
illuminate? You may have bricked the X310 if these ports are unresponsive.

Here's a *discovery* guide that might be helpful:
https://kb.ettus.com/Troubleshooting_X300/X310_Device_Discovery_Issues

Here's a *recovery* guide if that fails:
https://kb.ettus.com/X300/X310_Device_Recovery

Best,

Sam Reiter
SDR Support Engineer
Ettus Research


On Fri, Jul 19, 2019 at 6:03 AM Saimanoj Katta via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> I was previously working with the USRP X310. I wanted to enable Dual
> Connectivity mode for enabling two ports with 10 Giga bit connectivity. I
> ran the update:  uhd_image_loader --args "type=x300,addr=192.168.50.2,
> fpga=XG". Since this, I have not been able to detect my USRP.
>
> *My setup: * Ubuntu is 18.04 and the UHD version is
> UHD_3.14.1.0-0-gbfb9c1c7
> I have connected to the laptop via thunderbolt port which is equivalent to
> USB-3.0. Firewall is disabled. It is not behind a router/switch. Host
> interface IP address is 192.168.10.3 and subnet is 255.255.255.0
>
> I have tried the following:
>
> 1) Ran as root user - uhd_find_devices, uhd_usrp_probe and
> uhd_images_downloader.
> Device is not found in first two options. And, the fpga_default images
> seem to be up to date.
> 2) By default, USRPs have addresses from the 192.168.10.XXX range (XXX=2
> in factory settings). I searched addresses in this range, but still USRP
> not detected. Ping to the address also fails.
>
> Any suggestions would be appreciated to detect the device! Many thanks in
> advance.
>
> Regards,
> Saimanoj
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a143a7058e5f7768
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">When you plug in either link, do you see the LEDs on the S=
FP ports illuminate? You may have bricked the X310 if these ports are unres=
ponsive.=C2=A0<div><br></div><div>Here&#39;s a <b>discovery</b> guide that =
might be helpful:=C2=A0<a href=3D"https://kb.ettus.com/Troubleshooting_X300=
/X310_Device_Discovery_Issues">https://kb.ettus.com/Troubleshooting_X300/X3=
10_Device_Discovery_Issues</a></div><div><br></div><div>Here&#39;s a <b>rec=
overy</b> guide if that fails:=C2=A0<a href=3D"https://kb.ettus.com/X300/X3=
10_Device_Recovery">https://kb.ettus.com/X300/X310_Device_Recovery</a></div=
><div><br></div><div>Best,</div><div><br clear=3D"all"><div><div dir=3D"ltr=
" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"=
ltr"><div><div dir=3D"ltr">Sam Reiter=C2=A0<div>SDR Support Engineer</div><=
div>Ettus Research<br></div></div></div></div></div></div><br></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri,=
 Jul 19, 2019 at 6:03 AM Saimanoj Katta via USRP-users &lt;<a href=3D"mailt=
o:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><d=
iv>Hi, <br></div><div><br></div><div>I was previously working with the USRP=
 X310. I wanted to enable Dual Connectivity mode for enabling two ports wit=
h 10 Giga bit connectivity. I ran the update:=C2=A0 <span style=3D"font-siz=
e:11pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent;font=
-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vert=
ical-align:baseline;white-space:pre-wrap" id=3D"gmail-m_-797655391132927550=
3gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635">uhd_image_l=
oader --args &quot;type=3Dx300,addr=3D192.168.50.2, fpga=3DXG&quot;.</span>=
<span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background=
-color:transparent;font-weight:400;font-style:normal;font-variant:normal;te=
xt-decoration:none;vertical-align:baseline;white-space:pre-wrap" id=3D"gmai=
l-m_-7976553911329275503gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1e=
a2104ef635">  Since this, I have not been able to detect my USRP. <br></spa=
n></div><div><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,=
0);background-color:transparent;font-weight:400;font-style:normal;font-vari=
ant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wra=
p" id=3D"gmail-m_-7976553911329275503gmail-docs-internal-guid-38792c7d-7fff=
-6350-996e-1ea2104ef635"><br></span></div><div><span style=3D"font-size:11p=
t;font-family:Arial;color:rgb(0,0,0);background-color:transparent;font-weig=
ht:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-=
align:baseline;white-space:pre-wrap" id=3D"gmail-m_-7976553911329275503gmai=
l-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635"><b>My setup: </b=
><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);backgroun=
d-color:transparent;font-weight:400;font-style:normal;font-variant:normal;t=
ext-decoration:none;vertical-align:baseline;white-space:pre-wrap" id=3D"gma=
il-m_-7976553911329275503gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1=
ea2104ef635"> Ubuntu is 18.04 and the UHD version is UHD_3.14.1.0-0-gbfb9c1=
c7</span></span></div><div><span style=3D"font-size:11pt;font-family:Arial;=
color:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:no=
rmal;font-variant:normal;text-decoration:none;vertical-align:baseline;white=
-space:pre-wrap" id=3D"gmail-m_-7976553911329275503gmail-docs-internal-guid=
-38792c7d-7fff-6350-996e-1ea2104ef635"><span style=3D"font-size:11pt;font-f=
amily:Arial;color:rgb(0,0,0);background-color:transparent;font-weight:400;f=
ont-style:normal;font-variant:normal;text-decoration:none;vertical-align:ba=
seline;white-space:pre-wrap" id=3D"gmail-m_-7976553911329275503gmail-docs-i=
nternal-guid-38792c7d-7fff-6350-996e-1ea2104ef635">I have connected to the =
laptop via thunderbolt port which is equivalent to USB-3.0. Firewall is dis=
abled. It is not behind a router/switch. Host interface IP address is 192.1=
68.10.3 and subnet is 255.255.255.0 </span></span></div><div><span style=3D=
"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:transpa=
rent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:=
none;vertical-align:baseline;white-space:pre-wrap" id=3D"gmail-m_-797655391=
1329275503gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635"><b=
r></span></div><div><span style=3D"font-size:11pt;font-family:Arial;color:r=
gb(0,0,0);background-color:transparent;font-weight:400;font-style:normal;fo=
nt-variant:normal;text-decoration:none;vertical-align:baseline;white-space:=
pre-wrap" id=3D"gmail-m_-7976553911329275503gmail-docs-internal-guid-38792c=
7d-7fff-6350-996e-1ea2104ef635">I have tried the following: <br></span></di=
v><div><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);bac=
kground-color:transparent;font-weight:400;font-style:normal;font-variant:no=
rmal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap" id=
=3D"gmail-m_-7976553911329275503gmail-docs-internal-guid-38792c7d-7fff-6350=
-996e-1ea2104ef635"><br></span></div><div><span style=3D"font-size:11pt;fon=
t-family:Arial;color:rgb(0,0,0);background-color:transparent;font-weight:40=
0;font-style:normal;font-variant:normal;text-decoration:none;vertical-align=
:baseline;white-space:pre-wrap" id=3D"gmail-m_-7976553911329275503gmail-doc=
s-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635">1) Ran as root user -=
 uhd_find_devices, uhd_usrp_probe and uhd_images_downloader. <br></span></d=
iv><div><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);ba=
ckground-color:transparent;font-weight:400;font-style:normal;font-variant:n=
ormal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap" id=
=3D"gmail-m_-7976553911329275503gmail-docs-internal-guid-38792c7d-7fff-6350=
-996e-1ea2104ef635">Device is not found in first two options. And, the fpga=
_default images seem to be up to date. <br></span></div><div><span style=3D=
"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:transpa=
rent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:=
none;vertical-align:baseline;white-space:pre-wrap" id=3D"gmail-m_-797655391=
1329275503gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635">2)=
 By default, USRPs have addresses from the <code>192.168.10.XXX</code> rang=
e (<code>XXX=3D2</code> in factory settings). I searched addresses in this =
range, but still USRP not detected. Ping to the address also fails. <br></s=
pan></div><div><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,=
0,0);background-color:transparent;font-weight:400;font-style:normal;font-va=
riant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-w=
rap" id=3D"gmail-m_-7976553911329275503gmail-docs-internal-guid-38792c7d-7f=
ff-6350-996e-1ea2104ef635"><br></span></div><div><span style=3D"font-size:1=
1pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent;font-we=
ight:400;font-style:normal;font-variant:normal;text-decoration:none;vertica=
l-align:baseline;white-space:pre-wrap" id=3D"gmail-m_-7976553911329275503gm=
ail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635">Any suggestion=
s would be appreciated to detect the device! Many thanks in advance. <br></=
span></div><div><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0=
,0,0);background-color:transparent;font-weight:400;font-style:normal;font-v=
ariant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-=
wrap" id=3D"gmail-m_-7976553911329275503gmail-docs-internal-guid-38792c7d-7=
fff-6350-996e-1ea2104ef635"><br></span></div><div><span style=3D"font-size:=
11pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent;font-w=
eight:400;font-style:normal;font-variant:normal;text-decoration:none;vertic=
al-align:baseline;white-space:pre-wrap" id=3D"gmail-m_-7976553911329275503g=
mail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635">Regards, <br>=
</span></div><div><span style=3D"font-size:11pt;font-family:Arial;color:rgb=
(0,0,0);background-color:transparent;font-weight:400;font-style:normal;font=
-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pr=
e-wrap" id=3D"gmail-m_-7976553911329275503gmail-docs-internal-guid-38792c7d=
-7fff-6350-996e-1ea2104ef635">Saimanoj<br></span></div><div><span style=3D"=
font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:transpar=
ent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:n=
one;vertical-align:baseline;white-space:pre-wrap" id=3D"gmail-m_-7976553911=
329275503gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635"><br=
></span></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a143a7058e5f7768--


--===============0455643347318394479==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0455643347318394479==--

