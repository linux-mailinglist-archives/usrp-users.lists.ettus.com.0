Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC823A1E37
	for <lists+usrp-users@lfdr.de>; Wed,  9 Jun 2021 22:44:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 852253849F0
	for <lists+usrp-users@lfdr.de>; Wed,  9 Jun 2021 16:44:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ipulje0d";
	dkim-atps=neutral
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	by mm2.emwd.com (Postfix) with ESMTPS id AFAED3845EE
	for <usrp-users@lists.ettus.com>; Wed,  9 Jun 2021 16:43:27 -0400 (EDT)
Received: by mail-ot1-f48.google.com with SMTP id i12-20020a05683033ecb02903346fa0f74dso25256506otu.10
        for <usrp-users@lists.ettus.com>; Wed, 09 Jun 2021 13:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kga3wIZCnk+eQeXEFCDbOIx/vNlNhDGnSUu059XdeCY=;
        b=Ipulje0dyA3GGbWfHVQ/WNQ0ZKiwwWiThOhK3lfifYuTU3XIVpwa2ormiil4eTruZS
         S9FNemMV0adar/4b+RODNxtlNHlLGgjUuiCmyvmUnHoWFOiK5nZa7xNNujd4pABQJsne
         /A9G97ot9fMbVgiboWSPiMQSDb10nx2WovWMuA+CNib8ys/h2NBteYfO6nTt/ehEBz/+
         RdEQhIf7dDW9IDgxeYQcYZsGDhUhei0k5NrGZilLjKs/1OarHRWmhGswd01P8Lr1CnOA
         K0pUo4g0e+G1++M+6py1bbfc8gGrUUy/99XyJd7vWqsX3J/Bf0WfpIfY4fOmuTSS69ZN
         dXUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kga3wIZCnk+eQeXEFCDbOIx/vNlNhDGnSUu059XdeCY=;
        b=GNRSpL+5EXz45Tb+UV4bRdLMz73tuZotxKBrkvBt0/w/WAx2dg9HYCoue5nRJ9xCsV
         1xOSy0gqdtxlC5k4B0Nc6St8ILlu6XDeSRRFdEsICfGd034zJtv6yd0nbNDSYqlXMAcn
         pY7cUmG1732LJB+ttewREKqF/6bviNCpJtBF1AnNHgIRIru8n3lIT8eOZaEH4Z6SytE1
         MN1rI2XsF/Q4bwraBR+kL+EGl1VYFWo+cP0nkhF6CBwUqOGntfdJcLb1DYm1SbGGjSuN
         soKX8Yv6zfE5lo5kpIhRCqfe/cNKkv4UgzgD7cDriEb0LyaYNUc0SRlRn/XqG3EtH4NF
         pHyw==
X-Gm-Message-State: AOAM533rxhnVWhlwi5rzcYU1yj17bkzVIi+74+2EiULxWDU8jeDtoovY
	EqQ1JK2TccIWnpA6t7zxnLy3NQEd00X8KzeUdEk=
X-Google-Smtp-Source: ABdhPJwrNpjSzHGv7afLHUhStFzB/njCWnWS44gVB2+PomETOwYS+dQEkzRT8NUruhEw1SqpXPxFvhPg0FJrvhCB/2M=
X-Received: by 2002:a9d:a13:: with SMTP id 19mr1062335otg.131.1623271406938;
 Wed, 09 Jun 2021 13:43:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAL0m=NbvdhggK7CiVjVono=YYH=OkT4v0TipKR1xKxp-9nYYSw@mail.gmail.com>
 <EDF9A135-3A44-4829-8DE4-82B7E6E168AE@gmail.com>
In-Reply-To: <EDF9A135-3A44-4829-8DE4-82B7E6E168AE@gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 9 Jun 2021 16:43:14 -0400
Message-ID: <CAEXYVK75VK9b+K=sj=oyHw5-Lj1OnudjL5dDzFtciBVK_7GmRA@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: TLFGKSJCOZPYHTR76BSH7KWFRLC56JII
X-Message-ID-Hash: TLFGKSJCOZPYHTR76BSH7KWFRLC56JII
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Disable N310's auto dc offset
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TLFGKSJCOZPYHTR76BSH7KWFRLC56JII/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3222415066995058574=="

--===============3222415066995058574==
Content-Type: multipart/alternative; boundary="00000000000095af4f05c45b534e"

--00000000000095af4f05c45b534e
Content-Type: text/plain; charset="UTF-8"

On Wed, Jun 9, 2021 at 4:36 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> The Ad9371 front-end chip has dc offset removal always on.


The AD9371 API has a call to disable the digital DC offset correction:


https://github.com/EttusResearch/uhd/blob/9f03f6399dcc7b1f3acf7d9595554b0d96884ca6/mpm/lib/mykonos/adi/mykonos.h#L270

But it isn't exposed via a higher layer call.  The Mykonos API is called in
this file:


https://github.com/EttusResearch/uhd/blob/9f03f6399dcc7b1f3acf7d9595554b0d96884ca6/mpm/lib/mykonos/ad937x_device.cpp

You'd need to modify the file and rebuild MPM, load it onto the N310, then
restart the uhd hardware service on the N310.

Not sure how much more quadrature error correction (QEC) runs non-digitally
on the device.  This is probably the hackiest way to just try it out.

Brian

--00000000000095af4f05c45b534e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Jun 9, 2021 at 4:36 PM Marcus D L=
eech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com=
</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">The Ad9371 front-end chip has dc offset removal =
always on.</blockquote><div><br></div><div>The AD9371 API has a call to dis=
able the digital DC offset correction:</div><div><br></div><div>=C2=A0=C2=
=A0<a href=3D"https://github.com/EttusResearch/uhd/blob/9f03f6399dcc7b1f3ac=
f7d9595554b0d96884ca6/mpm/lib/mykonos/adi/mykonos.h#L270">https://github.co=
m/EttusResearch/uhd/blob/9f03f6399dcc7b1f3acf7d9595554b0d96884ca6/mpm/lib/m=
ykonos/adi/mykonos.h#L270</a></div><div><br></div><div>But it isn&#39;t exp=
osed via a higher layer call.=C2=A0 The Mykonos API is called in this file:=
</div><div><br></div><div>=C2=A0=C2=A0<a href=3D"https://github.com/EttusRe=
search/uhd/blob/9f03f6399dcc7b1f3acf7d9595554b0d96884ca6/mpm/lib/mykonos/ad=
937x_device.cpp">https://github.com/EttusResearch/uhd/blob/9f03f6399dcc7b1f=
3acf7d9595554b0d96884ca6/mpm/lib/mykonos/ad937x_device.cpp</a></div><div><b=
r></div><div>You&#39;d need to modify the file and rebuild MPM, load it ont=
o the N310, then restart the uhd hardware service on the N310.</div><div><b=
r></div><div>Not sure how much more quadrature error correction (QEC) runs =
non-digitally on the device.=C2=A0 This is probably the hackiest way to jus=
t try it out.</div><div><br></div><div>Brian</div></div></div>

--00000000000095af4f05c45b534e--

--===============3222415066995058574==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3222415066995058574==--
