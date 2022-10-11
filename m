Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E80F45FB9B8
	for <lists+usrp-users@lfdr.de>; Tue, 11 Oct 2022 19:35:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 60BAF380C96
	for <lists+usrp-users@lfdr.de>; Tue, 11 Oct 2022 13:35:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665509725; bh=Nn1mAFnc5/6wgGFTgSQ1jxZgk7o7AZDF8LxHCL+55Aw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=nIu5t4dQmCOnbCAZFgFjEptp6wbSsvQ7jhWlwzx2u8xmM3b47lkArvgJY6fxQtZM9
	 /NClEiA5Pc1EleH5/wxY4wjsQZsxaNlxPntovskIsRNJoM/pnnBTCsjmrhjC2rL6Tx
	 biuSwOg6CcxS5sGMPErN8i0M2vanRtTm2LJu0WkZQtrLhs6UYSZCx0xZ1iiUJ2NusC
	 A/Tm1ba570wAoqbGWGQYc7cgMgEg+l1c6at8tv3SSMpJxriYqasy29YHnQn+q5V+Zx
	 vqhn1tSg2YC+BbuH9v635okoertrsmK5YAl5M2Xo0kWiQfQxCzI1QZ2DekuY7d6P9x
	 vbcrWA9obgYCA==
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mm2.emwd.com (Postfix) with ESMTPS id BDCB0380C19
	for <usrp-users@lists.ettus.com>; Tue, 11 Oct 2022 13:33:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZYs3XQpn";
	dkim-atps=neutral
Received: by mail-qv1-f54.google.com with SMTP id mx8so9388109qvb.8
        for <usrp-users@lists.ettus.com>; Tue, 11 Oct 2022 10:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iBbE248OsZr45VwaAThSVqGSy9i/2lzcz5yXGK9oixU=;
        b=ZYs3XQpnGRl2/hhh+6N9Ak8ziTBh6fiaOnJkJIq6f1+PMLcpdenW98LdxYvDO+AJIf
         Uuat/4/45NAQPPoSRzsQK2Q1tPzqrSk2Au2pTNPolnDeaHWvR0/xcAHWyFsQwBzPjbYd
         K4wJRNd0R/5VmqxWp2KVCvWdBcuS79AHDzmxwgf5mVMq8gusHBMabuNQFWn3F6HuqFpk
         uAfY5gzwc4cSlj1da3ABuAMdKDkX1Fr1ze5QSWWIbdAbwhCwz4l/BzTJ9n6M2jrKSOZi
         gM/KlBftGvAtUaWSis12Kv5H39PhVeTfSfU5yxVVX6ELhaFq5szpMHhC5d4GZzz8Kl+H
         nWyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iBbE248OsZr45VwaAThSVqGSy9i/2lzcz5yXGK9oixU=;
        b=mxtyZPDf8hBVK3xgrqaVsjQ4lXba+LIXOZVnDmC/T+ezYNIpiD1/uqONlYtjegOFC/
         djMzxS8WEeZPsK2gFZj6Euu/P6BPgXhG9Xg4b0HtCBNOyj4MgyjihDOHDZBQUfp8JygD
         sofNeLx33yEoafYa2YnjlQ4ss89izxZvRF8j2e6vRVfPxl1n5Gca6bdOscXyRX3sYKQo
         cFG2h7J0luQc/QG8GdfEweky4+zPoD4K4YHwhvOLClRudb3QNnwast7sQJxPf0WwIA8K
         K26P/SlWZUkL6c61QLZ8jy3cwBMfgIOJgv1bgQWwnAvT6V36Y/gdcp71GVcwM16cvO+D
         VunQ==
X-Gm-Message-State: ACrzQf3bCeey7ORut6X8UGKzP2pYZ7rjwHRUQhsddNcAqx9NvbvcrbBp
	ejX9QrH9hFj5qzc8Ir5ZdrqwFmFWE90=
X-Google-Smtp-Source: AMsMyM4QxSr+riBrqlsmIedXxFOYD1J2n8iUzpOS/SOOLklgiGBFd1qNu+UwknriJOE9MbveYxLJqg==
X-Received: by 2002:a05:6214:1c89:b0:4af:664e:553b with SMTP id ib9-20020a0562141c8900b004af664e553bmr20360710qvb.18.1665509621861;
        Tue, 11 Oct 2022 10:33:41 -0700 (PDT)
