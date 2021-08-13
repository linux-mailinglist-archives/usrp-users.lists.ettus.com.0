Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8846B3EAE4D
	for <lists+usrp-users@lfdr.de>; Fri, 13 Aug 2021 03:57:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BC914384F24
	for <lists+usrp-users@lfdr.de>; Thu, 12 Aug 2021 21:57:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EQEniaNQ";
	dkim-atps=neutral
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 5EFB7384292
	for <USRP-users@lists.ettus.com>; Thu, 12 Aug 2021 21:56:36 -0400 (EDT)
Received: by mail-qv1-f41.google.com with SMTP id q6so1618147qvs.12
        for <USRP-users@lists.ettus.com>; Thu, 12 Aug 2021 18:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=5RKD5/ra1AE+diXMAZmdldYHwVR9SXGB5hr16EFi60w=;
        b=EQEniaNQ7zxUQ7ZjVGJOnU6jiFhMiFhdGatAJCkqIdHS6eDVUB6u4wewiAsiETIgK1
         yzShRyRuXljuMkvBirc2LwVkdvJjMXo+40DO6yYvs1mwJNJyDyypysjSTysIpSXVahNi
         2OMdS9qWzo8vwPtGEQcPfMv6YSCdy4zDA2gWmeNx1d1S+KhqtuVCSjgnByGHWEsCtTA/
         wIiXKPNtiA+s36mvEWX0sgrIsdXXT0rXHZwj6V3bZQG2SYTEj31xSBBuVNhvBdgoUJ4V
         0oSNouRwvtqp8EwgaQxLHdarGYEkxpHP9yWua1dTWoKRuzKvaX5vCoYdMRbxrqTTOxHs
         8+/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=5RKD5/ra1AE+diXMAZmdldYHwVR9SXGB5hr16EFi60w=;
        b=q8pmRyPjvB9kzvzMnsscLOW16pH2kJ4RyEmkR6SQyxgU1RXhWWyW1rMBtHWdkwf5Tk
         oLjLtOWf3RrU5y48rAwFAGcyBnG+jwQHJSupcfxIErEtrRu3wt7c3Gyi3DpkETm3VyuY
         XI41XSOj6tCCTLd4w/PEcgyI2SbSefoqskg+GSGrOKwqi5rV83pa4xTi1qrAZHFVj65Y
         vweA8WCmqoJBn+FiaITThj73vJr25zLT1zjF/2x8mh6lElnmAMLMBe5UmzaN7J/bP9hb
         JHN/7yFImqzenGcha4wy74cnDR8c7F7GuyW/sQs8Uk17sne1dB3i9WpauvQx9nc8cAW5
         ue/Q==
X-Gm-Message-State: AOAM533CkZYMmvJrwKgoeh2Ozn2S8C0fwfjfBDvhwhVozayScpprX23g
	jkVp9hRQZZ3/i+V4dzNgv5k=
X-Google-Smtp-Source: ABdhPJwfretNKyTdLflw+ywIRMFLe1Ea7+p5BP+i10xKpkQ6v+rCjzYEXCbCFQxVSOat4XYozCVJIw==
X-Received: by 2002:a0c:f114:: with SMTP id i20mr202097qvl.24.1628819795839;
        Thu, 12 Aug 2021 18:56:35 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id m187sm10493qkd.131.2021.08.12.18.56.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Aug 2021 18:56:35 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 12 Aug 2021 21:56:34 -0400
Message-Id: <C11D62D1-FA91-4A5F-B326-95980B8C0566@gmail.com>
References: <CABnzEf7VVK0TeiVaYrRCatXUjtqADH839xryDyhxecAPE7RF3A@mail.gmail.com>
In-Reply-To: <CABnzEf7VVK0TeiVaYrRCatXUjtqADH839xryDyhxecAPE7RF3A@mail.gmail.com>
To: Bobbi Taylor <bobbi.taylor@student.nmt.edu>
X-Mailer: iPhone Mail (18G82)
Message-ID-Hash: KZCT3NCEFK5NDNGJNWYSYPDMBAUISUEK
X-Message-ID-Hash: KZCT3NCEFK5NDNGJNWYSYPDMBAUISUEK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Paul Atreides <maud.dib1984@gmail.com>, USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD no devices found
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KZCT3NCEFK5NDNGJNWYSYPDMBAUISUEK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3595671231139431577=="


