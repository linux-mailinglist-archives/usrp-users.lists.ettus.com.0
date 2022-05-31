Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 581EB5397F4
	for <lists+usrp-users@lfdr.de>; Tue, 31 May 2022 22:31:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D3A2938423E
	for <lists+usrp-users@lfdr.de>; Tue, 31 May 2022 16:31:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654029111; bh=dRzY8KXzXXHYnIH4skDLFN0yFTI1z7BGNwgqEb15puc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=AvwvvkEA29iA1LR2K6Ikx0iw1IdeNbF4cQX1x76O74/boDfR46/xAMw5FfCu+oSUN
	 CTPfJYj2iwv7GM4b2arKvDG4e9BCDeyxAaZcs7IOc4XUrQnX1z8VcIJrfj6RUXUYNn
	 TRQ7aaWb87jXL1fwNeWe6samrT1IlYWl24Y8GR7BEwq6nWvb0gExJVDEX9FimU1P/2
	 sB18n6QKAPhUYkJ+V9GMCBA2T9umnueZ3jRSkRDlpC/sChWAOKmVlV4UgOoePHssht
	 vdDTde5AVYWJWV77SfwFTgPEWRjoSeq0vSb00tgFzVL5RMSE3gZaBCKHmyuLHrRHtz
	 L9O/s/ppc8auA==
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	by mm2.emwd.com (Postfix) with ESMTPS id E8801383D62
	for <usrp-users@lists.ettus.com>; Tue, 31 May 2022 16:30:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="OdlX53WE";
	dkim-atps=neutral
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-2ff7b90e635so152715947b3.5
        for <usrp-users@lists.ettus.com>; Tue, 31 May 2022 13:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/tCB4sBIu0Jz6CK2UoMAZUabaIOvqFWKfiXzbOdv8P8=;
        b=OdlX53WEdh8+szGwMPKFlMdGXSh4uYGCPfE5FJtElpiJG3V/6pLGJpQ2ssf1Mubxwr
         uS4zTSftLOPENXmlR2m1SevgRZNcfk2ltshj1ce82hfGs0jYmHNsIUezli7gWJkTdV25
         n1rxchbK/XP/jkSJo5w2y/HM9MiiQt5TafYuy1afnsCe5H9PYkKbuEokIcNjp7Tfn8w4
         qhFmN32ToQO679mpN9qSSdd9fZeiBdfuE+cYEnic599yHOM2iLZ7r7OAg+COivelNB2b
         JnhmHbIxUksWgxBORl0r1hW5jy+evLDcUQX5unbEwhMz1ufaV4zC6loiM+RFb3WK2xlR
         a06Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/tCB4sBIu0Jz6CK2UoMAZUabaIOvqFWKfiXzbOdv8P8=;
        b=L2BWJWCHWcfVNL+gURVky60zOjVBLKu1T6sBQRUZwszktDn6LrpGMglfaQBTHw6TxX
         OYOjjTnaXFgn4wv5hacGZs2/vI4Kc+LR/ofuG3O2Hz2Wd2CvsABpW5TOTCbEHoKPhmEj
         hNIkYJsk7IoT31mU5Rf+sKbQeqazK8oPfyQftntaXdPC9CHZ6YcDL6lGzjqi0/P1kj0Z
         QN6pV5ZyySTJqRldrsEClNm5PesqPZ74TpuzVPqi8uW/gFygiMpS8WQYXBMh85BP/shj
         5zx58BRSAXZGzFkMiuuB72yVHEJm4hxw1DO7F6Bz40kJcpq2fdVHknUjWS01K90AxoUz
         ocMA==
X-Gm-Message-State: AOAM533QgRCjSo8Q8QEVy5VusQc3XFFgykppfyqU1dVNdGIXGL+vD5wk
	ah0WnF4L9a7lGo00pAWJ9mYXFEWlv0CpOgBEZTn9r0Ys
