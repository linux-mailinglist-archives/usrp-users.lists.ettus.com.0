Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 041666D6748
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 17:29:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D8BC1384092
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 11:28:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680622139; bh=RfUNnnn0RGaGmyTF8NIvqL1rIlRB3OXUGf5CTGwCdQ4=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=C4pmcufbY0WEb+0eI/XY/9vUIp3y3HbB3yLSjvEfPv6zcaMg1WP98RRJKNbsNe4nK
	 cw38k53ToUG3gBQnFIfFuYfcfjBcPQxwyifz7z3M1InwiVf7zIS30vAoowvxTt+ZfT
	 rOWxPRWOTGk5GpuPrCcPUN5VJ/hD1zgT2XETgYqkSH1mD8zL5ErpW6XTUFRXc/DMHF
	 3BoOfKrKSoyOu1If2Kf5lARyb6ccBgmSTZ7UojISbXxrHL31m3TlDIYbXGgPmARBAO
	 PFn9Omhm3TfMjpxHhx3u4l/VFESUX8aNvxLwykPb1JpY9fvAjGcaa/UFcj2YY31pIE
	 PKZogwUfFuFBA==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id DC7DA384864
	for <usrp-users@lists.ettus.com>; Tue,  4 Apr 2023 11:27:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="TooJI74r";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id i5so132402008eda.0
        for <usrp-users@lists.ettus.com>; Tue, 04 Apr 2023 08:27:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1680622063;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mzMzMTk5YqezzEV4txk1eLQ7lovZCIlGUjL8QoIEb0k=;
        b=TooJI74rDGPlAYC1kitDGBk9q48pitMt3bXHtQhg2vl3ApN6aNZJRq+XsfcLCu4Hr0
         6H/RbTBiXqCRx+eVmvw8EaojTBz16MvKVlapdBNwjQG9AatC3WqegGOiXFf9rKoAZnuI
         MY1+DE7Wb+B5d4uZKA3012DcLqgXXIQHwN7oVgOquW2iyjaA0MWDf/dRr3crBfm3NVGw
         6q4GUk686KmNosM7cU5EsNkWHbzZBoFSs7CsxaWzH2mqDJqgeDcNk+Zznh+/vz09LHEm
         Cl0RIPX40kKUop2dv3dfokKEhicKIplSG25l8Y1Fu6mJxbL5qtD2PKFRUlOvF9OQ6QgD
         eMQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680622063;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mzMzMTk5YqezzEV4txk1eLQ7lovZCIlGUjL8QoIEb0k=;
        b=XKeuH94yowx35QRXdwtSY5WREoNEaq6Cu3mcNsDjj7IkzV4gvL5d+8j7byfddusXFO
         TMU1MJjyUDQQaGIbLFuAPVeuaEwC4tt0BhGtfqkzdebC9KzavGiNk8zHM3cWkbfD/RQV
         8qZrUZzPAisYnTbhHVkdZ5y7TxQlqJwUp79VWcOE/WEHZ+IZuTzjOOOpDsW/Bal2roup
         ACd8BK5rLxQPrLVnJKfSnAC8srGynFHFZqtRMEWymM7+fUQ4FuCuL5F4YmNBPhu10ZTq
         nCYFuh0CdtBwIeof50nCzX3rGjVFQM7UwIt6mYkcxoh4mlB8UCScVgCEe2SE36cbn9Rv
         n1sQ==
X-Gm-Message-State: AAQBX9eTchb3Tg8lF52FH6DCYXlJv25MSg7KnCO6OzMwU5SwVSdNLj2y
	jbE7PbtPpOfVEtcjZSQkN2hYe6PDPCTAH0qEp+waQWnGslj1xA8/
X-Google-Smtp-Source: AKy350asYz4slJdu9cXu49hHJpuOQCRsfQl3KaF3J+uvtLKDcUeCPks5BpSb0XBduE67TDzEgw8dfuFnjqLvfWeybG8=
X-Received: by 2002:a17:907:961a:b0:92f:cbfe:1635 with SMTP id
 gb26-20020a170907961a00b0092fcbfe1635mr1703995ejc.6.1680622063463; Tue, 04
 Apr 2023 08:27:43 -0700 (PDT)
MIME-Version: 1.0
References: <Kmi3kEahfjMhcm2ysTSYK0BFwrGzDFcHc03SWoMYQ@lists.ettus.com>
In-Reply-To: <Kmi3kEahfjMhcm2ysTSYK0BFwrGzDFcHc03SWoMYQ@lists.ettus.com>
Date: Tue, 4 Apr 2023 11:27:32 -0400
Message-ID: <CAB__hTQBSHVxZ27sx3Ug76uQ6zOsN_+C-9_i9ZexpSxmCkuSYw@mail.gmail.com>
To: yanzhanggc@gmail.com
Message-ID-Hash: 7CDZAZIFUIJZEBT7D63RS6E4FBCR2TC2
X-Message-ID-Hash: 7CDZAZIFUIJZEBT7D63RS6E4FBCR2TC2
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: what is the purpose of issue_stream_cmd() for the rx_streamer?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7CDZAZIFUIJZEBT7D63RS6E4FBCR2TC2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============1235194460074831396=="

--===============1235194460074831396==
Content-Type: multipart/alternative; boundary="00000000000018b61405f8845104"

--00000000000018b61405f8845104
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

issue_stream_cmd() tells the Rx radio to start sending samples. You
typically call this as rx_streamer->issue_stream_cmd(), and then the
command "propagates" to all the blocks in the graph (such as DDC and then
ultimately the Rx Radio).  Without this command, the Rx radio will not
begin streaming such that your call to "recv()" will timeout for lack of
samples.
Rob

On Tue, Apr 4, 2023 at 10:58=E2=80=AFAM <yanzhanggc@gmail.com> wrote:

> Hi all,
>
> Does anyone know the purpose of issue_stream_cmd() for the rx_streamer?
> When I use the rx_streamer to stream data to the host, I just call the
> recv() method.
>
>
> The question is what is the purpose of issue_stream_cmd() for rx_streamer
> in uhd?
>
>
> Thanks,
>
> Yan
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000018b61405f8845104
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>issue_stream_cmd() tells the Rx radio to start sendin=
g samples. You typically call this as rx_streamer-&gt;issue_stream_cmd(), a=
nd then the command &quot;propagates&quot; to all the blocks in the graph (=
such as DDC and then ultimately the Rx Radio).=C2=A0 Without this command, =
the Rx radio will not begin streaming such that your call to &quot;recv()&q=
uot; will timeout for lack of samples.</div><div>Rob</div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 4, 2023 at =
10:58=E2=80=AFAM &lt;<a href=3D"mailto:yanzhanggc@gmail.com">yanzhanggc@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><p>Hi all,</p><p>Does anyone know the purpose of issue_stream_cmd() f=
or the rx_streamer? When I use the rx_streamer to stream data to the host, =
I just call the recv() method. </p><p><br></p><p>The question is what is th=
e purpose of issue_stream_cmd() for rx_streamer in uhd?</p><p><br></p><p>Th=
anks,</p><p>Yan</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000018b61405f8845104--

--===============1235194460074831396==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1235194460074831396==--
