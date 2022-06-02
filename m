Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D773253B9D6
	for <lists+usrp-users@lfdr.de>; Thu,  2 Jun 2022 15:36:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3528C3848AF
	for <lists+usrp-users@lfdr.de>; Thu,  2 Jun 2022 09:36:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654176979; bh=uJ63wtZQSCfsXzgHcKXq/+PLX7MsjhvuPWvTCYXtIfQ=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=fmgjMWiPXQ1ixuo9U7d68nOthcPTyx2rmc+SX3opcq2/ax+FvBtMjBD/XxbsgNCn3
	 4HRe0JNHNoftJOP14zTJseD44I97cTf5HjdwDpRSQHKnSuDpfV4FNz+F5HFwxCJEtC
	 aXWa2wYVVaaFEsorMCyn2I0WFQFPYgsZoA7KDQoNzb2mABrmqfI16S5nXIcbtVAxAg
	 K7pkTR0zkqirGj84ofuh/Gl2XIDXFfixz1PgttUXmMXeGRfW/Ni1fyGQbB1I4rH3z5
	 +ChRxkDpSkhk1shomQ9fiE0YRP4BxDfpOTLKCWT6kp92tMfpncBMJCiSmq1WOxOB/O
	 A8WmxhQt/qG/Q==
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 168A33847AF
	for <USRP-users@lists.ettus.com>; Thu,  2 Jun 2022 09:35:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="T69SCZJg";
	dkim-atps=neutral
Received: by mail-qk1-f180.google.com with SMTP id o68so3608262qkf.13
        for <USRP-users@lists.ettus.com>; Thu, 02 Jun 2022 06:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=Pq6k4O2sE8v2HbLGGEa1GJ3DyrhLzkOhlBiYap0M24Q=;
        b=T69SCZJg846YVK9Z0D3Og7bAKGy0kSCS6hquRSrdkXIBWisRhe+XTG/ZlCZ/0steAy
         8obvnA1LO9bK8N23e+Q3qBLWl3b8RSd2ydin32VoECpW4tQyYaYy9SeZcjaQTWjyztlp
         tnJgxfvg3eB4SJ5ay/4L25/VzJrjL+lMbb7BT2xZPVtzxL6U1JUFJcWkT1n9UDj0tEsA
         lUvliraJK0QPITTnO39lDuAznQn7ttIjj8TBLkDdECENSRUYpvHeN+zVO7JNmT0LyPAM
         XV2QiMlhbjYSmA9RjRZxruPMZAIgrT4aNPTPijP4gyCTQKtotDhw7gQycmxKbbS8Pjrx
         apGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=Pq6k4O2sE8v2HbLGGEa1GJ3DyrhLzkOhlBiYap0M24Q=;
        b=Ygomvlbi0PfnYTTNkcTmqiEXMNtJrC7XT84Ln0+eJmSmULykYrC1kD+PqT88viG6A2
         dA+UddedGFqfWzsU5soFXZK+iujPT5V4TOmw5T7odAuxsrIQ11B64kBfI3gRnux3W+BA
         w4SirGmyygB756cQBWP+ZWb1cbQuvhMvkD3Nilfiy9gjTJzB/2pYiVPAfDexomAX0pE7
         eCJic1rbyJqrR/SZ04Ns5ic1kdGKlOH78MyV7yjEdZ6x1VpNuehW8LL5T1flxMSrYmPS
         uNGHW54xH//Irre+KHlWlRdC13fDfe/pHq9Y2cm911pt9T6kdyrkNmf/2V9Zr1Yshrwk
         19pQ==
X-Gm-Message-State: AOAM533GaXueTVe8ukeJ0PGufSEJMJ/99t0CCqiN+nkUrv2ieW91rrg4
	O+SZsYaJwWYmjIp2TFk1v0A=
X-Google-Smtp-Source: ABdhPJy20RUrAwpOtHT4HFJpP+t4fRpr+Ln3YDIk1lkRkM3mN5AnNDaMldPWWk13VzEQbfSYmEp5zQ==
X-Received: by 2002:a05:620a:2586:b0:680:f3c1:9d4a with SMTP id x6-20020a05620a258600b00680f3c19d4amr2986915qko.619.1654176917312;
        Thu, 02 Jun 2022 06:35:17 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.gmail.com with ESMTPSA id b5-20020a05622a020500b003010fe8debesm3152067qtx.42.2022.06.02.06.35.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jun 2022 06:35:16 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 2 Jun 2022 09:35:15 -0400
Message-Id: <CD7AB0E0-6BDB-454F-B7F7-1EF7F24CBC16@gmail.com>
References: <CAJ28uHGt92rQHVPU0OxNBKKzBh1PoNaxSHf2YMT6jGxEF5aCmA@mail.gmail.com>
In-Reply-To: <CAJ28uHGt92rQHVPU0OxNBKKzBh1PoNaxSHf2YMT6jGxEF5aCmA@mail.gmail.com>
To: gokul sani <cnsgokul@gmail.com>
X-Mailer: iPhone Mail (19F77)
Message-ID-Hash: ZE5BCK64OWUYPT4UB2QJN2C2W4LXJ3Q5
X-Message-ID-Hash: ZE5BCK64OWUYPT4UB2QJN2C2W4LXJ3Q5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: David Raeman <david@synopticengineering.com>, USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GPS invalid reply
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZE5BCK64OWUYPT4UB2QJN2C2W4LXJ3Q5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2669202588642178284=="


