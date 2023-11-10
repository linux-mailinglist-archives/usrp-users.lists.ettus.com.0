Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D797E75AD
	for <lists+usrp-users@lfdr.de>; Fri, 10 Nov 2023 01:09:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 58357385215
	for <lists+usrp-users@lfdr.de>; Thu,  9 Nov 2023 19:09:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699574948; bh=k3IE0EAlqX1VKe/+1oGwB9fLgwYhpouOSIZKwPv/8AQ=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=rAL01+YLzSmajKd+D8LS+TKlJk/bjpMMhqjNhjtYp91obaOtg+3Xi6GU0I1xf59Ry
	 noScm5OsuxjiWpMVjT4AYHWST2qCVTKm8HsOCvs+JJ056c55abTEdtp6hWB4ZkLNz1
	 4JAW25Ej/eMnag/1X8a5iu9GWckOv/PhhA604L20KZlGTVIQRY3yPUkOo2tPdkK6bW
	 sq30zFtw8nYpaKf28nVdIHvZRZOTL0LylZrVrDeTgQcrezy4tTowC6SDjeFyOotaK/
	 BkK4m1EKmDFoSQUR6LInKuQ43xMcncNfzwsn9SGgkKQNr98MuMD/DKyrttmrtzI5Eq
	 cwW/NgtShznMA==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id E0D443851FE
	for <usrp-users@lists.ettus.com>; Thu,  9 Nov 2023 19:08:58 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Rm5ATtVv";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-66d0169cf43so9225856d6.3
        for <usrp-users@lists.ettus.com>; Thu, 09 Nov 2023 16:08:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699574938; x=1700179738; darn=lists.ettus.com;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=prGkRlmH7WHNyy9i3tkv4a+HaQJz0NNVu1fnkPEhCLE=;
        b=Rm5ATtVv77dis8vYzu8U4ljyi1WtS6zpiPU4UjlgFyqGs39fQs4zs42F0KTj7spVG6
         atAh7RuyA289lonR6OD2Q28Z15w0yVbvICQTqhrtdQDt5TzD63XiS+Nyq692uq0hhwRn
         iZ6AMk7duVXATwAgkt+LLOT/27RRwAxRzObv8TuKq/s5hDk/2DNOAWTsKQyhNzGPpv9P
         /hhs8tewNaiDXuRHmo2EQ5srF/hFMrZritajCOsNom5rmS5KRSNI6ZoW98AtoIuojNfl
         H81m29kUHM3AvUbLAWMtBHlUGQhOzddTMF/1plcMGWJThLpaef1Q6yCSnOqmP8rhu6cd
         YOMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699574938; x=1700179738;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=prGkRlmH7WHNyy9i3tkv4a+HaQJz0NNVu1fnkPEhCLE=;
        b=YVgcRaa0K/xRKYgTc265bg6GHl3yHunDBxZV4Rxdw4TgR5o0sNlNHvytrcLcqEmM82
         oo7g5Oj+WtvH+EnH/9N/q+bZkmeFbd3ohXdp0zzcP6AlFZzRl6+EbOW6elvA3Nra6zV1
         Q3EU4UaX3zRQD8wiAuOK3+cBntZZd0JjfvDbboV7kFq3ZyGt2ICuVZvhQuC1VeVUDB1F
         OB7Pa2ts0rqvnxP9NnNLdZYnXSs/gq4BKpJ7Gg2trNBy/XbsmjOj2dYXdhwF6DsjXjcL
         VqhsdUZT+DtZxjYoMUN5QKgvEzGEd6En3LGwknoFQY3eDpb5J6sK/CsZiA87GN6ED8eD
         bUvQ==
X-Gm-Message-State: AOJu0YwzqNDa6MSKgnfLRg6ZP4QZfR/2YspQbb8nl45PnL1e2CLsM24/
	tK7ZHwAvlVcepun9YYJPFLreICF6D8Q=
X-Google-Smtp-Source: AGHT+IGI0fFTzWxrc2BrZzt5xXgfKPwcUPIQN2aOwZg3YoZH+z4bOgKTehm3L9zupKYQa8vcDbEN8Q==
X-Received: by 2002:a05:6214:d02:b0:656:4712:af9f with SMTP id 2-20020a0562140d0200b006564712af9fmr6828951qvh.13.1699574938126;
        Thu, 09 Nov 2023 16:08:58 -0800 (PST)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-06-174-88-54-173.dsl.bell.ca. [174.88.54.173])
        by smtp.gmail.com with ESMTPSA id jh12-20020a0562141fcc00b0065af9d1203dsm2494645qvb.121.2023.11.09.16.08.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 16:08:57 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 9 Nov 2023 19:08:47 -0500
