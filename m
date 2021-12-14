Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B12B47491A
	for <lists+usrp-users@lfdr.de>; Tue, 14 Dec 2021 18:17:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 01A2E3844A6
	for <lists+usrp-users@lfdr.de>; Tue, 14 Dec 2021 12:17:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NaWapam5";
	dkim-atps=neutral
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 42273384727
	for <usrp-users@lists.ettus.com>; Tue, 14 Dec 2021 12:16:21 -0500 (EST)
Received: by mail-io1-f49.google.com with SMTP id z18so25436692iof.5
        for <usrp-users@lists.ettus.com>; Tue, 14 Dec 2021 09:16:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=WnsFswUcT60xRuwqICel6H0f2uB64hnOIRCad/uw/mo=;
        b=NaWapam55YdB1gOmHkAHFBC/dm9AWdhB1SRfvFxyDh5T5keFTU+d9/W0b4HqSb+MKb
         +plzllP4Papqii20RrJEDHaFwAad9zmUTDFJVGm+QPn3fdtFQlWZltsYtGwCxDuLA63M
         awfEZ0+9bznKGwf7Ayd6xSU+fTPPa3qt7HdfhvOGRFSlfFAGknxqqzBOBMbNFPT6jTpf
         mRPq2Cdidw+IjlrpOcN9j3jBXkC2t5VVmw09LnKSHlP/IrO/PdETBJqtl1A0wTxgMOCe
         kZAUGN7gqyJH/LeJKZl4H62ybJen3LEdZNPcbtkqzJmdc5igFAEHMc+VMh0gwU0THrUo
         SnaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=WnsFswUcT60xRuwqICel6H0f2uB64hnOIRCad/uw/mo=;
        b=tCxyLVKXixDL9A+QodiQ31j/Y6rmxZ25DV5i8RZq4nhO/p11KlEmrxRbIEsr1UatLO
         DJ2T/hGJYjOmoAuMsz2F3SfjNlbJs7jQOmyXaXRwDCF+mlSHRBwDY/lXoZVQiQ7OpxZi
         t8RhMjZezsduJejUaaW9WGPFxL+YRNVYs7WOgwvw1EQ2dbkfLcMT7olpyVjBRApsQTnT
         snXugpWa070vy768IvieY2grrVByQtcLjGkUS0AtYZi4TDhdzOo32qSVO1nsbXM3HC5F
         AS5rMn7BUdY6KInygXa2eZrfe7sjdSl/sPbq5QowuzRtmfAZqD9C/+JeSZkzIqwmBLCb
         CY1w==
X-Gm-Message-State: AOAM531Zyfzj269RqHf9o/GLNLpunUSUbf+jvgD53YyxQCW6ZDbWXRv9
	Vf2snVSBY8bihwq0Bn7CPS8SolzHHz62sA==
X-Google-Smtp-Source: ABdhPJysbUjeEIbWYAyA/WAEf6OjVRzHynEXI8E547DzddKF9uOkMeiQFdqmYqayF6qWDfrI2hevkg==
X-Received: by 2002:a05:6638:3827:: with SMTP id i39mr3763692jav.204.1639502180425;
        Tue, 14 Dec 2021 09:16:20 -0800 (PST)
Received: from [172.20.0.99] (cmr-208-97-88-52.cr.net.cable.rogers.com. [208.97.88.52])
        by smtp.googlemail.com with ESMTPSA id j16sm240127ila.6.2021.12.14.09.16.19
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Dec 2021 09:16:20 -0800 (PST)
Message-ID: <bc67749c-2f81-9c2a-7498-6d4fe29e64a6@gmail.com>
Date: Tue, 14 Dec 2021 12:16:18 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CANP_axJMj3YB+vubEr0iTi5PLjwqGUoi7KnD3PfiJCqZOusG2g@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CANP_axJMj3YB+vubEr0iTi5PLjwqGUoi7KnD3PfiJCqZOusG2g@mail.gmail.com>
Message-ID-Hash: E6NZPYNZXKA7NBEH623PNTJ5OW4EJFBD
X-Message-ID-Hash: E6NZPYNZXKA7NBEH623PNTJ5OW4EJFBD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP and GPS antennas
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E6NZPYNZXKA7NBEH623PNTJ5OW4EJFBD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8675421330550086957=="

This is a multi-part message in MIME format.
--===============8675421330550086957==
Content-Type: multipart/alternative;
 boundary="------------X7533bEc9Q1N7J4LasdtjA01"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------X7533bEc9Q1N7J4LasdtjA01
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-14 12:12, Temir Karakurum wrote:
> Hi there,
>
> A few months ago I ended up with a pair of USRP E312's and u-blox=20
> ANN-MB-00 GPS antennas. I was able to synchronize both devices and=20
> acquire properly=C2=A0aligned samples and things are looking=C2=A0good.
>
> However, today I realized that the u-blox antenna I have is an active=20
> antenna and checking=C2=A0its datasheet=C2=A0it looks like it requires =
15 mA/3-5=20
> V DC supply for the integrated LNA. Does this mean that the GPS port=20
> of 312 has a bias-tee that supplies the necessary currents? If there=20
> is a bias-tee, where can I find information about it?
>
> Also checking the Ettus store, it looks like different antennas are=20
> compatible with different USRP models. For instance "3V Active GPS=20
> Antenna for N series" is apparently compatible with E310 both not=20
> compatible with X and B series. Which factor determines the compatibili=
ty?
>
> Best regards,
> Temir
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
I think the bias-T on both X and B series puts out +5V.=C2=A0 MOST GPS=20
antennas are perfectly happy to deal with anywhere between 3-5V.

Nearly all GPS antennas these days are *active* antennas and MOST are=20
3-5V happy.


--------------X7533bEc9Q1N7J4LasdtjA01
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-14 12:12, Temir Karakurum
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CANP_axJMj3YB+vubEr0iTi5PLjwqGUoi7KnD3PfiJCqZOusG2g@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi there,
        <div><br>
        </div>
        <div>A few months ago I ended up with a pair of USRP E312's and
          u-blox ANN-MB-00 GPS antennas. I was able to synchronize both
          devices and acquire properly=C2=A0aligned samples and things ar=
e
          looking=C2=A0good.=C2=A0</div>
        <div><br>
        </div>
        <div>However, today I realized that the u-blox antenna I have is
          an active antenna and checking=C2=A0its datasheet=C2=A0it looks=
 like it
          requires 15 mA/3-5 V DC supply for the integrated LNA. Does
          this mean that the GPS port of 312 has a bias-tee that
          supplies the necessary currents? If there is a bias-tee, where
          can I find information about it?</div>
        <div><br>
        </div>
        <div>Also checking the Ettus store, it looks like different
          antennas are compatible with different USRP models. For
          instance "3V Active GPS Antenna for N series" is apparently
          compatible with E310 both not compatible with X and B series.
          Which factor determines the compatibility?</div>
        <div><br>
        </div>
        <div>Best regards,</div>
        <div>Temir</div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    I think the bias-T on both X and B series puts out +5V.=C2=A0 MOST GP=
S
    antennas are perfectly happy to deal with anywhere between 3-5V.<br>
    <br>
    Nearly all GPS antennas these days are *active* antennas and MOST
    are 3-5V happy.<br>
    <br>
    <br>
  </body>
</html>
--------------X7533bEc9Q1N7J4LasdtjA01--

--===============8675421330550086957==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8675421330550086957==--
