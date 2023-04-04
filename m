Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA876D6CF2
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 21:06:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A4146384163
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 15:06:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680635205; bh=aW15W8yDAPl12f7Ba09iwoEJwBeRUuw0RADjsEN3INM=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=TJiJffoWPcEqzLvnDmnMhIf1+3QvltF/IFFbTr5jegk+tCemgXN6pzSaJXVCknqXO
	 uYJ1z1xeDKBpAFmeDKjykOKN2Byh4rvA3NjHYVtY1rfPYVnaSUdbw58ZuhlPNBkr0S
	 sfVrVy7iSzMuqqSEGge/0howoscktmUZLtLmlW79m7UJldMbELVG54RXcfy8YKh6L4
	 JlPzoxSdLpSCuNZ7hpscyiT7ukkmUAWbmiMf80lHWjM9RMzA/wOhHd3AH/i2Kdz88h
	 Ej9cuQ+3JpG1mH6GrqYXJPCYs0WwLestHGZWpijgX2wzNZ3mw6XwXTiZjPS6Rek0FM
	 APFpd/gNjVtjw==
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id DC33C383B03
	for <usrp-users@lists.ettus.com>; Tue,  4 Apr 2023 15:06:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="I93jUBmY";
	dkim-atps=neutral
Received: by mail-ed1-f45.google.com with SMTP id fi11so11235033edb.10
        for <usrp-users@lists.ettus.com>; Tue, 04 Apr 2023 12:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1680635173;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=D8X/Pqx/Sh9vKZ6hi8G5u9QQERdleT/+3M7I04obWPg=;
        b=I93jUBmYt9QVnIXqBX6dsPnmhTxc/+35nRGG9PrDksjv776wruxCxZ2UAySf5SRHT4
         7yQawuYHxIHQk3Wtw89eGy7zkAhDY1eFgYjHh5f3cIMTwrOcdhnvEdCgeaxqItJes5fj
         JpW24pKTon6dBKiBWPrH32K8XvAXi/jplvd85VMWQrPLiANFIJ+18UbXETBi6luF3Px5
         znt639CQe/ALIbNg3202MkgJNM0U6ldGnvZjXdspI6MD0bw+jOjT+w89JXFTnhz3uZg1
         VoO2B8CltCI2zN+UkINQdkopfcWQ2lLPfkXfmO9REIsIIawxwQon8TAWwcJ8vWKQCKSj
         pC1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680635173;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D8X/Pqx/Sh9vKZ6hi8G5u9QQERdleT/+3M7I04obWPg=;
        b=MkxlTbaIRIR5jWajrygafQe5iAfisixyumii2OBlvEgVZ7Qd/DIgaCeNe4+GNjpC3b
         aVUbhbXZoeQqcQToGsbl6Hz+fXPpqihL1Zju5nG/zgehVnIAFjNqzIThrMDL1PgAayP9
         rBo2Bx5I/kxcsOUPoCsSbDEHWOv2QpHUlRDpqXBvlHqpGDbIScTZ8lIJf7pTpS4TDZts
         jFXcfmeffoDzfBifXrLB6qLWqbTwEf5txEA8loSKYJFHq//1wscdFZIWL/0Jv5jKTlxh
         dGY2rVUyIRYZvInxFXDNMVmpXvvq8CkLe8/dVqiDWFWiezFvcjp20/qnsWlMUdWWOu7L
         u98Q==
X-Gm-Message-State: AAQBX9ezMPUXzmdO1nlTwk4AFnrH6o3Zbj8i8RjkLV9F5zT28UooXg0a
	B+WwSGh2TNmJLSun2FGoIEhhuTFtXbc/wOVCOh3S+Q==
X-Google-Smtp-Source: AKy350Z0cluxWRdywf/s4CB5Ec/qjF8b416a7yM76peERcHjvtaxZBOHDcTHCkcNtezL/UXPM3LfEQ0l50O/WcCIeKM=
X-Received: by 2002:a50:9e6c:0:b0:4fa:5b7d:ebb4 with SMTP id
 z99-20020a509e6c000000b004fa5b7debb4mr279376ede.7.1680635172440; Tue, 04 Apr
 2023 12:06:12 -0700 (PDT)
MIME-Version: 1.0
References: <Kmi3kEahfjMhcm2ysTSYK0BFwrGzDFcHc03SWoMYQ@lists.ettus.com>
 <CAB__hTQBSHVxZ27sx3Ug76uQ6zOsN_+C-9_i9ZexpSxmCkuSYw@mail.gmail.com> <CAJPBMpWWSUDvnGETXXUV9KLudzW7ka9f6o2zQ-ybx5FxLASUog@mail.gmail.com>
