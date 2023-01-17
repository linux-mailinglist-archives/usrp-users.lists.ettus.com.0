Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 24298670D48
	for <lists+usrp-users@lfdr.de>; Wed, 18 Jan 2023 00:25:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 030AC38427C
	for <lists+usrp-users@lfdr.de>; Tue, 17 Jan 2023 18:25:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673997944; bh=LPEi4yC7R0ujguC31KcRAabnBTrooO9VnEeulBFzrgQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=GAToQrA0s5l22TUuIfgjIGhohsAJuAXUq6pVum/qYOnSLSge1RttYdphxqGioavUZ
	 nKjgzlRAcIlTKDz4sNJMw8UJmbGy1FKB74QbBXuuVuV0xsO+sEwjOW7jmKacZ0pxYY
	 HP4yTO32k5QK45eJdVLHRMaH0Qa7DTQkAUhZ2eCfyTQlJZNZIOaaM75D+LzLUFG8yY
	 Of6UblKJh6NnS5gEZj3CiwmhFki/VBpyURdVAHdv9/X51whkuOyQifrXQtYXIcDuCf
	 fAda8om63O8+511wZzQSVJsZGOMDtQRAQF5fk+gGSgwjUMsCdFjTs3nXFV4mwGdflY
	 Oywur2pQoAE8w==
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 1DA4938391A
	for <usrp-users@lists.ettus.com>; Tue, 17 Jan 2023 18:25:34 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KUV3tD/X";
	dkim-atps=neutral
Received: by mail-ej1-f45.google.com with SMTP id u19so79132207ejm.8
        for <usrp-users@lists.ettus.com>; Tue, 17 Jan 2023 15:25:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZoR45GGvLRL2jMXeWt6SsPMT5KxbIavJrN2qDxG6Rzg=;
        b=KUV3tD/XpeYRjN0ay5FS8FjaeSL56sgihUfhlfn2PG5sSo7WyH7gSdgbYGHN2YfjT8
         p5q1ecuK2d199MoWE0KZ9h9Uu+OX5bfjjS4Mad6DRlUto+lC0Bt51d67oSSWQF5IOLOk
         UNlU90VCqpYfpq1BT8Sm1xw0tm+t2RmJAt6ld5teFX9j1jw8f6k25vXJbt0eL+43XcPJ
         +JaEwmsf3xNEruUrFteTGCw1JlOImFfLcv25KFk19IDA/7zgMsNwh/kdYsCbMVTd1x8e
         LDvfOMeWfBXQSlwOW/ySNG5Rx/8w6gDDLHWRVqyuhk0ii+eA5XgOE+HE2vIXoGIpmQ7+
         5P+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZoR45GGvLRL2jMXeWt6SsPMT5KxbIavJrN2qDxG6Rzg=;
        b=ZHVJNAjasPNUsgrnzJYjaUb1xDaRImiyMVm58sOldnQVxUVh7u5JWd6zdDzKql8MUP
         nBa7JrXjFnBoC3ZFqak1MQcU9a+DnsBY658YTqis8pUYupv1dKUV9Nl/xa2SEFmLy8QS
         eg3upxvPKvQ0tRm7kfD+r3EtsseBoc6gwuMCqy41IZIIZxlESDa4rSGIkyAnpttMDL0u
         Pr8VlswUnSFmoWOwRbvqqfYuzZ2VZYi42hoHXo4MeJgBbcFFcPHKSYICtdzddn1FENUG
         QU+nTkP8Zx3R7q/Ak4E/2ouTJjHmBo4ujDIcZhFkBCv5URVySUZUZzkDgkZTDDD6MIQ5
         gJOQ==
X-Gm-Message-State: AFqh2kpHuL2FdryP43JkaA1BBoXU1qfHRO/p/bGHmTO44fRDav5Qv7ji
	UNRa7Gqr9wBGf835zCcgIICF5Th4/CvYifTIu0oYrD7/
