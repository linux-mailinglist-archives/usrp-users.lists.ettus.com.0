Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B80CB716FEE
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 23:45:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EB1BE3848B3
	for <lists+usrp-users@lfdr.de>; Tue, 30 May 2023 17:45:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685483138; bh=TGLb07s0JgpACzXDC710aX1/sSrrIYgzJAmHE5qwrS8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=dY7TZnVzpq83D5gn0qXDD/REFTRR4Gz9f3Nf4ZJo4Fj9/8+hOatSD6+QkG6yBx5nm
	 6Gte3dRFl00gLE8MHgYl7VTiCfiSIHq7AOvISSux2gYcIqNqwg5LRJVUqNuPAFJR8k
	 uFNVqunx3qbGSxYhgUI2PRlTBB0WQdzTzUVo04jwg26VUzq9ci4ahUVAqbdWk78m/m
	 CCdTs6gJ96Q+LZmygiU7iIwImjk8XaByuNi8Ox4Zppasts2e4lwlkbZ+EweVKI5aQN
	 aL2A7o9VuzbtzTtPFe+ogXczUbEV9HwdZ79ENr5MadT4c0ZOY2GwuThEXvUnSUlL46
	 WTQoI4CuLj0SA==
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 025B838489B
	for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 17:44:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bVJS1ecO";
	dkim-atps=neutral
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-97000a039b2so891082066b.2
        for <usrp-users@lists.ettus.com>; Tue, 30 May 2023 14:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685483077; x=1688075077;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rgP9xsfAkTzuSpST5o+L8Zp1bqnS6MLuAJTze+9HZTs=;
        b=bVJS1ecO8q08fDYNE2JjgrRUX62K1yxSPtvC0avOjrYQ4AiHLM+Bk8HxEBwGexpa1k
         GAykv3/VDC+cFoZqvI8h+TMtfePFMv74Ecaxgl0R6lctP+iUq1Nw9y0W+Q9mI4SJgGfs
         74+Un1ys4mpaWijTHG7c7LApOhpREmmmu3n3fKNbpN7r2ozg48+VlYTS5ow8NIocrnxE
         PqjnxwfdqtC6DROVak0a1KyIUrH4K0smPGPzaeGxfB6VcSTfvZH4b5ZccRQPpez8RcOk
         15RR62I9PbiDTetu57E7STj93WbegBmROqbeZO4yySr+iJFyJ0Ts7oFGARCTTiB5G69a
         h10w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685483077; x=1688075077;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rgP9xsfAkTzuSpST5o+L8Zp1bqnS6MLuAJTze+9HZTs=;
        b=XujMk9oknzgldPOtm0cXfwSty1o2J2/k/O4JuG/03/J3BwJkxkgF7xTf1XWfnGEs4q
         E/+F66XfIQFogllLmisRlGYp48OqN4GlvQA6AUmDljMa6KK3O+5+33U/TpPLpAmHV2JQ
         xKJBlrAiVDdhWY11oy7S7ef1xtopZ15JhYE/E5LogIJBUhdKpjaSvywVJBczMtpgy8Um
         2rLP1hAjupdTrSyk+0WJo5q+D+tJyDpeTGO4Va5hdQebrAFchSd0yiY8EWr+ePmcUs4Y
         mV2rILbpx63+Z7cST45Y7sMq/Px1tH+Xm+wDyZiwV6NXOhlXsqA6ZZ4D1TkhK7u4yVJI
         LxyA==
X-Gm-Message-State: AC+VfDzHkCcmB/MPLwmZwnk8JGITamxxvj59a3cQda1j/vhCpEW94t43
	rJe21VUEdgAxvJjCNIcbpaAR6KN9FklJF77qM9E=
X-Google-Smtp-Source: ACHHUZ5I6U7b+odc+gWN9vscSHZ10UTim//NJcKv5dTvumV8lpTWrv2gbQRq2RPCbZJ64a5TR/gcyS/TMsnUab86LVo=
X-Received: by 2002:a17:907:934a:b0:94a:6de2:ba9 with SMTP id
 bv10-20020a170907934a00b0094a6de20ba9mr3409164ejc.68.1685483076419; Tue, 30
 May 2023 14:44:36 -0700 (PDT)
