Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 351D137F816
	for <lists+usrp-users@lfdr.de>; Thu, 13 May 2021 14:39:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ED9F6384032
	for <lists+usrp-users@lfdr.de>; Thu, 13 May 2021 08:39:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZvwHNMWV";
	dkim-atps=neutral
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 13FF0383BF9
	for <usrp-users@lists.ettus.com>; Thu, 13 May 2021 08:38:30 -0400 (EDT)
Received: by mail-ed1-f52.google.com with SMTP id a25so6667087edr.12
        for <usrp-users@lists.ettus.com>; Thu, 13 May 2021 05:38:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=6c8QmEQI7+sdEI0vd2LIC/wdRR6Cj0fSZOPZlCC3a9w=;
        b=ZvwHNMWVbortQ8/ix05YELPdWJ1qLRZXD93PgwVRZkp+y4vfiQJFdqQCiXd7yWMVG2
         +0gtQ0qE0BbECOExk7RqMlZYkrKP1txqgbKBiKEpfE+WRxXJl+vwGF+tQDtSPhv+uTxE
         sFikY2xIPPBcAi0CKKW/Dboz6f1Zok4sJL96l+Ziq8bPL+KOwbVLXN1FqXRtzG3K+KaW
         4Ksc1tO+td9L9ZBZQoi9hPQ8PJGZ8ggFYA3buDZ5UYBp8+MW1Lb+T7D6ZNWJXzBDZ1yZ
         hEDMQni1ACGVrBfDUmug7k9m5EsLxWdLsjDS1clMxas2MKgfs9595td1EEoD2RIwluIT
         k/eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=6c8QmEQI7+sdEI0vd2LIC/wdRR6Cj0fSZOPZlCC3a9w=;
        b=uWuWmNK2JSWR8kFA1JT/xyUcwQBcZ8eNIWssn+YMFo58ckQv4BIMN/bnwnU6vLXyPC
         LTRye8nfKJD6dVq/ocbIJmzefw6JQl8S4P3ZdVPfR00aC/x+gEP5FdxZnr8DK0XvUmrb
         WiyMuxud3J7Mq9faHkjvFqUW62eWHFtcaFe/n1dHh0bq9F9QksLuOmf5OumA7i+Is5g7
         Iupcb1toDRfW2/kia6GI5MAexvoOX/VKXP6vrpIJQuqhsuIwpm3Jck9i4GxdjH33kKTw
         14yFiOz8iH5eniXPm2XhVPDXUfbUDP19UEwFyKWMnqGmhrGXRtojXlcBMLHTanF2jL2b
         6WYQ==
X-Gm-Message-State: AOAM533h5KHQMa+D+tZXhnimtHVZEJOTdM7DOcAx6SwnH6DuHVZNBA+w
	dGXiGkjx1DLOG1EJrwNNeb6xN4bqHQSsRGsd3uByNZLkIZQ=
X-Google-Smtp-Source: ABdhPJwcIHn8mCbsR5EhQhN48QiiDX9xplAXQYongM56GcJ5rlu9cnJGgwwYIoTsDaH42iiEC/Yfp7iH4hBkjFQ+NxA=
X-Received: by 2002:a05:6402:350d:: with SMTP id b13mr50113317edd.21.1620909509530;
 Thu, 13 May 2021 05:38:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQUkU7wG9sYv2Kv8_Z1SHZXOWWvEp47jPcaDusXZ7dWFBw@mail.gmail.com>
 <CAG16vQUseZrj72P9vTmgo+ktnNg0RyBX5hf9pN07JeVB0DsPyQ@mail.gmail.com>
In-Reply-To: <CAG16vQUseZrj72P9vTmgo+ktnNg0RyBX5hf9pN07JeVB0DsPyQ@mail.gmail.com>
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Thu, 13 May 2021 14:38:18 +0200
Message-ID: <CAG16vQUpgoZ_w+bDQy3QK=SyukkG-KLYTGVwgdxF+Ae68jut=w@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: JG4PML2J5BWXXD2RBQLN5F22GIBWAONU
X-Message-ID-Hash: JG4PML2J5BWXXD2RBQLN5F22GIBWAONU
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Size throughput in RFNoC (FPGA side)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JG4PML2J5BWXXD2RBQLN5F22GIBWAONU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5964619981362127031=="

--===============5964619981362127031==
Content-Type: multipart/alternative; boundary="00000000000087580605c235670d"

--00000000000087580605c235670d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Paolo,

Ok! I'll check on the E320 device. Thanks again.

Kind Regards,

Maria.

El jue, 13 may 2021 a las 12:12, Maria Mu=C3=B1oz (<mamuki92@gmail.com>)
escribi=C3=B3:

> Hi Paolo,
>
> Thanks for the quick answer.
>
> I'm sorry I forgot to say that I'm using USRP E320, but I can apply what
> you explain for the X300. Thanks again!
>
> Looking at the X300.v file, I see that there are two other generated
> clocks, one called bus_clk which is generated with the same clock referen=
ce
> as ce_clk (125 MHz), and another one called radio_clk, which seems to be
> referenced by a 120 MHZ clock (not sure exactly about this, but seems to =
be
> something like that from the schematics).
>
> I see that radio_clk goes to the radio_block and bus_clk is related to th=
e
> Noc shell. Does this mean that my throughput would be also affected by
> those clocks too? Maybe the maximum theoretical throughput could be
> calculated using the lowest clock of them(which would be bus_clk in the
> X300 case)?
>
> Kind Regards,
>
> Maria
>
> El jue, 13 may 2021 a las 10:28, Maria Mu=C3=B1oz (<mamuki92@gmail.com>)
> escribi=C3=B3:
>
>> Hi all,
>>
>> I'm trying to size/calculate the throughput between RFNoC blocks from th=
e
>> FPGA side (not between arm/host pc and RFNoC block, which I think is the
>> one the interface measure when performing uhd_usrp_probe). Is there a
>> process or an existing tool to measure this throughput?
>>
>> Kind Regards,
>>
>> Maria
>>
>

--00000000000087580605c235670d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Paolo,<br><div><br></div><div>Ok! I&#39;ll check on the=
 E320 device. Thanks again.</div><div><br></div><div>Kind Regards,</div><di=
v><br></div><div>Maria.</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">El jue, 13 may 2021 a las 12:12, Maria Mu=C3=
=B1oz (&lt;<a href=3D"mailto:mamuki92@gmail.com">mamuki92@gmail.com</a>&gt;=
) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font-family:Verdana,Genev=
a,Helvetica,Arial,sans-serif;font-size:13.44px">Hi Paolo,</span><br style=
=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans-serif;=
font-size:13.44px"><br style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva=
,Helvetica,Arial,sans-serif;font-size:13.44px"><span style=3D"color:rgb(0,0=
,0);font-family:Verdana,Geneva,Helvetica,Arial,sans-serif;font-size:13.44px=
">Thanks for the quick answer.</span><br style=3D"color:rgb(0,0,0);font-fam=
ily:Verdana,Geneva,Helvetica,Arial,sans-serif;font-size:13.44px"><br style=
=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans-serif;=
font-size:13.44px"><span style=3D"color:rgb(0,0,0);font-family:Verdana,Gene=
va,Helvetica,Arial,sans-serif;font-size:13.44px">I&#39;m sorry I forgot to =
say that I&#39;m using USRP E320, but I can apply what you explain for the =
X300. Thanks again!</span><br style=3D"color:rgb(0,0,0);font-family:Verdana=
,Geneva,Helvetica,Arial,sans-serif;font-size:13.44px"><br style=3D"color:rg=
b(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans-serif;font-size:13=
.44px"><span style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica=
,Arial,sans-serif;font-size:13.44px">Looking at the X300.v file, I see that=
 there are two other generated clocks, one called bus_clk which is generate=
d with the same clock reference as ce_clk (125 MHz), and another one called=
 radio_clk, which seems to be referenced by a 120 MHZ clock (not sure exact=
ly about this, but seems to be something like that from the schematics).</s=
pan><br style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Aria=
l,sans-serif;font-size:13.44px"><br style=3D"color:rgb(0,0,0);font-family:V=
erdana,Geneva,Helvetica,Arial,sans-serif;font-size:13.44px"><span style=3D"=
color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans-serif;font=
-size:13.44px">I see that radio_clk goes to the radio_block and bus_clk is =
related to the Noc shell. Does this mean that my throughput would be also a=
ffected by those clocks too? Maybe the maximum theoretical throughput could=
 be calculated using the lowest clock of them(which would be bus_clk in the=
 X300 case)?</span><br style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva=
,Helvetica,Arial,sans-serif;font-size:13.44px"><br style=3D"color:rgb(0,0,0=
);font-family:Verdana,Geneva,Helvetica,Arial,sans-serif;font-size:13.44px">=
<span style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,=
sans-serif;font-size:13.44px">Kind Regards,</span><br style=3D"color:rgb(0,=
0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans-serif;font-size:13.44p=
x"><br style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial=
,sans-serif;font-size:13.44px"><span style=3D"color:rgb(0,0,0);font-family:=
Verdana,Geneva,Helvetica,Arial,sans-serif;font-size:13.44px">Maria</span><b=
r></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">El jue, 13 may 2021 a las 10:28, Maria Mu=C3=B1oz (&lt;<a href=3D"mailto:=
mamuki92@gmail.com" target=3D"_blank">mamuki92@gmail.com</a>&gt;) escribi=
=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hi all,<br><div><br></div><div>I&#39;m=C2=A0trying to size/calcula=
te the throughput between RFNoC blocks from the FPGA side (not between arm/=
host pc and RFNoC block, which I think is the one the interface measure whe=
n performing uhd_usrp_probe). Is there a process or an existing tool to mea=
sure this throughput?</div><div><br></div><div>Kind Regards,</div><div><br>=
</div><div>Maria=C2=A0</div></div>
</blockquote></div>
</blockquote></div>

--00000000000087580605c235670d--

--===============5964619981362127031==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5964619981362127031==--
