Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5E950A936
	for <lists+usrp-users@lfdr.de>; Thu, 21 Apr 2022 21:30:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 19A4F384CB8
	for <lists+usrp-users@lfdr.de>; Thu, 21 Apr 2022 15:30:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650569447; bh=CtW+kL9Pd98LqRQNJJxqPsRlbKPL8pYNHF+M4XNRlcQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=bX0hNitZOP/40lgvocLhT5j1Pr+tQMf2uCSkESIO2HiZrCmfZkFkTFrJT2yTLWwGL
	 adMh+bFjEE7q5lfdMfHLnqoU501/m1Z8FPaYqspQosQrzdph1cMwgF7xiShv8MpRv6
	 GvUkJbQOHH1gUgR5UfN9rSC3De4mIOUeKOBPO9lYnDFAiwFPBBi8x9vbztrDaLubgw
	 Q2x13uoGUAYojIY+Wf75zZSgq617mEYCHmVpckld9zfmGiRBcLP7MdaRW3zNMPyfzD
	 8krhyxPjvoVQvtC0b6C6RZK6czfFrMt7FKxlNBLFCCxulk6RYWhxxB5iUM5naOaFzV
	 gQvShAb3/kajA==
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	by mm2.emwd.com (Postfix) with ESMTPS id BA57C384BD3
	for <usrp-users@lists.ettus.com>; Thu, 21 Apr 2022 15:29:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="N9epBiv3";
	dkim-atps=neutral
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-2ec04a2ebadso63036927b3.12
        for <usrp-users@lists.ettus.com>; Thu, 21 Apr 2022 12:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RxDfa6+PWx/NBPBZxDeqlgq+JM39nH3lv6U4DpVHzLo=;
        b=N9epBiv3/UKDtqk69oRPTeFkLo/1bwNl8rHvKbwQxxzirdUPtHKnh7wywrIi2F6O+o
         ngEDlMZuOVJc2YvjGjmtnaWQXJXJCDm2Zslvb2ThNNGPlBYHNoH7PmQml5EdUmHTTLT1
         go65wQ6J7334dY08cZWc2N+BoH2hPBtMX8yUFViDeJgncEWGobryPkieZm98nYXbTmLp
         RroTlc3O6P8sppDD9hRdwQuY0oi9FkPsaKo9WRSYcvP0i7FtO8Jb+BUFDQAUWBSTEkBu
         omzn9K3G+Dcfl/EB9mhAaKUGVjo8xdeGQ4f7kBwSoleUAfVqX5Olveji0LjpfpNAwunU
         0rYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RxDfa6+PWx/NBPBZxDeqlgq+JM39nH3lv6U4DpVHzLo=;
        b=X0pHSSYOjheqa1cLFtN7I28eJYNhBgFDnKKWyMuUUlN/nsYMhra7fqAlwMcvNl/hxn
         IAQgMDw2sG1q0lL3jgJxBUWeSRoOR8zOR5cHU/t5ZP83t3R9sx0KIdORoNgrUbUqwCXF
         e1nt6YD5uMGxnveJdX14k+pcUWoxB2JNhZxWOR0Uo9T6sKftkOUEVUW9Fo3afI4fEjXL
         Wt9+4Y9tY6kcHMphsIReBZI7CKEtuPFeGGiYU/6XJE6HodQL3McFttVkV+79TWuOtpFA
         vy5E4KZtlnjUWrwDn8MQO6xQJZ5cPVkcS6Ne0l4nds7nlPlFo8awKJXRzkffmMZIuZ6d
         V3uw==
X-Gm-Message-State: AOAM530ExmCvmVqgfCorssNZ6P1coYqd/UHacQhIWJfE+n65NWb6NHjl
	w+XRBkZcs6b4e+ffHAdpL7Rsulou+lhvBSlVd5Ugozm/thi9xgvQ46M=
X-Google-Smtp-Source: ABdhPJyETQTz5BdpI+wYt5kFedt/wrBjDm4HB0e568UXWjrzzX0YBVzpD2ckL2VUp/p7LA5CGLxNjVjGTTVbgyxwFBA=
X-Received: by 2002:a81:7b46:0:b0:2e1:5ae7:5789 with SMTP id
 w67-20020a817b46000000b002e15ae75789mr1426694ywc.61.1650569384102; Thu, 21
 Apr 2022 12:29:44 -0700 (PDT)
MIME-Version: 1.0
References: <PH1P110MB1665E0B25C1A0673B385CE98B7F59@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <PH1P110MB1665E0B25C1A0673B385CE98B7F59@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 21 Apr 2022 14:29:28 -0500
Message-ID: <CAFche=gB+NMWSLQHoPoVmkyCrrW1ANBbcxzGFSHhUuqdunrapQ@mail.gmail.com>
To: David Raeman <david@synopticengineering.com>
Message-ID-Hash: T6TUCY4L4TCQTZ76RKCZOQJPZV2ZCGXQ
X-Message-ID-Hash: T6TUCY4L4TCQTZ76RKCZOQJPZV2ZCGXQ
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Substitute power plug part for USRP E320?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T6TUCY4L4TCQTZ76RKCZOQJPZV2ZCGXQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4503285480238168222=="

--===============4503285480238168222==
Content-Type: multipart/alternative; boundary="000000000000d11f7905dd2f218c"

--000000000000d11f7905dd2f218c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi David,

I think the Kycon KPPX-4P is compatible, but I've never used it myself. Let
me know if that works for you.

Wade

On Wed, Apr 20, 2022 at 6:41 AM David Raeman <david@synopticengineering.com=
>
wrote:

> Hi all, I need to build a custom power cable to an E320. The radio=E2=80=
=99s
> hardware page lists the plug p/n as CUI PDP-40. Unfortunately, that part =
is
> out of stock at all distributers. Can anybody recommend a good substitute
> part? I see in-stock options from Kycon that look promising, but I=E2=80=
=99d
> appreciate feedback on any known-good solutions here.
>
>
>
> Thanks!
>
>
>
> --
>
> David Raeman
>
> Synoptic Engineering
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000d11f7905dd2f218c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi David,</div><div><br></div><div>I think the Kycon =
KPPX-4P is compatible, but I&#39;ve never used it myself. Let me know if th=
at works for you.<br></div><div><br></div><div>Wade</div><div><br></div><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 2=
0, 2022 at 6:41 AM David Raeman &lt;<a href=3D"mailto:david@synopticenginee=
ring.com">david@synopticengineering.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">





<div style=3D"overflow-wrap: break-word;" lang=3D"EN-US">
<div class=3D"gmail-m_-3656053390741382088WordSection1">
<p class=3D"MsoNormal">Hi all, I need to build a custom power cable to an E=
320. The radio=E2=80=99s hardware page lists the plug p/n as CUI PDP-40. Un=
fortunately, that part is out of stock at all distributers. Can anybody rec=
ommend a good substitute part? I see in-stock
 options from Kycon that look promising, but I=E2=80=99d appreciate feedbac=
k on any known-good solutions here.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks!<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">-- <u></u><u></u></p>
<p class=3D"MsoNormal">David Raeman<u></u><u></u></p>
<p class=3D"MsoNormal">Synoptic Engineering<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000d11f7905dd2f218c--

--===============4503285480238168222==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4503285480238168222==--