--===============3595671231139431577==
Content-Type: multipart/alternative; boundary=Apple-Mail-AB4EE417-1250-46E5-BA92-228D7E7961E2
Content-Transfer-Encoding: 7bit


--Apple-Mail-AB4EE417-1250-46E5-BA92-228D7E7961E2
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I run Ubuntu 20.04 on my
Lab laptop with whatever version of UHD is packaged and it works fine on my v=
arious USRPs. I don=E2=80=99t have any N2xx however.=20

Sent from my iPhone

> On Aug 12, 2021, at 9:46 PM, Bobbi Taylor <bobbi.taylor@student.nmt.edu> w=
rote:
>=20
> =EF=BB=BF
> I've attempted this in Ubuntu 20.04 and 18.04.
>=20
> I had not previously checked that the ports were open, but after disabling=
 the firewall ("ufw disable") and opening the ports, it still isn't able to d=
etect the radios.
>=20
> The nice bold font on the outer casing has convinced me that they are in f=
act N210s :)
>=20
> I'm just about to try an older version of UHD, but that may not be the iss=
ue if Paul was able to get it working with UHD v4.0.0.0
>=20
> Similar to Paul, fresh install of Ubuntu 18.04
> gigabit ethernet port
> have set ip address of host computer to 192.168.10.1, netmask to 24 (255.2=
55.255.0)
>=20
> Could it be an error with how I installed UHD? No errors were given during=
 installation, but all three radios appear to be working correctly so I'm st=
arting to doubt it's an issue with the radios. I have tried installing UHD t=
hree ways:
> 1.) Binary installation
> 2.) Installing from source
> 3.) Pybombs
>=20
> None gave me errors, but none have worked either. Currently using the vers=
ion installed from source.
>=20
>=20
>> On Thu, Aug 12, 2021 at 9:15 PM Marcus D. Leech <patchvonbraun@gmail.com>=
 wrote:
>> On 08/12/2021 09:12 PM, Paul Atreides wrote:
>> > In an attempt to help out with this I just fired up my old N210 and it s=
hows up in uhd_find_devices with UHD v4.0.0.0
>> >
>> > I have a fresh install of Ubuntu 20.04
>> > Usb3 to Ethernet dongle
>> Those aren't really recommended for actual use (USB3 to 1GiGe dongles). =20=

>> Many of them arbitrarily re-order
>>    packets.  But for quick sanity tests, seem to work OK.
>>=20
>> > Default network settings except for setting my up address to 192.168.10=
.1 (my radio is 192.168.10.4) and the netmask to 24
>> >
>> >
>> >
>> > <end transmission>
>> >
>> >> On Aug 12, 2021, at 20:32, Marcus D. Leech <patchvonbraun@gmail.com> w=
rote:
>> >>
>> >> =EF=BB=BF
>> >> On 08/12/2021 07:50 PM, Bobbi Taylor wrote:
>> >>> I just reset it again, the IP address was correct, the CPLD and firmw=
are lights were on, and I could ping it. But as soon as I try to load an ima=
ge, I still get the No UHD devices found error.
>> >>>
>> >>>
>> >>> <mime-attachment.png>
>> >>>
>> >>>
>> >>>
>> >> Is this inside a VM or on a "bare metal" Linux system?
>> >>
>> >> Is port 49152 and 49153 "open" for UDP?
>> >>
>> >> Are you sure that these are N210 devices?
>> >>
>> >> If you revert to UHD 3.15 or even 3.14, does the behavior change?
>> >>
>> >>
>> >> _______________________________________________
>> >> USRP-users mailing list -- usrp-users@lists.ettus.com
>> >> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>=20

