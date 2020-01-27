Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 45CAA14A4C8
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2020 14:19:56 +0100 (CET)
Received: from [::1] (port=57502 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iw4Iy-0000Wf-1X; Mon, 27 Jan 2020 08:19:52 -0500
Received: from mail-io1-f50.google.com ([209.85.166.50]:39794)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sammywelschen@gmail.com>)
 id 1iw4Iu-0000JT-Ro
 for usrp-users@lists.ettus.com; Mon, 27 Jan 2020 08:19:48 -0500
Received: by mail-io1-f50.google.com with SMTP id c16so9909859ioh.6
 for <usrp-users@lists.ettus.com>; Mon, 27 Jan 2020 05:19:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=czItxqsonVyHPCCMq5rPlovX/ITRk9hSRJ4hCBroDao=;
 b=rCGyvFly2RqSmrUCFmzE9VTaYFkDfkn/RRKa7mu37pKd/rwHaaSOea6/n0W+BSlL6d
 /SSIvckke6qv4YPweIpQCGe+xDthEG1D1KJWYwK/dPGVG+r+VjQXphHqIRv7c6/lULS7
 Tpv7941tUInjlEwMdhf5uA/GrJBppj2QYrliZSyJF3Wy6OqbgOF1pt29tXOoSCu0ZEkc
 /r8TfhHN+uf8q0FzAYlAmoYoqeBgjSh4j2S2iv8s8B7L9CbHgFwMspEkW+XyVeFh41y2
 pIx3ObXoAGT1D4HUtqvBeLQiS/TsHfhZf9H/1i6XCPv59ujvbSXWXpcvz7KNUyjNz5hX
 B9GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=czItxqsonVyHPCCMq5rPlovX/ITRk9hSRJ4hCBroDao=;
 b=iqYV1uS2929+eNYqTRnYf7E4CZDSTkmOMgCEomIK6QnoFCGgSRgb1VfX+4ZtnzQeLN
 8bvzMRB+O2i7fOLdKmGJCSNu5JLhItSab/IAA4PCLWasOcjvtZSpOGTjJR3HfCHmtNyP
 sgup9qJU/0MrciVJw0xbHn0dluiXbeuvlKz/XHBxtZhQsYC03bmaeITUyn2D2DelsCeY
 L97JHNyO1glkh6HGzdZPIapZiXPOR0znc6fIkB7YB7PiDoTK9KqU5xwUJGWpJDi28TJB
 DOLTM4Ss90ReqdC24sVAH7tuDVVZj6SSsob0+5NzpMqV0iXurs9PjuvL175HBWC8/iIT
 SCnw==
X-Gm-Message-State: APjAAAV2tKJjJKwUK4LFS4Mr1roNXGNyrOv0/po7hHlTXeF6Zgf6sI2c
 os92fJMcJm6+ojRelMKivu4G5YSrV6WE5DI9c8F1pQ==
X-Google-Smtp-Source: APXvYqy7/7XIRM7qrNSlvWlHFmCx+8+Z647yErmBbs/kvBRc5J41/nSuqQvHskxtTobXbDnX1tlWmpCeqz/jpL9vzHw=
X-Received: by 2002:a6b:8bc6:: with SMTP id
 n189mr10863769iod.235.1580131147936; 
 Mon, 27 Jan 2020 05:19:07 -0800 (PST)
MIME-Version: 1.0
References: <CAE6G02_pDDd2H5yX8Sf2jqBC7bo1hnqBMgz5-i09NBCBYSoZgQ@mail.gmail.com>
 <5E2DD2CA.60502@gmail.com>
In-Reply-To: <5E2DD2CA.60502@gmail.com>
Date: Mon, 27 Jan 2020 14:18:51 +0100
Message-ID: <CAE6G02_gbpWZENFyB0EuGdDiGfWKBOitqE0VamkNRuqPTd_MgA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] DOA with N310 or X310+TwinRX
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
From: Sammy Welschen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sammy Welschen <sammywelschen@gmail.com>
Content-Type: multipart/mixed; boundary="===============3972850432511298870=="
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

--===============3972850432511298870==
Content-Type: multipart/alternative; boundary="000000000000c57768059d1ef3e5"

--000000000000c57768059d1ef3e5
Content-Type: text/plain; charset="UTF-8"

Thank you Marcus! So the N310 would be the way to go? I was unsure since
the TwinRX is recommended for phase coherent applications.

