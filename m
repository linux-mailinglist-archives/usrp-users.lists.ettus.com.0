Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EDDB2CF6FE
	for <lists+usrp-users@lfdr.de>; Fri,  4 Dec 2020 23:42:22 +0100 (CET)
Received: from [::1] (port=39426 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1klJmO-0000qr-2R; Fri, 04 Dec 2020 17:42:20 -0500
Received: from mail-qv1-f43.google.com ([209.85.219.43]:38551)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) id 1klJmK-0000id-CJ
 for usrp-users@lists.ettus.com; Fri, 04 Dec 2020 17:42:16 -0500
Received: by mail-qv1-f43.google.com with SMTP id n9so3610299qvp.5
 for <usrp-users@lists.ettus.com>; Fri, 04 Dec 2020 14:41:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=virginia-edu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:organization:in-reply-to
 :references:mime-version;
 bh=Wn0Ttogu1xCEhe5qR2mipAuoqgTsNl0UR0o/u2EgTyI=;
 b=NcQbfHYvMh05UmSlg4ScBqzefEgt/0Nxl/T9xcCdndfbB7l2NuNUGfnZrZOCbLKhu/
 zrb+n/SX6j92BMxrM5YXrW3Yj65V8Y/jW2B4OD99pyVt/EgsOyR0NhwKuORK4d+PHjbF
 Qb0F3j3PrvQGXSvQg3fxNhtxtmvufcNbtKBSKw3kJBSymkXZsRyUetcajwFPxHtgnaVn
 qOeAwUZwHML2GRyzFsy+krKxcbX/YtIqrzvXRtSckB73GioNfXY0nPbyE2pYGDHUCgLw
 R1gX8eU5MD6SqTmpBAnzQM4S0g8cdjNc3QTP2L81jC//4N5TG/ovfUHtPLCSP3xEEhxS
 K1mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:organization
 :in-reply-to:references:mime-version;
 bh=Wn0Ttogu1xCEhe5qR2mipAuoqgTsNl0UR0o/u2EgTyI=;
 b=OU/DIfehUBhyeVdNUUs6wCN/RmeHhzgAxxGb2l58/x3wCkVkQi/dONRtDtfFO4sta5
 ghv/Qtoua0Y0XgwegUcF4KlxDrrID40+SIXPYPoJHgpFmZ4EIXGmiao6oO+4S6PIj8iq
 LMjTBIkkoI8B3GFKRdX5LFGFmvJEEFSqFaJpu+B1ec0VYWUhkl4JazQq4nSk2jmrNT9S
 ZQAHUjwK+tqH1yuiUGTvKTOedVbHz5h/bZWh3hV8NaWkVCSzMNhNnf+yugZU93wcBWqw
 dl9AQLKCta2Qk5N1Jmr2/yGiD5OrtchhwBL8/moKZp8Oec2/mmhiFcduubCvkfiuKFRl
 bsCA==
X-Gm-Message-State: AOAM531hGlJT077r0++N7q1UqeCbu0MVHrrBslVE/NQFWivDVSanjaIw
 yASnUjPucjr6+ueD87w2vybvpPY9/6VZ8A==
X-Google-Smtp-Source: ABdhPJxRo9WNLL8jCQY6aa9oi0qXETcE+E10tQt0fV8trWk9UDXxR5aX8ntxmNgnIcIy5X09vGm+ww==
X-Received: by 2002:a05:6214:54f:: with SMTP id
 ci15mr7998845qvb.49.1607121695519; 
 Fri, 04 Dec 2020 14:41:35 -0800 (PST)
Received: from terra.localnet (c-73-40-68-102.hsd1.va.comcast.net.
 [73.40.68.102])
 by smtp.gmail.com with ESMTPSA id f8sm5968664qtp.91.2020.12.04.14.41.34
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Dec 2020 14:41:34 -0800 (PST)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Fri, 04 Dec 2020 17:41:33 -0500
Message-ID: <6188590.6ma6Ngl4jg@terra>
Organization: University of Virginia
In-Reply-To: <230168bd80dc452d94d4bcc0d781b940@gtri.gatech.edu>
References: <230168bd80dc452d94d4bcc0d781b940@gtri.gatech.edu>
MIME-Version: 1.0
Subject: Re: [USRP-users] power-cycle after remote reflash image
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
From: Dustin Widmann via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Dustin Widmann <dw2zq@virginia.edu>
Content-Type: multipart/mixed; boundary="===============1386558283341929867=="
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

