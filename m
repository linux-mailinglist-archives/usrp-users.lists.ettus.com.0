Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D594D8A1D
	for <lists+usrp-users@lfdr.de>; Mon, 14 Mar 2022 17:46:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 54524384B28
	for <lists+usrp-users@lfdr.de>; Mon, 14 Mar 2022 12:46:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NzRbc6Vy";
	dkim-atps=neutral
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 5BD9C3844E5
	for <USRP-users@lists.ettus.com>; Mon, 14 Mar 2022 12:45:26 -0400 (EDT)
Received: by mail-qk1-f180.google.com with SMTP id s16so13257975qks.4
        for <USRP-users@lists.ettus.com>; Mon, 14 Mar 2022 09:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=4tQnmo1OhxpOZjNBWM/NuzlkA7sUQt/E7jJHZ64kkX0=;
        b=NzRbc6VyMu0gM4qHxEYziTiWI9+bZAB7Ch/cNFs4pRP2lo2J9bpNycziQW/t0t4nWG
         zjf9BiUlXJOqcywa3jpHyQ4QI6BVIKUuz4zhdvV5ArMawlpgSVzM72jAxicNAUuwbMtp
         BOLkmk33+gIKbWXeedietlMF+WiH3u+yKhzsNJWXU9Gz3Wf2+RnOa3lOaRF18Fog9dph
         TQ+GI0hQ9wcR/opHZN2ekGgU/0PsNKUBvCs6OPFZ4xdmuksh2HrVBcHX7hzs30WCKuFp
         V/lw3oz7rY4dz2Ryya3+L9lxsheGLmOR8MdDWJoloRv4P7gQ8PxSOc6m5/mNpVHNwtlm
         0oag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=4tQnmo1OhxpOZjNBWM/NuzlkA7sUQt/E7jJHZ64kkX0=;
        b=o9NZZSIlkjNjrmvi4hxR8DEz6lS9KXrSRbRO3HjhyxYa2+jVaeRgWPJaIrmqgfvQFe
         1yXaz1abpJgMNLUDUC2f9YuxuYu9ouyJxcUhzMKZG7KfdqLCIfLaYF7+I9A9pAjpC9K9
         NJix6hIZEL0psPw+CslETnClEHXhgmhOSupb3byiQ5haTUwWwEO9g06HJgVm1APUMiU1
         cFaKWFCfPWkq7HimLptj9s73mdHVqZXhdZv456SMz5iKtCz7nDfkYPV4CMUkPzVVEKcV
         cSfIxKurxAyXQB4hmBtR39ivBTNjj4cTYC6COJ2gsa9BeE8RFwJWgrMaNucd/qpxOI6A
         kmaw==
X-Gm-Message-State: AOAM530oS4COjxTw23DD/6voOVP5iK5Wz+9qtuco+QKG212CBEX9h/Px
	Kn07qT/8dSwNHNx8cAzSwbk=
X-Google-Smtp-Source: ABdhPJz9ihy/eXxH8zUGd92C+eXOYVZlzPmS9HCPTWv8+ElcXs2rhebzA65KHIYXPM8hcwtLg+MpvQ==
X-Received: by 2002:a05:620a:200f:b0:67b:3fb7:8784 with SMTP id c15-20020a05620a200f00b0067b3fb78784mr14889472qka.336.1647276325828;
        Mon, 14 Mar 2022 09:45:25 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.gmail.com with ESMTPSA id d22-20020a05620a167600b0067d8efed4d4sm4537883qko.26.2022.03.14.09.45.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Mar 2022 09:45:25 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 14 Mar 2022 12:45:24 -0400
Message-Id: <A65EA2C6-F1FB-472A-912F-6A204ED11065@gmail.com>
References: <MN2PR12MB3312A2DFCADC494AFE2E29C9B80F9@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: <MN2PR12MB3312A2DFCADC494AFE2E29C9B80F9@MN2PR12MB3312.namprd12.prod.outlook.com>
To: Jim Palladino <jim@gardettoengineering.com>
X-Mailer: iPhone Mail (19D52)
Message-ID-Hash: GYXCRPAE6HGMLN62Z67BIPUCBYQZEWHY
X-Message-ID-Hash: GYXCRPAE6HGMLN62Z67BIPUCBYQZEWHY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem using IQ calibration coefficients with Rhodium DB
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GYXCRPAE6HGMLN62Z67BIPUCBYQZEWHY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5559599656928530027=="


--===============5559599656928530027==
Content-Type: multipart/alternative; boundary=Apple-Mail-362986DB-72DC-4150-B07F-FB7016745A8A
Content-Transfer-Encoding: 7bit


--Apple-Mail-362986DB-72DC-4150-B07F-FB7016745A8A
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks Jim.=20

Could you post a big report to the public bugtracker for UHD?



Sent from my iPhone

