Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B60A7F7AF
	for <lists+usrp-users@lfdr.de>; Tue,  8 Apr 2025 10:22:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 682BA385C09
	for <lists+usrp-users@lfdr.de>; Tue,  8 Apr 2025 04:22:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1744100540; bh=QhlcTvIdlfslAdSJn/cbEBOXCvXCmigE5VY2g5yGdPk=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=trNq2/QLDfZ9lNuALVZjGi5BZoDCGS7Fg6xCju9USjRIJI6/qg7h9jeJqeTaMoaJk
	 gJMrfNijFrx8/xdcPlR7bzKUVd7lBbZmX2Qmsk3s0xGI59HFjoesXJzSts6fODDodU
	 Sj0bLiSKxmsz5n6wa6P4JsBO5cTojXfXCPFZSjxEbm0UgKYLqLI9qIlS6HHAqynugg
	 JqtLuqLbWOx1ZlInBTvYayWndlX4D1GFysapp6uzjTLBGDACv0uEPgqhLL+4R1GlWZ
	 bUUzjfjviZDJCqxb4idnGNho87Tc+XbycNtG/+tbgS/G3Qeq6MrGP/UTisN4ZzKczY
	 SuCYs5xMLavPw==
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 809823858C0
	for <usrp-users@lists.ettus.com>; Tue,  8 Apr 2025 04:22:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="rRVVMUxL";
	dkim-atps=neutral
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5e5cded3e2eso8306294a12.0
        for <usrp-users@lists.ettus.com>; Tue, 08 Apr 2025 01:22:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1744100528; x=1744705328; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AmSp0OZ+mY9atu64q/pNu2gJFjaIxqztq+3oEkcjbl0=;
        b=rRVVMUxL3agu8SFHixyuUG+7Xn/vNXkkOw9em0gu2CNAN2RU/0atRuva2DhNaJMnxW
         TC+fdBG1bAE54vlct5uIKscFKe0v+VmDk6/QM5Hilqv9qWFrjtuhAGsrlURL+PC78Z7/
         5cfbObYG85nmZB9dnprW8iC1hoc7Ss8xSdTlxs5waxgUD0AEdf99ENMlrNF3wo/2evbx
         f1InX2lPGPM5sioR8MS73tbo3l1/9MYHDcR+ypZwmbL59TzoOfk2SvE+jnWRSStvLURx
         f6kLSZ8+OZ0/jxX8jiB5Ly7eflH/3hxqE0nRE98Ds408hT/mnBJRpOA1ENtkusIqRIET
         8V+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744100528; x=1744705328;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AmSp0OZ+mY9atu64q/pNu2gJFjaIxqztq+3oEkcjbl0=;
        b=BjVN74SxZo9r1icWMqdBCikDIkYzQ1n2VZV2CxcKS66Y6F6jLaIhg/vRhHIhJjGWau
         hINZQ887HPSE0+VTuCFGhgT+3JGDiFyIw27Yymz/wVAaLyUtnPYUY+p1EAeXDj2cQfhl
         q6jk8vAxovh4io0xT/zk+3qRKRNuFFHCoR1rpAL6Ww0OlUj4WcpVxUtmKJJGFRYL74h1
         DbN3vcXLLWYvfOqoZOgP1OJto+UMCGitdUekEAVQAcixRTs3NUnDI+3PNtbf+0BFMvAg
         F/JEL/rLz9n8klje4zHaudjlBPlZX8c5WWMQ2lijH293CMYJ11ba/5tctzg5t/6AnuLC
         qXig==
X-Gm-Message-State: AOJu0Yy2vDZ05uBYwDy+MXkToSpKzu8rX0Hh6ETRplIbwUkT73gcq/i3
	SswHLB4Il6nEyZA054JdFQwZ9pYkqVg8zWIXO9YCkyxEnOv7EmVF7nMjgzABU4YNRJN49IDc2yQ
	VJ9jscgVRShEdcP3CmXJuvSHJhL872CjRKwBuUNIyCPiD5Pq8Vgk=
X-Gm-Gg: ASbGncuc6XhC3Hyc73WFcB8hsOVCwUpi18RQ4nClhhAHaGGafsrx94aA3HWAWKg00Gm
	XvXDalDed4LjWhARn7iu/gqthi1SfawfW/UKI35/5p54p09+mtAuTa0ba5zr5zhTdS+6ShSejLY
	TXqnxyeBcdstSQwQbkOG7R2nTgH18Ov5Y6EctxLSKSSilOM6t7xmK5fkrSdg==
X-Google-Smtp-Source: AGHT+IFOI94B9wz8N+a2PwGQqITUDmDvy6cb4dt1G0vr2yC3uANiytw22haWlfvxUsmmYRU1uTaf7R/OQ+w9n3zbUrE=
X-Received: by 2002:a05:6402:34d0:b0:5e0:8937:6ef2 with SMTP id
 4fb4d7f45d1cf-5f0db81b63dmr9064732a12.8.1744100528535; Tue, 08 Apr 2025
 01:22:08 -0700 (PDT)
