Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FA737168C
	for <lists+usrp-users@lfdr.de>; Mon,  3 May 2021 16:25:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0C5C2383FFF
	for <lists+usrp-users@lfdr.de>; Mon,  3 May 2021 10:25:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="cdqFqwuT";
	dkim-atps=neutral
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id EBA70383D19
	for <usrp-users@lists.ettus.com>; Mon,  3 May 2021 10:21:25 -0400 (EDT)
Received: by mail-ed1-f46.google.com with SMTP id u13so3784368edd.3
        for <usrp-users@lists.ettus.com>; Mon, 03 May 2021 07:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JYiBqZMpZ64lB0Had9ghhDSDioJmFb6XafHAAnK030c=;
        b=cdqFqwuT5IPJv6ZoDDZxLLepEfAQL2TVH9L7155pji1qbs4f4+MIDo1D7d0liFSdwJ
         oCysE2EB9k7GA0ADuDwHuHXOXBEvauw6xKwGvNMc73DuRgFI34HBwxMA9Wgj8OzDMuSe
         l+Vmljq2njnKui0JCYzOQF6V/THNqZP8qwPGL/GLJ4iKaquqFGYQ/kdbdAk7DL/1BwLK
         faJfE1eopZe5NppH52dbZm634Y6bbFvrwOdJtDpqCcVqGIrWAqa4ds80ft3aqUaCe9qg
         3096UL+IrYDtLMvHtJPwB75AguX/5u0A5FDdGOGnhTenEmSg6zcw2e/gP2s3KWXY2xSg
         0/GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JYiBqZMpZ64lB0Had9ghhDSDioJmFb6XafHAAnK030c=;
        b=RYSnZR0uRNo0e2lR2Tnay04fqX5KR2onimzxvhmAGCYrPjtt7yTaPnVJklv8HZn/Ln
         O1YJJtq2uuu8KXYLX3U8oyEg8QzuLjjff08iKgpKfvafrkiEbJ9s/UigszB+g54vGfyR
         ZjzIGGIKsbs7gTq83YhZazb2yBvN49TpbF/O7uGirR8V+HkE2ehi68BB5WpUFgS0JT7V
         fciUzN+rGI4Wwz3kz8SeWEa5jI4CEPkg8uCrMQZr5dr8TfJlG/xZ9OpSCdh8Bbc125xT
         9PlObEkZndN8fFI8KIBT5G5OkEsQGHlLnQX0DKmfz0qWZ4UmyyCcMy//ozrEYWT1SGTk
         Lp4g==
X-Gm-Message-State: AOAM530CX3PRbP3e3gCmjzuR4HJpb1EwoMw3LWVHQY1GG/UgQHtdZcHJ
	eXkxxAu880QtJXW8yi5b0ch9bLuVihScJEsx/kdXSy22
X-Google-Smtp-Source: ABdhPJxP+2LtaG4YA6oIKzKHZwsgoruLpwErxp5xMJ5C76Es//znL78DNeEKkaFXUAbeNQnhWrnxhJc5cYmoPsjXBYA=
X-Received: by 2002:a50:ec89:: with SMTP id e9mr7575495edr.347.1620051684973;
 Mon, 03 May 2021 07:21:24 -0700 (PDT)
MIME-Version: 1.0
References: <026715b28cc84de89c7f38eb4d82bffa@mail03.iis.fhg.de>
In-Reply-To: <026715b28cc84de89c7f38eb4d82bffa@mail03.iis.fhg.de>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Mon, 3 May 2021 10:21:14 -0400
Message-ID: <CAGNhwTOoQOtqa69NyWjJvcLmyG_R1BwY95XHeoJzSJN=Bt4+cA@mail.gmail.com>
To: "Nieland, Michael" <nielanml@iis.fraunhofer.de>
Message-ID-Hash: VILPKZTCYTD5CHF4FPWONZQIULHUDXSP
X-Message-ID-Hash: VILPKZTCYTD5CHF4FPWONZQIULHUDXSP
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, =?UTF-8?B?U2Now7x0eiwgS2F0amE=?= <katja.schuetz@iis.fraunhofer.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Changing RX frequency (B210) at runtime using the message interface (GnuRadio)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VILPKZTCYTD5CHF4FPWONZQIULHUDXSP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3026643376788220693=="

--===============3026643376788220693==
Content-Type: multipart/alternative; boundary="000000000000336de905c16dadeb"

