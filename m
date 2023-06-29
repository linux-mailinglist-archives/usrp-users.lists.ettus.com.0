Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 31864742BE7
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 20:32:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2FF68383FDA
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 14:32:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688063561; bh=3eBQ8m5ZR3DYDvoN4tEfw/1VxI+KkgIXYi4bMgeLWWM=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=h8hKJ2wMznDQZ0Oa38/L0rxpHzSrVA+4eRuFuWDv1z9TajmwLX0z1QEsYIuQ6lWdO
	 Rv8qCW5CZTG4Ak78P8sJ9a0qWMog7YZOWhKR6ofuUspobpWQml1tBvKY9G9jbMfKxd
	 1gXTfRihQwIIcehbaTOmU+/BQcQi0EMkdv6KU86o3eR2BQHxDuDCPku8feSuDcfhIJ
	 B13AwWiM2MqoxrrZ+OvxDQedyHuKdvFZB44ENxUlKMROFbBtKMtMySup9JAMFxUf+p
	 iRLqacNfmxfIUa3oRrmkg4dwJn8621uMn0ZoKWBb4T3vYgGBAYxraPPgEPWFXEOS1J
	 kwXsi5g58jFNg==
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id C98DE383FDA
	for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 14:31:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="U1C9GO+r";
	dkim-atps=neutral
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-635f1c7412cso7588616d6.0
        for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 11:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688063506; x=1690655506;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v0jCga6wSUSMLO6BPfvH4CElIHDHEi2i7chiUoKHaRI=;
        b=U1C9GO+rZQcmoRMp1cmUCw8hgqNHR+TuveXtId0nohjwmlO4rZF0MDYzeW/yEaTSK3
         EN6dQuJOLgQTzyNj1tJvMGJHM4Psoh1lxgrTyhKyPvN5dgOzn+Xnmvyc1lvAWC8wGqZI
         OmNQFpUS3Qb7h/ZvpiHVVqc7BMmi0WyIw/qmUWIxx6Kf2j1RGc3mAokvFOB6BIdcwhL/
         JdjXZ1C3puRqTKCK+eB9KyeYZP0ne7swlYzvwFdetLyFfXjrhuTa9Q6mtHhMbq7imfee
         NFXwyh2GkT8XMyQzmHVrYMKRAeZTle82A3qQaGygaxwyLTeYXJ25TVCcSnPJfPuW4JVz
         10QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688063506; x=1690655506;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v0jCga6wSUSMLO6BPfvH4CElIHDHEi2i7chiUoKHaRI=;
        b=HKRI81CcdVECYohRsZhkqqXBYXCn6tfwAmj81GLMB/i11bkWUQNi5Btqnv2iJsh8iX
         ejMcQJ3kqgmPAgDsENZJrdJ4sVl6E3gckwxU9fDSieswv+3JGHTLn/85WFTNLWItfMxt
         spi7BKssz3QP7Wu85SlhCK2b8B75pMuEQ+KUDii9k7Rvjjjy2cE30wNADeWPhtDZxIBE
         oU5P6dZibFTbpARTUDYm98pSpGR7FuyEuFFgFHwklpz0Uf5CQEFDHevS/0iMzJFV2fbe
         AWcQMZ1r1lKNmwsbWt3DtTh/x6XIvCQNvfqs1diwA+Cmu3OGQZcnZ4HL6SaikAqamd49
         M5jg==
X-Gm-Message-State: ABy/qLbTAunOFBXaVzurvf/Rb6OZrw6Qbm3KX6rvyVp6C8hMGBk8YfaW
	HxyT3/xvHb2f45tJtWHYmJzqhUhY2Fw=
X-Google-Smtp-Source: APBJJlGCcQnxpCzWgTz2Rom1UI+fA7u9a/ayJtGpIMBhHaCOO7RxDOfxmN8HBqmMrWH/v6eKyAsPbA==
X-Received: by 2002:a05:6214:cc7:b0:636:277f:4155 with SMTP id 7-20020a0562140cc700b00636277f4155mr739160qvx.15.1688063505771;
        Thu, 29 Jun 2023 11:31:45 -0700 (PDT)
Received: from smtpclient.apple ([2600:380:1822:6859:e49a:5ed3:98f3:9d3a])
        by smtp.gmail.com with ESMTPSA id l12-20020a056214028c00b005fdbcab3065sm5890195qvv.72.2023.06.29.11.31.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jun 2023 11:31:45 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 29 Jun 2023 14:31:34 -0400
Message-Id: <A7541BA3-A8B3-4E65-8440-EE36125B042D@gmail.com>
References: <WXHjHmlp4y5BTh3cU627bTbOIl10COd07qvjWWHJSI@lists.ettus.com>
In-Reply-To: <WXHjHmlp4y5BTh3cU627bTbOIl10COd07qvjWWHJSI@lists.ettus.com>
To: jmaloyan@umass.edu
X-Mailer: iPhone Mail (20F75)
Message-ID-Hash: 75O3UJONLPVUCLNTVKLL45RV7VIEK3DH
X-Message-ID-Hash: 75O3UJONLPVUCLNTVKLL45RV7VIEK3DH
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_image_builder
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/75O3UJONLPVUCLNTVKLL45RV7VIEK3DH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1111927430625938327=="


--===============1111927430625938327==
Content-Type: multipart/alternative; boundary=Apple-Mail-FBD97252-E1FD-4387-B894-C123787925F1
Content-Transfer-Encoding: 7bit


--Apple-Mail-FBD97252-E1FD-4387-B894-C123787925F1
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

That=E2=80=99s not been my experience. I have about 8 machines (some upgrade=
d, some fresh installs) running Ubuntu 22.04 and UHD 4.X with zero build iss=
ues.=20

<end transmission>

> On Jun 29, 2023, at 11:45, jmaloyan@umass.edu wrote:
>=20
> =EF=BB=BF
> In my experience, getting UHD to run on Ubuntu 22 is a huge hassle. If you=
 can, I recommend downgrading to 20.04(but no lower) and it should install f=
airly easily.
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-FBD97252-E1FD-4387-B894-C123787925F1
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">That=E2=80=99s not been my experience. I ha=
ve about 8 machines (some upgraded, some fresh installs) running Ubuntu 22.0=
4 and UHD 4.X with zero build issues.&nbsp;<br><br><div dir=3D"ltr">&lt;<spa=
n class=3D"Apple-style-span" style=3D"-webkit-tap-highlight-color: rgba(26, 2=
6, 26, 0.296875); -webkit-composition-fill-color: rgba(175, 192, 227, 0.2304=
69); -webkit-composition-frame-color: rgba(77, 128, 180, 0.230469); ">end tr=
ansmission&gt;</span></div><div dir=3D"ltr"><br><blockquote type=3D"cite">On=
 Jun 29, 2023, at 11:45, jmaloyan@umass.edu wrote:<br><br></blockquote></div=
><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<p>In my experience, ge=
tting UHD to run on Ubuntu 22 is a huge hassle. If you can, I recommend down=
grading to 20.04(but no lower) and it should install fairly easily.</p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-FBD97252-E1FD-4387-B894-C123787925F1--

--===============1111927430625938327==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1111927430625938327==--
