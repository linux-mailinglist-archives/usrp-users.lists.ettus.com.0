Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 24ABE9B935B
	for <lists+usrp-users@lfdr.de>; Fri,  1 Nov 2024 15:35:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E30503861B8
	for <lists+usrp-users@lfdr.de>; Fri,  1 Nov 2024 10:35:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730471743; bh=Yxt+pS7QPxXsEuIDZ5xrmy81ZUX1/COxclJx32jb1DA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=cCjGQw+KAVPUhTpsBhBxzHWlPvXN1FUrqmm4EE5ZayJGtyT7FUzthgRuAHuA8l4sq
	 HLtHAs49ZMFQWPzYTCb0M7p/j8lf9B7hpAualnddhWC22VvC8dBuZ+CMrfEJmRcSjW
	 TUdScNDkHA9u/1YLGBqmY0sE6u0UpaJH4vQHJZ5p9Bama+i9lVVk0edseJVsC5cH0k
	 +s3MWPnaxhjZ9KCfC34oM8msYIaHgCDBEhZN7cysHe2xkuZw++d/I7I05aX+GVv6Ce
	 0nluTavBNQ9NtWTku7iwUbOStdMuURHAgoil+pIqa5LvD+t4TQqJulU7zmQ+2aXxiA
	 +fhZKDgy9W5NA==
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 96BAA3854CB
	for <usrp-users@lists.ettus.com>; Fri,  1 Nov 2024 10:35:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="nHLrgEJ6";
	dkim-atps=neutral
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-539ee1acb86so2127291e87.0
        for <usrp-users@lists.ettus.com>; Fri, 01 Nov 2024 07:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1730471705; x=1731076505; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=n9gbsElSdmrs2pt4c1Qhosd9mPNVxUvLZ+YOZU63Qn4=;
        b=nHLrgEJ6AjIcG89HtV/4n+SwStWLHNBtpPIkUDrihxgNaKcQgNIlOajPZs6AIcVU0i
         96iyqaXuk0zXHwJRqtyEK9McrWiML7WVwmAJQV7LGfGp9pSOA0DoYWyLpJvFCu4fA5k+
         62fJdAYRpQJgHedG7eawmdlkMYhGJXe7KXe+p3rJiFhh29iirisbCz0nbydjnywdXSG8
         OLYQ8+BfXLbHJIYBzco+xTPUXXMGnY51w8TmTZCjocZHgBI9LPRF1TXNYp32oti2FHLG
         yUkKxXW7uwjcDjRondaYQLvj3E3o4AZgbgejpRjT/CcABeqgJfcKrna8sF4pQH6J+DXf
         bHUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730471705; x=1731076505;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n9gbsElSdmrs2pt4c1Qhosd9mPNVxUvLZ+YOZU63Qn4=;
        b=sohYi9pwJxMW+7qzjtd+otvV6/5FQZlFqkZ1RIBGqqgF77/6GkHTZ04kO5v5djXlgi
         AXBvRNWqfrXslIDTEkizDGOL17Fp2kkXBBDdHhbvRDIGQw+NQ9jEXr/FzqZaJ9mubc/X
         y2Ucz3am0fBoPemkwZxWI7vJvzS6i5hvALAGixPNIXN9dm9zUw9NtR/3TC6ZFG0AIOFB
         2ld7PXQL3/yw+MKGPfIoAZPxCD57RQiCPAnxIekUAtQkMJRa2h/WvWnZbUKGTMwx3RIo
         sh2Xe3A3D1D7JbSMW9bC3JMpjs2xZ9buaSwevjCGYrQDG4ZnwvqaWJQBs35TYOpCi9lX
         10ng==
X-Gm-Message-State: AOJu0Yycy1JTe6pPBNnT66amkztxUMYWmlU0NaoxYAf3XnFNqshyOens
	B6COJ1gzNcS6pwyn7VubKLjO/+7J0G/aNqs6kCNGvMgYsCuyWASxguy5LzX1mBiy89+e9UOodI0
	NGnK/uG+2umJQUiK9msCD3a4rlbTQIFfLvdx755Nw
