Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B949B417F11
	for <lists+usrp-users@lfdr.de>; Sat, 25 Sep 2021 03:42:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B9B94383FF4
	for <lists+usrp-users@lfdr.de>; Fri, 24 Sep 2021 21:42:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="A8bib+IZ";
	dkim-atps=neutral
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 002CB380A55
	for <usrp-users@lists.ettus.com>; Fri, 24 Sep 2021 21:41:45 -0400 (EDT)
Received: by mail-qk1-f169.google.com with SMTP id t4so30069034qkb.9
        for <usrp-users@lists.ettus.com>; Fri, 24 Sep 2021 18:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=EAS1xKczYH2TQB1ZVvCyoHGcIAljRoZAo+NYk/RGTk8=;
        b=A8bib+IZKI2iZk8V4xaJVgkKXWau/F9ntW7pJxeyS8Fz+rDNPcZKxA7BS2jD2WDCCd
         RxMtnyER8TjFtucky2eOob/0Bxc4vdAa0lr0g8HvjrakI9dB5vRN1D6FWO1o2qJTKqGe
         ZvIE8WXQfRBTLof/qIb6GWHFFBH6fn3gwEVIN6n4MTQn8p/v+abJnAHSIrR0P0xxU3vr
         1ZOddOTsMqMQXrHM1k7CaHDkreW8hREPJDPV1JPGlgV1slEEJJCZV8cwrQmbpcUuNHWI
         qrfcpuIAbfDhvDEpPduZdFwi2s5ZvsAdOOdUziFQ66mnsslfvELoa2cPpW8l26eObeL+
         NqaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=EAS1xKczYH2TQB1ZVvCyoHGcIAljRoZAo+NYk/RGTk8=;
        b=SfC0aBYku/S8S554aTKJJzw82Ff5DiUUxQe10Jy/8e5d+hiX5TL1J55bMxq4PwKTuu
         87MO/jLG+b3FrDKoYTJ9z9UrF3H5q9MLVGKLzwHCzlzcIoyANqcY1pHzDQlJAdpgtQbt
         lL6Zu/xraSglh9An0ol3GL2c+R/ICKBI9Z9cUHOqUGIyTKbhC98muxpChke0urTJLtfs
         XaH8lQlpwUs2u758mvU+bmthXIJwYLM/NhPL6DFnnBETONqu5zUNO3dr4Th+nmhIZaoG
         3RjwRQ30ycZXev5oNmbOI6hMmpLpmrvIrkNU91ma201vfy/H3kiYsMcj19QoB/L0xoab
         82gA==
X-Gm-Message-State: AOAM5325kCZ+2yrZpMgDI/lO6bMuwUzJFLI6jeTeWjsv14uLhc/5lcSN
	AJ4Y+rkwDnQ0LmVv7j+xvVjqetgqC8/gRw==
X-Google-Smtp-Source: ABdhPJwReWOLq8IaO4QVOnT8ctsQL0UCPz8OBl1EKbGHTLyzkI76rSXR2JSOKbjPs/5uCmWTNRarJA==
X-Received: by 2002:a37:a2c5:: with SMTP id l188mr13291044qke.268.1632534105201;
        Fri, 24 Sep 2021 18:41:45 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id u12sm6277923qtw.73.2021.09.24.18.41.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Sep 2021 18:41:44 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 24 Sep 2021 21:41:43 -0400
Message-Id: <E933569B-3486-436D-92D2-AB494C5DEDFF@gmail.com>
References: <1044876970.787254.1632533860249@mail.yahoo.com>
In-Reply-To: <1044876970.787254.1632533860249@mail.yahoo.com>
To: Tellrell White <t_whit_87@yahoo.com>
X-Mailer: iPhone Mail (18G82)
Message-ID-Hash: OYYLBPRI7GST34ASZMFWXPI2SFJXEWT2
X-Message-ID-Hash: OYYLBPRI7GST34ASZMFWXPI2SFJXEWT2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: make test fails when building uhd
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OYYLBPRI7GST34ASZMFWXPI2SFJXEWT2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3758009330127288718=="


--===============3758009330127288718==
Content-Type: multipart/alternative; boundary=Apple-Mail-B26BC61E-4E61-4F30-A972-7A4BB2CFB8A8
Content-Transfer-Encoding: 7bit


--Apple-Mail-B26BC61E-4E61-4F30-A972-7A4BB2CFB8A8
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

My guess would be =E2=80=9Cyes=E2=80=9D.=20



Sent from my iPhone

> On Sep 24, 2021, at 9:37 PM, Tellrell White via USRP-users <usrp-users@lis=
ts.ettus.com> wrote:
>=20
> =EF=BB=BF
> I'm trying to build uhd v4.0.0.0 in centos 7 and I seem to get keep the sa=
me 3 failing tests as displayed below=20
>=20
>=20
> The following tests FAILED:
>      50 - pyranges_test (Failed)
>      52 - pychdr_parse_test (Failed)
>      89 - mpm_unit_tests (Failed)
> Errors while running CTest
>=20
> Will uhd still work correctly despite these errors?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-B26BC61E-4E61-4F30-A972-7A4BB2CFB8A8
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">My guess would be =E2=80=9Cyes=E2=80=9D.&nb=
sp;<div><br></div><div><br><br><div dir=3D"ltr">Sent from my iPhone</div><di=
v dir=3D"ltr"><br><blockquote type=3D"cite">On Sep 24, 2021, at 9:37 PM, Tel=
lrell White via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br>=
</blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div c=
lass=3D"yahoo-style-wrap" style=3D"font-family:Helvetica Neue, Helvetica, Ar=
ial, sans-serif;font-size:13px;"><div dir=3D"ltr" data-setdir=3D"false">I'm t=
rying to build uhd v4.0.0.0 in centos 7 and I seem to get keep the same 3 fa=
iling tests as displayed below&nbsp;</div><div dir=3D"ltr" data-setdir=3D"fa=
lse"><br></div><div dir=3D"ltr" data-setdir=3D"false"><div><br>The following=
 tests FAILED:<br>&nbsp;&nbsp; &nbsp; 50 - pyranges_test (Failed)<br>&nbsp;&=
nbsp; &nbsp; 52 - pychdr_parse_test (Failed)<br>&nbsp;&nbsp; &nbsp; 89 - mpm=
_unit_tests (Failed)<br>Errors while running CTest<br><br></div><div dir=3D"=
ltr" data-setdir=3D"false">Will uhd still work correctly despite these error=
s?<br></div></div></div><span>______________________________________________=
_</span><br><span>USRP-users mailing list -- usrp-users@lists.ettus.com</spa=
n><br><span>To unsubscribe send an email to usrp-users-leave@lists.ettus.com=
</span><br></div></blockquote></div></body></html>=

--Apple-Mail-B26BC61E-4E61-4F30-A972-7A4BB2CFB8A8--

--===============3758009330127288718==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3758009330127288718==--
