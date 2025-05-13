Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A72AB48B1
	for <lists+usrp-users@lfdr.de>; Tue, 13 May 2025 03:13:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 40623385E3C
	for <lists+usrp-users@lfdr.de>; Mon, 12 May 2025 21:13:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747098781; bh=zo41+/UJM9e2lt8QCaIlRRMm6C39yDdk0gqzhbdEqTo=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=0+8NUVghzg8+V5RFkIkb6Jd/RTotfZoBZovdIlmmFSHvTAnujRa+G8ejDRDPMOk0J
	 nitFDsK3LhAP3knx4VuwZX2r2S7trVfyuLldeI6mJzjvtAoliW8DEpp4L+jmJWVDgm
	 Trwedv1zKtd6ymb4+XcCqwnMcfHJhiKUVGKf39DfzbCyuCxWttPOxLK3lKvL3TT5Fs
	 Zd3azuWmQoKMD0ivSWAiE5KKurkmdnIpYzhx9nAgAcqVy/tBzlf+vhSwvHlmcs+FM7
	 MU//qqkxpGVx6yxFUOPVXjx+WajsB1fKdA/7YUMAuoOYAUKAt671HzJv48I7m/BJlD
	 /UsO2erqrjBQA==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id D8BBB385896
	for <usrp-users@lists.ettus.com>; Mon, 12 May 2025 21:12:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="loSPFxe6";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ad24677aaf6so278279166b.2
        for <usrp-users@lists.ettus.com>; Mon, 12 May 2025 18:12:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747098741; x=1747703541; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kdXcdWk6yy6cBeZc+ZvXbLPj6wnjLVN6MPjdzdwbXXY=;
        b=loSPFxe6BJK/L9IGNolppKWmek/OWHhkDwOWfUk/x87C8Z8tpZ0l6RcWhtWJ1fE+l8
         PxSjUMhvP7xUh84dHWWTQTNxee0SUOIBRWw8A66hanflSd7zAH3PDo74sJXGGNseNch4
         M9+wLUafRzxF5Tz8vLL5Z1XbUKNCYlbyFHGE3VdI5BSeHdWnYX6aCQ1ylZ7xBnNM+R6N
         /VuG2SBbq5vWy1YkBCMhgUCaSqfVkPwPY/QIR+ra3ikaKOHw2yqz6hNr17AYqzKBrLiO
         mUDPrSxU10hz9LQG8MAwDrFAuNQuNO8KYp0OtAekybL+yKc0D0ge4U5BijfT+ttFs3ft
         EdjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747098741; x=1747703541;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kdXcdWk6yy6cBeZc+ZvXbLPj6wnjLVN6MPjdzdwbXXY=;
        b=QZqw3VV0RkYnZHZOB0RNU/qQ6IKwKRr5y4DwT0dyTWDal9t1qLi1YketpXLtKltmn6
         fY55nVbxxWOsLh3vMWE9Nf0eGPcG+FYgPEPv0oqhG6y+gjjpW0IaKA2shN0VuZrdRg8W
         +Za9T9mhZc9Bg8xq12fyExGVYeip6IhyWbxNPxppXkEw9J4DtI6jtiQJDmbdnAid9bMJ
         H47f8aoks7Rq+6CDGyW2qzudrOlBx1Zzj/Wb95GGk6ZkuhLHbGOwemuCpNpxyI7LOJ9K
         Tjv2wE2Lebye+k/3X5rylbJpMyGmn6isAUAPtDf7FM5FNeVnPrr76D+F/gjYDkUyKo0c
         5wDQ==
X-Gm-Message-State: AOJu0YwEDmxTVv+uWS69hV63SiMdNjGyuuY52K5LcfhwetDeIoKa6n/R
	xcSebJhMLcdk0GNzo5F8u96SrTdXH4Eu2MSyxbmaU8cWFb6Qd1tnd0giM+s33nk6AO4L7IZpieI
	VYuYEgOvh/tQSO4p4GP7l67LxDeTlFq0Y
X-Gm-Gg: ASbGnctBLR9/0EdRwpgDq+4S72KQejwUl+RFGdI0mIcqSvgv603s++gBQ1oWql0Isbe
	vdTPLczxhTkWkVLes+E3kjrpK9UG26YxLcphOgiIDqNl951u/PmoEb3H+fbdXoqxiWy0psEpKuC
	Flg4cjZWHf9DczX55dZ88lt+IlrlrRgXZ3
