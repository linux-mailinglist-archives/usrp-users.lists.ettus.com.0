Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8A81AE3E1
	for <lists+usrp-users@lfdr.de>; Fri, 17 Apr 2020 19:37:01 +0200 (CEST)
Received: from [::1] (port=56254 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jPUvD-0006JA-Is; Fri, 17 Apr 2020 13:36:59 -0400
Received: from mail-oo1-f51.google.com ([209.85.161.51]:39749)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jPUv9-0006Bk-MK
 for usrp-users@lists.ettus.com; Fri, 17 Apr 2020 13:36:55 -0400
Received: by mail-oo1-f51.google.com with SMTP id d6so627284oon.6
 for <usrp-users@lists.ettus.com>; Fri, 17 Apr 2020 10:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SsH+iKacxbJ+OuR8nHTilqRZG8YsIfwLpq51Db9sLa4=;
 b=extu+Ki0Xtivkk/G6MEFzgAPars7940kYbeeFEULTc8qGgMrF6S3Zd8xU6pCYuysqg
 dhx45buVi5jBwUuire3jmxIEGZFDq+HIUViRsBiY0Vd3E0JMt78zFk3WhM2R5IDMwMWt
 +uzYWEB7qmMH4JuhqAtnAiNcZzMqCpxGlqpxAslBD+eMcUBX6SZ6EBGuuhAQ1XJ4cIMA
 wLVCoNs7/YiD93igj9/OQX/boRxKNKsUkjrgmnZgfVppux5lAG2IsrJw1rlHoSEs4p1k
 JX+Q8WawD/zQrSLdJY/jk5SGGCb4bQUZignUbcXsXTF/r3++JMm9b0A3aVqU2U2KnXNY
 3IYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SsH+iKacxbJ+OuR8nHTilqRZG8YsIfwLpq51Db9sLa4=;
 b=PdvZbVy5LAOfpknVa2TXAVyCUmA5sj7waJRkdil1LTwybHRZMgGGoMBtWG4m4RddQA
 fdA5TUz+hNUJFH3HIZch/0LTaRE4K5tpH1JAaPDyeYaycG0Iq61BcZjt3VY8MCJbfuMh
 xQb2Oi3QgUJBJfJgX8lthCFATL5JiEshdnATaCGtPMhgeSWO2Jq6VRRBMiM717UJ/quG
 7k3OnIxXG/6ubyUnjTlFQeDMPeWbq4EyhFCefpMOkIhVDQXwTM5fa5Q4VQVaiDZS+/D1
 yhJKhCC8x8PMCXqxpwa7a1UOAnv185O++wb31zZl1CzFx8u7vje3OFdBrkP+5cLw0ADM
 lnsw==
X-Gm-Message-State: AGi0PuYWHHWYa6S2HgN+IQsm1TrmmiX/s7HUBNrzTtLINQcKy9h9h2M9
 M2AgpG2CAdq2iNAnAyFgBXcVHrW0zLR5zHLT7yWPEQ==
X-Google-Smtp-Source: APiQypITDeC9J2tLKaVgkAlIaR+Mp43Td8Vqbtq9OnVOECbQma8zqAewPJa7zxN/rgG3tvdMULGU5W1LO/1+YZSy6mk=
X-Received: by 2002:a4a:d103:: with SMTP id k3mr3420731oor.68.1587144974842;
 Fri, 17 Apr 2020 10:36:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxupfiy8YpfrZR_xfAq4jQdhQq-JaaF_CUK3B6X820F6=g@mail.gmail.com>
 <CAGNhwTP+9VjAP=NphtoFcJmNn7wd5Rhd3N7z5K1ugtMa+94FUg@mail.gmail.com>
In-Reply-To: <CAGNhwTP+9VjAP=NphtoFcJmNn7wd5Rhd3N7z5K1ugtMa+94FUg@mail.gmail.com>
Date: Fri, 17 Apr 2020 13:36:03 -0400
Message-ID: <CAB__hTRZbQAuzbnJ1vQX8ZszRpzqnUhO_ozu0nTOPzrkQ=PP0w@mail.gmail.com>
To: Michael Dickens <michael.dickens@ettus.com>
Subject: Re: [USRP-users] GPIO setup via gnuradio
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>,
 discuss-gnuradio <discuss-gnuradio@gnu.org>
Content-Type: multipart/mixed; boundary="===============4973488821730372970=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============4973488821730372970==
Content-Type: multipart/alternative; boundary="0000000000006f123d05a37ffc4a"

--0000000000006f123d05a37ffc4a
Content-Type: text/plain; charset="UTF-8"

The following link (GR documentation) shows some UHD GPIO functionality.
https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__block.html

On Fri, Apr 17, 2020 at 10:27 AM Michael Dickens via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Ivan - I'm assuming you mean configure and control a USRP's GPIO via
> UHD in GNU Radio?
>
> In theory this should be possible, at least in C++ and of course it
> requires that the specific USRP have GPIO ...
>
> I'm not sure if there's a Python GPIO API as of UHD 3.15, but if there is
> then that method should work about the same as the C++ method.
>
> You'd have to get access to the instantiated USRP object, then you can use
> that object to issue GPIO related calls. See these pages for more info
> about GPIO in UHD:
>
> < https://files.ettus.com/manual/page_gpio_api.html >
>
> <
> https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD#Example:_Using_Timed_Commands_to_Control_GPIO
>  >
>
> < https://github.com/EttusResearch/uhd/blob/master/host/examples/gpio.cpp
>  >
>
> I can't think of a current GNU Radio block that handles UHD USRP GPIO. If
> you look around & can't find one, then you'd need to create a custom GNU
> Radio block to handle this. You would pass your new block the USRP object,
> which you'd then use for the GPIO calls ... using Python or C++ depending
> on which API is available for your specific UHD.
>
> Maybe there's another way that I don't know of? If so hopefully others
> will add to the discussion!
>
> Hope this is useful! - MLD
>
> On Fri, Apr 17, 2020 at 9:15 AM Ivan Zahartchuk via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello. Please tell me if it is possible to configure GPIO using gnuradio.
>> I want to use RFNOC blocks and switch an external device using GPIO
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000006f123d05a37ffc4a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The following link (GR documentation) shows some UHD =
GPIO functionality.</div><a href=3D"https://www.gnuradio.org/doc/doxygen/cl=
assgr_1_1uhd_1_1usrp__block.html">https://www.gnuradio.org/doc/doxygen/clas=
sgr_1_1uhd_1_1usrp__block.html</a><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 17, 2020 at 10:27 AM Mich=
ael Dickens via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Ivan - I&#=
39;m assuming you mean configure and control a USRP&#39;s GPIO via UHD in G=
NU Radio?</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">In theory this s=
hould be possible, at least in C++ and of course it requires that the speci=
fic USRP have GPIO ...=C2=A0</div><div dir=3D"ltr"><br></div><div dir=3D"lt=
r">I&#39;m not sure if there&#39;s a Python GPIO API as of UHD 3.15, but if=
 there is then that method should work about the same as the C++ method.<di=
v><br></div><div>You&#39;d have to get access to the instantiated USRP obje=
ct, then you can use that object to issue GPIO related calls. See these pag=
es for more info about GPIO in UHD:</div><div><br><div>&lt;=C2=A0<a href=3D=
"https://files.ettus.com/manual/page_gpio_api.html" target=3D"_blank">https=
://files.ettus.com/manual/page_gpio_api.html</a> &gt;</div><div><br></div><=
div>&lt;=C2=A0<a href=3D"https://kb.ettus.com/Synchronizing_USRP_Events_Usi=
ng_Timed_Commands_in_UHD#Example:_Using_Timed_Commands_to_Control_GPIO" tar=
get=3D"_blank">https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_C=
ommands_in_UHD#Example:_Using_Timed_Commands_to_Control_GPIO</a>=C2=A0&gt;<=
br></div><div><br></div><div>&lt;=C2=A0<a href=3D"https://github.com/EttusR=
esearch/uhd/blob/master/host/examples/gpio.cpp" target=3D"_blank">https://g=
ithub.com/EttusResearch/uhd/blob/master/host/examples/gpio.cpp</a>=C2=A0&gt=
;</div><div><br></div><div>I can&#39;t think of a current GNU Radio block t=
hat handles UHD USRP GPIO. If you look around &amp; can&#39;t find one, the=
n you&#39;d need to create a custom GNU Radio block to handle this. You wou=
ld pass your new block the USRP object, which you&#39;d then use for the GP=
IO calls ... using Python or C++ depending on which API is available for yo=
ur specific UHD.</div><div><br></div><div>Maybe there&#39;s another way tha=
t I don&#39;t know of? If so hopefully others will add to the discussion!</=
div><div><br></div><div>Hope this is useful! - MLD</div></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 1=
7, 2020 at 9:15 AM Ivan Zahartchuk via USRP-users &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr">Hello. Please tell me if it is possible to configure  GPIO using=
 gnuradio. I want to use RFNOC blocks and switch an external device using G=
PIO</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000006f123d05a37ffc4a--


--===============4973488821730372970==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4973488821730372970==--