MIME-Version: 1.0
References: <s26VOiu87RzRmf9kGzJpjmgAvZ1hBVZ9QydqBwjIDHo@lists.ettus.com>
In-Reply-To: <s26VOiu87RzRmf9kGzJpjmgAvZ1hBVZ9QydqBwjIDHo@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 8 Apr 2025 10:21:56 +0200
X-Gm-Features: ATxdqUG7hLkwNCTJx6hIjpKGDe1S1T6U25-oOe6Aks2OGGm_p4nXAHpiHXhDU1k
Message-ID: <CAFOi1A41WgqYxaqL5+hcW3u98R7W2TcP0fMPSdmmzpesHN6Exw@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: 75L2R5Q4ZQJUKJ2NPMMCHH37WFNBIG6K
X-Message-ID-Hash: 75L2R5Q4ZQJUKJ2NPMMCHH37WFNBIG6K
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 transmit multi streams on single radio channel
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/75L2R5Q4ZQJUKJ2NPMMCHH37WFNBIG6K/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8060028517353400946=="

--===============8060028517353400946==
Content-Type: multipart/alternative; boundary="00000000000074da050632400c0c"

--00000000000074da050632400c0c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 14, 2025 at 10:57=E2=80=AFAM <carmixdev@gmail.com> wrote:

> Thank you for your answer,
>
> I=E2=80=99m following your directions and I=E2=80=99m creating the yaml f=
ile with the
> relevant elements in it, however since it is the first time that I create
> such a file I=E2=80=99m facing some difficulties:
>
-The diff ports of addsub block will not be connected, i think i should
> connect them to a Null Source Sink Block, right?
>
Yes. We could build an AddSub block that has an optional diff-port, but
it's meant to be an easy example so we won't burden it with features like
that. In your case, it would be more optimal to have a single four-port
adder block, but we don't have that in stock UHD. So your approach is
probably fine.

> -I noticed that on old tutorials there was a python tool that helped in
> the creation of yaml files, why it isn=E2=80=99t available anymore?
>
That was for UHD 3. For UHD 4 (and the now-current version of RFNoC), the
complexity of the YAML files went way up, so the graphical tool from UHD 3
was no longer feasible. However, we're enabling building bitfiles from GNU
Radio, that will become the replacement for this feature.

> -I=E2=80=99m using GNUradio to design a sample system, however I noticed =
that when
> I use RFNoC blocks I can only generate python and not C++, is it normal?
> that means that if I go on with the project, since I use C++ I will have =
to
> migrate to UHD and dismiss GNUradio?
>
Sadly, yes.  If we get requests for adding C++ support for code gen from
GRC, we will prioritize it. For now we're focusing on a smaller feature set
that works well, so we're leaving out the "less popular" things. That said,
we have to make a guess what they are so comments like this are valuable
input.

--M

--00000000000074da050632400c0c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 14,=
 2025 at 10:57=E2=80=AFAM &lt;<a href=3D"mailto:carmixdev@gmail.com">carmix=
dev@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><p>Thank you for your answer,</p><p>I=E2=80=99m following your=
 directions and I=E2=80=99m creating the yaml file with the relevant elemen=
ts in it, however since it is the first time that I create such a file I=E2=
=80=99m facing some difficulties:</p></blockquote><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><p>-The diff ports of addsub block will not be con=
nected, i think i should connect them to a Null Source Sink Block, right?</=
p></blockquote><div>Yes. We could build an AddSub block that has an optiona=
l diff-port, but it&#39;s meant to be an easy example so we won&#39;t burde=
n it with features like that. In your case, it would be more optimal to hav=
e a single four-port adder block, but we don&#39;t have that in stock UHD. =
So your approach is probably fine.</div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><p>-I noticed that on old tutorials there was a python tool =
that helped in the creation of yaml files, why it isn=E2=80=99t available a=
nymore?</p></blockquote><div>That was for UHD 3. For UHD 4 (and the now-cur=
rent version of RFNoC), the complexity of the YAML files went way up, so th=
e graphical tool from UHD 3 was no longer feasible. However, we&#39;re enab=
ling building bitfiles from GNU Radio, that will become the replacement for=
 this feature.</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>-I=
=E2=80=99m using GNUradio to design a sample system, however I noticed that=
 when I use RFNoC blocks I can only generate python and not C++, is it norm=
al? that means that if I go on with the project, since I use C++ I will hav=
e to migrate to UHD and dismiss GNUradio?</p></blockquote><div>Sadly, yes.=
=C2=A0 If we get requests for adding C++ support for code gen from GRC, we =
will prioritize it. For now we&#39;re focusing on a smaller feature set tha=
t works well, so we&#39;re leaving out the &quot;less popular&quot; things.=
 That said, we have to make a guess what they are so comments like this are=
 valuable input.</div><div><br></div><div>--M</div><div><br></div><div><br>=
</div><div><br></div><br></div></div>

--00000000000074da050632400c0c--

--===============8060028517353400946==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8060028517353400946==--
