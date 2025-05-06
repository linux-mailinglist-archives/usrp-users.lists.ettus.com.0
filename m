Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DF05EAABBFF
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 09:52:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A934038656D
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 03:52:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746517961; bh=E0QDSS+Bmbpv2hWY7YNliLeinvXzxWnS729eZMJWips=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=MDbrtHjKI72Wt1wSt7e1ba47dd+u5M1TQ5r5YgYc4qzaz5cuOhyrUYEuIz4YYbkMd
	 NCnLpN0aEW3AwNjSDhPJlycOaL71PWIKCU1ASJx3zGTVz8IAVvDf/E8iVQHTPUp4s9
	 1czZPrxT97OuIlgBocGOs+B07HS7rqB+mfJgDusUPThtu+74BRWrILClef23c/bMdG
	 eCz8U7W2ZTgCcNx1rSgFxVymRIYzOjspmtzT6xlVCRibugVj8du+z+PrgmwGTjCjxH
	 yupPTh0t8cUNF+GlRh+mPpX3VEnx+6xcjDtz/KNW0YCk9SAJgbzP4dey6+z4H+RDjl
	 pvmfGXEhSLz3g==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id E52583861B5
	for <usrp-users@lists.ettus.com>; Tue,  6 May 2025 03:52:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="pAlyBmJU";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5edc07c777eso7456262a12.3
        for <usrp-users@lists.ettus.com>; Tue, 06 May 2025 00:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1746517951; x=1747122751; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qKtIrsnH7+Zv+zBICL6waZi0V2YR5CpwEpg+Og/OJ24=;
        b=pAlyBmJUkkQURGUJF5f0tOfgR6Df7sp6NdFDltlPkrdugjU9C1eUf+4QVpGIyYyOJW
         mVvf8pQRxvoEp/VG8CXGRNxUvW4iWFz3SIQ9NJU1p+ggW/g0dfxIHD5zeVhXLqTOrnnQ
         zftFmE3RpUeYdhdlK70fUldCrkEMQr4kD9xulbOU4k5hMwHjA5eSRffOjrRXwyHPi+AG
         g+f0yO8YRfwztmKVMathFZqDb/m1G45UbBXhFGyaflRfajqxiy5x/L0r0FAJXQZx+1p3
         bbTPxpNwrvqKLN8NQ6TlQyqx4QMqCH+stwrgTfGuTb4S+D0CnhZwcHFoWycz+uxe3SsX
         1GbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746517951; x=1747122751;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qKtIrsnH7+Zv+zBICL6waZi0V2YR5CpwEpg+Og/OJ24=;
        b=P30oOdYQg6CYVltPZ0PFjTuj7EqGQXQLpRDFkY1oXtDBMy4CKYJZ+3gmQscsMVsb2G
         T8VB9wyLkibHOb9bG0s4BUSAFxg6ov6N+8oAG8r6LFejF6McckAQ169kK4BlI0qDqB2B
         d09ep7ZPEqGhSE40BOrUPEgpAC18qmxwfeAbDcXQSdnodIPeylT2z9cf3/1BIVPwjVQ8
         881jZvt2s/ST0Apc4QW80C+FceweRgXC1+DbSKJKw3Xnsc9UgS6LX0wfR3znGsa2iGYO
         DwmDbUrIyRdBwvw/o0ZUrwva/JsgAT7DnLdhmesSMdQ9B/zvscbolp0sqjVpqS8y4Ufe
         hVJw==
X-Gm-Message-State: AOJu0YwPdaURZD24hWItz6u6+GFtPBvTOK1QQdMVJh1mBT2GU/QTNngA
	QeIbZV6HG5A+4Q5VjyazK7kUtcGQYTQ58op1aTaAHFs4SEta2Y4NjBLkcEjUXxrAn+sYUJhk9C0
	yiNLztpUzlx4Yob68scR5zziobj29dawHwlpNuXjmtQkfLQb4bJ0=
X-Gm-Gg: ASbGncuEvHGRkzRzT9Mw5Lkr0xWkc7fAUc59mA18J3bLfE7rTvf8ayTeBu8wpR3K1pU
	Fkyw9ph3p3zo3zdPgVJZloW9MuDk2gougSqGOpzjhD6YlvrIU2glatukxYfbEdT2HSyCleuqAe6
	tsugO3cZMuIbJhWNUqMf+/XYsrZtFXUMxwh3n9H5BX3oqQlHe6vMmOffvHld0InBy3
X-Google-Smtp-Source: AGHT+IG0m/PUG12EIRr+7wxzScKXXV2bh7t1MPb+WH5a5YBoLCz2YSxOrko++GFF0U5XEzqRGDF+tnxmjKPYUaFq5rw=
X-Received: by 2002:a17:907:9708:b0:aca:cde4:fac1 with SMTP id
 a640c23a62f3a-ad1d45ae43bmr185077466b.31.1746517950913; Tue, 06 May 2025
 00:52:30 -0700 (PDT)