Message-Id: <76AAE55D-A2CE-4C2E-AE62-FF732586A134@gmail.com>
References: <CAJx0LdXipnYVx+KUwqqkLH=UDc0P5+V8FHU16fb=e9v5dPb0tw@mail.gmail.com>
In-Reply-To: <CAJx0LdXipnYVx+KUwqqkLH=UDc0P5+V8FHU16fb=e9v5dPb0tw@mail.gmail.com>
To: German Farinas <german.farinas@gmail.com>
X-Mailer: iPhone Mail (20D67)
Message-ID-Hash: LPXMJTB5T74SSHDLYMCHIKCJROLCYVDY
X-Message-ID-Hash: LPXMJTB5T74SSHDLYMCHIKCJROLCYVDY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: The firmware build is not compatible with the host code build
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LPXMJTB5T74SSHDLYMCHIKCJROLCYVDY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9048437704136672558=="


--===============9048437704136672558==
Content-Type: multipart/alternative; boundary=Apple-Mail-19B018A1-773C-4500-8D9D-E3489FA4D10A
Content-Transfer-Encoding: 7bit


--Apple-Mail-19B018A1-773C-4500-8D9D-E3489FA4D10A
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

You may need to stage this from a much earlier rev of UHD. I don=E2=80=99t t=
hink there have been any updates to N210 firmware in a long time. So if you c=
an tolerate UHD 3.15 that might be better for you.=20

Sent from my iPhone

> On Nov 9, 2023, at 7:05 PM, German Farinas <german.farinas@gmail.com> wrot=
e:
>=20
> =EF=BB=BF
> I am trying to upload the image to an usrp N210 rev2.0 but I got the follo=
wing error message. Have anyone had the same error before? I need some help w=
ith this issue. See the output of the uhd_image_loader below.
>=20
> Best,
> German
>=20
> uhd_image_loader --args=3D"type=3Dusrp2,addr=3D192.168.10.2"
>=20
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.5.0.0-0ubun=
tu1~focal1
> [ERROR] [UHD] Exception caught in safe-call.
>   in ~usrp2_iface_impl
>   at /build/uhd-UJYBdq/uhd-4.5.0.0/host/lib/usrp/usrp2/usrp2_iface.cpp:82
> this->lock_device(false); -> RuntimeError:
> Please update the firmware and FPGA images for your device.
> See the application notes for USRP2/N-Series for instructions.
> Expected protocol compatibility number [10 to 12], but got 9:
> The firmware build is not compatible with the host code build.
> Please run:
>=20
>  "/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"
>  "/lib/bin/uhd_image_loader" \
>     --args=3D"type=3Dusrp2,addr=3D192.168.10.2"
>=20
> Error: RuntimeError: Received invalid reply 32 from device.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-19B018A1-773C-4500-8D9D-E3489FA4D10A
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">You may need to stage this from a much earl=
ier rev of UHD. I don=E2=80=99t think there have been any updates to N210 fi=
rmware in a long time. So if you can tolerate UHD 3.15 that might be better f=
or you.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"l=
tr"><br><blockquote type=3D"cite">On Nov 9, 2023, at 7:05 PM, German Farinas=
 &lt;german.farinas@gmail.com&gt; wrote:<br><br></blockquote></div><blockquo=
te type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"auto"><div style=3D"f=
ont-size:12.8px" dir=3D"auto">I am trying to upload the image to an usrp N21=
0 rev2.0 but I got the following error message. Have anyone had the same err=
or before? I need some help with this issue. See the output of the uhd_image=
_loader below.</div><div style=3D"font-size:12.8px" dir=3D"auto"><br></div><=
div style=3D"font-size:12.8px" dir=3D"auto">Best,</div><div style=3D"font-si=
ze:12.8px" dir=3D"auto">German</div><div style=3D"font-size:12.8px" dir=3D"a=
uto"><br></div><div style=3D"font-size:12.8px" dir=3D"auto">uhd_image_loader=
 --args=3D"type=3Dusrp2,addr=3D192.168.10.2"</div><div style=3D"font-size:12=
.8px" dir=3D"auto"><br>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_1071=
00; UHD_4.5.0.0-0ubuntu1~focal1<br>[ERROR] [UHD] Exception caught in safe-ca=
ll.<br>&nbsp; in ~usrp2_iface_impl<br>&nbsp; at /build/uhd-UJYBdq/uhd-4.5.0.=
0/host/lib/usrp/usrp2/usrp2_iface.cpp:82<br>this-&gt;lock_device(false); -&g=
t; RuntimeError:<br>Please update the firmware and FPGA images for your devi=
ce.<br>See the application notes for USRP2/N-Series for instructions.<br>Exp=
ected protocol compatibility number [10 to 12], but got 9:<br>The firmware b=
uild is not compatible with the host code build.<br>Please run:<br><br>&nbsp=
;"/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"<br>&nbsp;"/lib/b=
in/uhd_image_loader" \<br>&nbsp; &nbsp; --args=3D"type=3Dusrp2,addr=3D192.16=
8.10.2"<br><br>Error: RuntimeError: Received invalid reply 32 from device.</=
div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-19B018A1-773C-4500-8D9D-E3489FA4D10A--

--===============9048437704136672558==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9048437704136672558==--
