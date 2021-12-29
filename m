Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 158654815D1
	for <lists+usrp-users@lfdr.de>; Wed, 29 Dec 2021 18:32:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5BAA9384A99
	for <lists+usrp-users@lfdr.de>; Wed, 29 Dec 2021 12:32:26 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YCUTbC+I";
	dkim-atps=neutral
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 9880238464B
	for <USRP-users@lists.ettus.com>; Wed, 29 Dec 2021 12:31:33 -0500 (EST)
Received: by mail-qt1-f173.google.com with SMTP id m18so19075408qtk.3
        for <USRP-users@lists.ettus.com>; Wed, 29 Dec 2021 09:31:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=Pk/wgBLZYFM800ygAioKferqbEHnWFelZuB3EaNYtC0=;
        b=YCUTbC+IBVNzQWWZDeVd92kEVnq3Lyl+38rGQp3AqigXhE7FjQVn1kWEZTWVlqggrX
         oJ/c+iX9HEvno26eVWH8/wMOGh4tzph+zHT/0uDClS2zKvyi/ArrHai4dT7tMFxfkJcF
         xVfOKKD9D4nVTgZhbmwsfky9CbSO/fI6Wk6TOcsMWeDn/8n54JU6El66LALSMGzJbdyq
         VXMlxosCbPcpsXX6N06kn74MJjMcGhL1uXpR0RsNXKxsOu9wkJbgLqbMf1z+CGMJvifS
         TL3CzTIdcmrn44+chuk8WH1ttXoPXoOcDSuCVdkKgb0RRW16W8wNdt1M7mv1QTD+iMsN
         O31Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=Pk/wgBLZYFM800ygAioKferqbEHnWFelZuB3EaNYtC0=;
        b=EL0N18V6MskVDVIMEh78saREe9cfUGBeF2JIhSuseeTqMjJAmdsxnOx2AncjPQ1bTO
         /G/n7tPiKRUuYdOAQHcaVT7uznXKgEwym0Hpcc9hNJamQw7MlyUM605grhJ71KWnRBg2
         OTQ8wY0i4xDlNY7/h+1OMkXr4e8uAQXOjJMYJsCxu4LOs62RszEe/nGCnkOIiiZL0cDE
         nPHL/tq+NeZXYXjVqcKDHAP8OtUKgtsqkjIf6UNpqniDMPS3fYsTg8c2R4NTRk4Lamvi
         GpJCyV8/wNw+sy8J1otmlUDRMSAy9tHK7j+dWMQ5FdneCOtB/E2h5k6REXB1AnMV/K4H
         NK4Q==
X-Gm-Message-State: AOAM532QXmROgazR1ctK8seYrUByNDy0Xv4KJULbK/wRicUR2o4mHiac
	5Jg7HyP0amkPE1WxkM2GohIOHWaeHkUZ7g==
X-Google-Smtp-Source: ABdhPJxrjo2grR3OwxZHvmPNGhWSrFHeXPG6b0kDlrIuAtSBzPnWilhTWIGtvw+p4kOBcOhZxDBFEg==
X-Received: by 2002:ac8:46cc:: with SMTP id h12mr23548570qto.417.1640799093051;
        Wed, 29 Dec 2021 09:31:33 -0800 (PST)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.gmail.com with ESMTPSA id o4sm16814455qkh.107.2021.12.29.09.31.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Dec 2021 09:31:32 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 29 Dec 2021 12:31:31 -0500
Message-Id: <FE5EEC14-2C29-4D6C-B5EE-17E812304C96@gmail.com>
References: <CANP_axLR7UeZZ5sUCuaJXpr0fV+Yt5S_9nkLPU62h0tmzbbkpQ@mail.gmail.com>
In-Reply-To: <CANP_axLR7UeZZ5sUCuaJXpr0fV+Yt5S_9nkLPU62h0tmzbbkpQ@mail.gmail.com>
To: Temir Karakurum <temirkarakurum@gmail.com>
X-Mailer: iPhone Mail (19B74)
Message-ID-Hash: 7ANGJ3JBSSRZMNZWIBIYC525MCFBYUL4
X-Message-ID-Hash: 7ANGJ3JBSSRZMNZWIBIYC525MCFBYUL4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E330 and rx-only USRPs
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7ANGJ3JBSSRZMNZWIBIYC525MCFBYUL4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2488991219881351362=="


--===============2488991219881351362==
Content-Type: multipart/alternative; boundary=Apple-Mail-B779D0B9-4D98-44AC-88A0-7669BBAF66AF
Content-Transfer-Encoding: 7bit


--Apple-Mail-B779D0B9-4D98-44AC-88A0-7669BBAF66AF
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

The TwinRx daughter cards for X310.=20

Sent from my iPhone

> On Dec 29, 2021, at 12:30 PM, Temir Karakurum <temirkarakurum@gmail.com> w=
rote:
>=20
> =EF=BB=BF
> Hi there,
>=20
> I recently came across a presentation by Matt Ettus at grcon16, where he i=
ntroduces E330 as a receive-only alternative for E-series USRPs. I checked E=
ttus store as well as googled for some info about E330 but could not find an=
ything useful. Has it ever been offered as a product by Ettus or NI?
>=20
> As a general question, most of my applications are receive-only in nature (=
spectrum monitoring etc.) and usually Tx channels of the USRPs end up redund=
ant. Is it possible to purchase rx-only devices?
>=20
> Best regards,
> Temir
>=20
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-B779D0B9-4D98-44AC-88A0-7669BBAF66AF
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">The TwinRx daughter cards for X310.&nbsp;<b=
r><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockq=
uote type=3D"cite">On Dec 29, 2021, at 12:30 PM, Temir Karakurum &lt;temirka=
rakurum@gmail.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"c=
ite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Hi there,<div><br></div><div=
>I recently came across a presentation by Matt Ettus at <a href=3D"https://y=
outu.be/kEAkIfWViQo?t=3D1254">grcon16</a>, where he introduces E330 as a rec=
eive-only alternative for E-series USRPs. I checked Ettus store as well as g=
oogled for some info about E330 but could not find anything useful. Has it e=
ver been offered as a product by Ettus or NI?</div><div><br></div><div>As a g=
eneral question, most of my applications are receive-only in nature (spectru=
m monitoring etc.) and usually Tx channels of the USRPs end up redundant. Is=
 it possible to purchase rx-only devices?</div><div><br></div><div>Best rega=
rds,</div><div>Temir</div><div><br></div><div><br></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-B779D0B9-4D98-44AC-88A0-7669BBAF66AF--

--===============2488991219881351362==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2488991219881351362==--
