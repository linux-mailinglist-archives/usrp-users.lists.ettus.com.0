Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CB20AA631D
	for <lists+usrp-users@lfdr.de>; Tue,  3 Sep 2019 09:53:11 +0200 (CEST)
Received: from [::1] (port=40726 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i53cf-0004x1-GV; Tue, 03 Sep 2019 03:53:05 -0400
Received: from mail-qk1-f174.google.com ([209.85.222.174]:41380)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <saimanoj.katta@cumucore.com>)
 id 1i53ca-0004oV-EF
 for usrp-users@lists.ettus.com; Tue, 03 Sep 2019 03:53:00 -0400
Received: by mail-qk1-f174.google.com with SMTP id g17so14855540qkk.8
 for <usrp-users@lists.ettus.com>; Tue, 03 Sep 2019 00:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumucore-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Baqa6rGedVeLrG7pvoIZ6Nkutt1iX1+RSGQWZEIWvTw=;
 b=SNh6r0tXf2ZJ2zTlj7mh/nD40i8E9igPvQHoKq5hiZW9yAdHaqlttoRNmR1opkb0ps
 BUBXCE4QK4y2Wk3Hb94UktGYb/54s4GuMsKG7LwCAF+Lvxm7WWSH42GEDy620sFqtj9Q
 FhJSs+WejzPYRpid0EvxfcMXnksATobPJh3D0HROiaNY8jBmbF3WQ2VnDgKqecRNaGwj
 uL79dUrP2P3kSlZBoBWuoemVKqP9izdmisWuOaIQCbBpgTm0vG83CG67HgpBOcsDGpYZ
 mfEOj4O2FMPPlwhZIbcZTvAvWGXwsGK8c3jAisJ1p1oPpIho7Tt/xmuyy4wSpt9WJQHc
 bIWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Baqa6rGedVeLrG7pvoIZ6Nkutt1iX1+RSGQWZEIWvTw=;
 b=QTsITcZLK9Ra9We5Oks6pxWoYkWcBJZkTVQhAZJawEUue2N7QYIOgvJp5vGvtlTD8a
 Rc3LDhkRB9Ysx/gB+Nh9wPfrnWSdkWdJ1dLKdLWuoj/HU9TSfin3sXmLOIYLnrCcBFLp
 dUJeHwwNJ4sPnHYcZrOGoB9WJzinLYbVGaxPJz3uRtrG7pQod+QHotD/htD3l4J8Yz4S
 2Ubuq8SdCgH7I129UjSH7X761ei5NPrXRFWLfS3UmNT/7vD2qjhpKy5T9v23bvL/8F/o
 axFyajeduK3wnKPyjglAgdkeZJb1Ua000ifwKQJAQdpGhPCIkPw0LARoycEAyBXcSclP
 dNxQ==
X-Gm-Message-State: APjAAAUMuIg9VbLMjpLb1Mw0MAti/3/qKGQxs0kz/yRVnSJCfNlyErrw
 hHbz/MsQyRMvkoyffM67eSLnHQLjBK5ymHRxUC9bCA==
X-Google-Smtp-Source: APXvYqxW4DX8aP7iw1CtbyGOoeTTLMHfG8GX2Jg8taRUJ9DePWnC49ujuNVl5902/FSuu9LMTTtsUL7caCIcW+sJuT8=
X-Received: by 2002:a37:b402:: with SMTP id d2mr31941719qkf.462.1567497139760; 
 Tue, 03 Sep 2019 00:52:19 -0700 (PDT)
MIME-Version: 1.0
References: <CABO=5RoRfGFhoyRyRKr=RjX0Scv1eB0agVcmQ88j8dxT2hp7sQ@mail.gmail.com>
 <CANf970Y19wuC4PdsV8+tUJE=3c6E-SwmnxqzJ2KRrPLXNLuFtA@mail.gmail.com>
In-Reply-To: <CANf970Y19wuC4PdsV8+tUJE=3c6E-SwmnxqzJ2KRrPLXNLuFtA@mail.gmail.com>
Date: Tue, 3 Sep 2019 10:52:08 +0300
Message-ID: <CABO=5RqM9LMP8Mo8WGQU0ApJTiDkAyyNzF8CuwjXoRFpFJ6P4w@mail.gmail.com>
To: Sam Reiter <sam.reiter@ettus.com>
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
From: Saimanoj Katta via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Saimanoj Katta <saimanoj.katta@cumucore.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6899309714408700319=="
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

