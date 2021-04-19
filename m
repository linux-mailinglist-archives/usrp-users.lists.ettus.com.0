Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6562F364DDD
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 00:52:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9CB8E3853A8
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 18:52:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=vectalabs-com.20150623.gappssmtp.com header.i=@vectalabs-com.20150623.gappssmtp.com header.b="d3rXc/Gb";
	dkim-atps=neutral
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 9EBE638420C
	for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 18:51:40 -0400 (EDT)
Received: by mail-vk1-f179.google.com with SMTP id s190so3520539vkd.6
        for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 15:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Sg/gUOr4U6+8SkW9sSl2fDd+9ExF1ED/BdvahSn30O4=;
        b=d3rXc/GbLcw7xCDxfObA6LbZismt36qjo6oz4magOGjHCkYpUGgLxb9u9UsFxh7aLo
         bu+NCSJO8lH74rsf528tf2MfcY4ReNBnyfNhCFZ25x0KnI7425Lz8NuOD5RJNlOGATTl
         7WWRw3jM4Lvx3W0o4HB61gPSi4Nq8E9jy/ydie59lnL7MmLLoCvzuUtubvUDCXlEDXw1
         tURkIlEaH7kKSIi2/HiJ00ETDB0vEdyjPvGQNSPqkzAVvERbwbx42cA27VX8cqsKlV1R
         u+lwj38BqdEM6kgdMWUcYK8DMcs2JUBOUZDSPpOzbrX39dEfFatXRVe7w7dwptbpSoTm
         Vo+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Sg/gUOr4U6+8SkW9sSl2fDd+9ExF1ED/BdvahSn30O4=;
        b=qxrojYRrtqdoSAtp1ib4Ts+rVHN7GDjwoBw6U1ilbudfqUEPBwBDrKQWYfVpe3+vcY
         mp4yBdrEkWWcPZWJaDTvthTtyrDZie20elI49rmoJl0PkggaT6Ze8scgMSlUaoY29+c0
         Cm9vduQVgx5xWZ9Acz103l8fXK6gQLYtU+CkR5jYiVWEwmtN1cMjLrGud7Y9dkdVgGrP
         Fd2eXQlqgSynv+1e/gYFAz6A7MJ2IN5Ik8GT///NQO97Z6/gScusQS/6YIGlEALqGE7m
         2BkBgj+TggRPC5A7NzWy1umd9dct+DnjuETXwW42HDpNcIbrtKBLYoMrS4GwTLOvRN9C
         TrTQ==
X-Gm-Message-State: AOAM531xHpb19RR7TALFlGkFxVA30lbmRwjVP5TlJTYeDcdQpKzGmmfj
	d+gHrmM4/EQLTEjP1+GHRM+wgujh4IDKCdqudb6ing==
X-Google-Smtp-Source: ABdhPJwy1b6TYaTYZOmtAbZTgM/oTE9Wj1bx7iNxDFK0LFs4A5+YHHpqMAOoobVwc3cYyj7b0JyfOdz6iQct91tDZNM=
X-Received: by 2002:a05:6122:119a:: with SMTP id x26mr7738010vkn.25.1618872699979;
 Mon, 19 Apr 2021 15:51:39 -0700 (PDT)
MIME-Version: 1.0
References: <8BD61B25-5BDD-4864-8C30-B1C133F513F2@gmail.com>
 <C7A28B54-D688-46B6-ACB1-A5739D949AFE@gmail.com> <CALNMZ8WiRaZbvALNifxMPBpPPYuZ1-eFRHZ0A-8E=A2swFYgsQ@mail.gmail.com>
 <607E0593.1040807@gmail.com>
In-Reply-To: <607E0593.1040807@gmail.com>
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Tue, 20 Apr 2021 08:51:29 +1000
Message-ID: <CALNMZ8U3m_oj3T67VqZYOV53J3sCb=7=NCat2E0TnMvEB1QEbg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: RTLWEIYJMLXF7GGDTQPD3S3EXQOJDHIG
X-Message-ID-Hash: RTLWEIYJMLXF7GGDTQPD3S3EXQOJDHIG
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD dual-install issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RTLWEIYJMLXF7GGDTQPD3S3EXQOJDHIG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3447968742497678646=="

