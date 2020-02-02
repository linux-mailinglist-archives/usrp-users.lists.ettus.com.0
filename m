Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9F214FF32
	for <lists+usrp-users@lfdr.de>; Sun,  2 Feb 2020 22:17:41 +0100 (CET)
Received: from [::1] (port=53730 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iyMca-0004sI-Ib; Sun, 02 Feb 2020 16:17:36 -0500
Received: from mail-il1-f180.google.com ([209.85.166.180]:33104)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bistromath@gmail.com>)
 id 1iyMcW-0004nd-Hz
 for usrp-users@lists.ettus.com; Sun, 02 Feb 2020 16:17:32 -0500
Received: by mail-il1-f180.google.com with SMTP id s18so10931913iln.0
 for <usrp-users@lists.ettus.com>; Sun, 02 Feb 2020 13:17:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=USemxCPhbcpMm510id/A6Mut3bXGr+eJlLKRwMnE+XU=;
 b=e2inP178bj7X5BLd/5BsU1qambwi9EjKc/mz2kJ+4pyGvK3AvoKccu1qvkmKhe8Mkq
 dn1bE7/omnlEaS5MwAcVFZhDpH8jAa+4HrDEM3zw3l9mXhdvkLoS6fGBoBdA+4sxDmKP
 3SJs2IKUgU6MWC3GB6jeUTuIRZYo86MfRRinQ8LBo41FmwiptBw5g+IX9v3jkTe6nQ6t
 k5qHk/tg9pO7eIV3q37QJIrw99AEwaZDa/PIyXD8GI4vBMeMgYKGjSIazmTo6Xf9Hz4z
 mCtF9oO/ebbaIXnMwU0C7cAXeXppRDyVuD+sPTMc9HBmUki4dr6eNY/KKZFR60XECWzF
 hYig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=USemxCPhbcpMm510id/A6Mut3bXGr+eJlLKRwMnE+XU=;
 b=GUbaoPp6KxV1LTOa+qur7d3rzjJCk1OErv0m2Up+u3oChzNDO5ZfDorXlWHNVEIi1R
 eFTKalHF2Hew7z336XOoJ4gPGxkmqkKSVYDNamFGC9sodRYlYBSY9rPgMz+W2jmPbJKf
 9pm0n2Mr5rqD2qEXkc47lk2uxM/Dbe7PkN3hT3v/aT5hZPTbsaFXqmrndsX37T8/lzpY
 z5M2p6Unnmhl8X13t3DiliVr1FrnEoJg1n6z1sD5x5V6oIQWLcRa0wV1c1183PjWKSmj
 4G7lxO5zqpJ0IgCxtR1bNpHETIHAiUMiI4+Le/mIXxEuC1A4jBUilvstdu269M50dOHa
 AtKw==
X-Gm-Message-State: APjAAAWFqYBFISb1xE6P0fRgCkY/e0/boNf13qjththplelHR9bUDf9V
 cbv3YwKnWRhZqPhAVfTNKUMia2+Z0dEe8SfQ1OQ=
X-Google-Smtp-Source: APXvYqzKz2+1CLuitcupraEOVdrev5O59sjdi75VErPc+s4o1es/2WufyP8hjRXYvtAmY9+Q6Zc6xv8FOy4C2gPGcBY=
X-Received: by 2002:a05:6e02:c71:: with SMTP id
 f17mr18572010ilj.272.1580678211855; 
 Sun, 02 Feb 2020 13:16:51 -0800 (PST)
MIME-Version: 1.0
References: <CANgrtSVJ2_DKHYU7SU0P2dZaRh2aH9-Ggpq5Uip0Mp9dyYWbig@mail.gmail.com>
In-Reply-To: <CANgrtSVJ2_DKHYU7SU0P2dZaRh2aH9-Ggpq5Uip0Mp9dyYWbig@mail.gmail.com>
Date: Sun, 2 Feb 2020 13:15:27 -0800
Message-ID: <CA+JMMq9thzdUJzLjtjsd2n96v9bE6nwZqxgoFDhu7zRYe1S4AA@mail.gmail.com>
To: "YENDstudio ." <yend19@gmail.com>
Subject: Re: [USRP-users] USRP filter delay
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============0448595637516432684=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============0448595637516432684==
Content-Type: multipart/alternative; boundary="0000000000005269f3059d9e532f"

--0000000000005269f3059d9e532f
Content-Type: text/plain; charset="UTF-8"

You will also have latency introduced by the ADCs themselves, as well as
baseband analog filters if applicable. If you need very accurate
calibration of arrival time, it is best to generate an accurately timed
calibration signal using a GPS reference. You could continue to use your
TX/RX loopback test, adding an oscilloscope to measure the time between the
PPS rising edge and the RF output to determine TX latency.

On Sun, Feb 2, 2020, 1:41 AM YENDstudio . via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> I want to know the actual timestamp of TX and RX signals at the RF
> antenna. For this I have add/subtract the group delay introduced by digital
> filters in the TX and the RX paths from the UHD timestamp. Through loopback
> test, I am able to calculate the aggregate delay, but cannot know the TX
> delay and the RX delay separately. The UHD driver has APIs to get the list
> of filters used in the signal paths. But my calculated values do not match
> with the loopback delay I measured. Could someone help me with this? I am
> using USRPB200 set with 30.72 MHz master clock rate and 1.92 MHz sampling
> rate.
>
> Regards!
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000005269f3059d9e532f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>You will also have latency introduced by the ADCs th=
emselves, as well as baseband analog filters if applicable. If you need ver=
y accurate calibration of arrival time, it is best to generate an accuratel=
y timed calibration signal using a GPS reference. You could continue to use=
 your TX/RX loopback test, adding an oscilloscope to measure the time betwe=
en the PPS rising edge and the RF output to determine TX latency.=C2=A0<br>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun=
, Feb 2, 2020, 1:41 AM YENDstudio . via USRP-users &lt;<a href=3D"mailto:us=
rp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex"><div dir=3D"auto">Hi,<div dir=3D"auto"><br=
></div><div dir=3D"auto">I want to know the actual timestamp of TX and RX s=
ignals at the RF antenna. For this I have add/subtract the group delay intr=
oduced by digital filters in the TX and the RX paths from the UHD timestamp=
. Through loopback test, I am able to calculate the aggregate delay, but ca=
nnot know the TX delay and the RX delay separately. The UHD driver has APIs=
 to get the list of filters used in the signal paths. But my calculated val=
ues do not match with the loopback delay I measured. Could someone help me =
with this? I am using USRPB200 set with 30.72 MHz master clock rate and 1.9=
2 MHz sampling rate.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Reg=
ards!</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div></div>

--0000000000005269f3059d9e532f--


--===============0448595637516432684==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0448595637516432684==--

