Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D66733953C
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 18:41:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DF1A4383C02
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 12:41:54 -0500 (EST)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id A3179383369
	for <USRP-users@lists.ettus.com>; Fri, 12 Mar 2021 12:40:45 -0500 (EST)
Received: by mail-qk1-f179.google.com with SMTP id l4so25110795qkl.0
        for <USRP-users@lists.ettus.com>; Fri, 12 Mar 2021 09:40:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=KHGiPGw1G8vD1vTuPWl+uUyUDnVdtkO3LCvIq5jWueI=;
        b=r1D41Ol2JKTBtW+Q/vTJAK+Y0dimGTbLehfqgoH2jxNl1KGZISpxEIDS3Q37UAd1L2
         q+Pbxd/5d347Nk8b59N7a3MBCBMLCacW8w8zhgjOW7MX1enjLGbn40ddrsJddhZvvJ8g
         7RAkmzZSt3VT42mPZV7rcY8SEb/4/W+76D2SKC+hc8frvlO1s719uQ9zITx9WPTz3bsi
         La47+aW+zpSfVwkgylFxaNO0kvosRVblfgo5PGVhi58wEYr+h4+asd5dBwydj0TDMpd1
         4NhvFHeplQd/l5TWO0oMYlXUfmnROPBaI5ube2b7AxaungIad7umEo8s0zj1DyUbSLoV
         Gnmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=KHGiPGw1G8vD1vTuPWl+uUyUDnVdtkO3LCvIq5jWueI=;
        b=Z0RtFjL++s1JLh/MEMCUfWtaW00R5Ut40NiRedY/ElV1WtpqgSC0IyzCf+r2Zc8FgL
         GhFUHsYkT0HG+IsIe5ZD7z3Ycc5uLy+rMAgSrDw+I3TU5KEl33WgAh0hXYtTTYQM2162
         J4EKZhXAm3CUwvDxQbvfHQzW5ByS7lrWRT+wCRkRk9KFm+2Xg5Au71UkM+rZTEu2tgAW
         0oqwUzstkgu7F7bsfxJU93IEWsYvy5J1AgDuI2lQRTSenM2r52Riaf1dVFaewO2T5Rxv
         AqZDXjsUMqygn1VwK9iN5c/oMjt2nWHWEBnZ8hTDHzRj4WyJ5gf1PBpWlniVrTv11faw
         w8yQ==
X-Gm-Message-State: AOAM531VgjM0k5EekCRNpFhXlBHiPf5jmyxW9ruMSdmuKkNTZlqGVfzI
	Hz5ooyZc+J+hGVT8vk/qx6D7FBa0SCQ=
X-Google-Smtp-Source: ABdhPJxlaLXwwr3lTgZ7fi5Rho6aj8NLw1yGTvF5b4j/VII934sGdRfaiCOUNVQJa0cWK2X+xMuC7w==
X-Received: by 2002:a37:9e4e:: with SMTP id h75mr13636261qke.180.1615570845037;
        Fri, 12 Mar 2021 09:40:45 -0800 (PST)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id z5sm4784213qkz.2.2021.03.12.09.40.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Mar 2021 09:40:44 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 12 Mar 2021 12:40:43 -0500
Message-Id: <33F47408-F62A-4D01-8212-C51FD4D348F9@gmail.com>
References: <ycsr5IiSCqVfHKzOA4hzonvOjdaLKNmWa0PjrIwYfA@lists.ettus.com>
In-Reply-To: <ycsr5IiSCqVfHKzOA4hzonvOjdaLKNmWa0PjrIwYfA@lists.ettus.com>
To: serge.manigault@ingenico.com
X-Mailer: iPhone Mail (18D52)
Message-ID-Hash: PU5NHVQDL4DYIGMT3U5MGKSFNKJ4IZP2
X-Message-ID-Hash: PU5NHVQDL4DYIGMT3U5MGKSFNKJ4IZP2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [UHD 4.0.0.0] USRP 2901 How is it possible to know if fpga is loaded
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PU5NHVQDL4DYIGMT3U5MGKSFNKJ4IZP2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8267135492085996202=="


--===============8267135492085996202==
Content-Type: multipart/alternative; boundary=Apple-Mail-4A7D679B-D903-454A-A76A-E0ECD93DC901
Content-Transfer-Encoding: 7bit


--Apple-Mail-4A7D679B-D903-454A-A76A-E0ECD93DC901
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

This device loads its FPGA image whenever it has been power cycled and you s=
tart a session with it. The Images would be in the data files associated wit=
h your UHD installation.=20

You cannot establish a session with it unless there=E2=80=99s a functional FP=
gA image loaded and running.  =20

Sent from my iPhone

> On Mar 12, 2021, at 12:25 PM, Serge Manigault via USRP-users <usrp-users@l=
ists.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hello,
>=20
> I=E2=80=99m knew to this forum.
>=20
> I would like to know if there is a command to check the fpga loading statu=
s.
>=20
> And/Or to reset the fpga status to factory setting.
>=20
> Best regards,
>=20
> Serge
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-4A7D679B-D903-454A-A76A-E0ECD93DC901
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">This device loads its FPGA image whenever i=
t has been power cycled and you start a session with it. The Images would be=
 in the data files associated with your UHD installation.&nbsp;<div><br></di=
v><div>You cannot establish a session with it unless there=E2=80=99s a funct=
ional FPgA image loaded and running. &nbsp;&nbsp;<br><br><div dir=3D"ltr">Se=
nt from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Mar=
 12, 2021, at 12:25 PM, Serge Manigault via USRP-users &lt;usrp-users@lists.=
ettus.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><di=
v dir=3D"ltr">=EF=BB=BF<p>Hello,</p><p>I=E2=80=99m knew to this forum.</p><p=
>I would like to know if there is a command to check the fpga loading status=
.</p><p>And/Or to reset the fpga status to factory setting.</p><p>Best regar=
ds,</p><p>Serge</p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-4A7D679B-D903-454A-A76A-E0ECD93DC901--

--===============8267135492085996202==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8267135492085996202==--
