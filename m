Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDA884651E
	for <lists+usrp-users@lfdr.de>; Fri,  2 Feb 2024 01:43:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0AC4338503D
	for <lists+usrp-users@lfdr.de>; Thu,  1 Feb 2024 19:43:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706834607; bh=c++sw1ogukqm59neDV+gAbG5WKQ+1cvvaGvJpBwvA9E=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0wP2VbCdBPmp7mBFtvYzWhEoqByNflBj+ALemdGlkQ3vbp7LNmy6cM/JQjwOkAOvV
	 bZdLgfM2lrQoWa+Q/59nz0n1hPlWgKalBn6Dk0i4BmtxOu6QvHQQLG1I6vBqiY0chB
	 R+7xFZpIelXK3PZXfO9chMrvpRyUCOXrahpv7PJwkGYTWJyhGUacWdPswxbU48Wqoy
	 Q4H6z1ZzjIGhF1N0AeUXEE/1nf/nBO+flWMVo1Fd+cMOFooO+ZkGNptB4s5weiu3i1
	 ZhfrNZIyGiIyevUAnncuzB+ctUPqp2Z0thQdH/DyCADZxAsHio1mwiuzR48LfxAX23
	 popejX9FjwJoA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mm2.emwd.com (Postfix) with ESMTPS id CEA4E384E42
	for <usrp-users@lists.ettus.com>; Thu,  1 Feb 2024 19:42:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=dolphinsystem-jp.20230601.gappssmtp.com header.i=@dolphinsystem-jp.20230601.gappssmtp.com header.b="FjlGC/J1";
	dkim-atps=neutral
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-290c6d7776eso1350605a91.2
        for <usrp-users@lists.ettus.com>; Thu, 01 Feb 2024 16:42:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dolphinsystem-jp.20230601.gappssmtp.com; s=20230601; t=1706834576; x=1707439376; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=li9qF4dqRr09Hpa3XHn2tfCpAfovAQSVXWwVVV+zr64=;
        b=FjlGC/J14fSu9ziOT4+u9VxNfazLk0DEQUigxkkrz/gBjd546EbS6/9EIWEyYsIXtR
         uzspwZyN1W2G9a4q1lp/DfDgSwNuOFDbsPFn/mFGaC/aGbL2FZ9f9wPEwcRJq0rtpEwX
         T6zttZBI2A3KGZWA2VVtip9wJwVHbn6FZNFIfejZy6EL5gBmvPEEmJzkZ3qvxtCHUBHB
         TZ8DiF2X8Ll4HZX4ZaRzpnLC+Q6hly/h/7RGQlQK/cQC2PsPExToUL33WqN3CvE7DBc4
         CSo0fTkdHnqATJzUxYXLAFzN0PSYEbntsfG0RD8OwKQI/mmY9kXvpRrSE+C8rSJXJq1g
         go7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706834576; x=1707439376;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=li9qF4dqRr09Hpa3XHn2tfCpAfovAQSVXWwVVV+zr64=;
        b=XYnCr2HEkeDjm6SpNgPYvKhWxPxf5c69YfBSd1pdSaYHqjuOlFtRvRx/3aZRWjFAXL
         TD5dkGm3NLZd4tpkSdA9++sbOL2r2JpVxVXd0gpJKhRZ0/01+EEL6X7XkU1UCNPJYY69
         QiJfiBFNAx6pCjgJqA3VYDxyTMITeVmPXUDEF7UiP3m++DBlOUdRzkMaFZhOVhlioPsC
         Iapb5bhisEd8Ssr6jfFjmlpSzS5+LcFTy/FyEG41zu641/048UAnL7ttvGaDhHyHzFBk
         FUBlriHxkxcJWU5f2Nt+CJO3Mps1+PgEnqYohzMOH9PRLGkd/2UyU0fAmhopURPKR8Z8
         SGEw==
X-Gm-Message-State: AOJu0YzHUA58QouX4d/Q24uttTuIoKCQMiAUDLUWHEwU0Ffkc8hkLvt5
	iVVukh1gTVj2w3Jiq9keQpJ0pcdg8OngJaMOW5O5Z1DYc5WiT5W5zWBC2HMkZ3j1TEimQcYTmD/
	h6eV/5NIaWjRMrzT607iVsV9oRBAyGOlQH4vP3KoLUPvQ7Chtk48=
