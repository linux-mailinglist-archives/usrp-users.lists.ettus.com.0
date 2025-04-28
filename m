Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E931FA9F383
	for <lists+usrp-users@lfdr.de>; Mon, 28 Apr 2025 16:34:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 28B3E385E95
	for <lists+usrp-users@lfdr.de>; Mon, 28 Apr 2025 10:34:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745850879; bh=r8XdolBFZAK49YaYIhWNaAssJmwzfYD0V48PQE4kacI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Brp2KAAEIuXQr/iGrxhPNC675tIMF6Q0E1XhiENbT4rvJ7KiHv28XST9AH04m35E6
	 DvUo+ay2nfRA6e6pAokoRdCFr9vHzblGJoZnGS2ygBsuNxmKn2uHx7SiQd396mgCGi
	 7mW0CxbMAMuOTyHyLFS91GBMP4pxcINni6Cfe3TyCTqva++f9IdkIEGBxU6B7K53FR
	 tgmGQ66RIg6NxeHQR90Fdh+37l4TA29cgJvoSRhm5Tr+n8H5/0qWr65RwsbJ3Gd6FS
	 m/Up8THPN8fnhBfHYIbPLlbTUmc7auc07gcMHfhPibC4zWeBvvSHiE5evwVYrtpcsB
	 Wzv3Rdz8eUYMw==
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 509B2385CBB
	for <usrp-users@lists.ettus.com>; Mon, 28 Apr 2025 10:33:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="sVQnCFBl";
	dkim-atps=neutral
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-6fead317874so40094647b3.0
        for <usrp-users@lists.ettus.com>; Mon, 28 Apr 2025 07:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1745850819; x=1746455619; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tZk89rUdtWB+1Tg7wS91YhvM+yCs2NU4ReNH9SMOBf0=;
        b=sVQnCFBlLv/HRX2pMD586Ok+T21MZfldPVulkZ1Uw2rWb7+SO8Kf/+MUE7/V5NnDHn
         gvWMO/Hi2KqUHinJllhiUslIxgMUonql1T9WX8bMnUWzYacdI5dn2ci+VkUyCkdH9gYe
         +ILA6g+Wt1A41h/a8qO8Jql6/LRfSwAInwuWDG6FZVuaNWa5+Ivu66vIGG4FkXHOC7AG
         93gd+YGINtXnTQbh3G8Ff5gbOFrsJ3f30ZS/6T2KhlHm9xObQD+zdLcJTkmJbPHr6d+X
         osN9enzEBG7Tic/7zc9Vaf4CveIEZLnTRaiCeE6k/QuyTj/f56g/12eO5iII2UPj2JRs
         rvwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745850819; x=1746455619;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tZk89rUdtWB+1Tg7wS91YhvM+yCs2NU4ReNH9SMOBf0=;
        b=ZYjBe6K+ZydsOuldMmBRO8iJZ1hsqHWz0smd5LAk5uDndVoOv2oQ3r/M8WXixiCPDa
         tX/uFd7ZYCE7QdcFN01aqOZTTT42Kh0LdwchRijaHK5SEo6rXIgJOboxoB8Z2n0/dVST
         1U71ebPms+6juk8zE1ngea5/K89TYa/VY9uXcDV7PM0BPrBvSihKxGzeb9bEPRZEDC2/
         Dxq6dHp6K+Po2RGY+WkPOt6LQACuB4lysxaCdlRuHJp6uSNMAMHL9W2EGOnlk3/YuyzI
         56GxceVfhF6Hqu5yNqS+LQJksvxFzB5D1cccTMXwrotE0uLw76222T39ZmNLGwkWYavr
         ZSlg==
X-Gm-Message-State: AOJu0YwFrza84gq8nWi5hrdQphbm5FI9RrXWRwaBU81EebHvGwXXOK+6
	wb5jKNBNlvXwsoTOLumMZWPQjjitParNpXJjqQ0IgbxYwEGZS/b2nFqyhGu2ReKb2dRBJkG6uvm
	Al/FjsX1/qgtcH/yDbYfpXed1vlVlc4I9bc6EcuRC4FY/JmT2MI0=
X-Gm-Gg: ASbGncuaH3pJhb1F2TgvBg8kKfksH5IIsvvQHCoQFNevpwPQ/VLHd/mlZcobtQdvrHl
	bpiyAmEMJlGoDhEMlheOc47+cLK+Cl39ZnkeEP0ltUCwSY1CMyKUcxzlvYlg1oTfDv6r+jPT+JC
	EaKfZZJwglLduZ3Q1Rmd8=