MIME-Version: 1.0
References: <6otIcMYMwaPxBhJef0uR8quO6MIZZRlC1CQOwRnwY@lists.ettus.com>
In-Reply-To: <6otIcMYMwaPxBhJef0uR8quO6MIZZRlC1CQOwRnwY@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 6 May 2025 09:52:19 +0200
X-Gm-Features: ATxdqUHF7BKGxQCdqyQAeU0m2nx3XLfRXbBLzQRSJnEbxBvPBzf0AtKh0rk7bzw
Message-ID: <CAFOi1A7T1e+v_QkUYehDKTGon72HK6gf3zKs775APdG+LorFVA@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: LKNJL4BOU7MAR6QGH7Z7LMQPELBONA7D
X-Message-ID-Hash: LKNJL4BOU7MAR6QGH7Z7LMQPELBONA7D
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Missing RFNoC: DMA FIFO Block in GNU Radio 3.10
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LKNJL4BOU7MAR6QGH7Z7LMQPELBONA7D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6828959153543822396=="

--===============6828959153543822396==
Content-Type: multipart/alternative; boundary="0000000000000eed98063472e649"

--0000000000000eed98063472e649
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

you're right, those bindings are missing. However, I don't believe you will
be able to increase the throughput to 10 Msps on the E310. The interface is
simply not very fast.

Since you're able to build bitfiles, I would suggest trying to build a
bitfile with a DRAM (capture/replay) block. You could upload your square
wave (or any other wave) and play it in a loop. Then you can stream at any
bandwidth up to the E310's max of 61.44Msps. Remove all other blocks from
the design (only keep radio and DRAM).

Hope this helps,

--M

On Mon, May 5, 2025 at 6:19=E2=80=AFPM <kurz.reido@gmail.com> wrote:

> Hello All,
>
> I=E2=80=99m spinning my wheels on this and could use a clear cut answer.
>
> I have GNU Radio 3.10.9.2 and get the following when i do
> =E2=80=9Cuhd_find_devices=E2=80=9D command =E2=80=9Clinux; GNU C++ versio=
n 13.3.0; Boost_108300;
> UHD_4.8.0.0-266-g50967d13=E2=80=9D
>
> I finally got an FPGA to build with the axi_ram_fifo.yml (i customized it
> for my *E310*). All the SEP connections look good.
>
> When I went to GNU Radio I could not find DMA FIFO *or any* FIFO block. I
> seem to have a lot of the other RFNoC blocks (not sure if any others are
> missing, but I have the vast majority at least).
>
> *QUESTION:* How do I enable or get the block to show in GNU Radio 3.10?
> I=E2=80=99ve tried using rfnocmodtool, but I=E2=80=99m not sure what I=E2=
=80=99m doing and a lot of
> OOT RFNoC documents are outdated.
>
> I need this DMA FIFO to stream my vector source into my RFNoC DUC and the=
n
> to my RFNoC Radio. Without it my vector source to DUC caps out at around
> 5MS/s which is not enough for my purposes. I need to get closer to the 10
> MS/s limit (between arm and fpga).
>
>
> Additional question: If anyone has a better idea of how to transmit a
> square wave pulse that is only 400ns wide I=E2=80=99m all ears.
>
> Any help is greatly appreciated. Thank you in advance.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000eed98063472e649
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>you&#39;re right, those =
bindings are missing. However, I don&#39;t believe you will be able to incr=
ease the throughput to 10 Msps on the E310. The interface is simply not ver=
y fast.</div><div><br></div><div>Since you&#39;re able to build bitfiles, I=
 would suggest trying to build a bitfile with a DRAM (capture/replay) block=
. You could upload your square wave (or any other wave) and play it in a lo=
op. Then you can stream at any bandwidth up to the E310&#39;s max of 61.44M=
sps. Remove all other blocks from the design (only keep radio and DRAM).</d=
iv><div><br></div><div>Hope this helps,</div><div><br></div><div>--M</div><=
/div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" =
class=3D"gmail_attr">On Mon, May 5, 2025 at 6:19=E2=80=AFPM &lt;<a href=3D"=
mailto:kurz.reido@gmail.com">kurz.reido@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><p>Hello All,</p><p>I=E2=
=80=99m spinning my wheels on this and could use a clear cut answer.</p><p>=
I have GNU Radio 3.10.9.2 and get the following when i do =E2=80=9Cuhd_find=
_devices=E2=80=9D command =E2=80=9Clinux; GNU C++ version 13.3.0; Boost_108=
300; UHD_4.8.0.0-266-g50967d13=E2=80=9D</p><p>I finally got an FPGA to buil=
d with the axi_ram_fifo.yml (i customized it for my <strong>E310</strong>).=
 All the SEP connections look good.</p><p>When I went to GNU Radio I could =
not find DMA FIFO <strong>or any</strong> FIFO block. I seem to have a lot =
of the other RFNoC blocks (not sure if any others are missing, but I have t=
he vast majority at least).</p><p><strong>QUESTION:</strong> How do I enabl=
e or get the block to show in GNU Radio 3.10? I=E2=80=99ve tried using rfno=
cmodtool, but I=E2=80=99m not sure what I=E2=80=99m doing and a lot of OOT =
RFNoC documents are outdated.</p><p>I need this DMA FIFO to stream my vecto=
r source into my RFNoC DUC and then to my RFNoC Radio. Without it my vector=
 source to DUC caps out at around 5MS/s which is not enough for my purposes=
. I need to get closer to the 10 MS/s limit (between arm and fpga).</p><p><=
br></p><p>Additional question: If anyone has a better idea of how to transm=
it a square wave pulse that is only 400ns wide I=E2=80=99m all ears.</p><p>=
Any help is greatly appreciated. Thank you in advance. </p><p><br></p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000000eed98063472e649--

--===============6828959153543822396==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6828959153543822396==--