In-Reply-To: <CAJPBMpWWSUDvnGETXXUV9KLudzW7ka9f6o2zQ-ybx5FxLASUog@mail.gmail.com>
Date: Tue, 4 Apr 2023 15:06:01 -0400
Message-ID: <CAB__hTSkBb-UsJNJUetTCE0vtdoWN5-3JcZbA1bf8W_OfCSZJw@mail.gmail.com>
To: yan zhang <yanzhanggc@gmail.com>
Message-ID-Hash: BQD3H7C2BXRZQSYA4UAZ6VJ3AR574YSX
X-Message-ID-Hash: BQD3H7C2BXRZQSYA4UAZ6VJ3AR574YSX
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: what is the purpose of issue_stream_cmd() for the rx_streamer?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BQD3H7C2BXRZQSYA4UAZ6VJ3AR574YSX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5462508301528710269=="

--===============5462508301528710269==
Content-Type: multipart/alternative; boundary="00000000000074112a05f8875e55"

--00000000000074112a05f8875e55
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It is really the opposite, the cmd propagation flows upstream (from the
rx_streamer to the DDC to the Radio).
Rob

On Tue, Apr 4, 2023 at 3:00=E2=80=AFPM yan zhang <yanzhanggc@gmail.com> wro=
te:

> So in general, we can just issue stream cmd to one source rfnoc block and
> the cmd will propagates to all down stream blocks. Is this understanding
> correct?
>
> Thanks!
>
> On Tue, Apr 4, 2023 at 11:27 AM Rob Kossler <rkossler@nd.edu> wrote:
>
>> issue_stream_cmd() tells the Rx radio to start sending samples. You
>> typically call this as rx_streamer->issue_stream_cmd(), and then the
>> command "propagates" to all the blocks in the graph (such as DDC and the=
n
>> ultimately the Rx Radio).  Without this command, the Rx radio will not
>> begin streaming such that your call to "recv()" will timeout for lack of
>> samples.
>> Rob
>>
>> On Tue, Apr 4, 2023 at 10:58=E2=80=AFAM <yanzhanggc@gmail.com> wrote:
>>
>>> Hi all,
>>>
>>> Does anyone know the purpose of issue_stream_cmd() for the rx_streamer?
>>> When I use the rx_streamer to stream data to the host, I just call the
>>> recv() method.
>>>
>>>
>>> The question is what is the purpose of issue_stream_cmd() for
>>> rx_streamer in uhd?
>>>
>>>
>>> Thanks,
>>>
>>> Yan
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--00000000000074112a05f8875e55
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It is really the opposite, the cmd propagation flows upstr=
eam (from the rx_streamer to the DDC to the Radio).<div>Rob</div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Ap=
r 4, 2023 at 3:00=E2=80=AFPM yan zhang &lt;<a href=3D"mailto:yanzhanggc@gma=
il.com">yanzhanggc@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"auto">So in general, we can just is=
sue stream cmd to one source rfnoc block and the cmd will propagates to all=
 down stream blocks. Is this understanding correct?</div><div dir=3D"auto">=
<br></div><div dir=3D"auto">Thanks!</div><div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 4, 2023 at 11:27 AM Rob=
 Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@=
nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr"><div>issue_stream_cmd() tells the Rx radio to start =
sending samples. You typically call this as rx_streamer-&gt;issue_stream_cm=
d(), and then the command &quot;propagates&quot; to all the blocks in the g=
raph (such as DDC and then ultimately the Rx Radio).=C2=A0 Without this com=
mand, the Rx radio will not begin streaming such that your call to &quot;re=
cv()&quot; will timeout for lack of samples.</div></div><div dir=3D"ltr"><d=
iv>Rob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Tue, Apr 4, 2023 at 10:58=E2=80=AFAM &lt;<a href=3D"mailto:yanzhan=
ggc@gmail.com" target=3D"_blank">yanzhanggc@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi all,</p><p>Does =
anyone know the purpose of issue_stream_cmd() for the rx_streamer? When I u=
se the rx_streamer to stream data to the host, I just call the recv() metho=
d. </p><p><br></p><p>The question is what is the purpose of issue_stream_cm=
d() for rx_streamer in uhd?</p><p><br></p><p>Thanks,</p><p>Yan</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div></div>
</blockquote></div>

--00000000000074112a05f8875e55--

--===============5462508301528710269==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5462508301528710269==--
