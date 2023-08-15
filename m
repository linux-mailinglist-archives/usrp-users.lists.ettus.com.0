Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D7177D0ED
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 19:24:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DF9973849EC
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 13:24:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692120265; bh=NflBSoNrJqrFyGM2IKBRVLlBPaDRtXGtmBmdQYhfR84=;
	h=In-Reply-To:References:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=giANtBAaPQkHnwYBCpoKcIiKkdgqCcPiARrEPu+P0QHcaomWnEcWVegTpk7i5+/oq
	 qAOuMZGH+mN/Pf34EbHsaB+TjkRooANhHd0IwllsaY8bCXOb2HC4wNrYcy/HlygqZi
	 QSD9FZeARdz60TOigHy9MBH7/QuijgDp2ZxT+uuf6FBR3u7PB4NUZ0QRtay03crwYm
	 r4wb4B2zXxIQvVvLlbrKFzd89YlSP24DagZqujo6K5lV6kU6tR8cDDNAPWp+besFSJ
	 d/QlgNBGol5LgmFx9Vs0kb4uHQU7mvQZbgoFKphw8Q+BmqeIrYwrQFwMh2HAxe07+n
	 xd46nFcHrf6ug==
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	by mm2.emwd.com (Postfix) with ESMTPS id B932F380BB2
	for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 13:23:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jkzXMSWc";
	dkim-atps=neutral
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-c5ffb6cda23so5686377276.0
        for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 10:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692120233; x=1692725033;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hTeWiwZfy4KeZTbJfl6M2qtXdJ1TUVBt/CxcX8oa/cM=;
        b=jkzXMSWc20XBYiJaIQj9ud50JoVLxFBWRd/n35jCI2+44qxP0oE24Ws6Mzw3Fc3hls
         nuV8ptyif6i5qGrguduA08bfB6OuNmmGxExPQwSxvPGhC/uiSZ9zJXr0X3EfwPINp+SH
         WAkMbJv8RDVGRorblSEis8LyxyKxXo4JXfUNbU3Oqkafw7PhBTc3J/67fkMn4zqkqQna
         x2I93i+Sjp9IQLm+AnvC8SYTTvGLvYyr/cbQTau0qCvvSItkEgC2oGrkbvwV66/bycwg
         m/cFRMSU6e2WhKzf3kjfBXzc0rr56RqOGAZtD73+8K/YjkPxy4QQcWWB6btO50McI06b
         U+TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692120233; x=1692725033;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hTeWiwZfy4KeZTbJfl6M2qtXdJ1TUVBt/CxcX8oa/cM=;
        b=PomxG60gvQqXnKAqE+6kBfCAN+lWEaAFuYgOv/s1Zv9r6rHg7T3qrxcWumfta6dl3m
         8KqTGeEpq2NS3gR8BYWa/jhPBULvtXgON9wGrd2MwlJx/m96EYFes6O30TW2J5vM6QPT
         QorMVqgEFkffgtx9RzHebA9QHmMsnZPMQiH+EVntBjsvtqFs+dRgJMkf1RYrx3dt6g4T
         6dUlg7zO9BVadzfWntIuqHaMINAI2xyOag6VK5ZQEmSBjBxVcPnsYM4aLI/gVB9BE8/H
         jVHqZI5eNwrrMaDZtxtPpD0N7dK2oqAZdQZj3yqs4CkflGtaOl1x/K8Y3mHWsh0wQ/iI
         cLqA==
X-Gm-Message-State: AOJu0Yy3zkPsThVgU4pmgxzUPQ/6UUwS32V7RfO7EV78s39a0bJLbc0e
	Ux3eO5mPzQ4tpctQYXyfgm+1Rql29x11qoh00WKqnq1Q
X-Google-Smtp-Source: AGHT+IFWMLmItfwbL1di1K3B5m490D+EmRSbsImDjFWtt1EPEtsTJomtItaKBrpJbXWclXjj08sClPbzT7TxNRnqwJk=
X-Received: by 2002:a25:9244:0:b0:d5b:1dd9:8e3f with SMTP id
 e4-20020a259244000000b00d5b1dd98e3fmr13643677ybo.41.1692120233093; Tue, 15
 Aug 2023 10:23:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7000:6cd7:b0:4fb:c215:f4dc with HTTP; Tue, 15 Aug 2023
 10:23:52 -0700 (PDT)
In-Reply-To: <3291f4c6-0b70-71d8-1986-fc0822d33bc5@gmail.com>
References: <CADDf8danBBvZkGBxyWGu+8Gk=OVugkVc5=erFR3b4ZJ4regZwA@mail.gmail.com>
 <3291f4c6-0b70-71d8-1986-fc0822d33bc5@gmail.com>
