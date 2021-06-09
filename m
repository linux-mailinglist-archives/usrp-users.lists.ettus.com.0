Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5203A1DED
	for <lists+usrp-users@lfdr.de>; Wed,  9 Jun 2021 22:06:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EBEE23843EE
	for <lists+usrp-users@lfdr.de>; Wed,  9 Jun 2021 15:56:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VUrQ13ph";
	dkim-atps=neutral
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 4FF2D383F9D
	for <usrp-users@lists.ettus.com>; Wed,  9 Jun 2021 15:55:26 -0400 (EDT)
Received: by mail-yb1-f174.google.com with SMTP id b13so37177007ybk.4
        for <usrp-users@lists.ettus.com>; Wed, 09 Jun 2021 12:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=TFTW20SymiwRhADYNCIjCYuLk5u0jB5H0+aVRwAea5Q=;
        b=VUrQ13ph1/HCoMcHEsq4/9AqfnvzfjNEI2MQpEp/c8H6GOdAWR7krYAevphtDsqLIW
         vzKtDGDKk22RqWkgWfGFFg67ORkWz3F9sqDUTUGPpDQ77eiyRgxV1krP+cGthwfjreKM
         2nuVfkkwt0evNgtZ7rpar3n4mb6RFJ4PyrNXwkp1LpF6OV7gcJ6iu5XHB8HgG1L/pe8I
         +RebhxXIaJKRuwBgnI3SeQXn5rKqnjk1n2gaZKmnTFDYF7+Klt4s54HdWiFGxNOJXEGz
         Eqiarmyi1LcKqPlTTXApUyt9yZQC2AaImfiYmJqCCbcV6a+khzk+w3KJ6emcdcmk8cm2
         wTlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=TFTW20SymiwRhADYNCIjCYuLk5u0jB5H0+aVRwAea5Q=;
        b=G/qMqY2ujE4FYPRlkvYtsPTkClTIWYY5EcjrjhjOd3gW2n5xlU7qCbmRHMYU72kEDf
         kyP83X+weypFiEuTfJKU99zGdIjMjpIbTFkOBqPevbGqcPs79a/YT9bjkiIxZ+R57ISz
         /Ap2I6AzBdNba+gIBGz266f3c/CGrQRu15Mh8C3GXtuRtn22ArTM3o7sJiOnQm73hKof
         +OwgkuNRDiNo9YXUsGoJ3Srrishj/x8UmA8rNq/KqBrifenhGn7pmCJf9h4gJqoYRmJt
         ukh8+5+oIJF9KpuDolQf6syUwR9a1vgOMieCxiKNj+yn7mKl05zmUQhZcPgFnscnp9v/
         Jk4g==
X-Gm-Message-State: AOAM533agqJj6W6T00YgbGe7WQqL6AnqX/pl74zlGzoHUNLZJOw22Vyb
	FGK1E4JPLci+dFxstQaRe1nyRIOe3MTgCNOKZ+hsV7ic
X-Google-Smtp-Source: ABdhPJxBG1LvTWLqlyUYR96IatSXCGEK5YBhPHEusvhzMfbECbQ7LkP9K9ZqJWSm+H9XpID5Yx1ExzpVBL9Iqb8ZQ5U=
X-Received: by 2002:a25:3585:: with SMTP id c127mr2462242yba.494.1623268525641;
 Wed, 09 Jun 2021 12:55:25 -0700 (PDT)
MIME-Version: 1.0
From: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
Date: Wed, 9 Jun 2021 15:55:15 -0400
Message-ID: <CAL0m=NbvdhggK7CiVjVono=YYH=OkT4v0TipKR1xKxp-9nYYSw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: SG6PJYFI5RDRY5QTFXI7OYHHQD2GOUYK
X-Message-ID-Hash: SG6PJYFI5RDRY5QTFXI7OYHHQD2GOUYK
X-MailFrom: huacheng.zeng@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Disable N310's auto dc offset
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SG6PJYFI5RDRY5QTFXI7OYHHQD2GOUYK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7059108610047632767=="

--===============7059108610047632767==
Content-Type: multipart/alternative; boundary="000000000000d890bd05c45aa766"

--000000000000d890bd05c45aa766
Content-Type: text/plain; charset="UTF-8"

Hello,

Is there a way for N310 to disable Rx auto dc offset? I tried
set_auto_dc_offset(False) in Python, but it does not work for N310. (It
works for N210 with SBX boards, though.)

Thanks,
Hua

--000000000000d890bd05c45aa766
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><div><br></div><div>Is there a way for N310 to d=
isable Rx auto dc offset? I tried set_auto_dc_offset(False) in Python, but =
it does not work for=C2=A0N310. (It works for N210 with SBX boards,=C2=A0th=
ough.)=C2=A0</div><div><br></div><div>Thanks,</div><div>Hua</div><div><br><=
/div><div><br></div></div>

--000000000000d890bd05c45aa766--

--===============7059108610047632767==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7059108610047632767==--