X-Google-Smtp-Source: AGHT+IHOsFHU/lsCoxDSiPyIg6LJY8/jZDQQ0bxXqHNR4spWKv1wnmtCGRE9ljTwLBhZH9U29m6GnCejExtz108SEiY=
X-Received: by 2002:a17:90b:602:b0:295:2a3d:3d4c with SMTP id
 gb2-20020a17090b060200b002952a3d3d4cmr657939pjb.31.1706834576412; Thu, 01 Feb
 2024 16:42:56 -0800 (PST)
MIME-Version: 1.0
References: <0pxXn61blHnbsMbyqjZ6C9ITSw2lVrTPeJJewdRZX0@lists.ettus.com>
In-Reply-To: <0pxXn61blHnbsMbyqjZ6C9ITSw2lVrTPeJJewdRZX0@lists.ettus.com>
From: Mikio Fukushima <mikio@dolphinsystem.jp>
Date: Fri, 2 Feb 2024 09:42:22 +0900
Message-ID: <CABfZwcdVqmG+qDOUdTJCUNgWAr_qBGqydxKwdp7nki0rMAYJBw@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: ZLRDBLQ5KQV7M3WPI24Y62SSQSTD2DSM
X-Message-ID-Hash: ZLRDBLQ5KQV7M3WPI24Y62SSQSTD2DSM
X-MailFrom: mikio@dolphinsystem.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC Python API for timed GPIO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZLRDBLQ5KQV7M3WPI24Y62SSQSTD2DSM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1975797109880198403=="

--===============1975797109880198403==
Content-Type: multipart/alternative; boundary="0000000000009e248906105b64ae"

--0000000000009e248906105b64ae
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi
get_time_now method under RFNOC is here.
graph.get_mb_controller().get_timekeeper(0).get_time_now()

https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1mb__controller.html
https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1mb__controller_1_1timek=
eeper.html#a3bd4ea851c401baf467169b50cc1719d

I have no experience with GPIO control.

Thank you.


2024=E5=B9=B42=E6=9C=881=E6=97=A5(=E6=9C=A8) 4:08 <a.lapini@ifac.cnr.it>:

> Hi everyone,
>
> I have almost done developing a customized FPGA block for the x410 in the
> RFNOC framework and an associated PC application based on the Python RFNO=
C
> API. I have still to add a control for an external switch and I would lik=
e
> to use the card's GPIO, but I have no specific experience on this.
>
> The external switch is required to toggle among 6 states on a known
> scheduled basis, where the time periods between transitions are relativel=
y
> long (from tens to hundreds milliseconds). The amount of actuation delay =
is
> not an issue, but the toggling signal should be synchronous with the
> processing (the delay of the piloting signal should vary at most some
> milliseconds).
>
> Watching Martin Braun's presentation
> <https://www.youtube.com/watch?v=3DppD06ZETnek&t=3D1420s>, I thought that
> "timed toggles" could be a solution. Nevertheless, I cannot find the
> methods "set_command_time()" and "get_time_now()" in RFNOC API objects su=
ch
> as RfnocGraph or RadioControl. I am working with UHD 4.3.
>
> 1) Are those methods or similar one available somewhere in the Python
> RFNOC API? If not, is there a plan B?
>
> 2) Generally speaking, do you think my approach is good or you would
> suggest a better way to do it in RFNOC?
>
> Thank you in advance,
>
> Alessandro
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>


--=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
 =E7=A6=8F=E5=B3=B6 =E5=B9=B9=E9=9B=84 (Mikio Fukushima)
 =E6=A0=AA=E5=BC=8F=E4=BC=9A=E7=A4=BE=E3=83=89=E3=83=AB=E3=83=95=E3=82=A3=
=E3=83=B3=E3=82=B7=E3=82=B9=E3=83=86=E3=83=A0 (Dolphin System Co.,Ltd)

=E3=80=92170-0014 =E6=9D=B1=E4=BA=AC=E9=83=BD=E8=B1=8A=E5=B3=B6=E5=8C=BA=E6=
=B1=A0=E8=A2=8B=EF=BC=91=EF=BC=8D=EF=BC=98=EF=BC=8D=EF=BC=95
=E3=83=9F=E3=83=B3=E3=83=88=E3=83=AD=E3=83=B3=E3=83=93=E3=83=AB=EF=BC=95=EF=
=BC=A6

Mail: mikio@dolphinsystem.jp
URL : http://www.dolphinsystem.jp/
TEL/FAX : 03-6658-4949
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D

