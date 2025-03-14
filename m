Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B1BA6135D
	for <lists+usrp-users@lfdr.de>; Fri, 14 Mar 2025 15:10:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A6BE1385DD7
	for <lists+usrp-users@lfdr.de>; Fri, 14 Mar 2025 10:10:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741961452; bh=wBzcSo2GtMAUHdtONJqmOAzK/8gIPu4m6GUo/aqiLGw=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=r/n75Mukm4tUpUHfIY7fvEKCE/r0GHrzfQLikWl2AgDXkxk1G9ZBtsbRq1AaAv7Qc
	 zFZ0oCoEcXI68Ut4V3z9na7ou7gyFo4TSMfwgUx316ybXinyaAooKmQ/dmViwrAJSG
	 CnjaPklGplIMtu3G/p+qLdYK+G5n9x4hbSxdroRexdQyvJKLI2WeIT9bc1YgkJzmGL
	 BJtcRZfz8wkm2/uH66EvdYYeNcchrZwKf4m957OhvoKlWjEyenl3di3pLG6StZFpnW
	 46rfFTgzBVe7wKeniu2HcEO7od9frZ/EmdlLIYw5o0cPmH1Hy/Ba3QKY5tZ36UKBdk
	 ERGTHndLg8gPQ==
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 8C9C3385CC9
	for <usrp-users@lists.ettus.com>; Fri, 14 Mar 2025 10:09:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="AaI9ur4X";
	dkim-atps=neutral
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5e673822f76so3606755a12.2
        for <usrp-users@lists.ettus.com>; Fri, 14 Mar 2025 07:09:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1741961386; x=1742566186; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3LlLmyNUfty/xVBdv6VYwmG3vfcfPxDtrVagI7BigGc=;
        b=AaI9ur4XGtQmlW8eFnKoPuJc06rJV6ijeVoozPOSFbZDNJcHy4NZcffMIFpjsnZiuP
         sjfpQbi2IsWIB9dfvyxQnAGa3Od8g7lhOoyGLc/HkAYk/22G2FdGgfwV+VlsjzS44ZLa
         KvLh1NDHC3ADLWuKF9zH1Jno6gl/wX7JVf5/R/EgE7nFBlODYy+e1pqCW0tV9o+3Z8we
         GmHCs+r22LkQuJ5NcGXIWLKWfi4E1P+JfjkBCfdM0AkRjCjDhRqtzNO6OCsZbcBXjPv1
         Ldc9UZm8zSP9MzcEeWXWXot3rHpmBthIDbk3VfCDjo+xtrBItiZ3eQ/HGg/HwljAe4vs
         DRfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741961386; x=1742566186;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3LlLmyNUfty/xVBdv6VYwmG3vfcfPxDtrVagI7BigGc=;
        b=I0uCVHKtHjXThZNfQ0Uhp8ZNUy+qBNk5Qrv6n66//G0Ilu9//aRCLUt8FYOB8ejCSe
         je4Zvdxf0cWuhqce7T+zvOJf924nngKHNE8ZQw26jQcjpqBJmknqaWImE2m8u2Jpoy7R
         Yr4ZPqyIyzBcGcbsAkguaDUxBJAQB54GuV2XJHjN88s10NLWlDM5k/0J9QJnAHz9S8sJ
         NNPGfcfF6rGMuH/hLuWbLYqz7RfJcrgDMfPi9YoeYZTwUZEmdBP9piKH7ax0fQJmQX9o
         V4fokz7HJxk1pf2fUVzFF/ycPhygi2RwmmqwGKNngnsx+Iyr4HuaKJ5IxL1jiA761ZSt
         VEig==
X-Gm-Message-State: AOJu0YwLYRvdyV1sSo4CzSww2lMo/8pyjj9Bf0OqnC16NjtmPUGhvUkl
	b/LRPBj4X9Ao2oKlXF2hDFVFXPzZHhvYZvHxXXNf2yhpbkgcjm/2oBRRFgP+nr56jdqRrVB4T+X
	/278hbt22EGxM80J/rcehU1sTzdKQk1ocj3BhtsCIQOhWxLw=
