Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC607E75A5
	for <lists+usrp-users@lfdr.de>; Fri, 10 Nov 2023 01:05:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AEF94384FE9
	for <lists+usrp-users@lfdr.de>; Thu,  9 Nov 2023 19:05:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699574744; bh=42JMem8uP6dtkZEYGeU+Fz/zZHjdqpZjwikWkyWJThA=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=I2Ow7sYwyumE/RFsuyejkLV9Yz4B274lpI0jOi7zmt6A2FNfHBm+2QkVP+HMxUymX
	 9OFk+UShflR39oHUeNikNLQHw1YVX0pkFpBLJc0d8asYGGWR6D8zyY5dDHpGkY8L9K
	 6J3+yKtaL8oUlE35weZ3mFEqb3f47/kT2VXX4SyPYwu9xgmXAKMDTW+CnaAu52VBQd
	 KeUhktXBrvLAmywovdEg1F6utQG6t0RiaFJv6kk7xShvweJlQS6QHD50KNdT15Dt68
	 zMa91Bvgo8Ie5ZHkA03PhXWKmnsrdkh0Y/SitMOr54NkGIviluFXHXwT+fIZBCN1m1
	 /YhyT3JY92Hqw==
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 47809384CC3
	for <usrp-users@lists.ettus.com>; Thu,  9 Nov 2023 19:05:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IxHFDXeN";
	dkim-atps=neutral
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5435336ab0bso2540459a12.1
        for <usrp-users@lists.ettus.com>; Thu, 09 Nov 2023 16:05:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699574709; x=1700179509; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PaWX8aximVTYWCKp4s0QdHNbGdbG64NjEI2X6s9mXDw=;
        b=IxHFDXeNKoRaoagnAehSG1spfg4QKNqQyDT5RU38hZ5tGfhJDeEB+2DO7T6RCMCUCu
         Koyq6XVPZUjdbaFWPFwniFYtf4PxPz1gALtLNOyHjAIChvvSdNCweYnQuJXJOvqTSxvs
         wv9WVyxnZSlPO+aizvOcKARlNug44Qe0CtythcbxYIXRhHfda1aI1lPahKQd0XuFPpPz
         tqhmUsX7k9ukLkJ+Wmr7YKeixIr/Bwczas5/1xycsrln/KpdSq1xf84eqb4aa41vZrwu
         K9K4qyqEEFcreIGzmn0FmVfyt9xouV8NFDwZcjpnoYNSF16qCNyxfwJk77h0TgdcSmfl
         rP5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699574709; x=1700179509;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PaWX8aximVTYWCKp4s0QdHNbGdbG64NjEI2X6s9mXDw=;
        b=JdZ8BlQmNhDW3kBWWOJYTdpw1Ebz605ye094PW8fDNjiyyLjlbqnC82UqWgV+Ub+Cm
         7b35Ao0vilxeqJ92etCXEifjy8Z2vs392JhoYNJapU83tEnFyAf87eAn9ldhLhx1lMMM
         eENQRvzg0l6aM3ivicoK44fr6cEJ/j/1aZ9JOa3hhDIrR+zN/L9LnpiLSPhTZW+yxEil
         0Jr1eeBP3WNMkWwn9SRlAVIlKTw/JlVsDjNOFRsbZaGjxPJYhWLDEpuoth3GkRkVmSNg
         Jqf1CmyJfYcC8+k29lI1QLKryI+kKdRScc5rjGoE3UIt4lmn4EVkE9AZt7j+JFQGLh8W
         4ClA==
X-Gm-Message-State: AOJu0YzMHSCiRpTDoLbOkXJXRolpNaWa1hRGfok/su8FJHyXGvUIhdbk
	2UkAPtKJc+IesJXzbgtDh+ffnMVW6cqXch1byxuGBH/y
X-Google-Smtp-Source: AGHT+IFGMOM+wXpYjkE1ZlAVtuQLbRtOAUSmbYpZpQ7Tv3MC71lvu5ITbsjfOYWHoJH3aCBFlNv104Am9Z6clmAN8YE=
X-Received: by 2002:a17:907:787:b0:9df:e457:cef6 with SMTP id
 xd7-20020a170907078700b009dfe457cef6mr4795827ejb.77.1699574708853; Thu, 09
 Nov 2023 16:05:08 -0800 (PST)