--===============2669202588642178284==
Content-Type: multipart/alternative; boundary=Apple-Mail-F52734D5-8278-4292-BDFE-E578718AAE88
Content-Transfer-Encoding: 7bit


--Apple-Mail-F52734D5-8278-4292-BDFE-E578718AAE88
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

If the unit is less than 1yo you can start the warranty process by sending a=
 message to support@ettus.com



Sent from my iPhone

> On Jun 2, 2022, at 4:50 AM, gokul sani <cnsgokul@gmail.com> wrote:
>=20
> =EF=BB=BF
> Hi all,
>=20
> Thank you for your comments.=20
> Markus, I reseated the module, still get the same error. Yes, It is the on=
e supplied by ettus.
>=20
> WR,
> Gokul
>=20
>> On Wed, Jun 1, 2022 at 6:55 PM David Raeman <david@synopticengineering.co=
m> wrote:
>> .. Sorry, just realized the GPSDO apparently does use SCPI-99 commands. :=
)
>>=20
>> =20
>>=20
>> From: David Raeman=20
>> Sent: Wednesday, June 1, 2022 12:51 PM
>> To: Marcus D. Leech <patchvonbraun@gmail.com>; usrp-users@lists.ettus.com=

>> Subject: RE: [USRP-users] Re: GPS invalid reply
>>=20
>> =20
>>=20
>> The error string is also suspicious.. *IDN? is a command used to identify=
 lab instruments that implement SCPI protocols, and I=E2=80=99m not familiar=
 with any GPS receiver that interfaces using SCPI. Is it possible you have s=
ome kind of instrument-control service on your computer (LabView, Keysight I=
O, etc) which is trying to talk to the USRP as if it were a lab instrument?
>>=20
>> =20
>>=20
>> =20
>>=20
>> From: Marcus D. Leech <patchvonbraun@gmail.com>=20
>> Sent: Wednesday, June 1, 2022 12:43 PM
>> To: usrp-users@lists.ettus.com
>> Subject: [USRP-users] Re: GPS invalid reply
>>=20
>> =20
>>=20
>> On 2022-06-01 11:19, gokul sani wrote:
>>=20
>> Dear USRP Community,
>>=20
>> =20
>>=20
>> I am using usrp b210 with gpsdo. But "uhd_usrp_probe" gave me an error.
>>=20
>> --[ERROR] [GPS] GPS invalid reply "scpi > *IDN?
>>=20
>> The gps antenna is tested with a different b210 and received the lock.
>>=20
>> last week, it was working fine. No apparent changes were made.! Please pr=
ovide any insights of yours.
>>=20
>> =20
>>=20
>> =20
>>=20
>> uhd_usrp_probe=20
>> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.1=
5.0.HEAD-0-gaea0e2de
>> [INFO] [B200] Loading firmware image: /usr/local/share/uhd/images/usrp_b2=
00_fw.hex...
>> [INFO] [B200] Detected Device: B210
>> [INFO] [B200] Loading FPGA image: /usr/local/share/uhd/images/usrp_b210_f=
pga.bin...
>> [INFO] [B200] Operating over USB 3.
>> [INFO] [B200] Detecting internal GPSDO....=20
>> [ERROR] [GPS] GPS invalid reply "scpi > *IDN?
>> ", assuming none available
>> [INFO] [GPS] No GPSDO found
>> [INFO] [B200] Initialize CODEC control...
>> [INFO] [B200] Initialize Radio control...
>> [INFO] [B200] Performing register loopback test...=20
>> [INFO] [B200] Register loopback test passed
>> [INFO] [B200] Performing register loopback test...=20
>> [INFO] [B200] Register loopback test passed
>> [INFO] [B200] Setting master clock rate selection to 'automatic'.
>> [INFO] [B200] Asking for clock rate 16.000000 MHz...=20
>> [INFO] [B200] Actually got clock rate 16.000000 MHz.
>>   _____________________________________________________
>>  /
>> |       Device: B-Series Device
>> |     _____________________________________________________
>> |    /
>>=20
>> =20
>>=20
>> ..
>>=20
>> .
>>=20
>> ..
>>=20
>> =20
>>=20
>> =20
>>=20
>> Thank you,
>>=20
>> Gokul
>>=20
>> =20
>>=20
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>> You could try carefully re-seating your GPSDO module.  Is this module one=
 supplied by Ettus or an after-market one?
>>=20
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-F52734D5-8278-4292-BDFE-E578718AAE88
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">If the unit is less than 1yo you can start t=
he warranty process by sending a message to support@ettus.com<div><br></div>=
<div><br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br>=
<blockquote type=3D"cite">On Jun 2, 2022, at 4:50 AM, gokul sani &lt;cnsgoku=
l@gmail.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><=
div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div>Hi all,</div><div><br></div><=
div>Thank you for your comments. <br></div><div>Markus, I reseated the modul=
e, still get the same error. Yes, It is the one supplied by ettus.</div><div=
><br></div><div>WR,</div><div>Gokul<br></div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 1, 2022 at 6:55 PM D=
avid Raeman &lt;<a href=3D"mailto:david@synopticengineering.com">david@synop=
ticengineering.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">





