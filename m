Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A0E7EA7A
	for <lists+usrp-users@lfdr.de>; Fri,  2 Aug 2019 04:54:43 +0200 (CEST)
Received: from [::1] (port=59388 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1htNiL-0006Uc-Q8; Thu, 01 Aug 2019 22:54:41 -0400
Received: from mail-ot1-f70.google.com ([209.85.210.70]:53687)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <mikio@dolphinsystem.jp>)
 id 1htNiH-0006LZ-9l
 for usrp-users@lists.ettus.com; Thu, 01 Aug 2019 22:54:37 -0400
Received: by mail-ot1-f70.google.com with SMTP id d13so40323614oth.20
 for <usrp-users@lists.ettus.com>; Thu, 01 Aug 2019 19:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dolphinsystem-jp.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9D9OkpbgqNA66JcL91anhY+Et0LfW+9ghbFNbz6GWUI=;
 b=kCEggnU6VVJ9hB+ujVIFqUJKg5TA8lKRsCIabIxaV/tzmZMpEkfFsY6OL9nmmw6TWa
 wgaOvOW0j0i7NcpTegyg87V8ODjUf4kYELNxjYTdYGJWW7AQBgA8EIuK6byTkyWkCoQc
 Ag+9Js9Luh0aMQwPkCfLFagg4UVfiyFNKV91d+Q1dqQ4HmJwbrTMFOfLSw//QpmsrKDH
 ZaRo8wbm7/8elFgftSTkthv6oFBMB3WIUa4ovA3upgScw1OK2CzwmEhIyLlNFi7M0LIM
 um0MfN5gbuJ7SR7wux5BczFoTFAxYVLi3cb1aBCE1niIAX9ASh4myL9gd5HqaJXBV9BS
 bweg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9D9OkpbgqNA66JcL91anhY+Et0LfW+9ghbFNbz6GWUI=;
 b=qopNi6xWk4DWFenT8ZDbdg4ESC6S/bnZsKSb2cQZViPipnpusdo9x/cI00wP1Z3Tt1
 3J/wWIOjUIDvqgnWGuKtQrCSgsvzlgGo7Y4LoEJWY+/QsFB6OO+P6/dOMTvRDxVVvm+k
 Pf/5LltQwtNBpbST7K8d5Zj3umTLG2QxdWgkbw/QpkBQdNfoijW9e3Ba54XlpBW0GS21
 HWurctIRTbWprOjLV4n4mdNpLfPlrps7k4UILSJU2KqxTs+z1mzwfQxnfGs3Bo7TLT9F
 2EcCAL/KWCqijbVEe1POQuxFmdNNOa0hMyJiRFKQTc6a2yFWtvmOBtZdU+i5Raq+aNOX
 8QtA==
X-Gm-Message-State: APjAAAXUB7+HSEP8tElPqWVW3wLGa0HVlwAFQSoJHum0Pb9MPYXKoA7y
 D0yK99Y++ZxFN+6Y65yC6Hjg2dcxX3T+/lLQf1u8Cw==
X-Google-Smtp-Source: APXvYqz6sUDFQD6Axt5btTTjhghy0XPcwaAcHmqLpFUp38NeW1laCIzj4BQ2pV5fXQEWNrVib9Q1MhUNkhK+2WW52m8=
X-Received: by 2002:a05:6830:4b:: with SMTP id
 d11mr60127974otp.106.1564714436418; 
 Thu, 01 Aug 2019 19:53:56 -0700 (PDT)
MIME-Version: 1.0
References: <CABfZwcdKyO0+zUTd5oVcwrr=mAhScEroL_mwGDoEJ52+i+sAjg@mail.gmail.com>
 <CAL263iw7Rwb4n-FJvnqOqtgev8AAx9uNvutVbNf2Q__cL1C6Hg@mail.gmail.com>
In-Reply-To: <CAL263iw7Rwb4n-FJvnqOqtgev8AAx9uNvutVbNf2Q__cL1C6Hg@mail.gmail.com>
Date: Fri, 2 Aug 2019 11:53:20 +0900
Message-ID: <CABfZwcdc9PR_dNbAaTbXaE7LxC6wE6+3mRuagXfkuyASHm0TrQ@mail.gmail.com>
To: Nate Temple <nate.temple@ettus.com>
Subject: Re: [USRP-users] cmake error : Cross-Compiling GNU Radio on Ubuntu
 16.04
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?b?56aP5bO25bm56ZuEIHZpYSBVU1JQLXVzZXJz?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?56aP5bO25bm56ZuE?= <mikio@dolphinsystem.jp>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3870203852881830316=="
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

--===============3870203852881830316==
Content-Type: multipart/alternative; boundary="000000000000286d1d058f1978c3"

--000000000000286d1d058f1978c3
Content-Type: text/plain; charset="UTF-8"

Hi Nate
Thank you for always your support and quick reply.

>Are you using the E320 SDK?
No, I use the *E310 SDK*.
bacause I am training to get used to build the UHD and GR for cross
compiling environment.
next step, I will use the *E320 SDK*.

>Also that app note is outdated, and I will be posted an updated version
soon. Another app note that covers the E320/N3xx will follow.

Oh!!!
I have no words to thank you.
When do you think that will be?

Thanks.

--000000000000286d1d058f1978c3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Nate<br>Thank you for always your supp=
ort and quick reply.<br><br>&gt;Are you using the E320 SDK?<br>No, I use th=
e *E310 SDK*.<br>bacause I am training to get used to build the UHD and GR =
for cross compiling environment.<br>next step, I will use the *E320 SDK*.<b=
r><br>&gt;Also that app note is outdated, and I will be posted an updated v=
ersion soon. Another app note that covers the E320/N3xx will follow.<br><br=
>Oh!!! <br>I have no words to thank you.<br>When do you think that will be?=
<br><br>Thanks.<br></div></div>

--000000000000286d1d058f1978c3--


--===============3870203852881830316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3870203852881830316==--

