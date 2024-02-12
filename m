Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EB2851DEB
	for <lists+usrp-users@lfdr.de>; Mon, 12 Feb 2024 20:30:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AC45E384CDC
	for <lists+usrp-users@lfdr.de>; Mon, 12 Feb 2024 14:30:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707766248; bh=J9Q87INjPn9ffkT9ydekqwT3HgjehtkCpOJQixU13d4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=zDEGrEsMdpKwd3P0G+nrp/PyO43Mp0iHUBMF+tbut7NIV1qOZC5qG4c6K6pdPANCz
	 qV/3dOmkS7lG2BDemElTBAKDY9wK7C5oj3mPc8WSps+y4pJ57df/+qodmEyAsRexSv
	 wFUevNWOEnLe/0IJA126yxvu72Fh40zncJy/VFVFsY9SxyLymu3SS5eZPZyJe6Wbi1
	 tHUpBPl5DAzna1Yx6EakP6zEEnhOiMFx9rjZpwKlldXNWoXPO6fqV1g8UmXoOZNhS+
	 AZlyJF795274N74Qq/qa2zqI3TW4Fe1zljB3u2XwT+2KQCrSmWAojLbb4X57DlBK36
	 PegUY0fE9qZ2w==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id A9D8938099E
	for <usrp-users@lists.ettus.com>; Mon, 12 Feb 2024 14:30:09 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="O7Fgy1zN";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5601eb97b29so6426432a12.0
        for <usrp-users@lists.ettus.com>; Mon, 12 Feb 2024 11:30:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707766208; x=1708371008; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UH3aGE+cUuhU9l6ePgGVhKikpcl2p890tbTEIKgH+iI=;
        b=O7Fgy1zNAZwajPHZt9S+rAaPsJ5wCvxr9gkmeT8sqs4pmeS5Wcj0PUQwb5Mh8706we
         M9WB5uIKF7o7nNLa/S3K92/iHeJILASTJD9+DoO3D/L1WU7eRg5+CaShs7KCZtsqJYm9
         iB++C3zI9zCwVIOmn3Vzh0DbCHi2nKvIbn6NeUpXVPOQmqUEeqAzv2RATdyHay8/QPwp
         ddmJf/l0+OF+6IyfAjXH+V789HSzdtNPrksxI+FbhvEnyUA0w0UEu0hOyVnjP64XVZsu
         +Q2t+4X29dc7yroa/60FGW+kHLrOEL7eJ0AfeXT4GH4Uy7uWM4YKYD/zTI+xneKwztBk
         2tmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707766208; x=1708371008;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UH3aGE+cUuhU9l6ePgGVhKikpcl2p890tbTEIKgH+iI=;
        b=Q30RBnxmyGup08EkPGxrW9jIOfRvEuiTu+hHr0h+VO9LJLca9JJErufDDun7taUqZK
         7zIWdcndmdUrVm957OYJhIUEJpTeir2PbK9G/3Rajo2mreByGUoQ6n4Lri/QmF98JN8y
         sTOd8YYt4hnEyi0aHmUiKJaR6hQJm9VUIZrNhXtZdVlvd6oxOkPBb3g79fsgkKUaqSgI
         vS36gzxzssQ1ElJxIzS+h5xIM73anzyjol5ZN5FI/vn/8lRdbYzMDOXU9GE437VwYdfK
         MaGkneK1cVkxMNF1S5wS4VLJvxQh42TOVue8ESKJ6gMb30q6IWldbWnxfBYH2IH5+Jid
         EJow==
X-Forwarded-Encrypted: i=1; AJvYcCWtXr/OM8xvQZXQjOYxD4+yne1cfPYppJkVQjqoFNAudTZaLagCsDX78bDMX072LMZenACSfmWOZaJti1MgAS6D68ONBg3sPS5qMg==
X-Gm-Message-State: AOJu0YwfZWFTpiN1mMF5wtmt6916mT2G19CsaawVK6Pmb/4dxO0gIj6a
	1N/AsLHNe2ThPFlD+ar6iAEDzoD5rZJBJldaaBQl0wN74CtUokxqQju3cUHWufsI4zTNii8HInx
	1Nzqoz7LhLrJPCgp9iKnnYr68NYk=
