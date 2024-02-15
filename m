Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D5D8558AA
	for <lists+usrp-users@lfdr.de>; Thu, 15 Feb 2024 02:21:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0BF10383B03
	for <lists+usrp-users@lfdr.de>; Wed, 14 Feb 2024 20:21:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707960065; bh=Ps3U4yeNBfx03gA+EvbqfjJVddQlWY2A/AkfFiCVw4A=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=WJ7Z9pA0uWLB7qldH3LObEaqPzA8pR0JpWNrcfAp7vplbg5BREnbJZtdhHOOvsj5t
	 hcbyRmvSRIiIM/y2bFQBGPD/EdiPVIZzljBcIZK+WurMj+MeExL4n3r7Rp4IpcCyNW
	 cLeHn3kf3+6mNDxLYUZbIWxId54JOSBlFetZK718I5aMJIt85cqMsUoKB7mLMp7vGs
	 0mN2tFpOxjECTLmXDdQEpfNtvNDpwYNRT4CS06gP9ST0shyCH62FJEBSnv/Tw9kKnG
	 irY9K68OFE0ASjKv99ij7URK+W+rt9IvRWQa/i0TMxOvyMl/ZawDqgSyupuzkxSEBZ
	 c0wczO08fMmgg==
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
	by mm2.emwd.com (Postfix) with ESMTPS id C6B37383B03
	for <usrp-users@lists.ettus.com>; Wed, 14 Feb 2024 20:20:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dcuM67ke";
	dkim-atps=neutral
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-46d3b3e0671so21980137.1
        for <usrp-users@lists.ettus.com>; Wed, 14 Feb 2024 17:20:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707960030; x=1708564830; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ge8Ow1xaU7V4uEGnkPBx53zMYKd11LER88zhpo0IkjY=;
        b=dcuM67keYXdSI3jyu7fDXEEu7+sP1aYaMCd2Qjgn/yCOXoIYBUWyKxKpPL1zXkJdnI
         elHi9NYSnnB4fkJNZ2CmxiD9l+Q7WVMJD5Oct5P2zatXToc4ftMKL613HEdaAia0S1QK
         o2xwaEj3XjC6AajR1UhXKu+ahkiFIchzdxIkVxG/uIyKLZ4AqTPIEDRVAerf03JRaJ6N
         I0tgrKxs5OfxcvrRSoA+FknfvLOlsS2omUqmJK6yuMZFOMBBpCfYju57HYWXVcKFHN/K
         O6VasxBnhiVY5DWzIs6tZLoxgwQAyd2kSdOq6bT3pjMrIRGQverwiWEB7rfo1cDueVrv
         tFlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707960030; x=1708564830;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ge8Ow1xaU7V4uEGnkPBx53zMYKd11LER88zhpo0IkjY=;
        b=cY/f9KJbZTKtAQhaitv4ep4xavQd2sudBbwFWNUY91+vPeoUY2JJok1goCUEK8OCpU
         SHr9aQ5w9YeSt1u+XE7ksd60n97kRz+oAJK7WDw68A66tVffGo3YerbodOXseZ6B6WBZ
         HDbhPxWoGJ5eET9almm+GR7HAtYv6o8LuMFs8+TYe4MCzmZNODEPCseA5ZvxcBGadc/T
         qIt929TMyf25RU/bkHHBsG39b3kWUUpM3bqlRrXS945YgRAONCubwOE2mKI5yT17CPHH
         mNuaPezFoSbxqehc3MQEhhFjae0t3jHyMsg0eDoclOD8Grhy6OLy2m4aQP9vYc/oCSTh
         06Xw==
X-Gm-Message-State: AOJu0YxqIqqOlEoHSGlPzjWg0Tgyfz8o10Q2qeifIYmhjvihsI8mpEKg
	WuaQWcdCZar28QY8nzyP9uy1XIxpSCAh3/xYNJNOHBcgkUhhHKujVZSXn/slQHeV3BZ+R455+/b
	CE09W32Dj3+ADukN83tBVzNunqqXynMs0