Received: from [192.168.2.188] (bras-base-smflon1825w-grc-09-174-93-2-50.dsl.bell.ca. [174.93.2.50])
        by smtp.googlemail.com with ESMTPSA id u16-20020a05620a0c5000b006ce441816e0sm13382736qki.15.2022.10.11.10.33.41
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Oct 2022 10:33:41 -0700 (PDT)
Message-ID: <83a99c67-3c6a-869b-bcdd-b0ef258cf240@gmail.com>
Date: Tue, 11 Oct 2022 13:33:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <DB6PR02MB2981930195E78445C7C9AAB3E7209@DB6PR02MB2981.eurprd02.prod.outlook.com>
 <1567317201.188112.1665504920071@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1567317201.188112.1665504920071@mail.yahoo.com>
Message-ID-Hash: X6XLNYN5OVICAWWNDFKLIGZC7F62HTSS
X-Message-ID-Hash: X6XLNYN5OVICAWWNDFKLIGZC7F62HTSS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.1.0 speed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X6XLNYN5OVICAWWNDFKLIGZC7F62HTSS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0968999016896842250=="

This is a multi-part message in MIME format.
--===============0968999016896842250==
Content-Type: multipart/alternative;
 boundary="------------a426YpEcVbC9gdlq2tyavZkd"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------a426YpEcVbC9gdlq2tyavZkd
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-10-11 12:15, zhou via USRP-users wrote:
> Hi,
>
> Some of our USRPs are using UHD 3.10 because they are in old systems.=20
> and I am also using UHD 4.1.0 in some other USRPs in new system. The=20
> USRP products are all NI USRP 2944 (X310).
> In my applications, I need to use PPS signal to synchronize multiple=20
> USRPs. After applying PPS signals, I read back the time in USRPs one=20
> by one. Because of network delay, there is some difference between the=20
> readings. However, the difference is much bigger in UHD 4.1.0.
>
> The interval between two USRPs using UHD 3.10 is about 0.2ms while it=20
> is about 1.4ms in UHD 4.1.0
>
> Does this mean that UHD 4.1.0 is slower than UHD 3.10?
>
> Thanks for any suggestion,
>
> =C2=A0Hongwei
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
When you say "read back the time", you're presumably using=20
"get_time_now()", which is nearly-guaranteed to return different
 =C2=A0 results from different USRPs queried serially, since it's returni=
ng a=20
*snapshot* of the time-of-day-clock in each USRP, and if
 =C2=A0 you're querying them serially, there'll be some=20
unpredictable-but-bounded time for each of those transactions to complete=
.

It's unlikely that UHD 4.1 has significant performance regressions=20
compared to UHD 3.10, but UHD 3.10 is old, and things
 =C2=A0 like command-packet handling may be quite different between those=
 two=20
versions.


--------------a426YpEcVbC9gdlq2tyavZkd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-10-11 12:15, zhou via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1567317201.188112.1665504920071@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydpf0592c6fyahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hi,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Some of our USRPs are usin=
g
          UHD 3.10 because they are in old systems. and I am also using
          UHD 4.1.0 in some other USRPs in new system. The USRP products
          are all NI USRP 2944 (X310).</div>
        <div dir=3D"ltr" data-setdir=3D"false">In my applications, I need=
 to
          use PPS signal to synchronize multiple USRPs. After applying
          PPS signals, I read back the time in USRPs one by one. Because
          of network delay, there is some difference between the
          readings. However, the difference is much bigger in UHD
          4.1.0.=C2=A0</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">The interval between two
          USRPs using UHD 3.10 is about 0.2ms while it is about 1.4ms in
          UHD 4.1.0</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Does this mean that UHD 4.=
1.0
          is slower than UHD 3.10?</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks for any suggestion,=
</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">=C2=A0Hongwei<br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    When you say "read back the time", you're presumably using
    "get_time_now()", which is nearly-guaranteed to return different<br>
    =C2=A0 results from different USRPs queried serially, since it's
    returning a *snapshot* of the time-of-day-clock in each USRP, and if<=
br>
    =C2=A0 you're querying them serially, there'll be some
    unpredictable-but-bounded time for each of those transactions to
    complete.<br>
    <br>
    It's unlikely that UHD 4.1 has significant performance regressions
    compared to UHD 3.10, but UHD 3.10 is old, and things<br>
    =C2=A0 like command-packet handling may be quite different between th=
ose
    two versions.<br>
    <br>
    <br>
  </body>
</html>

--------------a426YpEcVbC9gdlq2tyavZkd--

--===============0968999016896842250==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0968999016896842250==--