MIME-Version: 1.0
References: <W203olqQs1iBI2xG9mGjiw1svSW52XqTjccB72ejEs@lists.ettus.com>
 <c157a530-5c52-0fd4-79a4-0c65810ee0f0@gmail.com> <JN1P275MB053556431057E296A551C8C695469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
 <CAB__hTSxoCSY8PahuLUSC-ig6FNr_r5PPsaobNh9KK8S6xNxCA@mail.gmail.com>
 <7ed5a34a-8862-09ae-edfa-d5ca15947915@gmail.com> <JN1P275MB053547F1D25B83244EE59F8795469@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
 <CAL7q81shBqtUzSaHseMO59rq1u3QSxSrA7bCaX-BVZo7FNRLZQ@mail.gmail.com>
 <CANq7nXcTe6FrDNXHiYUKY7VU-47UqdW3PtZj5eafBP84-2HhbA@mail.gmail.com>
 <4da2d23c-0854-582c-a191-deb5476488fe@gmail.com> <CANq7nXeVL8ActLms9N5kCAb78ALSrKPBb-agALYJjzNk9Yi9mg@mail.gmail.com>
 <CAEXYVK6JLh_C4cb6GbPYCFxNBv=U3AgUdqP=yBkmSH7Vey4wOQ@mail.gmail.com>
 <CANq7nXf266iBvAARXfrmebaTeZFskaCPwvXHvvWT+Hzg-sVghg@mail.gmail.com>
 <CAEXYVK5NEVExmcf0uhbXjOABwRbbxC+yvY0pZ7dBX22rYom27Q@mail.gmail.com>
 <CANq7nXfUvuDaLbOx_admWoNNsVt1eJN15L65uS-VmniAhh=u1w@mail.gmail.com>
 <CAEXYVK6ONWM8ayhz+V9beCNu56ewAP5_GJtDcY0du2JXJpGa4g@mail.gmail.com> <CANq7nXdn4mjih-_YLMm349oJPJZz1tFGeozy9NYc_Xic5wUpdA@mail.gmail.com>
In-Reply-To: <CANq7nXdn4mjih-_YLMm349oJPJZz1tFGeozy9NYc_Xic5wUpdA@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 30 May 2023 17:44:25 -0400
Message-ID: <CAEXYVK60EFc5V0bWy9=0d5JbAue+cCUzm5wH-gQCASGTAeZX1A@mail.gmail.com>
To: Mena Ghebranious <mena@chaosinc.com>
Message-ID-Hash: 4LVCOYOBVZDY4ZC2PGFJN7YTGFPCR2EM
X-Message-ID-Hash: 4LVCOYOBVZDY4ZC2PGFJN7YTGFPCR2EM
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, Jonathon Pendlum <jonathon.pendlum@ettus.com>, Leon Wabeke <LWabeke@csir.co.za>, Rob Kossler <rkossler@nd.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 - GPIO ATR output to TX output delay
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4LVCOYOBVZDY4ZC2PGFJN7YTGFPCR2EM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1227375778755617329=="

--===============1227375778755617329==
Content-Type: multipart/alternative; boundary="0000000000000b851205fcf01c57"

--0000000000000b851205fcf01c57
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 30, 2023 at 5:32=E2=80=AFPM Mena Ghebranious <mena@chaosinc.com=
> wrote:

> I apologize, I think I must be missing something.  This is the filter
> (Xilinx IP) I see implemented in the N320 master code:
>
>
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/n3xx/dboa=
rds/rh/n3xx.v#L3431
>

This HBF seems to be external to the DUC, but I doubt it's killing a bunch
of samples from coming out.


>
>
> We are planning on running various sample rates running from 1 to possibl=
y
> 61.44Msps  - for our current experiment we are using 20.480Msps
>

This is the most likely culprit.  Currently you interpolate by 12 if you
use a 245.76 Msps master clock rate using the DUC (HBF (x2) -> HBF (x2) ->
CIC (x3) =3D 12).

What you can do is interpolate to 245.76 Msps on the host for TX and you've
got full control down to the sample.

See what happens when you interpolate on the host instead of using the FPGA
to do it for you.  My guess is that it will be closer to what you want.

Brian

>

--0000000000000b851205fcf01c57
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, May 30, 2023 at 5:32=E2=80=AFPM M=
ena Ghebranious &lt;<a href=3D"mailto:mena@chaosinc.com">mena@chaosinc.com<=
/a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr">I apologize, I think I must be m=
issing something.=C2=A0 This=C2=A0is the filter (Xilinx IP) I see implement=
ed in the N320 master code:<div><br></div><div><a href=3D"https://github.co=
m/EttusResearch/uhd/blob/master/fpga/usrp3/top/n3xx/dboards/rh/n3xx.v#L3431=
" target=3D"_blank">https://github.com/EttusResearch/uhd/blob/master/fpga/u=
srp3/top/n3xx/dboards/rh/n3xx.v#L3431</a></div></div></blockquote><div><br>=
</div><div>This HBF seems to be external to the DUC, but I doubt it&#39;s k=
illing a bunch of samples from coming out.</div><div>=C2=A0</div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><br></div><di=
v><br></div><div>We are planning on running various sample rates running fr=
om 1 to possibly 61.44Msps=C2=A0 - for our current experiment we are using =
20.480Msps</div></div></blockquote><div><br></div><div>This is the most lik=
ely culprit.=C2=A0 Currently you interpolate by 12 if you use a 245.76 Msps=
 master clock rate using the DUC (HBF (x2) -&gt; HBF (x2) -&gt; CIC (x3) =
=3D 12).</div><div><br></div><div>What you can do is interpolate to 245.76 =
Msps on the host for TX and you&#39;ve got full control down to the sample.=
</div><div><br></div><div>See what happens when you interpolate on the host=
 instead of using the FPGA to do it for you.=C2=A0 My guess is that it will=
 be closer to what you want.</div><div><br></div><div>Brian</div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div class=3D"gmail_quote"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gm=
ail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"=
gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div></div>

--0000000000000b851205fcf01c57--

--===============1227375778755617329==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1227375778755617329==--
