Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 863AA2055FC
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jun 2020 17:33:23 +0200 (CEST)
Received: from [::1] (port=48340 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jnkvI-0000zb-1J; Tue, 23 Jun 2020 11:33:20 -0400
Received: from mail-qk1-f193.google.com ([209.85.222.193]:41893)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <andreas.hagstrom@testteknik.se>)
 id 1jnkvE-0000rQ-Mp
 for usrp-users@lists.ettus.com; Tue, 23 Jun 2020 11:33:16 -0400
Received: by mail-qk1-f193.google.com with SMTP id z63so7104988qkb.8
 for <usrp-users@lists.ettus.com>; Tue, 23 Jun 2020 08:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=testteknik-se.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=AXizWYeG0qnMAadQW0cPokgS3Qmtz9F35ZdeIBTzCF0=;
 b=rlli0H7Id0g/66RemT9djXzs2IUN1XHJStvD+NXDHLeBWVKjnWJMq7EzqS/us4w3WU
 M9nL+DaXrHP1q1QbPbPeYyE61b09nbL+EAlt8yrC0EoA1J75ULWvRf1pR8PaLzsGfZgg
 6QbBuUH6u0/kmmQxjEU5xoVEbZVodD6J+gqjOzhGEqQgDcye2YbIFkWzj1q3184nNOzA
 8NPS/6SdEYlHWRo7tbdZ9jjnJsics5ETA+pX9cqvqZtTYuvEztlKColoijMvegsMPuy1
 5rwi1zPZYmpG2dU8qhxNmbIwJUS4yuxVw96StTKSrINX+YCk9TKA039s3t4FaDaEtvuN
 vrbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=AXizWYeG0qnMAadQW0cPokgS3Qmtz9F35ZdeIBTzCF0=;
 b=qJeGpAsy1UVMfS5tw7tq/OS66TzJmt/VvZaHuQEzkagZ/UgNveZGYn5IvhwROLALK6
 l9MDrJ/McAWWKMiP3np/FoniW7ULLOe/fUmTa25lMNlWQ0aydwJIaNi3BhP89rhSi+0G
 vkBU8aWHCT1hj8/M3QY/5Ql5YPM49l7vCZi25uZmMAixDecmSsGI5TufROI/v155l3WE
 spFInC4CCrmAuPLi00IlQolA9ZJ1ekUm1XfWSAkVfOzGrdvCdV82eH4TciapfRqXsw1s
 FPvhqAKn40alk7K3smm9ALZLFttc5mVex056qmLDuuyuCSoFF7WwBDyVwi1uZRIcKNJa
 hXDA==
X-Gm-Message-State: AOAM5316nLMum4KBY176XY6WcLZhgF8+mqmtMWvNQl0/P4rd1Ve6PgDR
 TvLQB9VhrOcN5O6zo+GzwQ3Sg2j1U0MrkwPe5hGVpQCA
X-Google-Smtp-Source: ABdhPJyX3XedD1v5UjcBRNPsHHvNe7YWjQgJg84GijISeeUfz4x6xpnSYx1CRTC+oh9Pru+WvbBBVTf01fVOG7fZQYM=
X-Received: by 2002:a05:620a:15db:: with SMTP id
 o27mr9505679qkm.387.1592926355843; 
 Tue, 23 Jun 2020 08:32:35 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 23 Jun 2020 17:32:23 +0200
Message-ID: <CAKo1dg8K+KaY8mJbr1Wxp=OKzhb3NE8yfubvewRF7=qcu6-_5w@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Included headers in the installer:
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?q?Andreas_Hagstr=C3=B6m_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Andreas_Hagstr=C3=B6m?= <andreas.hagstrom@testteknik.se>
Content-Type: multipart/mixed; boundary="===============4407716466030236896=="
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

--===============4407716466030236896==
Content-Type: multipart/alternative; boundary="0000000000009804bc05a8c2113e"

--0000000000009804bc05a8c2113e
Content-Type: text/plain; charset="UTF-8"

Hello, I downloaded the installer for the UHD library and I wanted to use
the bindings for the python API. But when I tried importing the package and
run the sample program the Python interpreter does not seem to find the
package. All information related to the python bindings seems to be related
to building from source. So my question is: is the python bindings enabled
in the installer version? If not, is the C-bindings included?

--0000000000009804bc05a8c2113e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello, I downloaded the installer for the UHD library and =
I wanted to use the bindings for the python API. But when I tried importing=
 the package and run the sample program the Python interpreter does not see=
m to find the package. All information related to the python bindings seems=
 to be related to building from source. So my question is: is the python bi=
ndings enabled in the installer version? If not, is the C-bindings included=
?<br></div>

--0000000000009804bc05a8c2113e--


--===============4407716466030236896==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4407716466030236896==--

