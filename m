Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3723F6D6CFD
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 21:11:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7692E38401D
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 15:11:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680635508; bh=y55bYgxE9XazOZzi3Eosp1ZkR7rU5SQMy57tgQl1reo=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=UZth5Q1VoZSLd0DiWhqKAN5QPgNl9JTbotENMZkxCYjZqgAw8XXrk84U1IES35TTL
	 a6pktPMfXssoiO71a+l2lGZeYA3fN2rf6rMs2Xr7jw1Sp2i8C2tdqAyVwwvasYxEFL
	 hfayUkB/CzYTAhpTrrfuQNZR6et8ARvu+meYP1/Cm8qdvVV2xt0bMeWe500k5QcGjx
	 MgkW06RE/iqzbmDPEkEgk5eZZ31WpXBDNtQUcwGpdx2p/x1X/M3zgYxVhVYZ325gXw
	 jjrKqIGhCEUbhXz3EsARp/revs88a1RkKRbscyHqCz2xHt4d4nbHHaN6WhF9YCoOFM
	 NBEm7qSnUqy/g==
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id BF162383C4A
	for <usrp-users@lists.ettus.com>; Tue,  4 Apr 2023 15:11:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="jxYieUi+";
	dkim-atps=neutral
Received: by mail-ed1-f45.google.com with SMTP id r11so134815903edd.5
        for <usrp-users@lists.ettus.com>; Tue, 04 Apr 2023 12:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1680635473;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8kPyz2tdkeZnsS/UcmHKqmoHzoZVjYSkrg3GbdI3R3g=;
        b=jxYieUi+QcGo+krQ8ZumxtqNwQcSJH8qI3QgREKSgTLFjy49w0T41Q1chFp0Ab/V+P
         TSA2eiER7rVZn4YhI/z0bEGmEweEJ89cevGxCmTSU0exoE5VAzgKN8rqtUV7YKp7KHoK
         kV3wg6VYgZkrzhHAgrk2L68LZz1m1YdWErD5QjrD00B63jUgZj2C4AqJdUN+C9fvZXqK
         RaTJNJN8pNv+Vyu8ZC0P92XNr/jYC8y8aPu+C90g5OoDlNqdtJJmUtxdUhUxkw3JTuJU
         w+1PmM3AdkE3+NojARq9Nf3l6FN2IgPg69fkzL3Ow6UE2pgPjf++aRVPS4KU27MAAc5+
         imvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680635473;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8kPyz2tdkeZnsS/UcmHKqmoHzoZVjYSkrg3GbdI3R3g=;
        b=glVEL8yXPx3EbCN083AnlWNEfPh/4ZOimzuMgWjpt8ku5mlFgHMNlQUfSWRMha2xus
         L4lPsQ+2ymTZAjOmcKoFH1xUQSBqdosb378OhZnsgC3du5WRM39659OvQuFYtLDLsKHr
         ICwcMMYzlhWJ/T09/MWRhr5QbWSKeER7wNr2xmB0scbBZtQgOYpo3bScIKcIxaJzAuRX
         19b5elY0A+AhGf9oLapGVr9fFro5z8lebDa74L+BsYzxnhhFXfOzDmvl1nGbkX0Wptei
         PFZkXi8VDuo+5ZKcFMIzb3tyLAf5oOl00DsOJguUtj62VJroCoWXyM3ZgwXRYaQo3lv7
         93kw==
X-Gm-Message-State: AAQBX9ezk+fHyiJDOCre9Bg+rGB9VzCcRRbNChT3Eq161DSGCAk/iJj6
	XpmMnEwWLSVVdD7J5iVVEi9hEdAczQvKjxU9ZuJILw==
X-Google-Smtp-Source: AKy350aw5vU6epngApSgEnzjdrv/qgaX7Lpf+C9VXA5LHFRWHwXF/qxt7FzEJoeJHcpXRulGcyZNs98BwLl6ut4GTqo=
X-Received: by 2002:a05:6402:e8b:b0:4fb:e069:77ac with SMTP id
 h11-20020a0564020e8b00b004fbe06977acmr293384eda.0.1680635473126; Tue, 04 Apr
 2023 12:11:13 -0700 (PDT)
MIME-Version: 1.0
References: <Kmi3kEahfjMhcm2ysTSYK0BFwrGzDFcHc03SWoMYQ@lists.ettus.com>
 <CAB__hTQBSHVxZ27sx3Ug76uQ6zOsN_+C-9_i9ZexpSxmCkuSYw@mail.gmail.com>
 <CAJPBMpWWSUDvnGETXXUV9KLudzW7ka9f6o2zQ-ybx5FxLASUog@mail.gmail.com> <CAB__hTSkBb-UsJNJUetTCE0vtdoWN5-3JcZbA1bf8W_OfCSZJw@mail.gmail.com>
