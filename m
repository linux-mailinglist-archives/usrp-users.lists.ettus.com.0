Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A69B3A0B4C9
	for <lists+usrp-users@lfdr.de>; Mon, 13 Jan 2025 11:50:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6A7C4385B45
	for <lists+usrp-users@lfdr.de>; Mon, 13 Jan 2025 05:50:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736765415; bh=3BFpaAvL6XCCKEpM8NnQpD3atNQlaUqguMht/GVOTvw=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=OTpLwu2SJA6na78bKcHcGxDXAFrh+dyL9Sxf7h1j2Aejh/598jw6kt6yaKx72ohkm
	 I/tbqpmkfXRReHa6eGXX4DKzovtprxR6IEBenjz41TzgyFDpB26BbblPLbrTxurFRr
	 xHBxwjIURIsxrILvTUg8UCWF7KSTEKx23YqThiprq2aCVIwFxr3kJ6AlCFC2TFKle3
	 UgSQ6Jw0jw1UMgfnga0NvcG6MOiVduEXMK3W4KD8lpA/vRbK6OxeY8BreTiDtqYK06
	 XaCec2M+wlpDciVy25D47aFuqIMdOVMctySc7VYYkOYrNTkUn/Jv2wfNboca0GDDXm
	 AU7RfL6cCnd3Q==
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 9A7EF385ADE
	for <usrp-users@lists.ettus.com>; Mon, 13 Jan 2025 05:49:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="eYFqEQol";
	dkim-atps=neutral
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-aa6c0dbce1fso591987566b.2
        for <usrp-users@lists.ettus.com>; Mon, 13 Jan 2025 02:49:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1736765358; x=1737370158; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hXtgJK6i2c2slAxgkECXL2zfySzmsQ+f6P+Cb2OYNgM=;
        b=eYFqEQol/DeWX6r2m7rTrY+Z1cjGZeSrvZ1+dh4rTkOSLe7k8tyK4zkteNxJWcJpJa
         pKnPej/jDlE9lygOtAhdT4vulG7eyskNgmcOOhSNSdQoPkVKYglGcvaCMvc0L/wqdvsK
         qKa+ft7/yp4hmXcZP+hBUFs8AeQfa7IXDvnr75uBrqX1x0WBMjslJIcCS5FglYJaSI04
         3rbBCmi+37d4vdWGsEChtw26dBCpejG3SUYTlGXhJBBjWrw81Qjqf1RjpxtC1N7B+Tnb
         pc3lNmndQbRsn9t5WYEjAQ5F8agMSy32VX26TbnrsV4ZOQdYZrO+dRr7lagZSn7Zqpvu
         cDsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736765358; x=1737370158;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hXtgJK6i2c2slAxgkECXL2zfySzmsQ+f6P+Cb2OYNgM=;
        b=lclZ34gX7jDweYjwV0SyCHpCyfCrHrJD6T9hw6YDjX8qOkxAKtW3Jg+l0v/Cvztd4t
         oLLI2bOrZ5JtctLhjuEdqZHdxrjqhy1/CbDsBB21kHcNwsqmRgrnp450DqQNy6IsZ5Vy
         VUCdHXUu9SFkjusH/v9DtN+gtYEITpmyqIrHLJ2Vb2KUfAWTLhrgr4sbXvDq6XtYfxKA
         bbu56N1RqN9F9zmjoU6xpscrz+0TcdNtDX8NdQ5xPMQ9iXtA3pxbxkvD32ijPLTAoPVu
         GNXNkYUFkmJz/jRkLjQTem7Yl8LKqrEdPE4NaOOfK16NLg51bJD2i56iMVU7X2GIllHr
         cU0A==
X-Gm-Message-State: AOJu0Yx7ziWLS15hHcgiUhZGVJMgwryecRSVMxzXkcA/9wBvwnBOAmcl
	ljsXqDIrpA9m0TXVq4uC45+veE+GKEYZceN1H+9dzW4sP6EFZHXMUg1+FyCAcj2e6PMXaKURTgH
	HGWWJuvpPbut/YOjXR4SVwS1+B3VjgzHAcV6mwfNGRVB/Y6FCl2q4iA==
X-Gm-Gg: ASbGncvsbYkqTlUMMglJvRK/eHl9FnW1xRu3saVZRpoarUYRmgcQ67N+ALTg5f9BWoj
	qY7WVvDzwBg0s5gxZBJi26gvjjo22bjudW54I
X-Google-Smtp-Source: AGHT+IHfI1mDyk828aF6CbM+oRZjsQ+5CECB3f5aBFkwg3+GfOFXt2aBOzhwUNGx+URbyXLR0FJtUL7pXGxKq1QtuJI=
X-Received: by 2002:a05:6402:3216:b0:5d9:d58:bcfa with SMTP id
 4fb4d7f45d1cf-5d972e63d9cmr49056900a12.27.1736765357520; Mon, 13 Jan 2025
 02:49:17 -0800 (PST)
MIME-Version: 1.0
References: <P0aQim8oOP68fuSSxYNakwJrxkytWewyOfYZsgVhz7w@lists.ettus.com> <CAB__hTTh14TW5VrksnYkZOUog2pYHBwYXsaxYGzaEUehc_0i4g@mail.gmail.com>
In-Reply-To: <CAB__hTTh14TW5VrksnYkZOUog2pYHBwYXsaxYGzaEUehc_0i4g@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 13 Jan 2025 11:49:06 +0100
X-Gm-Features: AbW1kvZEwypbJqjxuNXrX_tjWAE-f22L0lfl2sMLho8CPswknGE2_bHBrxYjb68
Message-ID: <CAFOi1A7Zua2ij2-_DyzakkiAX-ZsxqQ=D6tTxB+wENS7W63F=A@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: OF4MDJDBZJC5VNEGG3CNDLO63PMUCJYD
X-Message-ID-Hash: OF4MDJDBZJC5VNEGG3CNDLO63PMUCJYD
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Bursts/Buffering with Timestamp data
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OF4MDJDBZJC5VNEGG3CNDLO63PMUCJYD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6706479123470615147=="

--===============6706479123470615147==
Content-Type: multipart/alternative; boundary="000000000000319212062b943245"

--000000000000319212062b943245
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 10, 2025 at 6:19=E2=80=AFPM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Perhaps the graph is not really created until you call get_tx_stream()
> such that you need to pass the argument to this call??
>

That's right, this is a stream arg, not a device arg. See here:
https://uhd.readthedocs.io/en/latest/page_configuration.html#config_stream_=
args_args

Note that this only works with multi_usrp, not with RFNoC API.

--M

--000000000000319212062b943245
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><br><div class=3D"gmail_quote gmail=
_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 10, 202=
5 at 6:19=E2=80=AFPM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-=
users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=
=3D"ltr">Perhaps the graph is not really created until you call get_tx_stre=
am() such that you need to pass the argument to this call??</div></div></bl=
ockquote><div><br></div><div>That&#39;s right, this is a stream arg, not a =
device arg. See here:=C2=A0<a href=3D"https://uhd.readthedocs.io/en/latest/=
page_configuration.html#config_stream_args_args">https://uhd.readthedocs.io=
/en/latest/page_configuration.html#config_stream_args_args</a></div><div><b=
r></div><div>Note that this only works with multi_usrp, not with RFNoC API.=
</div><div><br></div><div>--M</div><br></div></div>

--000000000000319212062b943245--

--===============6706479123470615147==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6706479123470615147==--
