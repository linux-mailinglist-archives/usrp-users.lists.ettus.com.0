Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A883EAD7F
	for <lists+usrp-users@lfdr.de>; Fri, 13 Aug 2021 01:11:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 548CF384558
	for <lists+usrp-users@lfdr.de>; Thu, 12 Aug 2021 19:11:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bjd18v6P";
	dkim-atps=neutral
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id AB920383673
	for <USRP-users@lists.ettus.com>; Thu, 12 Aug 2021 19:10:56 -0400 (EDT)
Received: by mail-qk1-f180.google.com with SMTP id n11so3898182qkk.1
        for <USRP-users@lists.ettus.com>; Thu, 12 Aug 2021 16:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=U3xr+8IzJ+wE8mtLM4EhzCm4BtNr+FAACiPiwP1vaLw=;
        b=bjd18v6Pkpvm8QfPT4gaL6gJGUF/3/sNd/SbZnKFZsJCC5QMF465AYunY9zRRkWgRH
         iHuDSlBPsve7W3l8pQbYvW7X9o+zDVAhojD/iPklj9iWZVAr94KTnQvB0p+3PkwauFnl
         gONI7VD9CnwzahIZfxrHgFCEw+eHsAEovkheyoArAbiG/ajhXjPJj4AbgBNJbrlts9Sp
         EbKBkPbA0OMzsyoxBss9zpZvkFcfWu/bob48wE1iiRFmifOnYynZRpcEC4yU0tD/B+/X
         xLAXg7Vpf3pCkoHNDT3GA/Gbn/j2CunOT6fE2JRhsnyBGr7jMiarmwRyOSIOwd+WfV3j
         sFyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=U3xr+8IzJ+wE8mtLM4EhzCm4BtNr+FAACiPiwP1vaLw=;
        b=TiXZ4EgHvqZ5MeLrzlg0O2JNAJMqtQFyh5NPwQApLywvqHaeI1+E6up+fxuAtAprNr
         BgDrY7JdpDdd78t0iwCgKAs65JxQG+h9DeWMSqArWxYktdNV2VvmTpysdozhU+MnPx+t
         054NmoupkT1Av8YDWhkRyCApS2/qtqh/SNToYR8MRG4Us+HlhyagM1Yc6FyVKz04/nRu
         O8KM5Inq4yqjNwfDJ/h05PukY1cvxJiLsRyA9C2nNZk+V0TBDv5nZI9xUfTH8uYkMR4D
         +KnlwFxKwCCP2XVtYfR8pOlKcHt+h1j/RbO8Rk9kBOtG7GIz9l0evSfieuUDZVnftWlC
         E+lg==
X-Gm-Message-State: AOAM530cQz3mlAgtaunL1r1F0ubiwzDMaeegGGOVnFg3jodyCk+yRlCu
	VjZaGngDorK5h8RlLvavI8U=
X-Google-Smtp-Source: ABdhPJwhRWonwCWNmh9thOc/QxNIdZqxp+RJmDV8wD2auUhxRbweQTyuBG3qNBFylraVCwXVrOMItQ==
X-Received: by 2002:a05:620a:404e:: with SMTP id i14mr7165596qko.491.1628809855933;
        Thu, 12 Aug 2021 16:10:55 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id d25sm1859433qtw.59.2021.08.12.16.10.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Aug 2021 16:10:55 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 12 Aug 2021 19:10:54 -0400
Message-Id: <FCB4F6D8-2055-48A0-B07C-40DAE60E0B2E@gmail.com>
References: <CABnzEf7HPrrameL7u+FgH4szNJ2+HO_q6H3+Rdm5taNf=n5sMQ@mail.gmail.com>
In-Reply-To: <CABnzEf7HPrrameL7u+FgH4szNJ2+HO_q6H3+Rdm5taNf=n5sMQ@mail.gmail.com>
To: Bobbi Taylor <bobbi.taylor@student.nmt.edu>
X-Mailer: iPhone Mail (18G82)
Message-ID-Hash: BQVGO62COEK4YWWB3IKPVDN4HR4LIDUD
X-Message-ID-Hash: BQVGO62COEK4YWWB3IKPVDN4HR4LIDUD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD no devices found
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BQVGO62COEK4YWWB3IKPVDN4HR4LIDUD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3563623150278526633=="


--===============3563623150278526633==
Content-Type: multipart/alternative; boundary=Apple-Mail-E848B920-6872-4A7F-864E-6D8801B2E002
Content-Transfer-Encoding: 7bit