<div style=3D"overflow-wrap: break-word;" lang=3D"EN-US">
<div class=3D"gmail-m_-5107720077984029054WordSection1">
<p class=3D"MsoNormal">.. Sorry, just realized the GPSDO apparently does use=
 SCPI-99 commands. :)<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<div style=3D"border-color:currentcolor currentcolor currentcolor blue;borde=
r-style:none none none solid;border-width:medium medium medium 1.5pt;padding=
:0in 0in 0in 4pt">
<div>
<div style=3D"border-color:rgb(225,225,225) currentcolor currentcolor;border=
-style:solid none none;border-width:1pt medium medium;padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b>From:</b> David Raeman <br>
<b>Sent:</b> Wednesday, June 1, 2022 12:51 PM<br>
<b>To:</b> Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" ta=
rget=3D"_blank">patchvonbraun@gmail.com</a>&gt;; <a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> RE: [USRP-users] Re: GPS invalid reply<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<p class=3D"MsoNormal">The error string is also suspicious.. *IDN? is a comm=
and used to identify lab instruments that implement SCPI protocols, and I=E2=
=80=99m not familiar with any GPS receiver that interfaces using SCPI. Is it=
 possible you have some kind of instrument-control
 service on your computer (LabView, Keysight IO, etc) which is trying to tal=
k to the USRP as if it were a lab instrument?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<div style=3D"border-color:currentcolor currentcolor currentcolor blue;borde=
r-style:none none none solid;border-width:medium medium medium 1.5pt;padding=
:0in 0in 0in 4pt">
<div>
<div style=3D"border-color:rgb(225,225,225) currentcolor currentcolor;border=
-style:solid none none;border-width:1pt medium medium;padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Marcus D. Leech &lt;<a href=3D"mailto:pa=
tchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
<br>
<b>Sent:</b> Wednesday, June 1, 2022 12:43 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">u=
srp-users@lists.ettus.com</a><br>
<b>Subject:</b> [USRP-users] Re: GPS invalid reply<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<div>
<p class=3D"MsoNormal">On 2022-06-01 11:19, gokul sani wrote:<u></u><u></u><=
/p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<div>
<p class=3D"MsoNormal">Dear USRP Community,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I am using usrp b210 with gpsdo. But "uhd_usrp_probe"=
 gave me an error.
<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">-<b>-[ERROR] [GPS] GPS invalid reply "scpi &gt; *IDN?=
</b><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">The gps antenna is tested with a different b210 and r=
eceived the lock.<u></u><u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">last week, it was working fine. No apparent changes w=
ere made.! Please provide any insights of yours.<u></u><u></u></p>
</div>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">uhd_usrp_probe <br>
[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.15.0=
.HEAD-0-gaea0e2de<br>
[INFO] [B200] Loading firmware image: /usr/local/share/uhd/images/usrp_b200_=
fw.hex...<br>
[INFO] [B200] Detected Device: B210<br>
[INFO] [B200] Loading FPGA image: /usr/local/share/uhd/images/usrp_b210_fpga=
.bin...<br>
[INFO] [B200] Operating over USB 3.<br>
[INFO] [B200] Detecting internal GPSDO.... <br>
<b>[ERROR] [GPS] GPS invalid reply "scpi &gt; *IDN?<br>
", assuming none available</b><br>
[INFO] [GPS] No GPSDO found<br>
[INFO] [B200] Initialize CODEC control...<br>
[INFO] [B200] Initialize Radio control...<br>
[INFO] [B200] Performing register loopback test... <br>
[INFO] [B200] Register loopback test passed<br>
[INFO] [B200] Performing register loopback test... <br>
[INFO] [B200] Register loopback test passed<br>
[INFO] [B200] Setting master clock rate selection to 'automatic'.<br>
[INFO] [B200] Asking for clock rate 16.000000 MHz... <br>
[INFO] [B200] Actually got clock rate 16.000000 MHz.<br>
&nbsp; _____________________________________________________<br>
&nbsp;/<br>
| &nbsp; &nbsp; &nbsp; Device: B-Series Device<br>
| &nbsp; &nbsp; _____________________________________________________<br>
| &nbsp; &nbsp;/<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">..<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">..<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Thank you,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Gokul<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><u></u>&nbsp;<u></u></p>=

<pre>_______________________________________________<u></u><u></u></pre>
<pre>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank">usrp-users@lists.ettus.com</a><u></u><u></u></pre>
<pre>To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@list=
s.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><u></u><u=
></u></pre>
</blockquote>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt">You could try carefully r=
e-seating your GPSDO module.&nbsp; Is this module one supplied by Ettus or a=
n after-market one?<u></u><u></u></p>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-F52734D5-8278-4292-BDFE-E578718AAE88--

--===============2669202588642178284==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2669202588642178284==--