X-Google-Smtp-Source: AMrXdXsRKRns5Zf4j3qjqFYYegrr31qLvmNJ09N2p59qiTJkfYxfu5ABFRV1e8s+tJIXsTCIpYUlTMEctsX4sf23Hdg=
X-Received: by 2002:a17:906:5414:b0:871:e9a0:eba5 with SMTP id
 q20-20020a170906541400b00871e9a0eba5mr533602ejo.768.1673997933789; Tue, 17
 Jan 2023 15:25:33 -0800 (PST)
MIME-Version: 1.0
References: <rUpbJzimNmayXIaB27UEwJGDnfJRgoDNRs3mUMvLwQ@lists.ettus.com>
In-Reply-To: <rUpbJzimNmayXIaB27UEwJGDnfJRgoDNRs3mUMvLwQ@lists.ettus.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 17 Jan 2023 18:25:21 -0500
Message-ID: <CAEXYVK7xhGxu-QN+AUVX9dgSmOk8Y=PQcOVHLkFEAA+9mBM-Vg@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: XOHRD62UEERXUO2CZZLK3MM4DEOMMKVU
X-Message-ID-Hash: XOHRD62UEERXUO2CZZLK3MM4DEOMMKVU
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running "make xsim"
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XOHRD62UEERXUO2CZZLK3MM4DEOMMKVU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5078085966332670571=="

--===============5078085966332670571==
Content-Type: multipart/alternative; boundary="00000000000032c6b905f27e0469"

--00000000000032c6b905f27e0469
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 17, 2023 at 5:53 PM <jmaloyan@umass.edu> wrote:

> Hello,
>
> I am currently following the instructions listed at this link:
> https://files.ettus.com/manual/md_usrp3_sim_running_testbenches.html
>
> I am currently having trouble making the testbench for the N321. I have
> been able to successfully build the project, however, I am confused in
> regards to getting the simulation running on Vivado.
>
> In which directory should I make the command =E2=80=9Cmake xsim.=E2=80=9D=
 I found a folder
> =E2=80=9C/workarea/uhd/fpga/usrp3/top/n3xx/sim=E2=80=9D with 6 directorie=
s, each with a
> Makefile and testbench systemverilog file. Is there something I should do
> with those? When I run =E2=80=9Cmake xsim=E2=80=9D in them, I get a =E2=
=80=9CNo rule to make
> target=E2=80=9D error.
>

The xsim target is mainly used for simulating specific RFNoC blocks inside
of a design - not the full design itself.  I don't think there is a full
top level design simulation, but I could be wrong.

Try navigating to fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_ddc and try
running `make xsim` there.

What exactly do you want to simulate?

Brian

--00000000000032c6b905f27e0469
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, Jan 17, 2023 at 5:53 PM &lt;<a hr=
ef=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.edu</a>&gt; wrote:<br></div=
><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><p>Hello,</p><p>I am currently following the instructions listed at this=
 link: <a href=3D"https://files.ettus.com/manual/md_usrp3_sim_running_testb=
enches.html" target=3D"_blank">https://files.ettus.com/manual/md_usrp3_sim_=
running_testbenches.html</a></p><p>I am currently having trouble making the=
 testbench for the N321. I have been able to successfully build the project=
, however, I am confused in regards to getting the simulation running on Vi=
vado. </p><p>In which directory should I make the command =E2=80=9Cmake xsi=
m.=E2=80=9D I found a folder =E2=80=9C/workarea/uhd/fpga/usrp3/top/n3xx/sim=
=E2=80=9D with 6 directories, each with a Makefile and testbench systemveri=
log file. Is there something I should do with those? When I run =E2=80=9Cma=
ke xsim=E2=80=9D in them, I get a =E2=80=9CNo rule to make target=E2=80=9D =
error.</p></blockquote><div><br></div><div>The xsim target is mainly used f=
or simulating specific RFNoC blocks inside of a design - not the full desig=
n itself.=C2=A0 I don&#39;t think there is a full top level design simulati=
on, but I could be wrong.</div><div><br></div><div>Try navigating to fpga/u=
srp3/lib/rfnoc/blocks/rfnoc_block_ddc and try running `make xsim` there.</d=
iv><div><br></div><div>What exactly do you want to simulate?</div><div><br>=
</div><div>Brian</div></div></div>

--00000000000032c6b905f27e0469--

--===============5078085966332670571==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5078085966332670571==--
