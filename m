Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1263437B420
	for <lists+usrp-users@lfdr.de>; Wed, 12 May 2021 04:20:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EFA80384ACC
	for <lists+usrp-users@lfdr.de>; Tue, 11 May 2021 22:20:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="YZj5N3yh";
	dkim-atps=neutral
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
	by mm2.emwd.com (Postfix) with ESMTPS id EF1F73844C6
	for <usrp-users@lists.ettus.com>; Tue, 11 May 2021 22:19:39 -0400 (EDT)
Received: by mail-il1-f177.google.com with SMTP id p15so18946877iln.3
        for <usrp-users@lists.ettus.com>; Tue, 11 May 2021 19:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GWzURSEDgvbU243lAV9uIn55MgS3cNpPBnBK7vWmUeI=;
        b=YZj5N3yhYxYC+vDuuNLqozBgvtSJJddlHIZU/YQ3P1b0yt6KrfdVQIkCyudZCSY12h
         F+9bsnzyxRVDxo+99FigFy0rrb9JQZpCnwx2pBuJLx0gUgO8/iCDtTIT/y2MhGtj6apl
         bhvgvBhvA4yBhsZJ71GUltPpSb4FDm8QjuWGVggzx9Z1GMgTDy9hYLG+oAvmKVNkCRfX
         9yB0vteQ89s67EOEUS0F9sjWSe16J85sXPlGGrhI17ozB75IS45h1nCdAnK9ARxQvDBp
         SNy1qPX2pqpetpGOHdcHm4uUdr63qrZOzz2NY7SevkRmQdratfyLkJTxr/fusL0u9M25
         Dh8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GWzURSEDgvbU243lAV9uIn55MgS3cNpPBnBK7vWmUeI=;
        b=fqibSXa1/OfQR2uWM+yx6cR9poKXt6B/FniBUCwGf7MkYnkh+69hSrU4IL5EtpPUMb
         RZXY4CkeBbMdqUZr1CVVJc+P7TuWEfHH8g4KucYkeDar5C/Vke2JhLXTfSZTIZ/uHgIx
         LSceyRzJoCLFhRjGAWEyNc2zvwg4oYVhFlurgehQ0pwyquGbVi9MR5EFpmafQx0ce+SS
         uJWNZfcIW0z11l0csTNNY2BkGBFb97QOPY1qlQQfOdsTXhFsLowFjTk6Gw9reHrhqZu7
         dKqydmti3sffGGVHmU1Uk49nskThp4Rw6ack12ZRfjf1jM/PmYVxVaLlXaiSX75vkJUC
         dXPg==
X-Gm-Message-State: AOAM530fW78LZM2ZvoOSJ671ntp1J7K7v5dkNUDSoS6BwSieTHJGTq2D
	5CLikEUhHM7giZf+WomGc8YKtRY7Idw8eOFgdSh3cqld
X-Google-Smtp-Source: ABdhPJzpcqWPBmbohubDoXAeIOdypLpJ6ZUWNp8M60jAKp86sYOAaTKlvPC52CBYB4gbmOQrVkfaJzsoQagsGpb6gCc=
X-Received: by 2002:a05:6e02:1ba3:: with SMTP id n3mr22589131ili.20.1620785979356;
 Tue, 11 May 2021 19:19:39 -0700 (PDT)
MIME-Version: 1.0
References: <CABNzRJnCfSzBdzV5BrcrtUrGFqUj7D88g_=ZtF9c=3ZvmtJdfg@mail.gmail.com>
 <CAKJyDk+DvRrPokbQM01BjWPwWcJcSyW-fYEPnr2wK6RC3Ojqew@mail.gmail.com>
In-Reply-To: <CAKJyDk+DvRrPokbQM01BjWPwWcJcSyW-fYEPnr2wK6RC3Ojqew@mail.gmail.com>
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Tue, 11 May 2021 21:19:03 -0500
Message-ID: <CACaXmv8h=LsD_utbQrb3e=Q5aUJ+kq=3qqsDdSCFdoiArRiO5A@mail.gmail.com>
To: wan <liuwsdr@gmail.com>
Message-ID-Hash: 4VXOBID6OYI4NTEJ47A2VYFC62X5UFWQ
X-Message-ID-Hash: 4VXOBID6OYI4NTEJ47A2VYFC62X5UFWQ
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Ettus Mail List <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 with thunderbolt 3 laptop
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4VXOBID6OYI4NTEJ47A2VYFC62X5UFWQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7511868921341273214=="

--===============7511868921341273214==
Content-Type: multipart/alternative; boundary="0000000000008e9ae605c218a477"

--0000000000008e9ae605c218a477
Content-Type: text/plain; charset="UTF-8"

Hello Wan:

Yeah, Akitio has discontinued their small portable TB3-to-Ethernet
adapter.  Some years ago, I used their TB3-to-PCIe expansion chassis with
an Intel X710-DA2 network card, and that worked well.

I'll second what Robin Coxe said.  I would recommend the QNAP device.  It
works well out-of-the-box with Ubuntu 20.04, and comes in two versions, one
with an RJ-45 port, and one with an SFP+ port.

https://www.qnap.com/en-us/product/qna-tb-10gbe

