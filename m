Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E2AA1A6C9
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jan 2025 16:13:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 900B638593F
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jan 2025 10:13:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737645195; bh=WELTqJR/qViPBKzukisy1v/KrkIH0j+kFOa6jugptoU=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=MCabcHpIR8XFc/Am1mDDkEXzQQkkmeE0vP3no8loyhC1bKvRgIXiQ+akw1wFSrIVD
	 2xZ88PJhNphuNalKFbDHSDjBX2bcqyWQ5M/+DYGs7nBDGdiUfbcUb+lCfWN738z1+t
	 Un14Q1ffKiTgNwzzkCai6u+QUAYnZfB3JKGcv425ne7tTqYfAYSVuh+LB6pOQlcQyD
	 eKxvPJqTNkho8onXR3Z9iz4h2puJ5qVpgk3l7BH9W1dRNwWkqwxRhfLneg783du26h
	 pVvE5ZtauQQa1xpnqi8r8b/rSzFEN2jHqGv5ZgUgsHGWplRE9IF18zefVYYmMUWXmZ
	 iJxT2fTzc73sw==
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	by mm2.emwd.com (Postfix) with ESMTPS id D5CEE3858E8
	for <usrp-users@lists.ettus.com>; Thu, 23 Jan 2025 10:12:48 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="zisXC3Ey";
	dkim-atps=neutral
Received: by mail-io1-f47.google.com with SMTP id ca18e2360f4ac-844e06e5d11so30472539f.0
        for <usrp-users@lists.ettus.com>; Thu, 23 Jan 2025 07:12:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1737645168; x=1738249968; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3s7W3Q7w8frWFm3aTzZj6tumaPZBIqyvcd3IZU1pQjA=;
        b=zisXC3EyvViVriGB1fDEsvWPgOCSan7kmEPa+GK86CHaYxrjVfrlL03c0xCvgORwJa
         S4mJVXhlOb8F/JIG0F21HoD/rZ8CloVzZ2pGNnrsU/KugwBBs8QdzVPsnnAL5tvL1sfJ
         Ng1H21QMBvdWNlz8a4qLHr7O+r4jKWjYVn8hU9DDWEjhv+1EJI+5PZuzyb2AXAJlhkj4
         1vhXPpUmBciMuZRorzaT3N5GsMdnV6Mwlz2gie4vGfq2WSCrQfuAkV5Y/8Civv3kUycK
         AY7XZece6rmOSDhZciD9rybNqmX/yUdON8tOu6vkEESdFboP4obLIZoY18uZYqgXX02T
         RqiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737645168; x=1738249968;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3s7W3Q7w8frWFm3aTzZj6tumaPZBIqyvcd3IZU1pQjA=;
        b=uDC2HrMRGQmffa2CL4zChDbXcVlB/xG+1g0MRkWE7KbnTXbEjMzsuPGYs8yuTNYy7f
         SwvpTNPtIKBz/XFkcTSOOQbmqQmIbm8N5lUtTvyLjPnohvK692U95UdFGpZugyeGYpfg
         PuaLfATuIdKJQzSZ4q6+9cbHPhuJypS5SG/Ej9PanPPJmsq8n+h+wVaTPi98UtlXIHW6
         SL0Gb61CHNaXCLxeThsAgGnPoA9o0jOITBj1xKLXF4Tv4YTstABdSMjpsD+BH/1cdaZn
         rv1ncFjREVWwEd6d+5r71paZryv01U/MdCcX71qNai6aLqmRNY1iI6EjlLTDnTk7Jb4E
         Hdyw==
X-Gm-Message-State: AOJu0YyIW+HCmlqILcGDOPkt6zZWq3JcqXoP951M4qjIo1nWvfqHSPEx
	CSgClFH6X8JdJNUNBpkd8QqJAg5k5FjAoeb7Y3ljafoCF5qYgE7ge77WctvPlllRdAKeuiX1sR7
	NlOuWh3iUNNB8nGWI3/7N9PrrGDVbp1mV1oOflHpDeNPFrEM1pUf83w==
X-Gm-Gg: ASbGncsxAvWH2/tMk5dcbVj25KL5Zh53rNgO8N/92QgYxr76KBN2LNTtEdyxTfhKjSX
	OVdTLOEbx4w6QNZrFdmvuoNYYZC7LLtdE604XrQSh/MtAeICSgqcyv5HPg0/SHg==
X-Google-Smtp-Source: AGHT+IExkNw7+rnIyBWa1TDB+puKiVlWA/Xno86kE5n9SzRBMlMxbEuKhHOC4aRX0ySKonwVB/wKP+csO12FT3+CcAg=
X-Received: by 2002:a92:ca0f:0:b0:3ce:7cf5:4cb7 with SMTP id
 e9e14a558f8ab-3cf74487b1emr195109875ab.14.1737645167851; Thu, 23 Jan 2025
 07:12:47 -0800 (PST)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Thu, 23 Jan 2025 09:12:11 -0600
X-Gm-Features: AWEUYZkTr-TcF5YDvu7YMRlybV6_iQNGaNs2dZ2y5abGA7y_IKtVRcpn9d9HkQ0
Message-ID: <CACaXmv8FmonP8yX5AzKOunhLC6KGEyOVpR4ATTiSXU9K7ON-uA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: P5DOTQXZN67FXF7MVH4PWMOLC4XD7P2T
X-Message-ID-Hash: P5DOTQXZN67FXF7MVH4PWMOLC4XD7P2T
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] This is a test email, please ignore.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P5DOTQXZN67FXF7MVH4PWMOLC4XD7P2T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7115876793340226860=="

