Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9114737F56A
	for <lists+usrp-users@lfdr.de>; Thu, 13 May 2021 12:13:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5C7E9383D71
	for <lists+usrp-users@lfdr.de>; Thu, 13 May 2021 06:13:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PwPvdSKA";
	dkim-atps=neutral
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mm2.emwd.com (Postfix) with ESMTPS id B05CA383CA5
	for <usrp-users@lists.ettus.com>; Thu, 13 May 2021 06:12:33 -0400 (EDT)
Received: by mail-ej1-f49.google.com with SMTP id u21so39086451ejo.13
        for <usrp-users@lists.ettus.com>; Thu, 13 May 2021 03:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=jm73oiSp3pPNfwc9XS15Eq19madArTSPeoToThFziPo=;
        b=PwPvdSKABkkkqQPZuv27czddp38zKZZQtsOoR8DnopnRMhv6M7JXrt90jNAODUx3jK
         Z3lpgatunbsfEpo2TQQVRZBLqrgvIj4l/K2ffXLCYuCR+0T+o5i6m9v4g1C0BdSMNc8m
         vXULZAbBlKjk5j9XZ/2lyozcFRMNPT5dLd/qTG54bLEosak1M+d+q5K2Y2G2he67/j9b
         CSvi02V5VkVdUNWvCVqvUPChHh4kfqFc65mOApQltMnszlTI/jox33m2p6ibaFWpXe7Q
         MMueLmyLt+HWKn4iAC6iEcQ01w4ydVpCWMetQ9eX8a/7mGhhlEvYRuJOTyRKB/H75Yi5
         7k3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=jm73oiSp3pPNfwc9XS15Eq19madArTSPeoToThFziPo=;
        b=Cj7gdDyTbWpzrA6biHX01a+c66oP002a9yZ8XkHByR/XGK9B9QVHI9vBmY1/S7SZ+6
         2vZ9zQKaMJP1mmwk8e5jPMZP1pxYjYkT1tPYix47OOBYWuAYPCOcZkXe8qlFD5zjy6Lt
         iSOiVAkqVMVTcC+fuseZtvWTyrPMsSC1UUMnzy4LPCYu/roVgtUcHQb3Tj3fShODd55C
         aodEyphthV85sN+grcOp1q98JBrYgfw6LG31bkfxmmEGoqTZxszpFR+xO/AcEg0yp93c
         Ai+1cyKnL8ZMyivM0lqZBVzvy420s1cuAo9eaefyN4+TdqIHl/27D5GqpjG23+sFbqB0
         A0xA==
X-Gm-Message-State: AOAM530suWnh064Os46u6fjZQ6Caxrp1zz+NZHtsbVRweoBv4kHBAwOH
	acM63/I19uJCHIpC07jFOl2sxVE/yO8Rayr6XGnpFaA+7HuH9A==
X-Google-Smtp-Source: ABdhPJy8VVdiGnS9V/UUICwR9qIGSx6pgzD/DzPRCBOFCuoMUuYtrrVfNLv9Nm0rpWu+6DXR/EWnWml7VsgAnGTJ79s=
X-Received: by 2002:a17:906:55c7:: with SMTP id z7mr8363178ejp.262.1620900752181;
 Thu, 13 May 2021 03:12:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQUkU7wG9sYv2Kv8_Z1SHZXOWWvEp47jPcaDusXZ7dWFBw@mail.gmail.com>
In-Reply-To: <CAG16vQUkU7wG9sYv2Kv8_Z1SHZXOWWvEp47jPcaDusXZ7dWFBw@mail.gmail.com>
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Thu, 13 May 2021 12:12:21 +0200
Message-ID: <CAG16vQUseZrj72P9vTmgo+ktnNg0RyBX5hf9pN07JeVB0DsPyQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: UNNAGANC4OWPHKSFAWXQMJENRHWGCKM4
X-Message-ID-Hash: UNNAGANC4OWPHKSFAWXQMJENRHWGCKM4
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Size throughput in RFNoC (FPGA side)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UNNAGANC4OWPHKSFAWXQMJENRHWGCKM4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6176309930881273028=="

--===============6176309930881273028==
Content-Type: multipart/alternative; boundary="0000000000008cd45a05c2335daf"

--0000000000008cd45a05c2335daf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Paolo,

Thanks for the quick answer.

I'm sorry I forgot to say that I'm using USRP E320, but I can apply what
you explain for the X300. Thanks again!

Looking at the X300.v file, I see that there are two other generated
clocks, one called bus_clk which is generated with the same clock reference
as ce_clk (125 MHz), and another one called radio_clk, which seems to be
referenced by a 120 MHZ clock (not sure exactly about this, but seems to be
something like that from the schematics).

