Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1342F46B128
	for <lists+usrp-users@lfdr.de>; Tue,  7 Dec 2021 04:01:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 238D0384E91
	for <lists+usrp-users@lfdr.de>; Mon,  6 Dec 2021 22:01:35 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="H/3Kp22f";
	dkim-atps=neutral
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 0B15A384BB5
	for <usrp-users@lists.ettus.com>; Mon,  6 Dec 2021 22:00:29 -0500 (EST)
Received: by mail-qt1-f172.google.com with SMTP id v22so12950531qtx.8
        for <usrp-users@lists.ettus.com>; Mon, 06 Dec 2021 19:00:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=GWJaCAzgFTp1B3DZivraFJl3ZGqurAiRNNxgHC9sYKg=;
        b=H/3Kp22fFHWxkC3+0CGCE1gkLKkiL2c77z4sEi4GgGKk81G8M1ysAT6ZI5HEpaamZG
         rRmkKYNuj2OTIftl3XhMk/iVcSm6r/jsOKW7ZRvHabjRGPaNwozgkHKdTDM4XCksDiAE
         27AWQORmb4bbV50cNzA+w24oy740NdhDG0jK9MdJweTUFgunXHXR94GeXlF4EjAnLNnO
         3S5W2EgjSUEed3yCSV6SXMR6gBDc8m3/yw9/KlL/aDHyn/nQK+VCDNL/ENyEoCMN4XTH
         TSxw6C1k1WryJTBLaGtGzkM/brSdfJKjTG2bd5odz4zKBKPniJIaOeBjZMctnnjOJA1X
         0Bnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=GWJaCAzgFTp1B3DZivraFJl3ZGqurAiRNNxgHC9sYKg=;
        b=yLWJA54edNZefcoOHndDs1hSjtVfhw+Zf5qWkf+ZFsFD3v17EX9HfKMCPSon3aePnd
         YtPcGTOXjevimrHwwPTcsY/40XqzHkplJjq5K7r6/g1gpQJw+ZZRbPidAbJeO1EUhZM1
         C9HCIgXJB3b3JEeINLKLfEQhrWT2dgYHEaP043/7FIZz/KmzKPWaWhq1OPfSBchhl/+p
         GTaqHAp/qekOa4+D60kc03Hbc/hAI45USnCf1pPaB4LRpReQDHn2kyizPbGs/zjE0UJh
         mhidMXAnvZk56SFgFesuK6vxdXwF3X5B4Ft5SPIy32eHPNhqFx/SBqokmyS2c0adj6jn
         iBBQ==
X-Gm-Message-State: AOAM5333q9r3pIgZ+EP5YQ6/BIjIJnEwIReyGqzhvDks5P3s+XPV5q+T
	jCayfB7DFebxZPRrIIT7IEVbbZd5fYg=
X-Google-Smtp-Source: ABdhPJycZM/Q/+Yk0HmpX/Qff9wWkQl/Y9/Hx0aCN4FJKAJeDBwWoMq5lost1O45Vrl6Mx6V6U6oXQ==
X-Received: by 2002:a05:622a:612:: with SMTP id z18mr44702154qta.442.1638846028763;
        Mon, 06 Dec 2021 19:00:28 -0800 (PST)
Received: from [192.168.2.213] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id v16sm7056431qkj.93.2021.12.06.19.00.27
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Dec 2021 19:00:27 -0800 (PST)
Message-ID: <2fc2afb6-416f-76e7-0235-239a7117f16e@gmail.com>
Date: Mon, 6 Dec 2021 22:00:27 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <3d1nDleXAm9neO5T40Xh86RSy1KIusWLmDFhV7hLys@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <3d1nDleXAm9neO5T40Xh86RSy1KIusWLmDFhV7hLys@lists.ettus.com>
Message-ID-Hash: 5ILVAJJ47C2KMA6TZ2WK5WHKTR2T746A
X-Message-ID-Hash: 5ILVAJJ47C2KMA6TZ2WK5WHKTR2T746A
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: (B210) UHD Error : Exception caught in safe-call
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5ILVAJJ47C2KMA6TZ2WK5WHKTR2T746A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1058499523408005488=="

This is a multi-part message in MIME format.
--===============1058499523408005488==
Content-Type: multipart/alternative;
 boundary="------------70w30GutE0xKpHwJTYTcmy7T"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------70w30GutE0xKpHwJTYTcmy7T
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-06 21:57, condicionjohnexekiel@gmail.com wrote:
>
> I see. Thank you, thank you.
> Is there any way we can resolve this issue?
> Did you already experience this kind of error?
> Also, we tried to only power it off and on, but it doesn=E2=80=99t take=
 effect=20
> immediately the error is still there. That=E2=80=99s why we off and on =
it for=20
> several times, in the sense of cooling down the board and the process=20
> run. I don=E2=80=99t think this scenario of debugging could be of great=
 help=20
> to you and I=E2=80=99m sorry but this is what we tried.
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
The B210 will get power from either the external power or USB cable.=C2=A0=
 If=20
you pull the external power, it switches over to USB power.

So, if you pull external power AND re-plug the USB cable, does the error=20
go away immediately, or it takes, as you observe, some amount of time?

Do you have more than one B210 board, and does this happen on all of=20
them, or just this one?


--------------70w30GutE0xKpHwJTYTcmy7T
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-06 21:57,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:condicionjohne=
xekiel@gmail.com">condicionjohnexekiel@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:3d1nDleXAm9neO5T40Xh86RSy1KIusWLmDFhV7hLys@lists.ettus.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>I see. Thank you, thank you. <br>
        Is there any way we can resolve this issue? <br>
        Did you already experience this kind of error?<br>
        Also, we tried to only power it off and on, but it doesn=E2=80=99=
t take
        effect immediately the error is still there. That=E2=80=99s why w=
e off
        and on it for several times, in the sense of cooling down the
        board and the process run. I don=E2=80=99t think this scenario of
        debugging could be of great help to you and I=E2=80=99m sorry but=
 this
        is what we tried. </p>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    The B210 will get power from either the external power or USB
    cable.=C2=A0 If you pull the external power, it switches over to USB
    power.<br>
    <br>
    So, if you pull external power AND re-plug the USB cable, does the
    error go away immediately, or it takes, as you observe, some amount
    of time?<br>
    <br>
    Do you have more than one B210 board, and does this happen on all of
    them, or just this one?<br>
    <br>
    <br>
  </body>
</html>
--------------70w30GutE0xKpHwJTYTcmy7T--

--===============1058499523408005488==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1058499523408005488==--