--===============6899309714408700319==
Content-Type: multipart/alternative; boundary="00000000000033c0860591a15e82"

--00000000000033c0860591a15e82
Content-Type: text/plain; charset="UTF-8"

Hi Sam,

Thank you for the information. Yes, you were right. I didn't see the LEDs
on the SFP port illuminating. I followed your instructions and the USRP
worked like a charm for all these days.

However, I didn't have any issues until yesterday. Yesterday, it suddenly
stopped working. I could see the Red LED lights from the side and from my
earlier observation(as LEDs were not illuminating in SFP port), I concluded
it to be in the earlier state. I tried reprogramming the same way and it
doesn't work now. Any further points on how to bring back the device to the
normal state?  I am still hopeful of it getting fixed.

Looking forward to your reply. Thank you for your time and consideration.

Regards,
Saimanoj

On Tue, Jul 23, 2019 at 11:59 PM Sam Reiter <sam.reiter@ettus.com> wrote:

> When you plug in either link, do you see the LEDs on the SFP ports
> illuminate? You may have bricked the X310 if these ports are unresponsive.
>
> Here's a *discovery* guide that might be helpful:
> https://kb.ettus.com/Troubleshooting_X300/X310_Device_Discovery_Issues
>
> Here's a *recovery* guide if that fails:
> https://kb.ettus.com/X300/X310_Device_Recovery
>
> Best,
>
> Sam Reiter
> SDR Support Engineer
> Ettus Research
>
>
> On Fri, Jul 19, 2019 at 6:03 AM Saimanoj Katta via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>>
>> I was previously working with the USRP X310. I wanted to enable Dual
>> Connectivity mode for enabling two ports with 10 Giga bit connectivity. I
>> ran the update:  uhd_image_loader --args "type=x300,addr=192.168.50.2,
>> fpga=XG". Since this, I have not been able to detect my USRP.
>>
>> *My setup: * Ubuntu is 18.04 and the UHD version is
>> UHD_3.14.1.0-0-gbfb9c1c7
>> I have connected to the laptop via thunderbolt port which is equivalent
>> to USB-3.0. Firewall is disabled. It is not behind a router/switch. Host
>> interface IP address is 192.168.10.3 and subnet is 255.255.255.0
>>
>> I have tried the following:
>>
>> 1) Ran as root user - uhd_find_devices, uhd_usrp_probe and
>> uhd_images_downloader.
>> Device is not found in first two options. And, the fpga_default images
>> seem to be up to date.
>> 2) By default, USRPs have addresses from the 192.168.10.XXX range (XXX=2
>> in factory settings). I searched addresses in this range, but still USRP
>> not detected. Ping to the address also fails.
>>
>> Any suggestions would be appreciated to detect the device! Many thanks in
>> advance.
>>
>> Regards,
>> Saimanoj
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--00000000000033c0860591a15e82
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Sam, <br></div><div><br></div><div>Thank you for t=
he information. Yes, you were right. I didn&#39;t see the LEDs on the SFP p=
ort illuminating. I followed your instructions and the USRP worked like a c=
harm for all these days.</div><div><br></div><div>However, I didn&#39;t hav=
e any issues until yesterday. Yesterday, it suddenly stopped working. I cou=
ld see the Red LED lights from the side and from my earlier observation(as =
LEDs were not illuminating in SFP port), I concluded it to be in the earlie=
r state. I tried reprogramming the same way and it doesn&#39;t work now. An=
y further points on how to bring back the device to the normal state?=C2=A0=
 I am still hopeful of it getting fixed. <br></div><div><br></div><div>Look=