I see that radio_clk goes to the radio_block and bus_clk is related to the
Noc shell. Does this mean that my throughput would be also affected by
those clocks too? Maybe the maximum theoretical throughput could be
calculated using the lowest clock of them(which would be bus_clk in the
X300 case)?

Kind Regards,

Maria

El jue, 13 may 2021 a las 10:28, Maria Mu=C3=B1oz (<mamuki92@gmail.com>)
escribi=C3=B3:

> Hi all,
>
> I'm trying to size/calculate the throughput between RFNoC blocks from the
> FPGA side (not between arm/host pc and RFNoC block, which I think is the
> one the interface measure when performing uhd_usrp_probe). Is there a
> process or an existing tool to measure this throughput?
>
> Kind Regards,
>
> Maria
>

--0000000000008cd45a05c2335daf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva=
,Helvetica,Arial,sans-serif;font-size:13.44px">Hi Paolo,</span><br style=3D=
"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans-serif;fon=
t-size:13.44px"><br style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,He=
lvetica,Arial,sans-serif;font-size:13.44px"><span style=3D"color:rgb(0,0,0)=
;font-family:Verdana,Geneva,Helvetica,Arial,sans-serif;font-size:13.44px">T=
hanks for the quick answer.</span><br style=3D"color:rgb(0,0,0);font-family=
:Verdana,Geneva,Helvetica,Arial,sans-serif;font-size:13.44px"><br style=3D"=
color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans-serif;font=
-size:13.44px"><span style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,H=
elvetica,Arial,sans-serif;font-size:13.44px">I&#39;m sorry I forgot to say =
that I&#39;m using USRP E320, but I can apply what you explain for the X300=
. Thanks again!</span><br style=3D"color:rgb(0,0,0);font-family:Verdana,Gen=
eva,Helvetica,Arial,sans-serif;font-size:13.44px"><br style=3D"color:rgb(0,=
0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans-serif;font-size:13.44p=
x"><span style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Ari=
al,sans-serif;font-size:13.44px">Looking at the X300.v file, I see that the=
re are two other generated clocks, one called bus_clk which is generated wi=
th the same clock reference as ce_clk (125 MHz), and another one called rad=
io_clk, which seems to be referenced by a 120 MHZ clock (not sure exactly a=
bout this, but seems to be something like that from the schematics).</span>=
<br style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sa=
ns-serif;font-size:13.44px"><br style=3D"color:rgb(0,0,0);font-family:Verda=
na,Geneva,Helvetica,Arial,sans-serif;font-size:13.44px"><span style=3D"colo=
r:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans-serif;font-siz=
e:13.44px">I see that radio_clk goes to the radio_block and bus_clk is rela=
ted to the Noc shell. Does this mean that my throughput would be also affec=
ted by those clocks too? Maybe the maximum theoretical throughput could be =
calculated using the lowest clock of them(which would be bus_clk in the X30=
0 case)?</span><br style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Hel=
vetica,Arial,sans-serif;font-size:13.44px"><br style=3D"color:rgb(0,0,0);fo=
nt-family:Verdana,Geneva,Helvetica,Arial,sans-serif;font-size:13.44px"><spa=
n style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,sans=
-serif;font-size:13.44px">Kind Regards,</span><br style=3D"color:rgb(0,0,0)=
;font-family:Verdana,Geneva,Helvetica,Arial,sans-serif;font-size:13.44px"><=
br style=3D"color:rgb(0,0,0);font-family:Verdana,Geneva,Helvetica,Arial,san=
s-serif;font-size:13.44px"><span style=3D"color:rgb(0,0,0);font-family:Verd=
ana,Geneva,Helvetica,Arial,sans-serif;font-size:13.44px">Maria</span><br></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El=
 jue, 13 may 2021 a las 10:28, Maria Mu=C3=B1oz (&lt;<a href=3D"mailto:mamu=
ki92@gmail.com">mamuki92@gmail.com</a>&gt;) escribi=C3=B3:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi all,<br><div=
><br></div><div>I&#39;m=C2=A0trying to size/calculate the throughput betwee=
n RFNoC blocks from the FPGA side (not between arm/host pc and RFNoC block,=
 which I think is the one the interface measure when performing uhd_usrp_pr=
obe). Is there a process or an existing tool to measure this throughput?</d=
iv><div><br></div><div>Kind Regards,</div><div><br></div><div>Maria=C2=A0</=
div></div>
</blockquote></div>

--0000000000008cd45a05c2335daf--

--===============6176309930881273028==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6176309930881273028==--