MIME-Version: 1.0
From: German Farinas <german.farinas@gmail.com>
Date: Thu, 9 Nov 2023 19:04:57 -0500
Message-ID: <CAJx0LdXipnYVx+KUwqqkLH=UDc0P5+V8FHU16fb=e9v5dPb0tw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: CPNQBFZ3CVZQQFFKH3Z44L4K6TFLFKBU
X-Message-ID-Hash: CPNQBFZ3CVZQQFFKH3Z44L4K6TFLFKBU
X-MailFrom: german.farinas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] The firmware build is not compatible with the host code build
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CPNQBFZ3CVZQQFFKH3Z44L4K6TFLFKBU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7233846711266136534=="

--===============7233846711266136534==
Content-Type: multipart/alternative; boundary="000000000000ca5df30609c112f8"

--000000000000ca5df30609c112f8
Content-Type: text/plain; charset="UTF-8"

I am trying to upload the image to an usrp N210 rev2.0 but I got the
following error message. Have anyone had the same error before? I need some
help with this issue. See the output of the uhd_image_loader below.

Best,
German

uhd_image_loader --args="type=usrp2,addr=192.168.10.2"

[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
UHD_4.5.0.0-0ubuntu1~focal1
[ERROR] [UHD] Exception caught in safe-call.
  in ~usrp2_iface_impl
  at /build/uhd-UJYBdq/uhd-4.5.0.0/host/lib/usrp/usrp2/usrp2_iface.cpp:82
this->lock_device(false); -> RuntimeError:
Please update the firmware and FPGA images for your device.
See the application notes for USRP2/N-Series for instructions.
Expected protocol compatibility number [10 to 12], but got 9:
The firmware build is not compatible with the host code build.
Please run:

 "/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"
 "/lib/bin/uhd_image_loader" \
    --args="type=usrp2,addr=192.168.10.2"

Error: RuntimeError: Received invalid reply 32 from device.

--000000000000ca5df30609c112f8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div style=3D"font-size:12.8px" dir=3D"auto">I am trying =
to upload the image to an usrp N210 rev2.0 but I got the following error me=
ssage. Have anyone had the same error before? I need some help with this is=
sue. See the output of the uhd_image_loader below.</div><div style=3D"font-=
size:12.8px" dir=3D"auto"><br></div><div style=3D"font-size:12.8px" dir=3D"=
auto">Best,</div><div style=3D"font-size:12.8px" dir=3D"auto">German</div><=
div style=3D"font-size:12.8px" dir=3D"auto"><br></div><div style=3D"font-si=
ze:12.8px" dir=3D"auto">uhd_image_loader --args=3D&quot;type=3Dusrp2,addr=
=3D192.168.10.2&quot;</div><div style=3D"font-size:12.8px" dir=3D"auto"><br=
>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.5.0.0-0ubun=
tu1~focal1<br>[ERROR] [UHD] Exception caught in safe-call.<br>=C2=A0 in ~us=
rp2_iface_impl<br>=C2=A0 at /build/uhd-UJYBdq/uhd-4.5.0.0/host/lib/usrp/usr=
p2/usrp2_iface.cpp:82<br>this-&gt;lock_device(false); -&gt; RuntimeError:<b=
r>Please update the firmware and FPGA images for your device.<br>See the ap=
plication notes for USRP2/N-Series for instructions.<br>Expected protocol c=
ompatibility number [10 to 12], but got 9:<br>The firmware build is not com=
patible with the host code build.<br>Please run:<br><br>=C2=A0&quot;/lib/x8=
6_64-linux-gnu/uhd/utils/uhd_images_downloader.py&quot;<br>=C2=A0&quot;/lib=
/bin/uhd_image_loader&quot; \<br>=C2=A0 =C2=A0 --args=3D&quot;type=3Dusrp2,=
addr=3D192.168.10.2&quot;<br><br>Error: RuntimeError: Received invalid repl=
y 32 from device.</div></div>

--000000000000ca5df30609c112f8--

--===============7233846711266136534==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7233846711266136534==--