--Neel Pandeya



On Tue, 11 May 2021 at 20:11, Robin Coxe <coxe@quanttux.com> wrote:

> This one works:
> https://www.amazon.com/gp/product/B07KTLP44W/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1
>
> On Tue, May 11, 2021 at 4:35 PM wan <liuwsdr@gmail.com> wrote:
>
>> Hello,
>>
>> I would like to use the X310 with a thunderbolt 3 laptop (running Ubuntu)
>> to get as much throughput as possible. I recall from a few years ago, the
>> recommended solution is to install the 10 GbE network card accessory
>> <https://www.ettus.com/all-products/10GIGE-KIT/> into the Akitio Node
>> Lite <https://www.akitio.com/expansion/node-lite>expansion chassis.
>> However, the Node Lite is EOL.
>>
>> Have you tested other Akitio chassis like the Node
>> <https://www.akitio.com/expansion/node>, Node Titan
>> <https://www.akitio.com/expansion/node-titan>, Node Duo
>> <https://www.akitio.com/expansion/node-duo>, or expansion chassis from
>> other brands?
>>
>> Have you also tested any 10 GbE to Thunderbolt adapters such as ones from
>> OWC
>> <https://www.owcdigital.com/products/thunderbolt-3-10g-ethernet-adapter>
>> and Sonnettech
>> <https://www.sonnettech.com/product/solo10g-tb3/overview.html>?
>>
>> Regards,
>>
>> Wan L
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008e9ae605c218a477
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:verdana,sans-serif">Hello Wan:</div><div class=3D"gmail_default" s=
tyle=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_defau=
lt" style=3D"font-family:verdana,sans-serif">Yeah, Akitio has discontinued =
their small portable TB3-to-Ethernet adapter.=C2=A0 Some years ago, I used =
their=C2=A0TB3-to-PCIe expansion chassis with an Intel X710-DA2 network car=
d, and that worked well.</div><div class=3D"gmail_default" style=3D"font-fa=
mily:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"fo=
nt-family:verdana,sans-serif">I&#39;ll second what Robin Coxe said.=C2=A0 I=
 would=C2=A0recommend the QNAP device.=C2=A0 It works well out-of-the-box w=
ith Ubuntu 20.04, and comes in two versions, one with an RJ-45 port, and on=
e with an SFP+ port.</div><div class=3D"gmail_default" style=3D"font-family=
:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-f=
amily:verdana,sans-serif"><a href=3D"https://www.qnap.com/en-us/product/qna=
-tb-10gbe">https://www.qnap.com/en-us/product/qna-tb-10gbe</a><br></div><di=
v class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></di=
v><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_s=
ignature"><div dir=3D"ltr"><font face=3D"verdana, sans-serif">--Neel Pandey=
a</font><div><br></div></div></div></div><br></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 11 May 2021 at 20:11, =
Robin Coxe &lt;<a href=3D"mailto:coxe@quanttux.com">coxe@quanttux.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr">This one works:=C2=A0=C2=A0<a href=3D"https://www.amazon.com/gp/=
product/B07KTLP44W/ref=3Dppx_yo_dt_b_search_asin_title?ie=3DUTF8&amp;psc=3D=
1" target=3D"_blank">https://www.amazon.com/gp/product/B07KTLP44W/ref=3Dppx=
_yo_dt_b_search_asin_title?ie=3DUTF8&amp;psc=3D1</a></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 11, 2021 at=
 4:35 PM wan &lt;<a href=3D"mailto:liuwsdr@gmail.com" target=3D"_blank">liu=
wsdr@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr"><div><div><div><div><div>Hello, <br><br></di=
v>I would like to use the X310 with a thunderbolt 3 laptop (running Ubuntu)=
 to get as much throughput as possible. I recall from a few years ago, the =
recommended solution is to install the <a href=3D"https://www.ettus.com/all=
-products/10GIGE-KIT/" target=3D"_blank">10 GbE network card accessory</a> =
into the <a href=3D"https://www.akitio.com/expansion/node-lite" target=3D"_=
blank">Akitio Node Lite </a>expansion chassis. However, the Node Lite is EO=
L. <br><br></div>Have you tested other Akitio chassis like the <a href=3D"h=
ttps://www.akitio.com/expansion/node" target=3D"_blank">Node</a>, <a href=
=3D"https://www.akitio.com/expansion/node-titan" target=3D"_blank">Node Tit=
an</a>, <a href=3D"https://www.akitio.com/expansion/node-duo" target=3D"_bl=
ank">Node Duo</a>, or expansion chassis from other brands?<br><br></div>Hav=
e you also tested any 10 GbE to Thunderbolt adapters such as ones from <a h=
ref=3D"https://www.owcdigital.com/products/thunderbolt-3-10g-ethernet-adapt=
er" target=3D"_blank">OWC</a> and <a href=3D"https://www.sonnettech.com/pro=
duct/solo10g-tb3/overview.html" target=3D"_blank">Sonnettech</a>?<br><br></=
div>Regards,<br><br></div>Wan L<br><div><div><div><br><br></div></div></div=
></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000008e9ae605c218a477--

--===============7511868921341273214==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7511868921341273214==--