X-Google-Smtp-Source: AGHT+IEKRRvrcG71WFH7yn6vySX39HC96Az/iRYIYeYzbwj3vSU8liThEYr9NXu7nVkdLlFXQovpZPleUvO2zWdjgB0=
X-Received: by 2002:a05:6512:3408:b0:53c:7432:93a5 with SMTP id
 2adb3069b0e04-53d65e2521bmr2162306e87.53.1730471705086; Fri, 01 Nov 2024
 07:35:05 -0700 (PDT)
MIME-Version: 1.0
References: <CA+0p0ZS4nzv6581RcTSbvuomn5me5CzRM-K1aza7aTSdYOjazg@mail.gmail.com>
In-Reply-To: <CA+0p0ZS4nzv6581RcTSbvuomn5me5CzRM-K1aza7aTSdYOjazg@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 1 Nov 2024 09:34:49 -0500
Message-ID: <CAFche=irY+qvRtgnizTAy8LJWvpCj1km5gLehRmT0DjjbObaEQ@mail.gmail.com>
To: Andrew D <sciensfpgaeng@gmail.com>
Message-ID-Hash: SQ455BXC7YHUKAEG6UMOZ33G7J6CIAWH
X-Message-ID-Hash: SQ455BXC7YHUKAEG6UMOZ33G7J6CIAWH
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users mailing-list <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 RFNOC Endpooint YAML Configuration
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SQ455BXC7YHUKAEG6UMOZ33G7J6CIAWH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2220188446843599523=="

--===============2220188446843599523==
Content-Type: multipart/alternative; boundary="00000000000046af230625dad731"

--00000000000046af230625dad731
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andrew,

This is true of all RFNoC images. The "ctrl" setting refers to whether or
not that endpoint has a connection to the control crossbar, which is used
for sending control packets (e.g., register reads/writes) to/from RFNoC
blocks. Because you can send control packets to any RFNoC block from any
control port master, you only need one endpoint with a control port to be
able to do control communication with all the RFNoC blocks. So you have to
have at least one endpoint with a control port and having more than one
wastes logic because currently only the first one will be used.

Wade

On Thu, Oct 31, 2024 at 9:24=E2=80=AFAM Andrew D <sciensfpgaeng@gmail.com> =
wrote:

> It appears that in all of the x410 and x440 image core yaml files, that
> EP0 is the only endpoint that is configured with `ctrl:True`.  Is this
> necessary and why is EP0 the only endpoint that requires control?
>
> Thank you!
> Andrew
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000046af230625dad731
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Andrew,</div><div><br></div><div>This is true of a=
ll RFNoC images. The &quot;ctrl&quot; setting refers to whether or not that=
 endpoint has a connection to the control crossbar, which is used for sendi=
ng control packets (e.g., register reads/writes) to/from RFNoC blocks. Beca=
use you can send control packets to any RFNoC block from any control port m=
aster, you only need one endpoint with a control port to be able to do cont=
rol communication with all the RFNoC blocks. So you have to have at least o=
ne endpoint with a control port and having more than one wastes logic becau=
se currently only the first one will be used.</div><div><br></div><div>Wade=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Thu, Oct 31, 2024 at 9:24=E2=80=AFAM Andrew D &lt;<a href=3D"m=
ailto:sciensfpgaeng@gmail.com">sciensfpgaeng@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
>It appears that in all of the x410 and x440 image core yaml files, that EP=
0 is the only endpoint that is configured with `ctrl:True`.=C2=A0 Is this n=
ecessary and why is EP0 the only endpoint that requires control?</div><div>=
<br></div><div>Thank you!</div><div>Andrew<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000046af230625dad731--

--===============2220188446843599523==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2220188446843599523==--
