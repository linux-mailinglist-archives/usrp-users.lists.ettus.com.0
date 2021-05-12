Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1B237C77D
	for <lists+usrp-users@lfdr.de>; Wed, 12 May 2021 18:30:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 938C3384178
	for <lists+usrp-users@lfdr.de>; Wed, 12 May 2021 12:30:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fZE466sq";
	dkim-atps=neutral
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 0646B383314
	for <usrp-users@lists.ettus.com>; Wed, 12 May 2021 12:30:04 -0400 (EDT)
Received: by mail-il1-f176.google.com with SMTP id o9so15524440ilh.6
        for <usrp-users@lists.ettus.com>; Wed, 12 May 2021 09:30:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4Ul5xjS9PyYbuEGCGZtwswabVqvhhjGTARVEb2I4alc=;
        b=fZE466sqEpfo4yVbbmwpScqRvZku64yPZUksgqIjH34r13wizTjdfCwGNyha6Zmbie
         E+LOvoWgdK6NVbM3DCugRjYC1BmcXvHVitQWZp8mnrvaVeAu/0W+9In90YDGWiuqzouV
         lCrZ4qdL37R6mPRcgMXzWpqM/IUvI2Z/kWUiFLGcUNlERx95fpeKVYH14MNaFmFxycZQ
         Bs2CtgkEsHG1PhCPFwqJVCfAZO4RrQIOdURiZNlWR8ZEb5GS8d5XnjBU4EI5CcSJ8Uvf
         Z96CL4lM2/Pa0riwIiq1WnT6ytBS35eKwVz4Htalj8mlAJ8ODHA4tcB+JUH+retqFW9m
         kYmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4Ul5xjS9PyYbuEGCGZtwswabVqvhhjGTARVEb2I4alc=;
        b=VoHKc1IY/9mXh7PnNzZt3MFk1NviOktcrBh4UojhA5M42qwUMH15jwqOC/NAolgpXk
         ikxS2YcAVg+69oeWOZ+kBa896TCljNYRBaRPNiuU8/owJX2v4U/KibkujffD8xpBvqDY
         o2cf1xx93S17QklGmbaRYJc7W2Woi64PLtC21ovSV90lownpoQdzLI/0K9R2QSNWOMUa
         7PQSB8FkYBjxgCM730jnm1/WFrVY4eaXZXlOtCDUwyAwUEjjfdbGy9hW4EK8ji8c2/n5
         /JTpKW/P/IF4/cBrKAtDVOxzQ0J4wP7J23VvV6V+oPeu3qt0qOFIUX5wWwQA/+ZO3BEQ
         SCEg==
X-Gm-Message-State: AOAM531o/ZrDxoe4R9j05U4fJEo2j9S4ozNwToYWPz1dkMYKmdGrzo4d
	yEAJ8KaMMgd9zT3Tx9ZIQ9pcKk1PxYNYNkexZvy4BowqA0k=
X-Google-Smtp-Source: ABdhPJzkNmjtj9yym5iJU9o4RYvTiAFEZcnnzcqz+/R5OBexGeLy4vr46+AuYNYO6bxCnOiFvfxfisCqLL3M2eE4z+4=
X-Received: by 2002:a92:d3c1:: with SMTP id c1mr31651479ilh.21.1620837004292;
 Wed, 12 May 2021 09:30:04 -0700 (PDT)
MIME-Version: 1.0
References: <CABNzRJnCfSzBdzV5BrcrtUrGFqUj7D88g_=ZtF9c=3ZvmtJdfg@mail.gmail.com>
 <CAKJyDk+DvRrPokbQM01BjWPwWcJcSyW-fYEPnr2wK6RC3Ojqew@mail.gmail.com> <CACaXmv8h=LsD_utbQrb3e=Q5aUJ+kq=3qqsDdSCFdoiArRiO5A@mail.gmail.com>
In-Reply-To: <CACaXmv8h=LsD_utbQrb3e=Q5aUJ+kq=3qqsDdSCFdoiArRiO5A@mail.gmail.com>
From: wan <liuwsdr@gmail.com>
Date: Wed, 12 May 2021 12:29:53 -0400
Message-ID: <CABNzRJkxM0nzG33+OnTTrK_DCAjAwSn2JYpPWbiEcLr5PTicCg@mail.gmail.com>
To: Neel Pandeya <neel.pandeya@ettus.com>
Message-ID-Hash: HR2VKBXD4ELYKKBPMBNLTC6DPEK4HTMW
X-Message-ID-Hash: HR2VKBXD4ELYKKBPMBNLTC6DPEK4HTMW
X-MailFrom: liuwsdr@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Ettus Mail List <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 with thunderbolt 3 laptop
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HR2VKBXD4ELYKKBPMBNLTC6DPEK4HTMW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3572716096329042048=="

--===============3572716096329042048==
Content-Type: multipart/alternative; boundary="000000000000e1377b05c224854a"

--000000000000e1377b05c224854a
Content-Type: text/plain; charset="UTF-8"

Robin, Neel,

Thanks for the suggestion!

Regards,

Wan L

On Tue, 11 May 2021 at 22:19, Neel Pandeya <neel.pandeya@ettus.com> wrote:

> Hello Wan:
>
> Yeah, Akitio has discontinued their small portable TB3-to-Ethernet
> adapter.  Some years ago, I used their TB3-to-PCIe expansion chassis with
> an Intel X710-DA2 network card, and that worked well.
>
> I'll second what Robin Coxe said.  I would recommend the QNAP device.  It
> works well out-of-the-box with Ubuntu 20.04, and comes in two versions, one
> with an RJ-45 port, and one with an SFP+ port.
>
> https://www.qnap.com/en-us/product/qna-tb-10gbe
>
> --Neel Pandeya
>
>
>
> On Tue, 11 May 2021 at 20:11, Robin Coxe <coxe@quanttux.com> wrote:
>
>> This one works:
>> https://www.amazon.com/gp/product/B07KTLP44W/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1
>>
>> On Tue, May 11, 2021 at 4:35 PM wan <liuwsdr@gmail.com> wrote:
>>
>>> Hello,
>>>
>>> I would like to use the X310 with a thunderbolt 3 laptop (running
>>> Ubuntu) to get as much throughput as possible. I recall from a few years
>>> ago, the recommended solution is to install the 10 GbE network card
>>> accessory <https://www.ettus.com/all-products/10GIGE-KIT/> into the Akitio
>>> Node Lite <https://www.akitio.com/expansion/node-lite>expansion
>>> chassis. However, the Node Lite is EOL.
>>>
>>> Have you tested other Akitio chassis like the Node
>>> <https://www.akitio.com/expansion/node>, Node Titan
>>> <https://www.akitio.com/expansion/node-titan>, Node Duo
>>> <https://www.akitio.com/expansion/node-duo>, or expansion chassis from
>>> other brands?
>>>
>>> Have you also tested any 10 GbE to Thunderbolt adapters such as ones
>>> from OWC
>>> <https://www.owcdigital.com/products/thunderbolt-3-10g-ethernet-adapter>
>>> and Sonnettech
>>> <https://www.sonnettech.com/product/solo10g-tb3/overview.html>?
>>>
>>> Regards,
>>>
>>> Wan L
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000e1377b05c224854a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Robin, Neel,<br><br></div>Thanks for the su=
ggestion!<br><br></div>Regards,<br><br></div>Wan L<br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 11 May 2021 =
at 22:19, Neel Pandeya &lt;<a href=3D"mailto:neel.pandeya@ettus.com">neel.p=
andeya@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_defau=
lt" style=3D"font-family:verdana,sans-serif">Hello Wan:</div><div class=3D"=
gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><div clas=
s=3D"gmail_default" style=3D"font-family:verdana,sans-serif">Yeah, Akitio h=
as discontinued their small portable TB3-to-Ethernet adapter.=C2=A0 Some ye=
ars ago, I used their=C2=A0TB3-to-PCIe expansion chassis with an Intel X710=
-DA2 network card, and that worked well.</div><div class=3D"gmail_default" =
style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_defa=
ult" style=3D"font-family:verdana,sans-serif">I&#39;ll second what Robin Co=
xe said.=C2=A0 I would=C2=A0recommend the QNAP device.=C2=A0 It works well =
out-of-the-box with Ubuntu 20.04, and comes in two versions, one with an RJ=
-45 port, and one with an SFP+ port.</div><div class=3D"gmail_default" styl=
e=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_default"=
 style=3D"font-family:verdana,sans-serif"><a href=3D"https://www.qnap.com/e=
n-us/product/qna-tb-10gbe" target=3D"_blank">https://www.qnap.com/en-us/pro=
duct/qna-tb-10gbe</a><br></div><div class=3D"gmail_default" style=3D"font-f=
amily:verdana,sans-serif"><br></div><div><div dir=3D"ltr"><div dir=3D"ltr">=
<font face=3D"verdana, sans-serif">--Neel Pandeya</font><div><br></div></di=
v></div></div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Tue, 11 May 2021 at 20:11, Robin Coxe &lt;<a href=3D"m=
ailto:coxe@quanttux.com" target=3D"_blank">coxe@quanttux.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
">This one works:=C2=A0=C2=A0<a href=3D"https://www.amazon.com/gp/product/B=
07KTLP44W/ref=3Dppx_yo_dt_b_search_asin_title?ie=3DUTF8&amp;psc=3D1" target=
=3D"_blank">https://www.amazon.com/gp/product/B07KTLP44W/ref=3Dppx_yo_dt_b_=
search_asin_title?ie=3DUTF8&amp;psc=3D1</a></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 11, 2021 at 4:35 PM =
wan &lt;<a href=3D"mailto:liuwsdr@gmail.com" target=3D"_blank">liuwsdr@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div><div><div><div><div>Hello, <br><br></div>I would=
 like to use the X310 with a thunderbolt 3 laptop (running Ubuntu) to get a=
s much throughput as possible. I recall from a few years ago, the recommend=
ed solution is to install the <a href=3D"https://www.ettus.com/all-products=
/10GIGE-KIT/" target=3D"_blank">10 GbE network card accessory</a> into the =
<a href=3D"https://www.akitio.com/expansion/node-lite" target=3D"_blank">Ak=
itio Node Lite </a>expansion chassis. However, the Node Lite is EOL. <br><b=
r></div>Have you tested other Akitio chassis like the <a href=3D"https://ww=
w.akitio.com/expansion/node" target=3D"_blank">Node</a>, <a href=3D"https:/=
/www.akitio.com/expansion/node-titan" target=3D"_blank">Node Titan</a>, <a =
href=3D"https://www.akitio.com/expansion/node-duo" target=3D"_blank">Node D=
uo</a>, or expansion chassis from other brands?<br><br></div>Have you also =
tested any 10 GbE to Thunderbolt adapters such as ones from <a href=3D"http=
s://www.owcdigital.com/products/thunderbolt-3-10g-ethernet-adapter" target=
=3D"_blank">OWC</a> and <a href=3D"https://www.sonnettech.com/product/solo1=
0g-tb3/overview.html" target=3D"_blank">Sonnettech</a>?<br><br></div>Regard=
s,<br><br></div>Wan L<br><div><div><div><br><br></div></div></div></div>
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
</blockquote></div>

--000000000000e1377b05c224854a--

--===============3572716096329042048==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3572716096329042048==--