> On Mar 14, 2022, at 12:24 PM, Jim Palladino <jim@gardettoengineering.com> w=
rote:
>=20
> =EF=BB=BF
> Hello,
>=20
> I've found an issue with the Rhodium block controller code (rhodium_radio_=
control.cpp) where the daughterboard serial number is not handled correctly.=
 If you look at line 452 here:
> https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/dboard/rhod=
ium/rhodium_radio_control.cpp
>=20
> It looks like this:
>=20
>         const std::vector<uint8_t> db_serial_u8 =3D get_db_eeprom().count(=
"serial")
>                                                       ? std::vector<uint8_=
t>()
>                                                       : get_db_eeprom().at=
("serial");
>=20
> This code attempts to check for the number of instances of "serial". If it=
 does find an instance of "serial", it creates an empty vector and assigns t=
hat to "db_serial_u8". If it does NOT find an instance of "serial," it attem=
pts to assign the appropriate "serial" value to "db_serial_u8". I believe th=
is is backwards, and the correct code should be:
>=20
>         const std::vector<uint8_t> db_serial_u8 =3D get_db_eeprom().count(=
"serial")
>                                                       ? get_db_eeprom().at=
("serial")
>                                                       : std::vector<uint8_=
t>();
>=20
> Before making this change and rebuilding UHD, RX IQ calibration coefficien=
ts (files generated from the "uhd_cal_rx_iq_balance" tool) were not getting p=
roperly loaded on an N320. After making this change, the calibration coeffic=
ients are loaded and working as expected. I can tell this both from debug me=
ssages and by looking at the FFT of received samples (reduced image when the=
 calibration coefficient file is present).
>=20
> I'm using UHD 4.1.0.5, but I see this issue still exists in "master" -- se=
e the link above.
>=20
> Thanks,
> Jim
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-362986DB-72DC-4150-B07F-FB7016745A8A
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Thanks Jim.&nbsp;<div><br></div><div>Could y=
ou post a big report to the public bugtracker for UHD?</div><div><br></div><=
div><br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><=
blockquote type=3D"cite">On Mar 14, 2022, at 12:24 PM, Jim Palladino &lt;jim=
@gardettoengineering.com&gt; wrote:<br><br></blockquote></div><blockquote ty=
pe=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-1=
">



<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
Hello,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
I've found an issue with the Rhodium block controller code (rhodium_radio_co=
ntrol.cpp) where the daughterboard serial number is not handled correctly. I=
f you look at line 452 here:<br>
<a href=3D"https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/db=
oard/rhodium/rhodium_radio_control.cpp" id=3D"LPNoLPOWALinkPreview">https://=
github.com/EttusResearch/uhd/blob/master/host/lib/usrp/dboard/rhodium/rhodiu=
m_radio_control.cpp</a><br>
<div class=3D"_Entity _EType_OWALinkPreview _EId_OWALinkPreview _EReadonly_1=
"></div>
<br>
It looks like this:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; &nbsp; const std::vector&lt;uint8_t&gt; db_serial_u8 =3D=
 get_db_eeprom().count("serial")
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ? std::vector&lt;uint8_t&gt;()</div=
>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : get_db_eeprom().at("serial");</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
This code attempts to check for the number of instances of "serial". If it d=
oes find an instance of "serial", it creates an empty vector and assigns tha=
t to "db_serial_u8". If it does NOT find an instance of "serial," it attempt=
s to assign the appropriate "serial"
 value to "db_serial_u8". I believe this is backwards, and the correct code s=
hould be:<br>
<br>
<span style=3D"background-color:rgb(255, 255, 255);display:inline !important=
">&nbsp; &nbsp; &nbsp; &nbsp; const std::vector&lt;uint8_t&gt; db_serial_u8 =3D=
 get_db_eeprom().count("serial")</span>
<div style=3D"margin:0px;background-color:rgb(255, 255, 255)"><span style=3D=
"margin:0px;background-color:rgb(255, 255, 255);display:inline !important">&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ? get_db_eeprom().at("serial")</span><br>
</div>
<div style=3D"margin:0px;background-color:rgb(255, 255, 255)">&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; : std::vector&lt;uint8_t&gt;();</div>
<br>
Before making this change and rebuilding UHD, RX IQ calibration coefficients=
 (files generated from the "uhd_cal_rx_iq_balance" tool) were not getting pr=
operly loaded on an N320. After making this change, the calibration coeffici=
ents are loaded and working as
 expected. I can tell this both from debug messages and by looking at the FF=
T of received samples (reduced image when the calibration coefficient file i=
s present).</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
I'm using UHD 4.1.0.5, but I see this issue still exists in "master" -- see t=
he link above.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
Jim</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<br>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-362986DB-72DC-4150-B07F-FB7016745A8A--

--===============5559599656928530027==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5559599656928530027==--