--===============7115876793340226860==
Content-Type: multipart/alternative; boundary="000000000000f9d9cc062c610ac6"

--000000000000f9d9cc062c610ac6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64

VGhpcyBpcyBhIHRlc3QgZW1haWwsIHBsZWFzZSBpZ25vcmUuDQoNCirigJTigJTigJTigJTigJTi
gJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTigJTi
gJQqDQoqTmVlbCBQYW5kZXlhKg0KKk5hdGlvbmFsIEluc3RydW1lbnRzIChOSSkqDQoqQXVzdGlu
LCBUZXhhcywgVVNBKg0KKm5lZWwucGFuZGV5YUBldHR1cy5jb20qIDxuZWVsLnBhbmRleWFAZXR0
dXMuY29tPg0KKm5lZWwucGFuZGV5YUBlbWVyc29uLmNvbSogPG5lZWwucGFuZGV5YUBlbWVyc29u
LmNvbT4NCiorMS01MTItNDEzLTU2OTYqDQoq4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU
4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCU4oCUKg0K
--000000000000f9d9cc062c610ac6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div class=3D"gmail_default" style=3D"font-family:ver=
dana,sans-serif">This is a test email, please ignore.</div><br clear=3D"all=
"></div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"g=
mail_signature"><div dir=3D"ltr"><div><div style=3D"border:0px;font-stretch=
:inherit;line-height:inherit;font-size-adjust:inherit;margin:0px;padding:0p=
x;vertical-align:baseline;color:rgb(0,0,0)"><font face=3D"monospace"><b>=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94<span style=3D"fon=
t-style:inherit;font-variant:inherit;font-stretch:inherit;line-height:inher=
it;font-size-adjust:inherit;border:0px;margin:0px;padding:0px;vertical-alig=
n:baseline;color:inherit">=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94</span></b></font></div><div styl=
e=3D"border:0px;font-stretch:inherit;line-height:inherit;font-size-adjust:i=
nherit;margin:0px;padding:0px;vertical-align:baseline;color:rgb(136,136,136=
)"><font face=3D"monospace"><b>Neel Pandeya</b></font></div><div style=3D"b=
order:0px;font-stretch:inherit;line-height:inherit;font-size-adjust:inherit=
;margin:0px;padding:0px;vertical-align:baseline;color:rgb(136,136,136)"><fo=
nt face=3D"monospace"><b>National Instruments (NI)</b></font></div><div sty=
le=3D"border:0px;font-stretch:inherit;line-height:inherit;font-size-adjust:=
inherit;margin:0px;padding:0px;vertical-align:baseline;color:rgb(136,136,13=
6)"><font face=3D"monospace"><b>Austin, Texas, USA</b></font></div><div sty=
le=3D"border:0px;font-stretch:inherit;line-height:inherit;font-size-adjust:=
inherit;margin:0px;padding:0px;vertical-align:baseline;color:rgb(17,85,204)=
"><a href=3D"mailto:neel.pandeya@ettus.com" style=3D"border:0px;font-style:=
inherit;font-variant:inherit;font-stretch:inherit;line-height:inherit;font-=
size-adjust:inherit;margin:0px;padding:0px;vertical-align:baseline;color:rg=
b(17,85,204)" target=3D"_blank"><font face=3D"monospace"><b>neel.pandeya@et=
tus.com</b></font></a></div><div style=3D"border:0px;font-stretch:inherit;l=
ine-height:inherit;font-size-adjust:inherit;margin:0px;padding:0px;vertical=
-align:baseline;color:rgb(17,85,204)"><a href=3D"mailto:neel.pandeya@emerso=
n.com" style=3D"border:0px;font-style:inherit;font-variant:inherit;font-str=
etch:inherit;line-height:inherit;font-size-adjust:inherit;margin:0px;paddin=
g:0px;vertical-align:baseline;color:rgb(17,85,204)" target=3D"_blank"><font=
 face=3D"monospace"><b>neel.pandeya@emerson.com</b></font></a></div><div st=
yle=3D"border:0px;font-stretch:inherit;line-height:inherit;font-size-adjust=
:inherit;margin:0px;padding:0px;vertical-align:baseline;color:rgb(136,136,1=
36)"><font face=3D"monospace"><b>+1-512-413-5696</b></font></div><div style=
=3D"border:0px;font-stretch:inherit;line-height:inherit;font-size-adjust:in=
herit;margin:0px;padding:0px;vertical-align:baseline;color:rgb(0,0,0)"><fon=
t face=3D"monospace"><b>=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94</b></font></div></div><div style=3D"border:0px;fon=
t-stretch:inherit;line-height:inherit;font-size-adjust:inherit;margin:0px;p=
adding:0px;vertical-align:baseline;color:rgb(0,0,0)"><font face=3D"monospac=
e"><b><br></b></font></div><div style=3D"border:0px;font-stretch:inherit;li=
ne-height:inherit;font-size-adjust:inherit;margin:0px;padding:0px;vertical-=
align:baseline;color:rgb(0,0,0)"><font face=3D"monospace"><b><br></b></font=
></div></div></div></div></div>

--000000000000f9d9cc062c610ac6--

--===============7115876793340226860==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7115876793340226860==--
