Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C2BA39D5A
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2025 14:26:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C73EE3857A3
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2025 08:26:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739885201; bh=criQPtTV1vNXI8kEdJ0u/6ztUFXKBFxAgkg11KsizXM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=P8k87Pt2gKRovuZFYKoDKjIfvrHVu3L3m8yaEM2LQTtlXiestk+QO0C4f6xyZPgHX
	 JT9Qe+ZHG/DgAdyvTZw1+jjYPJyziBBLQU6XIEHfji9EA4HQq7y3hG6Tm90qwYnaXV
	 2mqjLVzIDlfzTS0MVBQgYXwAo2YAnljj7ekzOpsohkPuUH3ZWJ6IoOVt0LR5fxbkw9
	 emExV8ldtnhL4WU5IZzCsm+SHpgKGjka7j9BqJjlfrwyx1oyWw4c9Z3sO0TTiTOaoC
	 cleSGciMqGZqvKV3halrx5MaIUv0rF4jLOjwHvCDqNHP03mwHUvkdYYnIZX6M48u4s
	 E3ymizUTqvcVg==
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 4F455383F4F
	for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 08:26:37 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="2fSVwxWD";
	dkim-atps=neutral
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5dec817f453so9420416a12.2
        for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 05:26:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1739885196; x=1740489996; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kJAMORe+lYbdpzSVprlBh3HvRfE0HBM6O+50LmND0Pk=;
        b=2fSVwxWDK5/CmcALVkVzZgQgufOZDhAxjufCkPcuGlr9ss5YtQ6EnPFzv5k4k63wBV
         6D7zuj3ZrTRvjIkcjbAzkPoP8T0U413pZhPJJmgBjIOhvYZUpt+3r6mtvecc6ckppadG
         eszH8FGoQwIt4V04OgopJ7TcYNVE06Ul2o+sS/GwTPxv5x9UToV8E2J5TlTMmgbqs09Y
         xSSv2YS/paRa2uwY3xSiAuMUrNAENjm1Z+P5CJwlpQm9XBsPmoXrVwfaAWXNRARFcPI9
         BV57u8quGyyCthutJcF47SDTSWHVCpLsvyi90j9iFNFFJBTbnsY1LfncxE3Amnvp8tLy
         V6yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739885196; x=1740489996;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kJAMORe+lYbdpzSVprlBh3HvRfE0HBM6O+50LmND0Pk=;
        b=S600E3XAUC9N2JLQZcFSC0w+IDhzxdWdzMboCr8f0UNtYU1ptb6Bmdnbmy8+h+Ozfd
         OtEAEz4bwFwGXoGS0Qco3C1PskUO0o5xVN3oy64aK0ypPaYMt55TkjwEqIFv0MbWORZh
         5vrOFjCmKpARyI5s1H+fFu/QSLFFVFthjU90WBC6m8vVRceOajYVyo71+wFx7ir18lU4
         oifkX6/baSzUTnRQZthd+l2E2mZvr6l7ixPFxVphOtb5gYKm0HZTW+7fjA1MkyMMRAFa
         DYMtL1fgl+gbKNBGn6n/hjb4sK4HOWX88+Nici6Z2O3J4g0VIF4k0TP08ykawSzjESWV
         Uzyg==
X-Gm-Message-State: AOJu0YzAM396SgxkwwHLueG6KouN2VyatiWn+cMMfKar7rWTA6xGCnjd
	NiXHYZaDZQJ6z18Yk+0G8ogokNrqBnKNDakeO8qPmuK5d0IhgDi5CENOqC7uZOrhWrwlOjgN/AY
	RSutyg3osagXqMunMpiLE7tiehtiv2B0G2BvFocR8IGmPbALYwCl+hg==
X-Gm-Gg: ASbGncuD4g+BgV0pDQS19TBDNSZOpSPNjjBF0e3L8Pp291a14TuTyboBjNxQFRN7fQj
	p/7dyG9/nq0PNkWoh9oFzryGwSyDli0MLDV6CueeGEijKQbx8/wz0aAz3LmdRMS6F5y6rfh64Rl
	Cn0CU9o8dg6dIhWOyeetIk1r53fwT9
X-Google-Smtp-Source: AGHT+IGeMHK2itn0o+Dx17RGrHnrL6MTfLo1SVoQ2L9emWz40ZDfEFbE328O2vwoh+NK6Sos6xRgMLpRY9qxXev3iyE=
X-Received: by 2002:a05:6402:5107:b0:5dc:a44d:36a9 with SMTP id
 4fb4d7f45d1cf-5e0361375a1mr13051314a12.14.1739885196189; Tue, 18 Feb 2025
 05:26:36 -0800 (PST)
MIME-Version: 1.0
References: <929c1e7a05aa4992bfc8a070e6b2603a@vastech.co.za>
In-Reply-To: <929c1e7a05aa4992bfc8a070e6b2603a@vastech.co.za>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 18 Feb 2025 14:26:25 +0100
X-Gm-Features: AWEUYZlgNMFt2Y8kHgU3JvgQoOefn-Hvril3q1Wtnrg5fIaro_zR5H5IoelDfkk
Message-ID: <CAFOi1A7ZRfpGFBBi-bSbPKj32tVWJZRPL3rP1sYHu_K=qCAyoA@mail.gmail.com>
To: Kevin Williams <kevin.williams@vastech.co.za>
Message-ID-Hash: NPATLJCXDG7RID6ZS6437VORFC65CVR7
X-Message-ID-Hash: NPATLJCXDG7RID6ZS6437VORFC65CVR7
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: block control methods in the python api
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NPATLJCXDG7RID6ZS6437VORFC65CVR7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4966473749654960475=="

--===============4966473749654960475==
Content-Type: multipart/alternative; boundary="00000000000011baa9062e6a9757"

--00000000000011baa9062e6a9757
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Kevin,

you can follow the rfnoc-gain example:
https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-gain/l=
ib/gain_block_control_python.hpp

--M

On Mon, Feb 17, 2025 at 10:02=E2=80=AFAM Kevin Williams <
kevin.williams@vastech.co.za> wrote:

> Hi Everyone,
>
> I have a few "get()" and "set()" methods in my custom RFNoC block driver.
>
> I'm finding the documentation on using pybind a bit sketchy, and struggli=
ng
> to get these methods recognized in the python object representing my bloc=
k.
>
> Is there perhaps an example I can follow somewhere?
>
> Many thanks, Kevin
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000011baa9062e6a9757
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Kevin,</div><div><br></div><div>you can follow the=
 rfnoc-gain example: <a href=3D"https://github.com/EttusResearch/uhd/blob/m=
aster/host/examples/rfnoc-gain/lib/gain_block_control_python.hpp">https://g=
ithub.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-gain/lib/gain_b=
lock_control_python.hpp</a></div><div><br></div><div>--M</div></div><br><di=
v class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gma=
il_attr">On Mon, Feb 17, 2025 at 10:02=E2=80=AFAM Kevin Williams &lt;<a hre=
f=3D"mailto:kevin.williams@vastech.co.za">kevin.williams@vastech.co.za</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Ev=
eryone,<br>
<br>
I have a few &quot;get()&quot; and &quot;set()&quot; methods in my custom R=
FNoC block driver.<br>
<br>
I&#39;m finding the documentation on using pybind a bit sketchy, and strugg=
ling<br>
to get these methods recognized in the python object representing my block.=
<br>
<br>
Is there perhaps an example I can follow somewhere?<br>
<br>
Many thanks, Kevin<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000011baa9062e6a9757--

--===============4966473749654960475==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4966473749654960475==--