In-Reply-To: <CAB__hTSkBb-UsJNJUetTCE0vtdoWN5-3JcZbA1bf8W_OfCSZJw@mail.gmail.com>
Date: Tue, 4 Apr 2023 15:11:01 -0400
Message-ID: <CAB__hTQ7x0Bk7g_HZik5Ci8t6NVJv7Ajfyv7ZBpQaueCmyRL2g@mail.gmail.com>
To: yan zhang <yanzhanggc@gmail.com>
Message-ID-Hash: KNDTGSLEJTJYAVIOV7ENJXJPDTI6LMVL
X-Message-ID-Hash: KNDTGSLEJTJYAVIOV7ENJXJPDTI6LMVL
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: what is the purpose of issue_stream_cmd() for the rx_streamer?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KNDTGSLEJTJYAVIOV7ENJXJPDTI6LMVL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============8628666893009747756=="

--===============8628666893009747756==
Content-Type: multipart/alternative; boundary="0000000000005ff3fe05f88770ad"

--0000000000005ff3fe05f88770ad
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you are using RFNoC capable USRPs, it is the UHD 'block controllers'
that propagate a command (or swallow it, if they want) to the next upstream
block controller. Thus if you develop a custom block (and custom block
controller), you can decide if/how you want to propagate properties,
commands, etc.
Rob

On Tue, Apr 4, 2023 at 3:06=E2=80=AFPM Rob Kossler <rkossler@nd.edu> wrote:

> It is really the opposite, the cmd propagation flows upstream (from the
> rx_streamer to the DDC to the Radio).
> Rob
>
> On Tue, Apr 4, 2023 at 3:00=E2=80=AFPM yan zhang <yanzhanggc@gmail.com> w=
rote:
>
>> So in general, we can just issue stream cmd to one source rfnoc block an=
d
>> the cmd will propagates to all down stream blocks. Is this understanding
>> correct?
>>
>> Thanks!
>>
>> On Tue, Apr 4, 2023 at 11:27 AM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> issue_stream_cmd() tells the Rx radio to start sending samples. You
>>> typically call this as rx_streamer->issue_stream_cmd(), and then the
>>> command "propagates" to all the blocks in the graph (such as DDC and th=
en
>>> ultimately the Rx Radio).  Without this command, the Rx radio will not
>>> begin streaming such that your call to "recv()" will timeout for lack o=
f
>>> samples.
>>> Rob
>>>
>>> On Tue, Apr 4, 2023 at 10:58=E2=80=AFAM <yanzhanggc@gmail.com> wrote:
>>>
>>>> Hi all,
>>>>
>>>> Does anyone know the purpose of issue_stream_cmd() for the rx_streamer=
?
>>>> When I use the rx_streamer to stream data to the host, I just call the
>>>> recv() method.
>>>>
>>>>
>>>> The question is what is the purpose of issue_stream_cmd() for
>>>> rx_streamer in uhd?
>>>>
>>>>
>>>> Thanks,
>>>>
>>>> Yan
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>

--0000000000005ff3fe05f88770ad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If you are using RFNoC capable USRPs, it is the UHD &#39;b=
lock controllers&#39; that propagate=C2=A0a command (or swallow it, if they=
 want) to the next upstream block controller. Thus if you develop a custom =
block (and custom block controller), you can decide if/how you want to prop=
agate properties, commands, etc.<div>Rob</div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 4, 2023 at 3:06=
=E2=80=AFPM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.=
edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr">It is really the opposite, the cmd propagation flows up=
stream (from the rx_streamer to the DDC to the Radio).<div>Rob</div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue,=
 Apr 4, 2023 at 3:00=E2=80=AFPM yan zhang &lt;<a href=3D"mailto:yanzhanggc@=
gmail.com" target=3D"_blank">yanzhanggc@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">So in ge=
neral, we can just issue stream cmd to one source rfnoc block and the cmd w=
ill propagates to all down stream blocks. Is this understanding correct?</d=
iv><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks!</div><div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 4,=
 2023 at 11:27 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=
=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr"><div>issue_stream_cmd() tells t=
he Rx radio to start sending samples. You typically call this as rx_streame=
r-&gt;issue_stream_cmd(), and then the command &quot;propagates&quot; to al=
l the blocks in the graph (such as DDC and then ultimately the Rx Radio).=
=C2=A0 Without this command, the Rx radio will not begin streaming such tha=
t your call to &quot;recv()&quot; will timeout for lack of samples.</div></=
div><div dir=3D"ltr"><div>Rob</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Apr 4, 2023 at 10:58=E2=80=AFAM &lt;<=
a href=3D"mailto:yanzhanggc@gmail.com" target=3D"_blank">yanzhanggc@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><p>Hi all,</p><p>Does anyone know the purpose of issue_stream_cmd() for t=
he rx_streamer? When I use the rx_streamer to stream data to the host, I ju=
st call the recv() method. </p><p><br></p><p>The question is what is the pu=
rpose of issue_stream_cmd() for rx_streamer in uhd?</p><p><br></p><p>Thanks=
,</p><p>Yan</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>

--0000000000005ff3fe05f88770ad--

--===============8628666893009747756==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8628666893009747756==--