From: "Ali G. Dezfuli" <ali69550@gmail.com>
Date: Tue, 15 Aug 2023 20:53:52 +0330
Message-ID: <CADDf8dawZd_mcd0f5=8PUG6QLd+RDQeVthavE0Ltmf_bu0GDDg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: GNIDVIATUOSHPMB7QK25DAL7LBDLFOW5
X-Message-ID-Hash: GNIDVIATUOSHPMB7QK25DAL7LBDLFOW5
X-MailFrom: ali69550@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: phase maintenance in a USRP loop
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GNIDVIATUOSHPMB7QK25DAL7LBDLFOW5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1103891678908609878=="

--===============1103891678908609878==
Content-Type: multipart/alternative; boundary="000000000000692ee40602f9719a"

--000000000000692ee40602f9719a
Content-Type: text/plain; charset="UTF-8"

Thanks Marcus,
They work continuously up to not having any dample drift caused by sampling
clock offset

On Tuesday, August 15, 2023, Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 15/08/2023 05:43, Ali G. Dezfuli wrote:
>
>> Hi all,
>>
>> I have two transceivers A and B each one is connected by cables to a USRP
>> B200mini (TX/RX for send and RX2 for receive)
>>
>> Using GNU Radio, for each iteration, transceiver A starts to send a burst
>> of RC-filtered, BPSK-modulated PN sequence.
>> Side B waits for the burst and as soon as it gets that (by correlation),
>> detects the
>> phase ramp (because of the carrier frequency offset (CFO)) on the PN
>> symbols
>> and makes a new burst with the same phase ramp, and sends its burst back
>> to side A.
>> Then I observe the phase of the received symbols at A.
>>
>> As far as there is no sample loss/insertion, I suppose the phase
>> continuity is held and
>> should receive a constant phase on the received symbols at A whose value
>> depends
>> on the delay between A and B which is fixed.
>>
>> I observe these issues:
>> 1- in some iterations, the received phase at A is not fixed.
>> 2- in some iterations, the received phase at A is fixed but does not
>> equal other iterations.
>>
>> Would be grateful if anyone could help me with this.
>> Thanks!
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> You haven't noted whether the two USRPs are syncrhonized or not.
>
> Two radios that are not synchronized to a common clock will NOT have
> mutual phase-coherence over any
>   non-trivial interval.
>
> Are you running RX continuously, or starting/stopping streams?
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000692ee40602f9719a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Marcus,<div>They work continuously up to not having any dample drift=
 caused by sampling clock offset<br><br>On Tuesday, August 15, 2023, Marcus=
 D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmai=
l.com</a>&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On 15/08/2023 05:43,=
 Ali G. Dezfuli wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi all,<br>
<br>
I have two transceivers A and B each one is connected by cables to a USRP B=
200mini (TX/RX for send and RX2 for receive)<br>
<br>
Using GNU Radio, for each iteration, transceiver A starts to send a burst o=
f RC-filtered, BPSK-modulated PN sequence.<br>
Side B waits for the burst and as soon as it gets that (by correlation), de=
tects the<br>
phase ramp (because of the carrier frequency offset (CFO)) on the PN symbol=
s<br>
and makes a new burst with the same phase ramp, and sends its burst back to=
 side A.<br>
Then I observe the phase of the received symbols at A.<br>
<br>
As far as there is no sample loss/insertion, I suppose the phase continuity=
 is held and<br>
should receive a constant phase on the received symbols at A whose value de=
pends<br>
on the delay between A and B which is fixed.<br>
<br>
I observe these issues:<br>
1- in some iterations, the received phase at A is not fixed.<br>
2- in some iterations, the received phase at A is fixed but does not equal =
other iterations.<br>
<br>
Would be grateful if anyone could help me with this.<br>
Thanks!<br>
<br>
______________________________<wbr>_________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.c<wbr>om</a><br>
</blockquote>
You haven&#39;t noted whether the two USRPs are syncrhonized or not.<br>
<br>
Two radios that are not synchronized to a common clock will NOT have mutual=
 phase-coherence over any<br>
=C2=A0 non-trivial interval.<br>
<br>
Are you running RX continuously, or starting/stopping streams?<br>
<br>
<br>
<br>
______________________________<wbr>_________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.c<wbr>om</a><br>
</blockquote></div>

--000000000000692ee40602f9719a--

--===============1103891678908609878==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1103891678908609878==--