X-Gm-Gg: ASbGnctQixsdWn/3tC63UNTWRGA0vvicaTgxRqPwAN8SMWxX81LUryfMoiQCeF4c5QM
	kJA5Ap9AmuHjE/7Qd6qvWUl4p8kwj6tQn0NLpANH3S6/KV7UWD3HzTXAu+s3xlg0bU6iyKBJesZ
	QcLH9Eml591c3wCrcBJGIb82A8Aw==
X-Google-Smtp-Source: AGHT+IFETQujFyydOGxtx9oA9a/P0u18dUQ0xB/rUiDikMeV9dlhSpNJH/gpcp0LlVFzuphA/0KBfofs3EZsWKkKrog=
X-Received: by 2002:a05:6402:3553:b0:5e5:c5f5:f82 with SMTP id
 4fb4d7f45d1cf-5e89c05a106mr3028649a12.0.1741961386299; Fri, 14 Mar 2025
 07:09:46 -0700 (PDT)
MIME-Version: 1.0
References: <s26VOiu87RzRmf9kGzJpjmgAvZ1hBVZ9QydqBwjIDHo@lists.ettus.com> <CAB__hTTHqoia3TyCbNdBUVG6W08om_oeTUW8eMQjAKs41ZSP_w@mail.gmail.com>
In-Reply-To: <CAB__hTTHqoia3TyCbNdBUVG6W08om_oeTUW8eMQjAKs41ZSP_w@mail.gmail.com>
Date: Fri, 14 Mar 2025 10:09:35 -0400
X-Gm-Features: AQ5f1JoSvZIcYCRNZqwDnV_WXQkmbEFsLgHrNRbBF_iqD8nZuAPeV4BPCuU0kBQ
Message-ID: <CAB__hTTvAsm9jHux7GZ1nRojpd_ftHwA9+M=mmL-a=fUDkUPgg@mail.gmail.com>
To: carmixdev@gmail.com
Message-ID-Hash: 74EUOZ6PVKWVS4M2YC3W5UAGZNK4QH3N
X-Message-ID-Hash: 74EUOZ6PVKWVS4M2YC3W5UAGZNK4QH3N
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 transmit multi streams on single radio channel
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/74EUOZ6PVKWVS4M2YC3W5UAGZNK4QH3N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============9096719151011593036=="

--===============9096719151011593036==
Content-Type: multipart/alternative; boundary="000000000000a4b43806304dfdc6"

--000000000000a4b43806304dfdc6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

One more thing. I would start as small as possible.  Just add one addsub
block and one null src sink and see if you can get it working with 2 tx
streams.

On Fri, Mar 14, 2025 at 10:06=E2=80=AFAM Rob Kossler <rkossler@nd.edu> wrot=
e:

>
> On Fri, Mar 14, 2025 at 5:57=E2=80=AFAM <carmixdev@gmail.com> wrote:
>
>> Thank you for your answer,
>>
>> I=E2=80=99m following your directions and I=E2=80=99m creating the yaml =
file with the
>> relevant elements in it, however since it is the first time that I creat=
e
>> such a file I=E2=80=99m facing some difficulties:
>>
>> -The 4 port DUC will need 4 new endpoints right?
>>
> Yes.  But, the I later realized that the typical X310 yaml files already
> include 4 DUC ports (2 ports in each of 2 DUC blocks), so you could just
> use those as shown in the example
> "rfnoc-gain/icores/x310_rfnoc_image_core.yaml" without having to add a
> 4-port DUC.
>
>> -all the addsub blocks that are internal do not need an endpoint, so I
>> imagine that i can connect them statically in the connections section (o=
r
>> it would be better to have them dinamically connected?)
>>
> Either way is fine.  Dynamic connections require more SEP, but allow you
> more flexibility (e.g., if you wanted to only have 2 streaming sources
> combined, you could reconfigure the graph to only have 1 addsub block at
> the DUC outputs, whereas if you statically connect, I think you will alwa=
ys
> need 4 streaming sources)
>
>> -The diff ports of addsub block will not be connected, i think i should
>> connect them to a Null Source Sink Block, right?
>>
> This seems correct, but I don't have any experience using the Null Source
> Sink.
>
>> -I noticed that on old tutorials there was a python tool that helped in
>> the creation of yaml files, why it isn=E2=80=99t available anymore?
>>
> Not sure.  But, if you start with the example x310 icore yaml mentioned
> above, it is not too hard to modify it to add three "addsub" blocks and
> make the connections.
>
>> -I=E2=80=99m using GNUradio to design a sample system, however I noticed=
 that