--===============1386558283341929867==
Content-Type: multipart/signed; boundary="nextPart3780316.rTliiFetWk"; micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart3780316.rTliiFetWk
Content-Type: multipart/alternative; boundary="nextPart2320695.zqD5CEItkf"; protected-headers="v1"
Content-Transfer-Encoding: 7Bit
From: Dustin Widmann <dw2zq@virginia.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Cc: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Subject: Re: [USRP-users] power-cycle after remote reflash image
Date: Fri, 04 Dec 2020 17:41:25 -0500
Message-ID: <6188590.6ma6Ngl4jg@terra>
Organization: University of Virginia
In-Reply-To: <230168bd80dc452d94d4bcc0d781b940@gtri.gatech.edu>
References: <230168bd80dc452d94d4bcc0d781b940@gtri.gatech.edu>

This is a multi-part message in MIME format.

--nextPart2320695.zqD5CEItkf
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jeff,

I have been meaning to look into this as well, because I have some need of this myself. I 
believe I've found something that might do the trick in the usrp-users archives, but I 
haven't had a chance to test it yet. 

http://ettus.80997.x6.nabble.com/USRP-users-X310-software-reset-revisted-td10183.html[1] 

Dustin

On Friday, December 4, 2020 5:19:04 PM EST Hodges, Jeff via USRP-users wrote:


I have a lab set-up where I remotely run uhd_image_loader on my X310, but then I need to 
power-cycle the device in order for the new image to be used.


Does the uhd driver have a command that will do this? or can this be done by the aux IO or 
JTAG? or do I need to buy a remote power switch?




Jeff





--------
[1] http://ettus.80997.x6.nabble.com/USRP-users-X310-software-reset-revisted-td10183.html

--nextPart2320695.zqD5CEItkf
Content-Transfer-Encoding: 7Bit
Content-Type: text/html; charset="us-ascii"

<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
</head>
<body><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">Hi Jeff,</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">I have been meaning to look into this as well, because I have some need of this myself. I believe I've found something that might do the trick in the usrp-users archives, but I haven't had a chance to test it yet. </p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;"><a href="http://ettus.80997.x6.nabble.com/USRP-users-X310-software-reset-revisted-td10183.html">http://ettus.80997.x6.nabble.com/USRP-users-X310-software-reset-revisted-td10183.html</a>&nbsp;</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">Dustin</p>
<br /><p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">On Friday, December 4, 2020 5:19:04 PM EST Hodges, Jeff via USRP-users wrote:</p>
<p>&nbsp;</p>
<p style="margin-top:12;margin-bottom:12;margin-left:40;margin-right:40;">I have a lab set-up where I remotely run uhd_image_loader on my X310, but then I need to power-cycle the device in order for the new image to be used.</p>
<p style="margin-top:12;margin-bottom:12;margin-left:40;margin-right:40;"><br /></p>
<p style="margin-top:12;margin-bottom:12;margin-left:40;margin-right:40;">Does the uhd driver have a command that will do this? or can this be done by the aux IO or JTAG? or do I need to buy a remote power switch?</p>
<p>&nbsp;</p>
<p style="margin-top:12;margin-bottom:12;margin-left:40;margin-right:40;"><br /></p>
<p style="margin-top:12;margin-bottom:12;margin-left:40;margin-right:40;">Jeff</p>
<p>&nbsp;</p>
<p style="margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;"><br /></p>
</body>
</html>
--nextPart2320695.zqD5CEItkf--

--nextPart3780316.rTliiFetWk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQGzBAABCAAdFiEEDP6vCQH/R1JrFNrohXBr6kJTBrUFAl/KuxUACgkQhXBr6kJT
BrVoxgv/TSL9ACBt/hYtsS1gbxJPKJAKn89SEtI36EWgKhhXJZKvL7pRpCkVVFq1
Wh77DZ8OUN59fPQmxZ5Q8RztsEy93ZeACclPofPU9u1TA29NxQXTmbu1tz9TmGAZ
ewYjsLlCBTe++hPvVrFHGDyJocQfpWIUPfx6yQAIx5tbKic0IU485RiwM+O0t5vA
BAB6rUozfXroaqy1wbuRmAwb83/+Zq/cd7LgKxI2iSkaH8kAtj8aQQ+z8iyAyeLN
Jf4xTrDK12MlOygvnKN8QN0hTRx13EoaOw98qyiPdgMsa78ZMuteueSoA1TyBS6S
+wT1vIVqQpD0Ex8WE6RDmdQ8jLr1CnBHkBltYB2zsUwaai/n+R9LTI3y2lC12lkU
6ySky1dynP0rHp8/qrQnGmW9RBYYsoqx9Prf7vqGArxcDSwaANqj/J5TZLcKG00S
lXZyuW7m/6C1Hf8DzzZfYXe/QpqcI4AWykMJLabPjEo7SwXfzWEzBnqsPK3NpJJC
KsaawBwa
=TNlm
-----END PGP SIGNATURE-----

--nextPart3780316.rTliiFetWk--





--===============1386558283341929867==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1386558283341929867==--




