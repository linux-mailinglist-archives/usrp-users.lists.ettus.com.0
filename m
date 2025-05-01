Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A8DAA59C6
	for <lists+usrp-users@lfdr.de>; Thu,  1 May 2025 04:41:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C013A381074
	for <lists+usrp-users@lfdr.de>; Wed, 30 Apr 2025 22:41:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746067317; bh=V5bXxPcgf3WKtBhIZYplvFiOebuV87CAb+xxhZWnG74=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=O4lhzzC9578UYtstODrf3Hmb4nCteQ43AhAd88Ozon8mQg/O2hM8ciVsTxxKE6V/b
	 IfZhmkdmeHCIG2NlWe/pA6uzdLEwLDuy4Fs6JZamQsIuj1j+8DaOUi/qD7pTWmhePG
	 YpPxQfNaOqBlEnQPupaGxoBFrAMOHagnulPYaoPEHsPlmDK4V5UZXuImI7/hNUNDYK
	 eVwXQgvV5yWHCxzHQqqaY0PMAgvDfC9x5jJiKYO6N6p0Hzra9JxJvEto2moX0rqh6B
	 BOGMbIMtEBGgdHaktrm1g/a8KflSoDPR0VU0VgHnTMfRvgXB6A2chKAWcNVU6mkWQ3
	 +/wnlkVVwNSWw==
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	by mm2.emwd.com (Postfix) with ESMTPS id B2A63386288
	for <usrp-users@lists.ettus.com>; Wed, 30 Apr 2025 22:41:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="p2jj/Rtf";
	dkim-atps=neutral
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-7082ce1e47cso4896227b3.2
        for <usrp-users@lists.ettus.com>; Wed, 30 Apr 2025 19:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1746067261; x=1746672061; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kzDAKiwUWewICGPCpIdCcc7bTLvfF3qCbe6aAaYx5tE=;
        b=p2jj/RtfVZ93ww/a1Amzp2q5fLDQNweIXHNT02q3a166Cgse13KGLonfKcC59aI8yO
         yPxwSaW/gKFaKoutkjixsrUiKs1Qc8/OZs8Gy1MHvLh8wwYSeQWbEOaoZUM1Vp2geen8
         djWqSeFLedmbMLZjnFz+3oEYBWaPr4qt8MpMAl9fylPBjBdFGlFJkPiDcCXrcyEKrD4D
         O304gVSaqMyPbqPKeIL9MwpRatiaLZfHLpqo/Xi7xs5Ebk/uc0WZWgv+MrPxsYdQn2ql
         NFKvjCPBsyUpy4coDpdOHxG2iXGiF2Vm0A+xhRPi5qIxq7QTXVkneRjOCBzyHTizQKW/
         82Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746067261; x=1746672061;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kzDAKiwUWewICGPCpIdCcc7bTLvfF3qCbe6aAaYx5tE=;
        b=bjeScWaMEom7iPmoifwzu8vAAFWWdwC49V6RfIEoQeJNzVCxX6cbT9SghHTMw/VN3N
         a8H43trXlDHECgzCFjWNY/DBUqVxnBBZBJ4wa9Q8AO+IUpOw1YWXq9nXEVE3F3j4SSiB
         PUsshJmVpkZ2GcfpkMyK8IMS6hlG/UTQ+1uaMzOq+mjNzF5V1eAAub/pfyFE+onrhES2
         gimpksaoq9VQ2JxNTcyhmR4qKG4DS2JdcDqApmw+SAqsZZKC1G357cy4Mw6/hKwa+n4K
         MuJ4bZc0GiBMAHl+GOc3VbZkfopY2zFa/2p+epvLZy7qjEwpTdPQyDQJJkzXrSdNQ66N
         +iHw==
X-Gm-Message-State: AOJu0Yxsi4pGmsTEIwLSyrtvLLGQktL9xwnCNH6PWAW1Mjem3D5flgR2
	fvC3inhzq0O1QOsTeFBJ6jLojRWARGyizmOcES2xQVJb2aSGVTusZrcDKuGM4w0MixNxc922wTT
	exM4nNdQSVlyxblLUWPUt1xEWoykm4zJhkqifZgA0
X-Gm-Gg: ASbGnctCixswvLnYplIS38k4a+1Ww/jBjg9UT5+1HRYti9PtYzhMA/6ZPdl9fBBmDoh
	mVVfoqyip8UD83jyuu37VhdJa6u/e9c+4gK7gKY89XjmFRmNc213Z/00bRnv+7RGuISkfR+xlle
	LsayyGO0qSJEDMGL2DyND/5g==
