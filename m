Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 464C6716CC2
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 20:45:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4DE01384799
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 14:45:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685472351; bh=kjOdLPPoWF9Fx2cY4FDB2Jo7wb8AB9wuhe/uHRmMO9w=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=g7YmH9hNCCmY2WhGVUAv6MwZvNc3AqIByhxDnpjCXQjDl7pj5cAAJBxrAfjv/DY5l
	 MWtmOYziC5HPJGgIDORujHiP5NygCIshF2+6SKhTSccXnzqRGv54uf3vMijGz0Jr6c
	 qR+GBdoCQhM88CesBDxqQXucHfAwMOTRXuPBLHEAsNvD2jvDKzYy4BVNxkp47fARxF
	 XSznQeJWvQAy1DJWgTTqKbvDncEzIO1hlqlFoc3ZlfzuHRe0cZD7CN7LW9jWLqiCVt
	 QwKUqpbLyl5OSUdEk11wD7aBbDoOsS5okbh5PObXNjlRV79LZYUlWoiQLZFasfIEDM
	 6LOUqg9gXx7dQ==
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 1C700383AB9
	for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 14:44:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="W/crWWuo";
	dkim-atps=neutral
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5147e8972a1so7688752a12.0
        for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 11:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685472290; x=1688064290;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CrVl6wGhwPXBisfgNHcL8eSlW1RPB7XGzu/MQ8cSvu0=;
        b=W/crWWuoaXdLCfluB2zLDlgMfG4WQAiV5ELRnOWCVyGwD50Py04qO5MPZnWKphMWmj
         adH3l9iqg7VWigY7koS9LddFo0vYsD/Hx/so7wnT/rM27ifjNckTeKrPECUrHsApcmN7
         OOK9lNmRaPUgjFANHi+s1/xC9oj6TtVMZJFos9mG+n2chnvCghrz8R6qktOqmrbrLQJ6
         IevBOoB7c4WfbMmPqegk2k5CGRJGSZu+EGwjUnWKMgQJ0VhCICGHFcjb57aQwbaHU2nv
         trymYEpK/Ga2VOmQDeJd7pALQsAgkZl3LANRy/4NMgpddCrIeInIDFjBS/WVVC7p65mb
         JEoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685472290; x=1688064290;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CrVl6wGhwPXBisfgNHcL8eSlW1RPB7XGzu/MQ8cSvu0=;
        b=IWz6jqyjOUJpF3fRIeMaYfrFt9MgfR/B103dS8Y4CVBZ4iDqZAVyTuUgE3OGVlxh+u
         eOcrS6golZLiZ8gG+C/R9vHFUgndD02t8QQ352JkFBnz9pJxI6j0nIPOBmnqhyyB09AR
         abS4WW7Sefxtv2eeh65qeg8jCs951jP1JyUQlF0GZlNnYJuvI6Imxpyq8E8A4mN4txig
         Y6UR4D8e61mQalXjhg/jCBZ16jyzPt2mTvUfGRTK4UPhFQYmS38KXnGw8AF2xu27oSAd
         VDVL9xE9Jr76KHymtoIQQRG0tCFSJEqrW6gQ9TVHbCzCZmb0dak/gxX7EZwuaqH2HCKt
         +U8w==
X-Gm-Message-State: AC+VfDwlMVvZ93ohYGgTknYSRX/SSv28KP3+8MLPphcE7VIpGFjOdkjm
	rAZUk4dca5dAs0GK3zl59gmJVlSMiU560QEIXbc=
X-Google-Smtp-Source: ACHHUZ4iAUFoF2KT+J039/cjxNlmwKzPQ9RhnV3BYz66EdcyuZJtNK7RmM+ySgyvzXGSVTkjqlCaw6b/K8J27pR1V/A=
X-Received: by 2002:a17:906:9b88:b0:970:925:6563 with SMTP id
 dd8-20020a1709069b8800b0097009256563mr2988520ejc.8.1685472289721; Tue, 30 May
 2023 11:44:49 -0700 (PDT)