X-Google-Smtp-Source: AGHT+IFB+9Xg8nJq7Xeq5+s2AwAmp+TMNNWpZtIQDb5LYXqkeIQIUZeZ0iSONTL4mM0YNNaVSGIEB2s3sspxPL1HBwk=
X-Received: by 2002:a05:690c:9c04:b0:703:c3be:24ad with SMTP id
 00721157ae682-70854106b3amr166199997b3.14.1745850819434; Mon, 28 Apr 2025
 07:33:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK4_EZt1CN7eic+zX89q_UM9xkLRrgDYOfQgAJa-vxgkEA@mail.gmail.com>
 <CAFche=hXaVLyqJA7Ay7k8NqnVaKyWni1h7JwapVwue2iwAM5MA@mail.gmail.com>
 <CAEXYVK5W_kupokFpwQY+GpwEUO1nN4Y0cH6Bhj8z1HFMYP54uw@mail.gmail.com>
 <CAFche=iRsVwbop=mzORPq9HoOwFkMc-uBkaEYocerg9Es+QXrQ@mail.gmail.com> <CAEXYVK6S7adZNCzgVd124OyHJd8erXqUQZxNcODdn_WdQLiNZg@mail.gmail.com>
In-Reply-To: <CAEXYVK6S7adZNCzgVd124OyHJd8erXqUQZxNcODdn_WdQLiNZg@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 28 Apr 2025 09:33:22 -0500
X-Gm-Features: ATxdqUGAnK_qpVzU7Zyfm66-EQNJaYJ1DhZjou92O4KIQhURgL1Hq4DYmEMYN3A
Message-ID: <CAFche=iEJC+aFVHJwqJFFdC_WDM5hh7uXBEx8gVQ2hdzQRHc9A@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: AV4IEU2ZL6IKAT7LIQ4Q3BKDY53ZJE55
X-Message-ID-Hash: AV4IEU2ZL6IKAT7LIQ4Q3BKDY53ZJE55
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC CHDR DstEPID and Virtual Channels Clarification
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AV4IEU2ZL6IKAT7LIQ4Q3BKDY53ZJE55/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9098645055180710374=="

--===============9098645055180710374==
Content-Type: multipart/alternative; boundary="000000000000ec78530633d79164"

--000000000000ec78530633d79164
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

In practice, you can't have a large number of stream endpoints in a single
USRP, because the crossbar and associated logic adds up. Something on the
order of 16 or so might be a practical limit, depending a lot on what's on
those endpoints. If you need to distinguish between more data streams, then
you'd want to use something like virtual channels or prepending your data
with some kind of identifier.

With many USRPs interconnected, you could have a lot more endpoints in
theory.

Wade

On Mon, Apr 28, 2025 at 7:56=E2=80=AFAM Brian Padalino <bpadalino@gmail.com=
> wrote:

> On Mon, Apr 28, 2025 at 8:47=E2=80=AFAM Wade Fife <wade.fife@ettus.com> w=
rote:
>
>> Right, up to 64 VCs per stream endpoint.
>>
>> Each stream endpoint only supports a single sequence number counter, so
>> that single counter would be shared by all virtual channels.
>>
>
> Thanks for the clarification on this.
>
> From your perspective, what is the feasibility of having 1024 individual
> endpoints in a system?
>
> Thanks,
> Brian
>
>>

--000000000000ec78530633d79164
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>In practice, you can&#39;t have a large number of str=
eam endpoints in a single USRP, because the crossbar and associated logic a=
dds up. Something on the order of 16 or so might be a practical limit, depe=
nding a lot on what&#39;s on those endpoints. If you need to distinguish be=
tween more data streams, then you&#39;d want to use something like virtual =
channels or prepending your data with some kind of identifier.</div><div><b=
r></div><div>With many USRPs interconnected, you could have a lot more endp=
oints in theory.</div><div><br></div><div>Wade</div></div><br><div class=3D=
"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Mon, Apr 28, 2025 at 7:56=E2=80=AFAM Brian Padalino &lt;<a href=3D"mailto=
:bpadalino@gmail.com">bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">=
On Mon, Apr 28, 2025 at 8:47=E2=80=AFAM Wade Fife &lt;<a href=3D"mailto:wad=
e.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:</div=
><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div>Right, up to 64 VCs per stream endpoint.</div><div=
><br></div><div>Each stream endpoint only supports a single sequence number=
 counter, so that single counter would be shared by all virtual channels.</=
div></div></blockquote><div><br></div><div>Thanks for the clarification on =
this.</div><div><br></div><div>From your perspective, what is the feasibili=
ty of having 1024 individual endpoints in a system?</div><div><br></div><di=
v>Thanks,</div><div>Brian</div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">
</blockquote></div>
</blockquote></div></div>
</blockquote></div>

--000000000000ec78530633d79164--

--===============9098645055180710374==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9098645055180710374==--