--===============3447968742497678646==
Content-Type: multipart/alternative; boundary="000000000000381a1605c05b2c42"

--000000000000381a1605c05b2c42
Content-Type: text/plain; charset="UTF-8"

OK, I didn't realise that GNU Radio needed the Python UHD module to be
installed.  I deliberately excluded the Python API from my UHD driver build
in order to try out Christian's custom Python API.

I will remove the custom API today, and install a "stock" UHD driver with
the Ettus Python API.  Then I will give the GNU Radio installation another
try.

Thanks,
Brendan.


On Tue, Apr 20, 2021 at 8:35 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 04/19/2021 06:21 PM, Brendan Horsfield wrote:
>
> Importing uhd in Python 3:
> /usr/local/lib/python3.6/dist-packages/uhd-1.1.0-py3.6-linux-x86_64.egg/
> uhd.cpython-36m-x86_64-linux-gnu.so
>
> (Note that this is an alternative Python UHD module written by Christian
> Hahn, which I have been evaluating for the last few days.)
>
> Trying to import uhd in Python 2 (which I never use) returns an error:
>
> Traceback (most recent call last):
>   File "<stdin>", line 1, in <module>
>   File "/usr/local/lib/python2.7/dist-packages/uhd/__init__.py", line 10,
> in <module>
>   File "/usr/local/lib/python2.7/dist-packages/uhd/types.py", line 10, in
> <module>
>     # "__iter__" and "next" attributes instead.
> ImportError: cannot import name libpyuhd
>
> Brendan.
>
> Given that gr-uhd wants a module called "uhd" to exist, and GR uses
> gr-uhd, i'm not sure what will happen with the
>   name-space pollution that will result.
>
>
>

--000000000000381a1605c05b2c42
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">OK, I didn&#39;t realise that GNU Radio needed the Python =
UHD module to be installed.=C2=A0 I deliberately excluded the Python API fr=
om my UHD driver build in order to try out Christian&#39;s custom Python AP=
I.<div><br></div><div>I will remove the custom API today, and install a &qu=
ot;stock&quot; UHD driver with the Ettus Python API.=C2=A0 Then I will give=
 the GNU Radio installation another try.</div><div><br></div><div>Thanks,</=
div><div>Brendan.</div><div><br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 20, 2021 at 8:35 AM Marcu=
s D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 04/19/2021 06:21 PM, Brendan
      Horsfield wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Importing uhd in Python 3:=C2=A0
        /usr/local/lib/python3.6/dist-packages/uhd-1.1.0-py3.6-linux-x86_64=
.egg/<a href=3D"http://uhd.cpython-36m-x86_64-linux-gnu.so" target=3D"_blan=
k">uhd.cpython-36m-x86_64-linux-gnu.so</a>
        <div><br>
        </div>
        <div>(Note that this is an alternative Python UHD module written
          by Christian Hahn, which I have been evaluating for the last
          few days.)=C2=A0 =C2=A0</div>
        <div><br>
        </div>
        <div>Trying to import uhd in Python 2 (which I never use)
          returns an error:</div>
        <div><br>
        </div>
        <div>Traceback (most recent call last):<br>
          =C2=A0 File &quot;&lt;stdin&gt;&quot;, line 1, in &lt;module&gt;<=
br>
          =C2=A0 File
          &quot;/usr/local/lib/python2.7/dist-packages/uhd/__init__.py&quot=
;, line
          10, in &lt;module&gt;<br>
          =C2=A0 File &quot;/usr/local/lib/python2.7/dist-packages/uhd/type=
s.py&quot;,
          line 10, in &lt;module&gt;<br>
          =C2=A0 =C2=A0 # &quot;__iter__&quot; and &quot;next&quot; attribu=
tes instead.<br>
          ImportError: cannot import name libpyuhd<br>
        </div>
        <div><br>
        </div>
        <div>Brendan.</div>
        <br>
      </div>
    </blockquote>
    Given that gr-uhd wants a module called &quot;uhd&quot; to exist, and G=
R uses
    gr-uhd, i&#39;m not sure what will happen with the<br>
    =C2=A0 name-space pollution that will result.<br>
    <br>
    <br>
  </div>

</blockquote></div>

--000000000000381a1605c05b2c42--

--===============3447968742497678646==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3447968742497678646==--