MIME-Version: 1.0
References: <W203olqQs1iBI2xG9mGjiw1svSW52XqTjccB72ejEs@lists.ettus.com>
 <c157a530-5c52-0fd4-79a4-0c65810ee0f0@gmail.com> <JN1P275MB053556431057E296A551C8C695469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
 <CAB__hTSxoCSY8PahuLUSC-ig6FNr_r5PPsaobNh9KK8S6xNxCA@mail.gmail.com>
 <7ed5a34a-8862-09ae-edfa-d5ca15947915@gmail.com> <JN1P275MB053547F1D25B83244EE59F8795469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
 <CAL7q81shBqtUzSaHseMO59rq1u3QSxSrA7bCaX-BVZo7FNRLZQ@mail.gmail.com>
 <CANq7nXcTe6FrDNXHiYUKY7VU-47UqdW3PtZj5eafBP84-2HhbA@mail.gmail.com>
 <4da2d23c-0854-582c-a191-deb5476488fe@gmail.com> <CANq7nXeVL8ActLms9N5kCAb78ALSrKPBb-agALYJjzNk9Yi9mg@mail.gmail.com>
 <CAEXYVK6JLh_C4cb6GbPYCFxNBv=U3AgUdqP=yBkmSH7Vey4wOQ@mail.gmail.com> <CANq7nXf266iBvAARXfrmebaTeZFskaCPwvXHvvWT+Hzg-sVghg@mail.gmail.com>
In-Reply-To: <CANq7nXf266iBvAARXfrmebaTeZFskaCPwvXHvvWT+Hzg-sVghg@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 30 May 2023 14:44:38 -0400
Message-ID: <CAEXYVK5NEVExmcf0uhbXjOABwRbbxC+yvY0pZ7dBX22rYom27Q@mail.gmail.com>
To: Mena Ghebranious <mena@chaosinc.com>
Message-ID-Hash: 26LZB2JB7GCXX6NF4YZPY6ZQU366ENVO
X-Message-ID-Hash: 26LZB2JB7GCXX6NF4YZPY6ZQU366ENVO
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, Jonathon Pendlum <jonathon.pendlum@ettus.com>, Leon Wabeke <LWabeke@csir.co.za>, Rob Kossler <rkossler@nd.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 - GPIO ATR output to TX output delay
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/26LZB2JB7GCXX6NF4YZPY6ZQU366ENVO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3377574996807898425=="

--===============3377574996807898425==
Content-Type: multipart/alternative; boundary="0000000000001b92ec05fced99d4"

--0000000000001b92ec05fced99d4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 30, 2023 at 2:27=E2=80=AFPM Mena Ghebranious <mena@chaosinc.com=
> wrote:

> Yes, bypassing the DUC was discussed among our team, but as far as I can
> tell, there is no way to configure the bypass via the UHD/USRP API - it
> would require an FPGA mod.
>

If you set the input rate to the radio to be the master clock rate (i.e.
the radio sample rate), then it should bypass it automatically with the
default FPGA image.

Have you tried that?

Brian

>

--0000000000001b92ec05fced99d4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, May 30, 2023 at 2:27=E2=80=AFPM Mena =
Ghebranious &lt;<a href=3D"mailto:mena@chaosinc.com">mena@chaosinc.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr">Yes, bypassing the DUC was discussed among our team, but as far=
 as I can tell, there is no way to configure the bypass via the UHD/USRP AP=
I - it would require an FPGA mod.</div></blockquote><div><br></div><div>If =
you set the input rate to the radio to be the master clock rate (i.e. the r=
adio sample rate), then it should bypass it automatically with the default =
FPGA image.</div><div><br></div><div>Have you tried that?</div><div><br></d=
iv><div>Brian</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div c=
lass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
</blockquote></div>
</blockquote></div></div>

--0000000000001b92ec05fced99d4--

--===============3377574996807898425==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3377574996807898425==--
