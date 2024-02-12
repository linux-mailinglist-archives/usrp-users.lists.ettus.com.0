Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 64943851DFB
	for <lists+usrp-users@lfdr.de>; Mon, 12 Feb 2024 20:36:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A6AC4385068
	for <lists+usrp-users@lfdr.de>; Mon, 12 Feb 2024 14:36:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707766579; bh=/2yXvKJsSgm2tY8B8FucZEUD53+QguyIslCkRlUGSk4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=JwAaM2CYFgEXn4XQerA3xqbE6k+F/DxX4Tcp7u6J3wP1QBZesrq4WioThpGYOHwCR
	 gCVFCpz6qr/X7s1EaNRVyrLYRYLWBv/fGbjAz7zenEmTuRogyC9apZX+8gSGkRWYCr
	 SOZdOJ7YmU5ggrsxih4YO/aa1bki9T6+BRNONoFUnpxeJM40vP5U6F+0WUqv7y0vQL
	 2ZalM/2li98QnH0ECa5IxowyWONv6X5DBmXQ9n3+qX+5b+ccUt/nyGkFRPy3azYBxh
	 MWGKT7IzeX/ow2RbmECA7WKu5E1XB5YS21D1NGttq61JQlyCUzBBbMVFcE1GjRMoT7
	 ZO4QXGo+A3Tbg==
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mm2.emwd.com (Postfix) with ESMTPS id D9F24384BEB
	for <usrp-users@lists.ettus.com>; Mon, 12 Feb 2024 14:35:41 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XjQDB/NV";
	dkim-atps=neutral
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a28a6cef709so482410166b.1
        for <usrp-users@lists.ettus.com>; Mon, 12 Feb 2024 11:35:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707766541; x=1708371341; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tD8EXehcfy4tRQu6bAgEqYkrE+3uQArnCiz0i2EMtv4=;
        b=XjQDB/NVRn0ejskQn0VB6BheMai7iZDFCN+LDjzhArRbER3C9R6QDr65hl0YXGDiO0
         Heh2bLFSX0B9aXaPutzgYMC3Gja0FUBe1yp9UfLG+3uSC3eQQlBXozu6vYSCkctssOa0
         7yi95Pe6LneMjEseJ/yWF8lj3FNRLQvynwL0mW7ims7kk2px3a+KmxNjml2gJPQGa8+z
         vi4jPBT/9Rqwe5OosrYQr3sCw+/aB8twIz4JohAFQP8RVmjsR/l+hqDLJwilFJ/JTimw
         IexA/TuMKFLEETjXIEeaSTCSUuJcbdOY4SL2IT//OSj38tasfmDxV1QZfdgGItkbmjdR
         12dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707766541; x=1708371341;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tD8EXehcfy4tRQu6bAgEqYkrE+3uQArnCiz0i2EMtv4=;
        b=E9zEuF76lJKqkVScx6DwSRomRjZKHZg8y2Ca/Pq6cB0jGAC+oKogBBt1YeIjsMMOTW
         yzBEOCsdTm+vlKEeHDqL7U8STQ1g2Qrbjb+9eA5t4wQPvjTkXQZTmIzwobCBevKsOdIh
         OeiP/uJsFPqc19NSR5BgLIRVvLIwNDwlMq59Xtq/iL8fvtvcWebbnc/eHf2iu/isjKhx
         LMV2fhM8QuhSF3zKgz6VZKAr27UUHdRchmcecqn1hTRQqrH7b48nQNLw9JxvSrEJPlCd
         8UbqeMeSx9DtHs1y1otdHmLBg102PG/3XPcbOj0UYgyCHj2BD/5bQfqEldjinWSc5IjK
         Fziw==
