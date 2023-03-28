Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C326CC1B6
	for <lists+usrp-users@lfdr.de>; Tue, 28 Mar 2023 16:08:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 362E53846F6
	for <lists+usrp-users@lfdr.de>; Tue, 28 Mar 2023 10:07:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680012479; bh=QsenaxsfDeYC+BpKDGWxhiUekWZcdh+b7VE/318zRMk=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=ObwxjMyLzVxpC2tmiAfZIjMh/9OKKjPUPBj/mEcl9OwagzA02s4sJ/SKSp+FfAFlr
	 2YiaLZMCfHaPsJAEkbLOLMoCLaxNzuaHleM+0irMwIP7hnWcn/PiFw6tRUIaR39Jhp
	 LQQXnwH4iSSyuHUVOEUApOXnp5d7kBEmq4EicxrSZo3TJpCKCDHxyB2V0KillXaEdg
	 sKKm2Gr/3eIZO9/kmdnTPvh1AbKZV5kvSJl5ruVwqkiJkazxVlg95hWWrHFs0rDnNc
	 +GUvz9Q8e4lIom81dxDbEabBlz4AxY7LtEU6OvXqGO8BSDOYV63gekHaFvctIWMe5O
	 8w3ET/1+1silA==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 67EF938403C
	for <usrp-users@lists.ettus.com>; Tue, 28 Mar 2023 10:06:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="DdQ9E8mc";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id h8so50225700ede.8
        for <usrp-users@lists.ettus.com>; Tue, 28 Mar 2023 07:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1680012417;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+XQ/4oYoRkHAHiR58/Bz6ZaToLaulA26HZTle6M5e/A=;
        b=DdQ9E8mcPJE3oJgw8YxuLFx4d/JrzvEq+rfNiZVLRD14GOYCsEdlJ/6QcrefzoVwsh
         LRW8s655CQ2u/mIlNeZ1mKodNv6XEGCS0N4rm93Ow3Ygg7ELqjMpqvGhEIj+gAKIE/hn
         kx3QGluK1pium45GJ4qD3KBzetIfWkpOUL3KJE55IUY+xXKGE/BrJQGP1EJiYnWKqaBV
         2tL5+07Z0MESuK+sonYjawe3TPuXChr+r7HL5DndRjJWtZ5UCcztTkpzFI8dPlGpa652
         fL/rQsj6lipt/Oe5V3gf3l0JfleNZbTQIsDDHA8LXW9DkkGXRMfFxqHqRSBtdTWhG4rI
         a4sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680012417;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+XQ/4oYoRkHAHiR58/Bz6ZaToLaulA26HZTle6M5e/A=;
        b=mFsVThGzW4OWgrSuZimJ7Bpfdr6kT4Vlpzonrlcd8wGAlztrOLAkqjwJpxj+rahO5B
         HjMl2Synhg8Tq8kwC/eEf0JiusCWfwpOzOgJApnNK49bCfSHqlnmIhNHZoMdkKUdqqCr
         mXgxg0vesPKujOmh/h47FuaDaB0EhN8IFrpQVtgAnZtvXuRCiPsgis1ye/Bz3ziaYzPW
         +E/5ePuLmtL9Gl6u4ltFlbD+tnz3XT7wd62SnDTxRSq8TCbL2TVecVftjGsxq9fO0EWz
         8aCgcVb6Abjm5cxOp6VFstFLCGutCQum1D/awSfTjPqV2xxkK2tNBP3wQzLBSQkqV0Tp
         D5Eg==
X-Gm-Message-State: AAQBX9cuVjc2PTlvcIFC3xamndQ1Hb8FSyxhUV9HtF7gJzIgp73tmY0T
	fZ+5m11dYnqh/pE7aBn/ahft7lJj1yg/Zc9UExL1ag==
X-Google-Smtp-Source: AKy350aGG/sWyg7vsZ2A6sjFvOUglipDxAKujCqsI/JJTJ6wLDUzlU+Q7FqKzxM4oHfVD/IkSAi7y7cB8PnrIQC2O5k=
X-Received: by 2002:a17:906:483:b0:92f:41e4:e48b with SMTP id
 f3-20020a170906048300b0092f41e4e48bmr7552511eja.6.1680012417048; Tue, 28 Mar
 2023 07:06:57 -0700 (PDT)
MIME-Version: 1.0
References: <YpXFP4QggRrGSSMNy4xiU4alOPUjua9adqRBwdMwA3Q@lists.ettus.com>
In-Reply-To: <YpXFP4QggRrGSSMNy4xiU4alOPUjua9adqRBwdMwA3Q@lists.ettus.com>
Date: Tue, 28 Mar 2023 10:06:46 -0400
Message-ID: <CAB__hTTPrPhwXKH2Zj3hq6Ba+ZkWkd4-MAsRy-=6rNWczfuA3w@mail.gmail.com>
To: soring@ayecka.com
Message-ID-Hash: LK6EBMDU3YXE2C73K46WL76EPRXQCJH5
X-Message-ID-Hash: LK6EBMDU3YXE2C73K46WL76EPRXQCJH5
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205 mini i very high lo-leakage, image rejection and aggressive DC correction.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LK6EBMDU3YXE2C73K46WL76EPRXQCJH5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============7223811501959121499=="

--===============7223811501959121499==
Content-Type: multipart/alternative; boundary="00000000000056b27a05f7f65fc3"

--00000000000056b27a05f7f65fc3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Sorin,
Regarding the maximum LO offset you can use:
  LO-offset-max =3D (master_clock_rate - sample_rate) / 2;
This equation ensures that your desired bandwidth (determined by sample
rate), will fit within the digital stream (at rate MCR) that is supplied to
the FPGA from the RF front end. So, with the B200 series, you need to set
the master_clock_rate accordingly.
Rob

On Tue, Mar 28, 2023 at 9:54=E2=80=AFAM <soring@ayecka.com> wrote:

> Thank you.
>
> A. Let me understand. Can I make the lo_offset higher than sampling rate/=
2
> ?
>
> B. I will try. About =E2=80=9CBut, also, consider LO offset in the TX pat=
h as
> well.=E2=80=9D I don=E2=80=99t want to use a tunable filter.
>
> We did work with other Analog devices component. They are capable of
> better performance than they show in your device.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000056b27a05f7f65fc3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Sorin,<div>Regarding the maximum LO offset you can use:=
</div><div>=C2=A0 LO-offset-max =3D (master_clock_rate - sample_rate) / 2;<=
/div><div>This equation ensures that your desired bandwidth (determined by =
sample rate), will fit within the digital stream (at rate MCR) that is=C2=
=A0supplied to the FPGA from the RF front end. So, with the B200 series, yo=
u need to set the master_clock_rate accordingly.</div><div>Rob</div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue,=
 Mar 28, 2023 at 9:54=E2=80=AFAM &lt;<a href=3D"mailto:soring@ayecka.com">s=
oring@ayecka.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><p>Thank you.</p><p>A. Let me understand. Can I make the lo=
_offset higher than sampling rate/2 ?</p><p>B. I will try.  About =E2=80=9C=
But, also, consider LO offset in the TX path as well.=E2=80=9D I don=E2=80=
=99t want to use a tunable filter. <br><br>We did work with other Analog de=
vices component. They are capable of better performance than they show in y=
our device. </p><p><br></p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000056b27a05f7f65fc3--

--===============7223811501959121499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7223811501959121499==--