Marcus D. Leech via USRP-users <usrp-users@lists.ettus.com> schrieb am So.,
26. Jan. 2020, 18:57:

> On 01/25/2020 11:43 AM, Sammy Welschen via USRP-users wrote:
> > Dear all,
> >
> > I am planning a system with 5-10 channels that is capable of DOA
> > estimation.
> >
> > Concerning the calibration of the resulting array, would there be a
> > difference between a system made up of N310 and one made up of X310
> > with TwinRX boards? Would there be other important differences that
> > influence estimation performance?
> >
> > As I understand it, the TwinRX allows LO sharing between the boards in
> > a single X310, but this would not help me if I have two or three X310.
> > On the other hand, the N310s could be connected to a shared LO.
> >
> > Are the following thoughts correct?
> >
> > Suppose I turn on my system. Then I have to calibrate phase offsets
> > between channels in any case. Now I change the center frequency. If I
> > have N310s without shared LO, I have to recalibrate. Same for the
> > X310s, since LOs are shared only internally. If I have N310s with a
> > shared LO, I do not have to recalibrate.
> >
> > If I restart the system, I have to recalibrate in any case.
> >
> > The devices would by synchronized with PPS in any case and with the 10
> > MHz reference if no external LO is used.
> >
> > What is the better choice for DOA estimation (N310 or X310 with TwinRX
> > or something different)?
> >
> > Thank you very much
> >
> > Sammy
> >
> >
> Sammy:
>
> Your characterization of the two scenarios is correct.
>
> There may be some folks on this list who have implemented DOA schemes,
> but likely few-to-none who have done it on both X310 and N310
>    and can comment on the differences they encountered.
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000c57768059d1ef3e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Thank you Marcus! So the N310 would be the way to go=
? I was unsure since the TwinRX is recommended for phase coherent applicati=
ons.</div><div dir=3D"auto"><br><div class=3D"gmail_quote" dir=3D"auto"><di=
v dir=3D"ltr" class=3D"gmail_attr">Marcus D. Leech via USRP-users &lt;<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;=
 schrieb am So., 26. Jan. 2020, 18:57:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex">On 01/25/2020 11:43 AM, Sammy Welschen via USRP-users wrote:<br>
&gt; Dear all,<br>
&gt;<br>
&gt; I am planning a system with 5-10 channels that is capable of DOA <br>
&gt; estimation.<br>
&gt;<br>
&gt; Concerning the calibration of the resulting array, would there be a <b=
r>
&gt; difference between a system made up of N310 and one made up of X310 <b=
r>
&gt; with TwinRX boards? Would there be other important differences that <b=
r>
&gt; influence estimation performance?<br>
&gt;<br>
&gt; As I understand it, the TwinRX allows LO sharing between the boards in=
 <br>
&gt; a single X310, but this would not help me if I have two or three X310.=
 <br>
&gt; On the other hand, the N310s could be connected to a shared LO.<br>
&gt;<br>
&gt; Are the following thoughts correct?<br>
&gt;<br>
&gt; Suppose I turn on my system. Then I have to calibrate phase offsets <b=
r>
&gt; between channels in any case. Now I change the center frequency. If I =
<br>
&gt; have N310s without shared LO, I have to recalibrate. Same for the <br>
&gt; X310s, since LOs are shared only internally. If I have N310s with a <b=
r>
&gt; shared LO, I do not have to recalibrate.<br>
&gt;<br>
&gt; If I restart the system, I have to recalibrate in any case.<br>
&gt;<br>
&gt; The devices would by synchronized with PPS in any case and with the 10=
 <br>
&gt; MHz reference if no external LO is used.<br>
&gt;<br>
&gt; What is the better choice for DOA estimation (N310 or X310 with TwinRX=
 <br>
&gt; or something different)?<br>
&gt;<br>
&gt; Thank you very much<br>
&gt;<br>
&gt; Sammy<br>
&gt;<br>
&gt;<br>
Sammy:<br>
<br>
Your characterization of the two scenarios is correct.<br>
<br>
There may be some folks on this list who have implemented DOA schemes, <br>
but likely few-to-none who have done it on both X310 and N310<br>
=C2=A0 =C2=A0and can comment on the differences they encountered.<br>
<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div></div>

--000000000000c57768059d1ef3e5--


--===============3972850432511298870==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3972850432511298870==--