X-Forwarded-Encrypted: i=1; AJvYcCWR3VsBT16ud9HHA92d68d339CK3fKl2YG23kYZG7fNsAELdbLYDznDc5u4MbEY1Njc7Om26aq5AjvrCA/B3Tdl1BJ5LxLnLpr/uw==
X-Gm-Message-State: AOJu0YzN51vMTOYiRi5y6h6YiOOx9kMMQXkoIf966xnGiuStHvnvrDy6
	crZNkfROihcPpJDlAHUWMm2kDf7Qgl8I7Mo7OgOnDgto2mgVJKZgx26Mmk7K4StDyyfcjoQ2pLg
	6pDgAw5vrfa1qYQIRpVUuYJ37MHU=
X-Google-Smtp-Source: AGHT+IF41/un0mge9vreDWbfE4UX8XsaKJzbMCB9yxrJg2ararxr8p3KpY6YA4uDdOze5X3cX+J7AQtyx92/USi82ko=
X-Received: by 2002:a17:906:4094:b0:a37:a3bf:4045 with SMTP id
 u20-20020a170906409400b00a37a3bf4045mr5580323ejj.35.1707766540467; Mon, 12
 Feb 2024 11:35:40 -0800 (PST)
MIME-Version: 1.0
References: <ydTJtYzwSbHTPd2X7O9RMzkCGwqAlfBUIAKOjVf6RQ@lists.ettus.com>
 <CAKHaR3k90Bn3oXPCckYiNqToGKUmCrfW6GZPNrM+7f0JOx7SoQ@mail.gmail.com>
 <CAEXYVK7XetC__b5vjnoqHAsVqVU1XH-wX2LWEW4mQTJemVbniA@mail.gmail.com> <CAEMZVF0JgOxZiGO=qYq54SrLFei=+KDFq7TtR80f1uKrT2cTtw@mail.gmail.com>
In-Reply-To: <CAEMZVF0JgOxZiGO=qYq54SrLFei=+KDFq7TtR80f1uKrT2cTtw@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Mon, 12 Feb 2024 14:35:29 -0500
Message-ID: <CAEXYVK4-8W+XY38r8VFtHWrUL8TWy50mc2nXpZ9Cvt0t8xEjsw@mail.gmail.com>
To: Chris <gaytanc4@gmail.com>
Message-ID-Hash: SDJKUQW5XNA5LA76NDPQFLVNWCPPAZRP
X-Message-ID-Hash: SDJKUQW5XNA5LA76NDPQFLVNWCPPAZRP
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Dario Pennisi <dario@iptronix.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Adding existing RFNOC blocks in GNU Radio GUI
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SDJKUQW5XNA5LA76NDPQFLVNWCPPAZRP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2212863377098689481=="

--===============2212863377098689481==
Content-Type: multipart/alternative; boundary="00000000000001046c0611346271"

--00000000000001046c0611346271
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 12, 2024 at 2:30=E2=80=AFPM Chris <gaytanc4@gmail.com> wrote:

> Do you recommend updating my Ubuntu to 22.04?
>

I use Ubuntu 22.04 and compile GNU Radio and UHD from source.  I typically
install it to a non-system directory (i.e. /opt or ~/opt) and add the PATH,
LD_LIBRARY_PATH, and PYTHONPATH in my environment.  This way I can have
different copies that never interfere with each other and I can easily
remove them without causing chaos.

Brian

>

--00000000000001046c0611346271
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Feb 12, 2024 at 2:30=E2=80=AFPM Chris=
 &lt;<a href=3D"mailto:gaytanc4@gmail.com">gaytanc4@gmail.com</a>&gt; wrote=
:</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">=
Do you recommend updating my Ubuntu to 22.04?</div></blockquote><div><br></=
div><div>I use Ubuntu 22.04 and compile GNU Radio and UHD from source.=C2=
=A0 I typically install it to a non-system directory (i.e. /opt or ~/opt) a=
nd add the PATH, LD_LIBRARY_PATH, and PYTHONPATH in my environment.=C2=A0 T=
his way I can have different copies that never interfere with each other an=
d I can easily remove them without causing chaos.</div><div><br></div><div>=
Brian</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"=
gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
</blockquote></div>
</blockquote></div></div>

--00000000000001046c0611346271--

--===============2212863377098689481==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2212863377098689481==--