X-Google-Smtp-Source: ABdhPJzy08/7s3FNtghOLwEilNr3dlMjMILdQ/HUm3mEo5dxQBlhEExTPLOq2/GpekbV/MOt9nJUH6ppATVP0noAx5Y=
X-Received: by 2002:a81:2f57:0:b0:2ff:111c:6003 with SMTP id
 v84-20020a812f57000000b002ff111c6003mr66516441ywv.363.1654029051403; Tue, 31
 May 2022 13:30:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQUahtZ8Ca0CSgu_dacdwPMX9grDjs93+jzUjn8ABNJi9g@mail.gmail.com>
In-Reply-To: <CAG16vQUahtZ8Ca0CSgu_dacdwPMX9grDjs93+jzUjn8ABNJi9g@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 31 May 2022 15:30:36 -0500
Message-ID: <CAFche=jqbjpNuErU0YJOkE8csynOtfVmvUEvfPGmUQEEbJLRkg@mail.gmail.com>
To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Message-ID-Hash: PXTA4GGKKR2YQ3QQBPPRGT2EOSFB4M5D
X-Message-ID-Hash: PXTA4GGKKR2YQ3QQBPPRGT2EOSFB4M5D
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Select lower clk in X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PXTA4GGKKR2YQ3QQBPPRGT2EOSFB4M5D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7212673571230224994=="

--===============7212673571230224994==
Content-Type: multipart/alternative; boundary="0000000000000eb34205e054a65c"

--0000000000000eb34205e054a65c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Maria,

You have the right idea. You should be able to change the srcport from "ce"
to "rfnoc_chdr" in the line for your block in the clk_domains section. If
that doesn't work, share your YML file and maybe someone can spot the
problem.

Wade

On Tue, May 31, 2022 at 3:47 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> wrote=
:

> Hi all,
>
> I have generated a custom RFNoC block with rfnocmodtool to be implemented
> on X310.
> I am using UHD 4.0. toolchain to synthesize it, but I cannot meet timing
> with the clock selected (in /icores/yml file, I have select "ce" as the c=
lk
> source for my block).
> I see that "ce" clock for X310 is 214 MHz and I wondered if I could use a
> slower clock for my "ce" from the interface. In the clock reports, there =
is
> a "bus_clk" of 187.5 MHz, which I think is suitable for my design, but if=
 I
> select "bus_clk" as clk source for my block in the yml file it gives an
> error message:
> [ERR] 1 unresolved clk domain(s)
> [ERR]     block0:ce
> [ERR] Please specify the clock(s) to connect
>
> It is possible to use "bus_clk" as the clock source for my block? Which
> files should I modify to use this clock?
>
> Kind Regards,
> Maria
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000eb34205e054a65c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Maria,</div><div><br></div><div>You have the right=
 idea. You should be able to change the srcport from &quot;ce&quot; to &quo=
t;rfnoc_chdr&quot; in the line for your block in the clk_domains section. I=
f that doesn&#39;t work, share your YML file and maybe someone can spot the=
 problem.</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 31, 2022 at 3:=
47 AM Maria Mu=C3=B1oz &lt;<a href=3D"mailto:mamuki92@gmail.com">mamuki92@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr">Hi all,<br><div><br></div><div>I have generated a =
custom RFNoC block with rfnocmodtool to be implemented on X310.</div><div>I=
 am using UHD 4.0. toolchain to synthesize it, but I cannot meet timing wit=
h the clock selected (in /icores/yml file, I have select &quot;ce&quot; as =
the clk source for my block).</div><div>I see that &quot;ce&quot; clock for=
 X310 is 214 MHz and I wondered if I could use a slower clock for my &quot;=
ce&quot; from the interface. In the clock reports, there is a &quot;bus_clk=
&quot; of 187.5 MHz, which I think is suitable for my design, but if I sele=
ct &quot;bus_clk&quot; as clk source for my block in the yml file it gives =
an error message:<br>[ERR] 1 unresolved clk domain(s)<br>[ERR] =C2=A0 =C2=
=A0 block0:ce<br>[ERR] Please specify the clock(s) to connect<br></div><div=
><br></div><div>It is possible to use &quot;bus_clk&quot; as the clock sour=
ce for my block? Which files should I modify to use this clock?</div><div><=
br></div><div>Kind Regards,</div><div>Maria</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000000eb34205e054a65c--

--===============7212673571230224994==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7212673571230224994==--