--Apple-Mail-E848B920-6872-4A7F-864E-6D8801B2E002
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

If the safe mode image is responding then you should not need JTAg tools at a=
ll. The regular network based firmware and FpGA load should work fine.=20

Sent from my iPhone

> On Aug 12, 2021, at 6:54 PM, Bobbi Taylor <bobbi.taylor@student.nmt.edu> w=
rote:
>=20
> =EF=BB=BF
> For the E312, I updated the SD card with the newest default image from ett=
us.=20
>=20
> For the N210s, the one in safe mode responds properly to pings at 192.168.=
10,2. For the other N210 that is not in safe mode, I can still set the IP ad=
dress and it responds properly to pings as well.
>=20
> I am only ever using one radio with my computer at a time, so one ethernet=
 port per USRP.
>=20
> I tried to load a new FPGA image using the directions at the bottom of the=
 page linked below, but there were cable drivers missing so I wasn't able to=
 get Xilinx LabTools to recognize the JTAG programmer I was using. Since the=
 "CPLD loaded" and "firmware loaded" light indicators were on on the N210, I=
 was hoping there was nothing wrong with the images on the FPGA.
> https://files.ettus.com/manual/page_usrp2.html=20
>=20
> I'll try to load a new FPGA image from the link you've pasted.
>=20
> Thanks much
>=20
>> On Wed, Aug 11, 2021 at 6:08 PM Marcus D. Leech <patchvonbraun@gmail.com>=
 wrote:
>> On 08/11/2021 07:35 PM, Bobbi Taylor wrote:
>> > Hello,
>> >
>> > I have two N210s and an E312, and I'm not able to detect any of them=20=

>> > with uhd_find_devices.
>> >
>> > I have set a static IP address on my computer as well as on the radio.=20=

>> > I have a gigabit ethernet cable, as well as a gigabit port on my=20
>> > laptop. For one of the N210s, I've hit the safe mode button (S2) to=20
>> > boot into a safe image. This appeared to work (lights flashed after I=20=

>> > power cycled), but UHD is still not able to detect the device. On the=20=

>> > N210, the D and F lights on the front panel light up indicating that=20=

>> > the firmware is loaded and the CPLD is loaded, indicating that there=20=

>> > isn't a problem with the FPGA and that the device isn't bricked.
>> >
>> > I am able to ping the device, but uhd_find_devices or uhd_usrp_probe=20=

>> > doesn't detect anything, even if input arguments are given such as=20
>> > serial, type, or IP address.
>> >
>> > For the E312, I was able to run the test example (rx_ascii_art_dft)=20
>> > without any issues. Still wasn't detected by UHD.
>> >
>> > The version of UHD I have is 4.0.0, but I have also attempted this=20
>> > with multiple previous versions. I used both N210s about 6 months ago=20=

>> > and didn't have any issues at all. The E312 hasn't been used before.
>> >
>> > Thanks in advance,
>> > Bobbi
>> >
>> What version of the E312 system image are you running?  You must run the=20=

>> network-mode software on the E312 for another UHD host to
>>    "see" it as a UHD device, and in recent versions of the system image,=20=

>> network-mode is deprecated, because performance of network-mode
>>    is necessarily exceedingly poor, and the device is intended really to=20=

>> be an embedded-only device.
>>=20
>> Does the N210, when in safe mode, respond properly to pings at:=20
>> 192.168.10.2   ???
>>=20
>> Is it the only device on its network stub?  Really you need one ethernet=20=

>> (1G) port per USRP device that you intend to stream samples from.
>>=20
>> Once that has been established, then, while it is in safe mode, load new=20=

>> FPGA images:
>>=20
>> https://files.ettus.com/manual/page_images.html
>>=20
>>=20
>> Then power-cycle the device.  Note that it will come up with whatever=20
>> EEPROM IP address it previously had prior to safe-mode.  So you may need
>>    to program the IP address into the EEPROM *while it is in safe mode*.
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-E848B920-6872-4A7F-864E-6D8801B2E002
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">If the safe mode image is responding then y=
ou should not need JTAg tools at all. The regular network based firmware and=
 FpGA load should work fine.&nbsp;<div><br><div dir=3D"ltr">Sent from my iPh=