X-Google-Smtp-Source: AGHT+IHmgenvwHAXxPo6WrQeHb7iwXh6Jyi4tXgU8Fq7YszJqTmnjEifWRP5tw4s6vWWJN4RsW2/75/v9iXmqBzUbDg=
X-Received: by 2002:aa7:da56:0:b0:561:46fe:56e9 with SMTP id
 w22-20020aa7da56000000b0056146fe56e9mr363395eds.10.1707766208493; Mon, 12 Feb
 2024 11:30:08 -0800 (PST)
MIME-Version: 1.0
References: <ydTJtYzwSbHTPd2X7O9RMzkCGwqAlfBUIAKOjVf6RQ@lists.ettus.com>
 <CAKHaR3k90Bn3oXPCckYiNqToGKUmCrfW6GZPNrM+7f0JOx7SoQ@mail.gmail.com> <CAEXYVK7XetC__b5vjnoqHAsVqVU1XH-wX2LWEW4mQTJemVbniA@mail.gmail.com>
In-Reply-To: <CAEXYVK7XetC__b5vjnoqHAsVqVU1XH-wX2LWEW4mQTJemVbniA@mail.gmail.com>
From: Chris <gaytanc4@gmail.com>
Date: Mon, 12 Feb 2024 11:29:58 -0800
Message-ID: <CAEMZVF0JgOxZiGO=qYq54SrLFei=+KDFq7TtR80f1uKrT2cTtw@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: TJTNVSEFDKDOC6TT5WWWOY4EL23PJZ5M
X-Message-ID-Hash: TJTNVSEFDKDOC6TT5WWWOY4EL23PJZ5M
X-MailFrom: gaytanc4@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Dario Pennisi <dario@iptronix.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Adding existing RFNOC blocks in GNU Radio GUI
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TJTNVSEFDKDOC6TT5WWWOY4EL23PJZ5M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4878871646913221089=="

--===============4878871646913221089==
Content-Type: multipart/alternative; boundary="000000000000377b470611344e3f"

--000000000000377b470611344e3f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Do you recommend updating my Ubuntu to 22.04?


On Mon, Feb 12, 2024, 11:21=E2=80=AFAM Brian Padalino <bpadalino@gmail.com>=
 wrote:

> On Mon, Feb 12, 2024 at 2:15=E2=80=AFPM Dario Pennisi <dario@iptronix.com=
> wrote:
>
>> You have to install gr-ettus which contains what's needed for compiling
>> OOT blocks and also installs rfnock blocks
>>
>
> My recommendation is to not start here and to start with newer software.
> Use the latest UHD and the latest GNU radio.
>
> You're starting at a dead-end path if you continue with the versions you
> currently have and require gr-ettus.
>
> Brian
>

--000000000000377b470611344e3f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Do you recommend updating my Ubuntu to 22.04?<div dir=3D"=
auto"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Feb 12, 2024, 11:21=E2=80=AFAM Brian Padalino &lt;<=
a href=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On =
Mon, Feb 12, 2024 at 2:15=E2=80=AFPM Dario Pennisi &lt;<a href=3D"mailto:da=
rio@iptronix.com" target=3D"_blank" rel=3D"noreferrer">dario@iptronix.com</=
a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"auto"><div>You have to install gr-ettu=
s which contains what&#39;s needed for compiling OOT blocks and also instal=
ls rfnock blocks=C2=A0</div></div></blockquote><div><br></div><div>My recom=
mendation is to not start here and to start with newer software.=C2=A0 Use =
the latest UHD and the latest GNU radio.</div><div><br></div><div>You&#39;r=
e starting at a dead-end path if you continue with the versions you current=
ly have and require gr-ettus.</div><div><br></div><div>Brian</div></div></d=
iv>
</blockquote></div>

--000000000000377b470611344e3f--

--===============4878871646913221089==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4878871646913221089==--