X-Google-Smtp-Source: AGHT+IHYPlGycf/pQPbSgjH4+gXKN98IiZx/h+yLXcD36cRLLsCk6bqfdpbwA0wKdpRVlTOJdTo/tONP1GUuQu+ETb0=
X-Received: by 2002:a05:690c:15:b0:700:a6a0:1e2e with SMTP id
 00721157ae682-708ad37ee9amr72749747b3.0.1746067261064; Wed, 30 Apr 2025
 19:41:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK4_EZt1CN7eic+zX89q_UM9xkLRrgDYOfQgAJa-vxgkEA@mail.gmail.com>
 <CAFche=hXaVLyqJA7Ay7k8NqnVaKyWni1h7JwapVwue2iwAM5MA@mail.gmail.com>
 <CAEXYVK5W_kupokFpwQY+GpwEUO1nN4Y0cH6Bhj8z1HFMYP54uw@mail.gmail.com>
 <CAFche=iRsVwbop=mzORPq9HoOwFkMc-uBkaEYocerg9Es+QXrQ@mail.gmail.com>
 <CAEXYVK6S7adZNCzgVd124OyHJd8erXqUQZxNcODdn_WdQLiNZg@mail.gmail.com>
 <CAFche=iEJC+aFVHJwqJFFdC_WDM5hh7uXBEx8gVQ2hdzQRHc9A@mail.gmail.com> <CAEXYVK7rk9=61SOaofikn=K5C7UiWOvcYwdz_nA6ee9wbLi9Tg@mail.gmail.com>
In-Reply-To: <CAEXYVK7rk9=61SOaofikn=K5C7UiWOvcYwdz_nA6ee9wbLi9Tg@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 30 Apr 2025 21:40:45 -0500
X-Gm-Features: ATxdqUFtxjDKj_vm2lxgkiRxd8uaRSpSosHiLQSUvfSudsBBCeVjkQW3MouQnxw
Message-ID: <CAFche=husQaF4B5FgLS7ibG9oSpQ5-M0GJvUE_=qEJPpqe7UXw@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: WU66JB6N3MD7SAJ356AV76FVZ3K3MBO7
X-Message-ID-Hash: WU66JB6N3MD7SAJ356AV76FVZ3K3MBO7
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC CHDR DstEPID and Virtual Channels Clarification
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WU66JB6N3MD7SAJ356AV76FVZ3K3MBO7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6798446918026530545=="

--===============6798446918026530545==
Content-Type: multipart/alternative; boundary="000000000000d9a06f063409f63c"

--000000000000d9a06f063409f63c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I don't think static routing will help in your case. Stream endpoints are
only for communicating over dynamic routes and the EPID is used for that
routing.

Wade


On Mon, Apr 28, 2025 at 9:37=E2=80=AFAM Brian Padalino <bpadalino@gmail.com=
> wrote:

> On Mon, Apr 28, 2025 at 10:33=E2=80=AFAM Wade Fife <wade.fife@ettus.com> =
wrote:
>
>> In practice, you can't have a large number of stream endpoints in a
>> single USRP, because the crossbar and associated logic adds up. Somethin=
g
>> on the order of 16 or so might be a practical limit, depending a lot on
>> what's on those endpoints. If you need to distinguish between more data
>> streams, then you'd want to use something like virtual channels or
>> prepending your data with some kind of identifier.
>>
>
> Thanks for this answer.
>
> Does static routing help with this or not particularly?
>
> I have only a single configuration I ever want to run, and it's endpoints
> directly into a modified radio block - no other blocks.
>
> Thanks,
> Brian
>
>>

--000000000000d9a06f063409f63c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I don&#39;t think static routing will help in your ca=
se. Stream endpoints are only for communicating over dynamic routes and the=
 EPID is used for that routing. <br></div><div><br></div><div>Wade</div><br=
></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr=
" class=3D"gmail_attr">On Mon, Apr 28, 2025 at 9:37=E2=80=AFAM Brian Padali=
no &lt;<a href=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div dir=3D"ltr">On Mon, Apr 28, 2025 at 10:33=E2=80=AFAM Wade Fif=
e &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@et=
tus.com</a>&gt; wrote:</div><div class=3D"gmail_quote"><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><div>In practice, you can&#3=
9;t have a large number of stream endpoints in a single USRP, because the c=
rossbar and associated logic adds up. Something on the order of 16 or so mi=
ght be a practical limit, depending a lot on what&#39;s on those endpoints.=
 If you need to distinguish between more data streams, then you&#39;d want =
to use something like virtual channels or prepending your data with some ki=
nd of identifier.</div></div></blockquote><div><br></div><div>Thanks for th=
is answer.</div><div><br></div><div>Does static routing help with=C2=A0this=
 or not particularly?</div><div><br></div><div>I have only a single configu=
ration I ever want to run, and it&#39;s endpoints directly into a modified =
radio block - no other blocks.</div><div><br></div><div>Thanks,<br>Brian</d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"gmail_qu=
ote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><di=
v class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>

--000000000000d9a06f063409f63c--

--===============6798446918026530545==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6798446918026530545==--