>> when I use RFNoC blocks I can only generate python and not C++, is it
>> normal? that means that if I go on with the project, since I use C++ I w=
ill
>> have to migrate to UHD and dismiss GNUradio?
>>
> I don't know gnuradio well.  I didn't even know that gnuradio could
> generate C++. I thought that gnuradio was always Python (for the flow gra=
ph
> portion).  But, I would check with the gnuradio list for this question.  =
I
> will mention that if you want to use C++ directly with UHD for your
> specific scenario, it would not be too difficult.  But, if you need to
> later add things like signal processing that are available in gnuradio, y=
ou
> might want to stick with gnuradio.
>
>

--000000000000a4b43806304dfdc6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">One more thing. I would start as small as possible.=C2=A0 =
Just add one addsub block and one null src sink and see if you can get it w=
orking with 2 tx streams.=C2=A0</div><br><div class=3D"gmail_quote gmail_qu=
ote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 14, 2025 a=
t 10:06=E2=80=AFAM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkoss=
ler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 14, 2025 at 5:57=
=E2=80=AFAM &lt;<a href=3D"mailto:carmixdev@gmail.com" target=3D"_blank">ca=
rmixdev@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><p>Thank you for your answer,</p><p>I=E2=80=99m following =
your directions and I=E2=80=99m creating the yaml file with the relevant el=
ements in it, however since it is the first time that I create such a file =
I=E2=80=99m facing some difficulties:</p><p>-The 4 port DUC will need 4 new=
 endpoints right?</p></blockquote><div>Yes.=C2=A0 But, the I later realized=
 that the typical X310 yaml files already include 4 DUC ports (2 ports in e=
ach of 2 DUC blocks), so you could just use those as shown in the example &=
quot;rfnoc-gain/icores/x310_rfnoc_image_core.yaml&quot; without having to a=
dd a 4-port DUC.</div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>=
-all the addsub blocks that are internal do not need an endpoint, so I imag=
ine that i can connect them statically in the connections section (or it wo=
uld be better to have them dinamically connected?)</p></blockquote><div>Eit=
her way is fine.=C2=A0 Dynamic connections require more SEP, but allow you =
more flexibility (e.g., if you wanted to only have 2 streaming sources comb=
ined, you could reconfigure the graph to only have 1 addsub block at the DU=
C outputs, whereas if you statically connect, I think you will always need =
4 streaming sources)</div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><p>-The diff ports of addsub block will not be connected, i think i should=
 connect them to a Null Source Sink Block, right?</p></blockquote><div>This=
 seems correct, but I don&#39;t have any experience using the Null Source S=
ink.=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>-I not=
iced that on old tutorials there was a python tool that helped in the creat=
ion of yaml files, why it isn=E2=80=99t available anymore?</p></blockquote>=
<div>Not sure.=C2=A0 But, if you start with the example x310 icore yaml men=
tioned above, it is not too hard to modify it to add three &quot;addsub&quo=
t; blocks and make the connections.</div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><p>-I=E2=80=99m using GNUradio to design a sample system, h=
owever I noticed that when I use RFNoC blocks I can only generate python an=
d not C++, is it normal? that means that if I go on with the project, since=
 I use C++ I will have to migrate to UHD and dismiss GNUradio?</p></blockqu=
ote><div>I don&#39;t know gnuradio well.=C2=A0 I didn&#39;t even know that =
gnuradio could generate C++. I thought that gnuradio was always Python (for=
 the flow graph portion).=C2=A0 But, I would check with the gnuradio list f=
or this question.=C2=A0 I will mention that if you want to use C++ directly=
 with UHD for your specific scenario, it would not be too difficult.=C2=A0 =
But, if you need to later add things like signal processing that are availa=
ble in gnuradio, you might want to stick with gnuradio.</div><div><br></div=
></div></div>
</blockquote></div>

--000000000000a4b43806304dfdc6--

--===============9096719151011593036==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9096719151011593036==--
