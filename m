Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C83483FEFD1
	for <lists+usrp-users@lfdr.de>; Thu,  2 Sep 2021 17:05:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B71DF3844EA
	for <lists+usrp-users@lfdr.de>; Thu,  2 Sep 2021 11:05:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RTnIRWka";
	dkim-atps=neutral
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id A815A384224
	for <usrp-users@lists.ettus.com>; Thu,  2 Sep 2021 11:04:23 -0400 (EDT)
Received: by mail-qk1-f181.google.com with SMTP id c10so2363978qko.11
        for <usrp-users@lists.ettus.com>; Thu, 02 Sep 2021 08:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
         :references;
        bh=WMyBz6UWIWg3W12az5a7ljcqasEbSDKEwUE1MbTjOMY=;
        b=RTnIRWkahRHBh5X3j/c5VW6po0gS0XLtHEiVdSFM73vhsB/l2z8EebNdbBGcD/G6pO
         3tYeA8J5h9Xwl0MF+nUWKd6U/wAi3MBl9xBwOT6E8xf1sXImNdaJsy6VWoYbNwvTQjsl
         dAXxvjv6n2/t83FlhN5EDXDhAlDagdZcSWTxh1rc7liUZldr+6yF8/2rwJgni3LK0dqL
         8/xN8isbsqlXSTXeOT/l7ps0VzBAdXEbqwRRhHYl/oYgDLKU+eW/JkfIuqtvOV25o9XP
         WikWzlXAccMUxoxV3K4B8o4p5gjgZIzjWzQHr6mwVQwJUmVAHhalvSmEugl5CSqfjRuK
         MjZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:message-id:mime-version:subject:date
         :in-reply-to:cc:to:references;
        bh=WMyBz6UWIWg3W12az5a7ljcqasEbSDKEwUE1MbTjOMY=;
        b=HffdJzHhJEGwmNQIFuKErY1NRZgEiV87c6kHSMoFft+jDoHmN8daqO0mlzNQWHoKXS
         lUKTGP0gjcebadDCbAq6uKilpMe/qSaVxs1MC49vzesgl+6fO+kpJIiT09+QngL/vIx0
         xvLGxv/00ZAONUSRza9tU5QevUwJj65CiJWtad4gmIs3Ru2tpIEZQzceN1h2qFLJjvpJ
         +5Q1El/F2ahk4YgbSqLGRG/u42Q5VTAtfmPgheZmy75KeaEvIRm2PiHOxKnLlSmsv+Ce
         MI5ZHsIQExsGW+c1WWixTomhVkKrrngGQVrfSzLUg9jZCukpt8Pz8ragcAMPMAD1AsxQ
         NTnw==
X-Gm-Message-State: AOAM531ydGNzYRX5v5YJKaGDb9jhslq0r46zuiECBLg3rIIVme4QYGze
	xg3ZoYzYqQxQGxDVX6Fly39LgVQVLn0=
X-Google-Smtp-Source: ABdhPJwF1uFjEgXK1HkzP26P9mkQnjUCoYctR4axldR4ck/JpMJzJa8kzsR60iBmpDcJuXekjtpLQQ==
X-Received: by 2002:a37:aa97:: with SMTP id t145mr3602804qke.145.1630595063169;
        Thu, 02 Sep 2021 08:04:23 -0700 (PDT)
Received: from smtpclient.apple (071-012-109-042.biz.spectrum.com. [71.12.109.42])
        by smtp.gmail.com with ESMTPSA id j3sm1576714qki.104.2021.09.02.08.04.22
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Sep 2021 08:04:22 -0700 (PDT)
From: Josh Starling <joshstarling92@gmail.com>
Message-Id: <18DB44EB-7504-4787-A7AA-BA4EA0A159A8@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
Date: Thu, 2 Sep 2021 10:04:21 -0500
In-Reply-To: <4t2LWl1BGPF8sF066aqaclRFoH0TIam3dxT41mBQ@lists.ettus.com>
To: thebouleoffools@gmail.com
References: <4t2LWl1BGPF8sF066aqaclRFoH0TIam3dxT41mBQ@lists.ettus.com>
X-Mailer: Apple Mail (2.3654.100.0.2.22)
Message-ID-Hash: BKL2ZYI72U6KB6HXIRJCHGHXAKKIEGNZ
X-Message-ID-Hash: BKL2ZYI72U6KB6HXIRJCHGHXAKKIEGNZ
X-MailFrom: joshstarling92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 cross compile SDK
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BKL2ZYI72U6KB6HXIRJCHGHXAKKIEGNZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9117569634217038314=="


--===============9117569634217038314==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_DCAD7751-39D5-4B18-A3A9-85F6CEF12937"


--Apple-Mail=_DCAD7751-39D5-4B18-A3A9-85F6CEF12937
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

I think the proper way of getting the SDK or SD card image is using the =
command line function, see below. That'll handle getting the SDK/SD =
files that matches the UHD version you've built.

uhd_images_downloader -t sdimg -t e3xx
uhd_images_downloader -t sdk -t e3xx

> On Sep 2, 2021, at 9:33 AM, thebouleoffools@gmail.com wrote:
>=20
> The newer versions of the SDK are at the totally obvious location of =
https://files.ettus.com/binaries/cache/e3xx/. =
https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v4.1.0.2-rc3/ is =
the newest posted.
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com


--Apple-Mail=_DCAD7751-39D5-4B18-A3A9-85F6CEF12937
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">I =
think the proper way of getting the SDK or SD card image is using the =
command line function, see below. That'll handle getting the SDK/SD =
files that matches the UHD version you've built.<div class=3D""><br =
class=3D""></div><div class=3D"">uhd_images_downloader -t sdimg -t =
e3xx</div><div class=3D"">uhd_images_downloader -t sdk -t e3xx<br =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Sep 2, 2021, at 9:33 AM, <a =
href=3D"mailto:thebouleoffools@gmail.com" =
class=3D"">thebouleoffools@gmail.com</a> wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><p class=3D"">The =
newer versions of the SDK are at the totally obvious location of <a =
href=3D"https://files.ettus.com/binaries/cache/e3xx/" =
class=3D"">https://files.ettus.com/binaries/cache/e3xx/</a>. <a =
href=3D"https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v4.1.0.2-rc=
3/" =
class=3D"">https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v4.1.0.2=
-rc3/</a> is the newest posted.</p>

_______________________________________________<br class=3D"">USRP-users =
mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
class=3D"">usrp-users@lists.ettus.com</a><br class=3D"">To unsubscribe =
send an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" =
class=3D"">usrp-users-leave@lists.ettus.com</a><br =
class=3D""></div></blockquote></div><br class=3D""></div></body></html>=

--Apple-Mail=_DCAD7751-39D5-4B18-A3A9-85F6CEF12937--

--===============9117569634217038314==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9117569634217038314==--