--000000000000336de905c16dadeb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Michael - What version of UHD are you using? Can you provide the actual
printout that happens with different GRC flowgraphs? It sounds like this is
a bug, but if you're using older GR or UHD then it's a bug that might be
fixed in a more recent version. - MLD

On Mon, May 3, 2021 at 5:48 AM Nieland, Michael <nielanml@iis.fraunhofer.de=
>
wrote:

> Dear all,
>
> I am using two B210 USRP=E2=80=99s to generate and receive DQPSK Signals =
around
> 1.53 GHz (two TX and two  RX channels). The USRP=E2=80=99s use FW Version=
 8.0 and
> FPGA Version 16.0 (Hardware Revision 4). I am having some trouble properl=
y
> changing the RX frequency at runtime using the message interface. When th=
e
> RX frequency is varied using a QT Gui Range slider I encounter no issues.
> However, in my application I have to use the message interface. In genera=
l,
> I assume that my pmt message structure must be correct, since it works fi=
ne
> when the frequency is only changed by a few MHz.  Also other commands (li=
ke
> setting tx and rx gains) work as expected. If, however, the frequency is
> requested to be set to let=E2=80=99s say 2 GHz from 1.53 GHz, an overflow=
 is
> indicated and the respective USRP Channel completely stops streaming (doe=
s
> not restart).
>
> I tried using the =E2=80=9Cfreq=E2=80=9D command (both with indicating th=
e channel and
> without since it should not make a difference on the B210) and the
> tune_request. I tried several different message structures but for some
> reason it only works for the TX Usrp (When using the message port of the =
TX
> Usrp to change frequency it is indicating some underflows right when the
> frequency is changed and is then working fine without any underflows or
> other issues).
>
> To eliminate the error I am right now testing in an isolated FG with only
> a USRP source and a Message Edit Box (FG is attached) and the issue occur=
s
> here as well.
>
> Any help would be appreciated and maybe someone was/is facing the same
> issue?
>
> Best regards
>
> Michael
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000336de905c16dadeb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi=C2=A0Michael - What version of UHD are you using? =
Can you provide the actual printout that happens with different GRC flowgra=
phs? It sounds like this is a bug, but if you&#39;re using older GR or UHD =
then it&#39;s a bug that might be fixed in a more recent=C2=A0version. - ML=
D<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Mon, May 3, 2021 at 5:48 AM Nieland, Michael &lt;<a href=3D"m=
ailto:nielanml@iis.fraunhofer.de">nielanml@iis.fraunhofer.de</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"DE">
<div class=3D"gmail-m_2949050972706479771WordSection1">
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span lang=3D"EN-US">De=
ar all, <u></u>
<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am using two B210 USRP=E2=80=
=99s to generate and receive DQPSK Signals around 1.53 GHz (two TX and two =
=C2=A0RX channels). The USRP=E2=80=99s use FW Version 8.0 and FPGA Version =
16.0 (Hardware Revision 4). I am having some trouble properly
 changing the RX frequency at runtime using the message interface. When the=
 RX frequency is varied using a QT Gui Range slider I encounter no issues. =
However, in my application I have to use the message interface. In general,=
 I assume that my pmt message structure
 must be correct, since it works fine when the frequency is only changed by=
 a few MHz.=C2=A0 Also other commands (like setting tx and rx gains) work a=
s expected. If, however, the frequency is requested to be set to let=E2=80=
=99s say 2 GHz from 1.53 GHz, an overflow is indicated
 and the respective USRP Channel completely stops streaming (does not resta=
rt).=C2=A0 <u></u>
<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I tried using the =E2=80=9Cfreq=
=E2=80=9D command (both with indicating the channel and without since it sh=
ould not make a difference on the B210) and the tune_request. I tried sever=
al different message structures but for some reason
 it only works for the TX Usrp (When using the message port of the TX Usrp =
to change frequency it is indicating some underflows right when the frequen=
cy is changed and is then working fine without any underflows or other issu=
es).
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">To eliminate the error I am rig=
ht now testing in an isolated FG with only a USRP source and a Message Edit=
 Box (FG is attached) and the issue occurs here as well.=C2=A0
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Any help would be appreciated a=
nd maybe someone was/is facing the same issue?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Michael<u></u><u></u></span></p=
>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000336de905c16dadeb--

--===============3026643376788220693==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3026643376788220693==--