X-Google-Smtp-Source: AGHT+IERQdsvmDQvahQbpVKOn5JWGYyqAZkzHullObdS9D7+V9fg0qS7YyuDZ7kgM6IkCWDjoXHBQIuUGWI/Hh1jB3Q=
X-Received: by 2002:a05:6102:510c:b0:46d:207e:5194 with SMTP id
 bm12-20020a056102510c00b0046d207e5194mr620239vsb.4.1707960029997; Wed, 14 Feb
 2024 17:20:29 -0800 (PST)
MIME-Version: 1.0
References: <CAOYGa71Nf-o-kKYZBq-Oap0PAfjGR=rjOy6Fsjbp0O3SyYFnmQ@mail.gmail.com>
 <eb1ba171-c78a-4564-af54-5b0b90148b69@gmail.com>
In-Reply-To: <eb1ba171-c78a-4564-af54-5b0b90148b69@gmail.com>
From: Steve Hamn <stevehamn311@gmail.com>
Date: Thu, 15 Feb 2024 01:20:19 -0800
Message-ID: <CAOYGa70DM_A_8UtU3Tuc7W+CVGsEvgPPv=k658u+5D7Xa9+cog@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: YOQXZOUFSKA4XLSL3MR4GFRSKF4XYITN
X-Message-ID-Hash: YOQXZOUFSKA4XLSL3MR4GFRSKF4XYITN
X-MailFrom: stevehamn311@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GNURadio MPM major compat number mismatch after update to UHD 4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YOQXZOUFSKA4XLSL3MR4GFRSKF4XYITN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2938597122009242448=="

--===============2938597122009242448==
Content-Type: multipart/alternative; boundary="000000000000e0f2570611616e2b"

--000000000000e0f2570611616e2b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yeah, that is what I figured. Any suggestions on what to do? I tried
uninstalling and reinstalling gnuradio as well as installing UHD4.6 on my
host PC. I'll ask the gnu-radio mailing list too.

Thanks,

Steve

On Wed, Feb 14, 2024 at 5:07=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 15/02/2024 04:03, Steve Hamn wrote:
>
> Hello,
>
> I updated my N320 to UHD 4.6, however now I am getting an error in
> GNURadio:
>
> "*RuntimeError: RuntimeError: MPM major compat number mismatch. Expected:
> 4.2 Actual: 5.3. Please update the version of MPM on your USRP device.*"
>
> Any suggestions on how to fix?
>
> Thanks,
>
> Steve
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> Your Gnu Radio install probably is linked against an older version of UHD=
,
> hence the mis-match.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e0f2570611616e2b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yeah, that is what I figured. Any suggestions on what to d=
o? I tried uninstalling and reinstalling gnuradio as well as installing UHD=
4.6 on my host PC. I&#39;ll ask the gnu-radio mailing list too.=C2=A0<div><=
br></div><div>Thanks,</div><div><br></div><div>Steve</div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 14, 2=
024 at 5:07=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@=
gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 15/02/2024 04:03, Steve Hamn wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hello,=C2=A0
        <div><br>
        </div>
        <div>I updated my N320 to UHD 4.6, however now I am getting an
          error in GNURadio:</div>
        <div><br>
        </div>
        <div>&quot;<i>RuntimeError: RuntimeError: MPM major compat number
            mismatch. Expected: 4.2 Actual: 5.3. Please update the
            version of MPM on your USRP device.</i>&quot;</div>
        <div><br>
        </div>
        <div>Any suggestions on how to fix?=C2=A0</div>
        <div><br>
        </div>
        <div>Thanks,=C2=A0</div>
        <div><br>
        </div>
        <div>Steve</div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    Your Gnu Radio install probably is linked against an older version
    of UHD, hence the mis-match.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000e0f2570611616e2b--

--===============2938597122009242448==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2938597122009242448==--