one</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Aug 12, 2021, at 6=
:54 PM, Bobbi Taylor &lt;bobbi.taylor@student.nmt.edu&gt; wrote:<br><br></bl=
ockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D=
"ltr">For the E312, I updated the SD card with the newest default image from=
 ettus.&nbsp;<div><br></div><div>For the N210s, the one in safe mode respond=
s properly to pings at 192.168.10,2. For the other N210 that is not in safe m=
ode, I can still set the IP address and it responds properly&nbsp;to pings a=
s well.</div><div><br></div><div>I am only ever using one radio with my comp=
uter at a time, so one ethernet port per USRP.</div><div><br></div><div>I tr=
ied to load a new FPGA image using the directions at the bottom of the page l=
inked below, but there were cable drivers missing so I wasn't able to get Xi=
linx&nbsp;LabTools to recognize the JTAG programmer I was using. Since the "=
CPLD loaded" and "firmware loaded" light indicators were on on&nbsp;the N210=
, I was hoping there was nothing wrong with the images on the FPGA.</div><di=
v><a href=3D"https://files.ettus.com/manual/page_usrp2.html">https://files.e=
ttus.com/manual/page_usrp2.html</a>&nbsp;<br></div><div><br></div><div>I'll t=
ry to load a new FPGA image from the link you've pasted.</div><div><br></div=
><div>Thanks much</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Wed, Aug 11, 2021 at 6:08 PM Marcus D. Leech &lt;<a=
 href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 08/11/2021 0=
7:35 PM, Bobbi Taylor wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I have two N210s and an E312, and I'm not able to detect any of them <b=
r>
&gt; with uhd_find_devices.<br>
&gt;<br>
&gt; I have set a static IP address on my computer as well as on the radio. <=
br>
&gt; I have a gigabit ethernet cable, as well as a gigabit port on my <br>
&gt; laptop. For one of the N210s, I've hit the safe mode button (S2) to <br=
>
&gt; boot into a safe image. This appeared to work (lights flashed after I <=
br>
&gt; power cycled), but UHD is still not able to detect the device. On the <=
br>
&gt; N210, the D and F lights on the front panel light up indicating that <b=
r>
&gt; the firmware is loaded and the CPLD is loaded, indicating that there <b=
r>
&gt; isn't a problem with the FPGA and that the device isn't bricked.<br>
&gt;<br>
&gt; I am able to ping the device, but uhd_find_devices or uhd_usrp_probe <b=
r>
&gt; doesn't detect anything, even if input arguments are given such as <br>=

&gt; serial, type, or IP address.<br>
&gt;<br>
&gt; For the E312, I was able to run the test example (rx_ascii_art_dft) <br=
>
&gt; without any issues. Still wasn't detected by UHD.<br>
&gt;<br>
&gt; The version of UHD I have is 4.0.0, but I have also attempted this <br>=

&gt; with multiple previous versions. I used both N210s about 6 months ago <=
br>
&gt; and didn't have any issues at all. The E312 hasn't been used before.<br=
>
&gt;<br>
&gt; Thanks in advance,<br>
&gt; Bobbi<br>
&gt;<br>
What version of the E312 system image are you running?&nbsp; You must run th=
e <br>
network-mode software on the E312 for another UHD host to<br>
&nbsp; &nbsp;"see" it as a UHD device, and in recent versions of the system i=
mage, <br>
network-mode is deprecated, because performance of network-mode<br>
&nbsp; &nbsp;is necessarily exceedingly poor, and the device is intended rea=
lly to <br>
be an embedded-only device.<br>
<br>
Does the N210, when in safe mode, respond properly to pings at: <br>
192.168.10.2&nbsp; &nbsp;???<br>
<br>
Is it the only device on its network stub?&nbsp; Really you need one etherne=
t <br>
(1G) port per USRP device that you intend to stream samples from.<br>
<br>
Once that has been established, then, while it is in safe mode, load new <br=
>
FPGA images:<br>
<br>
<a href=3D"https://files.ettus.com/manual/page_images.html" rel=3D"noreferre=
r" target=3D"_blank">https://files.ettus.com/manual/page_images.html</a><br>=

<br>
<br>
Then power-cycle the device.&nbsp; Note that it will come up with whatever <=
br>
EEPROM IP address it previously had prior to safe-mode.&nbsp; So you may nee=
d<br>
&nbsp; &nbsp;to program the IP address into the EEPROM *while it is in safe m=
ode*.<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-E848B920-6872-4A7F-864E-6D8801B2E002--

--===============3563623150278526633==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3563623150278526633==--