--Apple-Mail-AB4EE417-1250-46E5-BA92-228D7E7961E2
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I run Ubuntu 20.04 on my<div>Lab laptop wit=
h whatever version of UHD is packaged and it works fine on my various USRPs.=
 I don=E2=80=99t have any N2xx however.&nbsp;<br><br><div dir=3D"ltr">Sent f=
rom my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Aug 12,=
 2021, at 9:46 PM, Bobbi Taylor &lt;bobbi.taylor@student.nmt.edu&gt; wrote:<=
br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF=
<div dir=3D"ltr"><div>I've attempted this in Ubuntu 20.04 and 18.04.<br></di=
v><div><br></div><div>I had not previously checked that the ports were open,=
 but after disabling the firewall ("ufw disable") and opening the ports, it s=
till isn't able to detect the radios.</div><div><br></div><div>The nice bold=
 font on the outer casing has convinced me that they are in fact N210s :)<br=
></div><div><br></div><div>I'm just about to try an older version of UHD, bu=
t that may not be the issue if Paul was able to get it working with UHD v4.0=
.0.0</div><div><br></div><div>Similar to Paul, fresh install of Ubuntu 18.04=
</div><div>gigabit ethernet port</div><div>have set ip address of host compu=
ter to 192.168.10.1, netmask to 24 (255.255.255.0)</div><div><br></div><div>=
Could it be an error with how I installed UHD? No errors were given during i=
nstallation, but all three radios appear to be working correctly so I'm star=
ting to doubt it's an issue with the radios. I have tried installing UHD thr=
ee ways:</div><div>1.) Binary installation</div><div>2.) Installing from sou=
rce</div><div>3.) Pybombs</div><div><br></div><div>None gave me errors, but n=
one have worked either. Currently using the version installed from source.<b=
r></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Thu, Aug 12, 2021 at 9:15 PM Marcus D. Leech &lt;<a=
 href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">On 08/12/2021 09:12 PM, Paul Atreides wrote:<br>
&gt; In an attempt to help out with this I just fired up my old N210 and it s=
hows up in uhd_find_devices with UHD v4.0.0.0<br>
&gt;<br>
&gt; I have a fresh install of Ubuntu 20.04<br>
&gt; Usb3 to Ethernet dongle<br>
Those aren't really recommended for actual use (USB3 to 1GiGe dongles).&nbsp=
; <br>
Many of them arbitrarily re-order<br>
&nbsp; &nbsp;packets.&nbsp; But for quick sanity tests, seem to work OK.<br>=

<br>
&gt; Default network settings except for setting my up address to 192.168.10=
.1 (my radio is 192.168.10.4) and the netmask to 24<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; &lt;end transmission&gt;<br>
&gt;<br>
&gt;&gt; On Aug 12, 2021, at 20:32, Marcus D. Leech &lt;<a href=3D"mailto:pa=
tchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wro=
te:<br>
&gt;&gt;<br>
&gt;&gt; =EF=BB=BF<br>
&gt;&gt; On 08/12/2021 07:50 PM, Bobbi Taylor wrote:<br>
&gt;&gt;&gt; I just reset it again, the IP address was correct, the CPLD and=
 firmware lights were on, and I could ping it. But as soon as I try to load a=
n image, I still get the No UHD devices found error.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; &lt;mime-attachment.png&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt; Is this inside a VM or on a "bare metal" Linux system?<br>
&gt;&gt;<br>
&gt;&gt; Is port 49152 and 49153 "open" for UDP?<br>
&gt;&gt;<br>
&gt;&gt; Are you sure that these are N210 devices?<br>
&gt;&gt;<br>
&gt;&gt; If you revert to UHD 3.15 or even 3.14, does the behavior change?<b=
r>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@=
lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
<br>
</blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-AB4EE417-1250-46E5-BA92-228D7E7961E2--

--===============3595671231139431577==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3595671231139431577==--