--0000000000009e248906105b64ae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi<div><font face=3D"Arial, Helvetica, sans-serif">get_tim=
e_now method under RFNOC is here.<br></font><div>graph.get_mb_controller().=
get_timekeeper(0).get_time_now()=C2=A0<br></div></div><div><br></div><div><=
a href=3D"https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1mb__controlle=
r.html">https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1mb__controller.=
html</a><br></div><div><a href=3D"https://files.ettus.com/manual/classuhd_1=
_1rfnoc_1_1mb__controller_1_1timekeeper.html#a3bd4ea851c401baf467169b50cc17=
19d">https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1mb__controller_1_1=
timekeeper.html#a3bd4ea851c401baf467169b50cc1719d</a><br></div><div><br cla=
ss=3D"gmail-Apple-interchange-newline">I have no experience with GPIO contr=
ol.<br></div><div><br></div><div>Thank you.</div><div><br></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">2024=E5=B9=
=B42=E6=9C=881=E6=97=A5(=E6=9C=A8) 4:08 &lt;<a href=3D"mailto:a.lapini@ifac=
.cnr.it">a.lapini@ifac.cnr.it</a>&gt;:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><p>Hi everyone,</p><p>I have almost done developing =
a customized FPGA block for the x410 in the RFNOC framework and an associat=
ed PC application based on the Python RFNOC API. I have still to add a cont=
rol for an external switch and I would like to use the card&#39;s GPIO, but=
 I have no specific experience on this.</p><p>The external switch is requir=
ed to toggle among 6 states on a known scheduled basis, where the time peri=
ods between transitions are relatively long (from tens to hundreds millisec=
onds). The amount of actuation delay is not an issue, but the toggling sign=
al should be synchronous with the processing (the delay of the piloting sig=
nal should vary at most some milliseconds).</p><p>Watching <a href=3D"https=
://www.youtube.com/watch?v=3DppD06ZETnek&amp;t=3D1420s" target=3D"_blank">M=
artin Braun&#39;s presentation</a>, I thought that &quot;timed toggles&quot=
; could be a solution. Nevertheless, I cannot find the methods &quot;set_co=
mmand_time()&quot; and &quot;get_time_now()&quot; in RFNOC API objects such=
 as RfnocGraph or RadioControl. I am working with UHD 4.3.<br><br></p><p>1)=
 Are those methods or similar one available somewhere in the Python RFNOC A=
PI? If not, is there a plan B?<br><br></p><p>2) Generally speaking, do you =
think my approach is good or you would suggest a better way to do it in RFN=
OC?</p><p>Thank you in advance,</p><p>Alessandro<br><br></p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div><span style=3D"color:=
rgb(34,34,34)">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span><br></div><div>=C2=A0=E7=
=A6=8F=E5=B3=B6 =E5=B9=B9=E9=9B=84 (Mikio Fukushima)</div><div>=C2=A0=E6=A0=
=AA=E5=BC=8F=E4=BC=9A=E7=A4=BE=E3=83=89=E3=83=AB=E3=83=95=E3=82=A3=E3=83=B3=
=E3=82=B7=E3=82=B9=E3=83=86=E3=83=A0 (Dolphin System Co.,Ltd)</div><div><br=
></div><div>=E3=80=92170-0014 =E6=9D=B1=E4=BA=AC=E9=83=BD=E8=B1=8A=E5=B3=B6=
=E5=8C=BA=E6=B1=A0=E8=A2=8B=EF=BC=91=EF=BC=8D=EF=BC=98=EF=BC=8D=EF=BC=95</d=
iv><div>=E3=80=80=E3=80=80=E3=80=80=E3=80=80=E3=80=80=E3=80=80=E3=83=9F=E3=
=83=B3=E3=83=88=E3=83=AD=E3=83=B3=E3=83=93=E3=83=AB=EF=BC=95=EF=BC=A6</div>=
<div><br></div><div>Mail: <a href=3D"mailto:mikio@dolphinsystem.jp" target=
=3D"_blank">mikio@dolphinsystem.jp</a></div><div>URL : <a href=3D"http://ww=
w.dolphinsystem.jp/" target=3D"_blank">http://www.dolphinsystem.jp/</a></di=
v><div>TEL/FAX : 03-6658-4949</div><div><span style=3D"color:rgb(34,34,34)"=
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span><br></div></div></div></div></div>

--0000000000009e248906105b64ae--

--===============1975797109880198403==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1975797109880198403==--
