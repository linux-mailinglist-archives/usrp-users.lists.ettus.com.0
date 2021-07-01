Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 556D73B98B0
	for <lists+usrp-users@lfdr.de>; Fri,  2 Jul 2021 00:52:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3A25638459E
	for <lists+usrp-users@lfdr.de>; Thu,  1 Jul 2021 18:52:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NPdXl4xi";
	dkim-atps=neutral
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 3CBA83842F2
	for <usrp-users@lists.ettus.com>; Thu,  1 Jul 2021 18:51:30 -0400 (EDT)
Received: by mail-qv1-f51.google.com with SMTP id f5so3798197qvu.8
        for <usrp-users@lists.ettus.com>; Thu, 01 Jul 2021 15:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=tDaaGVZEZHeQSDbsKsPz+ZrTzDETrlR5o5wVNiJiQjg=;
        b=NPdXl4xia+RvVF9IzccuTE9/NNDOrOmU+TZpckRuusvnyJ4ZNsOE2m3ShqiJG7YTKq
         jqBxX9ngL1haO6X10IxY6zOjg/MQBk7KVhVw3TPVQbZUhtRAQfgFuysCg8V2y/6f61Wb
         wxfMQgiOyGZvvq0sALr0YIFEc0h5AmQ9TVDqYclM7jpowE2Jg9mjs80dSqZJMe1Nz9C+
         uEvno5ImnkYOs9fmHSZzWlhMDwbmTs/stG4Uch53bUhXJQ9kllHu9xAe7k1Fj/yVZR2W
         +0ma5TBX50CBjQ2hEAfmj/cynD+Iuqf9L9zM9/669BzXyJcxr4DVjf8+UzPZr3DOWl+e
         qh3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=tDaaGVZEZHeQSDbsKsPz+ZrTzDETrlR5o5wVNiJiQjg=;
        b=XavRxMhpWveTC+jmWSDhCqJNozbkxL+xreUkw1y42aib0zPr9+5gVH504li7/vY9p4
         GYgRlWZsC+4r10WZcw1xQ3uTI+SEUuBSh23Q3b4ZT9BigT+FdNRuu1eBJUMUoNRJi//5
         GXY4BitvuxgRYuxSl6bCupZZXrioK8zmfnKqq2XIWTBs37Oy7MzopxoceOBQeq1l5atX
         cARCqMvzpj1+49vOIHRsb9jjG1iqS4ntDGwBOS3Hk0f3195t0r7RonJGIhN3Xi9pD7zo
         JQx59fd+iLJkafFvstrI9asQs5qmlNqP1dDEGS+D3QJKjoburDy7+iRlIY/it6wOcoYc
         sFYQ==
X-Gm-Message-State: AOAM532s6IpCtJ4XlWtFh+U33ca1BbatwYCCqmLFoC+bYIS298FbX1Hp
	Mtzu5naF60/YPM8oNBW7qwWE8HLkhCA=
X-Google-Smtp-Source: ABdhPJw+e2JS2aTIPdsIM/d0/mblfO8VJWzo16Kkby5qV2/i/Ay2emT6z7ZZEtbFD4V0v+FBnL5C8g==
X-Received: by 2002:a05:6214:1a0a:: with SMTP id fh10mr2195014qvb.59.1625179889521;
        Thu, 01 Jul 2021 15:51:29 -0700 (PDT)
Received: from smtpclient.apple ([2600:380:1939:9c8e:edee:d6b3:7401:afef])
        by smtp.gmail.com with ESMTPSA id 128sm588148qkf.102.2021.07.01.15.51.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jul 2021 15:51:28 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 1 Jul 2021 18:51:27 -0400
Message-Id: <A36021AC-8A90-4415-8E32-CB735816EC2C@gmail.com>
References: <vqfe0GD5XApZNJwJLeMPiyBdfZVx8cI8zBRqiGBKM4@lists.ettus.com>
In-Reply-To: <vqfe0GD5XApZNJwJLeMPiyBdfZVx8cI8zBRqiGBKM4@lists.ettus.com>
To: rblack@swri.org
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: WUZL6BYAPLIOYMQ3IEXSLEEBIK4TU6UC
X-Message-ID-Hash: WUZL6BYAPLIOYMQ3IEXSLEEBIK4TU6UC
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: available RFNoc blocks for UHD 4.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WUZL6BYAPLIOYMQ3IEXSLEEBIK4TU6UC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5344058146030264086=="


--===============5344058146030264086==
Content-Type: multipart/alternative; boundary=Apple-Mail-B5397D2B-E969-4AF1-848F-3334C039997E
Content-Transfer-Encoding: 7bit


--Apple-Mail-B5397D2B-E969-4AF1-848F-3334C039997E
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I=E2=80=99ve had a lot of success adding blocks using the Ettus tools like r=
fnoc_modtool. Have you tried that?


<end transmission>

> On Jul 1, 2021, at 10:32, rblack@swri.org wrote:
>=20
> =EF=BB=BF
> Thanks for that.
>=20
> Not a lot to work with there- too bad.
>=20
> thx
>=20
> rb
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-B5397D2B-E969-4AF1-848F-3334C039997E
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I=E2=80=99ve had a lot of success adding bl=
ocks using the Ettus tools like rfnoc_modtool. Have you tried that?<div><br>=
<br><div dir=3D"ltr">&lt;<span class=3D"Apple-style-span" style=3D"-webkit-t=
ap-highlight-color: rgba(26, 26, 26, 0.296875); -webkit-composition-fill-col=
or: rgba(175, 192, 227, 0.230469); -webkit-composition-frame-color: rgba(77,=
 128, 180, 0.230469); ">end transmission&gt;</span></div><div dir=3D"ltr"><b=
r><blockquote type=3D"cite">On Jul 1, 2021, at 10:32, rblack@swri.org wrote:=
<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF<p>Thanks for that.  </p><p>Not a lot to work with there- too bad.</p><p>=
thx</p><p>rb</p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-B5397D2B-E969-4AF1-848F-3334C039997E--

--===============5344058146030264086==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5344058146030264086==--