ing forward to your reply. Thank you for your time and consideration. <br><=
/div><div><br></div><div>Regards,</div><div>Saimanoj<br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 2=
3, 2019 at 11:59 PM Sam Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com">=
sam.reiter@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr">When you plug in either link, do you s=
ee the LEDs on the SFP ports illuminate? You may have bricked the X310 if t=
hese ports are unresponsive.=C2=A0<div><br></div><div>Here&#39;s a <b>disco=
very</b> guide that might be helpful:=C2=A0<a href=3D"https://kb.ettus.com/=
Troubleshooting_X300/X310_Device_Discovery_Issues" target=3D"_blank">https:=
//kb.ettus.com/Troubleshooting_X300/X310_Device_Discovery_Issues</a></div><=
div><br></div><div>Here&#39;s a <b>recovery</b> guide if that fails:=C2=A0<=
a href=3D"https://kb.ettus.com/X300/X310_Device_Recovery" target=3D"_blank"=
>https://kb.ettus.com/X300/X310_Device_Recovery</a></div><div><br></div><di=
v>Best,</div><div><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail-m_=
3596933906674759119gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">=
Sam Reiter=C2=A0<div>SDR Support Engineer</div><div>Ettus Research<br></div=
></div></div></div></div></div><br></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jul 19, 2019 at 6:03 AM Sa=
imanoj Katta via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi, <b=
r></div><div><br></div><div>I was previously working with the USRP X310. I =
wanted to enable Dual Connectivity mode for enabling two ports with 10 Giga=
 bit connectivity. I ran the update:=C2=A0 <span style=3D"font-size:11pt;fo=
nt-family:Arial;color:rgb(0,0,0);background-color:transparent;font-weight:4=
00;font-style:normal;font-variant:normal;text-decoration:none;vertical-alig=
n:baseline;white-space:pre-wrap" id=3D"gmail-m_3596933906674759119gmail-m_-=
7976553911329275503gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104=
ef635">uhd_image_loader --args &quot;type=3Dx300,addr=3D192.168.50.2, fpga=
=3DXG&quot;.</span><span style=3D"font-size:11pt;font-family:Arial;color:rg=
b(0,0,0);background-color:transparent;font-weight:400;font-style:normal;fon=
t-variant:normal;text-decoration:none;vertical-align:baseline;white-space:p=
re-wrap" id=3D"gmail-m_3596933906674759119gmail-m_-7976553911329275503gmail=
-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635">  Since this, I h=
ave not been able to detect my USRP. <br></span></div><div><span style=3D"f=
ont-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:transpare=
nt;font-weight:400;font-style:normal;font-variant:normal;text-decoration:no=
ne;vertical-align:baseline;white-space:pre-wrap" id=3D"gmail-m_359693390667=
4759119gmail-m_-7976553911329275503gmail-docs-internal-guid-38792c7d-7fff-6=
350-996e-1ea2104ef635"><br></span></div><div><span style=3D"font-size:11pt;=
font-family:Arial;color:rgb(0,0,0);background-color:transparent;font-weight=
:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-al=
ign:baseline;white-space:pre-wrap" id=3D"gmail-m_3596933906674759119gmail-m=
_-7976553911329275503gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea21=
04ef635"><b>My setup: </b><span style=3D"font-size:11pt;font-family:Arial;c=
olor:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:nor=
mal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-=
space:pre-wrap" id=3D"gmail-m_3596933906674759119gmail-m_-79765539113292755=
03gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635"> Ubuntu is=
 18.04 and the UHD version is UHD_3.14.1.0-0-gbfb9c1c7</span></span></div><=