X-Google-Smtp-Source: AGHT+IEGvGwhovIlM5FpLYADCqBbS6v9hoaB2weoyad5OviyEqr6vwO4va+P1dm2GSZN7JH1LHmVeUrq4Ey9362bLtQ=
X-Received: by 2002:a17:907:7da2:b0:ac2:9683:ad25 with SMTP id
 a640c23a62f3a-ad219004ce9mr1323724166b.34.1747098741190; Mon, 12 May 2025
 18:12:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK6A8mRg9jpcaMgihu7hRFWFrPL0TgubaB1m46QoFbY+iA@mail.gmail.com>
 <CAFche=jCdCTCyAY51g2CSNdSLnW==CUngEw+VsGCQb9Hapn4gA@mail.gmail.com>
In-Reply-To: <CAFche=jCdCTCyAY51g2CSNdSLnW==CUngEw+VsGCQb9Hapn4gA@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Mon, 12 May 2025 21:12:10 -0400
X-Gm-Features: AX0GCFvBZ_y-cCiMLeYSiD6yHUAcIVUWE9-jZo0qMcKtm67tEtCvnJZO5A525SE
Message-ID: <CAEXYVK5q2XuWtCUQORUZH-163LJpeog-TqVs+H0dcAf_ryQesg@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: VTZJOWCUXANDUQNQ7PPMIRMWSZDTARJL
X-Message-ID-Hash: VTZJOWCUXANDUQNQ7PPMIRMWSZDTARJL
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 Reboot Takes A While
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VTZJOWCUXANDUQNQ7PPMIRMWSZDTARJL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4603950567618792228=="

--===============4603950567618792228==
Content-Type: multipart/alternative; boundary="000000000000db347e0634fa1f72"

--000000000000db347e0634fa1f72
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, May 10, 2025 at 11:33=E2=80=AFPM Wade Fife <wade.fife@ettus.com> wr=
ote:

> The 90 second timeout is a known issue, and it was recently fixed. With
> the next release, the USRP Hardware Daemon (MPM) service should shutdown
> immediately.
>
> But I'm not aware of it taking a long time after the service shuts down.
> In my experience, it reboots very quickly after the service shuts down.
>

Good to know that the 90 second timeout thing was fixed recently.

I just tried it again myself and when I get the 90 second timeout,
systemd-shutdown complains about:

  systemd-shutdown[1]: Failed to set timeout to 10min: Invalid argument

... after which my system doesn't reboot at all. It's been sitting here for
a few hours with nothing on the console moving it forward.

Any tips on how I can debug this? Does your system that reboots normally
still have that 10min invalid argument thing?

Note I am running the released 4.8.0.0 image.

Thanks,
Brian

--000000000000db347e0634fa1f72
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Sat, May 10, 2025 at 11:33=E2=80=AFPM =
Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com">wade.fife@ettus.com</a=
>&gt; wrote:</div><div class=3D"gmail_quote gmail_quote_container"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>The 90 seco=
nd timeout is a known issue, and it was recently fixed. With the next relea=
se, the USRP Hardware Daemon (MPM) service should shutdown immediately.</di=
v><div><br></div><div>But I&#39;m not aware of it taking a long time after =
the service shuts down. In my experience, it reboots very quickly after the=
 service shuts down.</div></div></blockquote><div><br></div><div>Good to kn=
ow that the 90 second timeout thing was fixed recently.</div><div><br></div=
><div>I just tried it again myself and when I get the 90 second timeout, sy=
stemd-shutdown complains about:</div><div><br></div><div>=C2=A0=C2=A0system=
d-shutdown[1]: Failed to set timeout to 10min: Invalid argument</div><div><=
br></div><div>... after which my system doesn&#39;t reboot at all. It&#39;s=
 been sitting here for a few hours with nothing on the console moving it fo=
rward.</div><div><br></div><div>Any tips on how I can debug this? Does your=
 system that reboots normally still have that 10min invalid argument thing?=
</div><div><br></div><div>Note I am running the released 4.8.0.0 image.</di=
v><div><br></div><div>Thanks,</div><div>Brian</div></div></div>

--000000000000db347e0634fa1f72--

--===============4603950567618792228==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4603950567618792228==--