div><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre-wrap" id=3D"=
gmail-m_3596933906674759119gmail-m_-7976553911329275503gmail-docs-internal-=
guid-38792c7d-7fff-6350-996e-1ea2104ef635"><span style=3D"font-size:11pt;fo=
nt-family:Arial;color:rgb(0,0,0);background-color:transparent;font-weight:4=
00;font-style:normal;font-variant:normal;text-decoration:none;vertical-alig=
n:baseline;white-space:pre-wrap" id=3D"gmail-m_3596933906674759119gmail-m_-=
7976553911329275503gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104=
ef635">I have connected to the laptop via thunderbolt port which is equival=
ent to USB-3.0. Firewall is disabled. It is not behind a router/switch. Hos=
t interface IP address is 192.168.10.3 and subnet is 255.255.255.0 </span><=
/span></div><div><span style=3D"font-size:11pt;font-family:Arial;color:rgb(=
0,0,0);background-color:transparent;font-weight:400;font-style:normal;font-=
variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre=
-wrap" id=3D"gmail-m_3596933906674759119gmail-m_-7976553911329275503gmail-d=
ocs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635"><br></span></div><d=
iv><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);backgro=
und-color:transparent;font-weight:400;font-style:normal;font-variant:normal=
;text-decoration:none;vertical-align:baseline;white-space:pre-wrap" id=3D"g=
mail-m_3596933906674759119gmail-m_-7976553911329275503gmail-docs-internal-g=
uid-38792c7d-7fff-6350-996e-1ea2104ef635">I have tried the following: <br><=
/span></div><div><span style=3D"font-size:11pt;font-family:Arial;color:rgb(=
0,0,0);background-color:transparent;font-weight:400;font-style:normal;font-=
variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre=
-wrap" id=3D"gmail-m_3596933906674759119gmail-m_-7976553911329275503gmail-d=
ocs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635"><br></span></div><d=
iv><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);backgro=
und-color:transparent;font-weight:400;font-style:normal;font-variant:normal=
;text-decoration:none;vertical-align:baseline;white-space:pre-wrap" id=3D"g=
mail-m_3596933906674759119gmail-m_-7976553911329275503gmail-docs-internal-g=
uid-38792c7d-7fff-6350-996e-1ea2104ef635">1) Ran as root user - uhd_find_de=
vices, uhd_usrp_probe and uhd_images_downloader. <br></span></div><div><spa=
n style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-col=
or:transparent;font-weight:400;font-style:normal;font-variant:normal;text-d=
ecoration:none;vertical-align:baseline;white-space:pre-wrap" id=3D"gmail-m_=
3596933906674759119gmail-m_-7976553911329275503gmail-docs-internal-guid-387=
92c7d-7fff-6350-996e-1ea2104ef635">Device is not found in first two options=
. And, the fpga_default images seem to be up to date. <br></span></div><div=
><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);backgroun=
d-color:transparent;font-weight:400;font-style:normal;font-variant:normal;t=
ext-decoration:none;vertical-align:baseline;white-space:pre-wrap" id=3D"gma=
il-m_3596933906674759119gmail-m_-7976553911329275503gmail-docs-internal-gui=
d-38792c7d-7fff-6350-996e-1ea2104ef635">2) By default, USRPs have addresses=
 from the <code>192.168.10.XXX</code> range (<code>XXX=3D2</code> in factor=
y settings). I searched addresses in this range, but still USRP not detecte=
d. Ping to the address also fails. <br></span></div><div><span style=3D"fon=
t-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent=
;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none=
;vertical-align:baseline;white-space:pre-wrap" id=3D"gmail-m_35969339066747=
59119gmail-m_-7976553911329275503gmail-docs-internal-guid-38792c7d-7fff-635=
0-996e-1ea2104ef635"><br></span></div><div><span style=3D"font-size:11pt;fo=
nt-family:Arial;color:rgb(0,0,0);background-color:transparent;font-weight:4=
00;font-style:normal;font-variant:normal;text-decoration:none;vertical-alig=
n:baseline;white-space:pre-wrap" id=3D"gmail-m_3596933906674759119gmail-m_-=
7976553911329275503gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104=
ef635">Any suggestions would be appreciated to detect the device! Many than=
ks in advance. <br></span></div><div><span style=3D"font-size:11pt;font-fam=
ily:Arial;color:rgb(0,0,0);background-color:transparent;font-weight:400;fon=
t-style:normal;font-variant:normal;text-decoration:none;vertical-align:base=
line;white-space:pre-wrap" id=3D"gmail-m_3596933906674759119gmail-m_-797655=
3911329275503gmail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635"=
><br></span></div><div><span style=3D"font-size:11pt;font-family:Arial;colo=
r:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:normal=
;font-variant:normal;text-decoration:none;vertical-align:baseline;white-spa=
ce:pre-wrap" id=3D"gmail-m_3596933906674759119gmail-m_-7976553911329275503g=
mail-docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635">Regards, <br>=
</span></div><div><span style=3D"font-size:11pt;font-family:Arial;color:rgb=
(0,0,0);background-color:transparent;font-weight:400;font-style:normal;font=
-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pr=
e-wrap" id=3D"gmail-m_3596933906674759119gmail-m_-7976553911329275503gmail-=
docs-internal-guid-38792c7d-7fff-6350-996e-1ea2104ef635">Saimanoj<br></span=
></div><div><span style=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0=
);background-color:transparent;font-weight:400;font-style:normal;font-varia=
nt:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap=
" id=3D"gmail-m_3596933906674759119gmail-m_-7976553911329275503gmail-docs-i=
nternal-guid-38792c7d-7fff-6350-996e-1ea2104ef635"><br></span></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--00000000000033c0860591a15e82--


--===============6899309714408700319==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6899309714408700319==--

