Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BE653124980
	for <lists+usrp-users@lfdr.de>; Wed, 18 Dec 2019 15:26:33 +0100 (CET)
Received: from [::1] (port=38886 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ihaHY-0004Co-Kn; Wed, 18 Dec 2019 09:26:32 -0500
Received: from mail-qt1-f180.google.com ([209.85.160.180]:40959)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <support@ettus.com>) id 1ihaHU-00044q-8V
 for usrp-users@lists.ettus.com; Wed, 18 Dec 2019 09:26:28 -0500
Received: by mail-qt1-f180.google.com with SMTP id e6so2068327qtq.7
 for <usrp-users@lists.ettus.com>; Wed, 18 Dec 2019 06:26:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=F8mtrWKU4GxJVUvtMwE0OUMa0Y5ZWiwjQb1UpnwntQo=;
 b=pNfjEFAJ1ub2i83nh2JSe+biBqp8LFl5tezBPUF4SY0K9BLpZRRqmNmW8yHpwj3KwI
 HV87jq1BLcik/lN2SOisR1UyGhYUVnq2aZrMquk0OJVUoKDqxtnKDmRPZdkfhVNQC4NW
 rqdl7VywV4Zol97j+EjI0tPE1cCTyp6HIEIXDsf8OtXwaQvigX10ZuiYjIrfJtH4dIol
 YdwoPLLfzc0HZZrPXAp69QrW56VSi4NfRtK5HMbA0HjSKROCuVM1+17u1WahNxlf5foQ
 wg8w4aifmIwS8DlENXZRcJEOQ9c2A3u0wX8ucSpHlOK/2fiUV0z4z+FoaWNu1Yo2EWWx
 YYDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F8mtrWKU4GxJVUvtMwE0OUMa0Y5ZWiwjQb1UpnwntQo=;
 b=oohOzf+RBzDWpKsgiHs+yEvbFIQgLzgbDVIRt23uN84VSYV64nfLvAR3SU7PmChjcV
 dOzdNBgVoWPvjCPS531WRs8nPlxY0qWBkZ0I33k7qNLmMfBbvZi8mgVU99f4YEUH4Ka5
 ZF1ai6y2E29R5J5olMaZyavGkw051I9Y+pvrSsfuFYUong/r5BjGlbxKN8GBBZtE0Rj7
 IFzqvKNLBv8+3RhTlljfqKMH+9XKaEENeWtgrSmNdCCxsRMS2yToFOuZxFAXUn2vV4UN
 E9Pw9CUuOTaxtOZkZ50jdBBSgZfxX+IWl9R9RiEX6ml+AqFnljsH4FHnm2u6sR8z+ao6
 izSA==
X-Gm-Message-State: APjAAAVEf+dYY4t1dPCfGVd0EHClAwOWT3v1fcsH4JID9pBEWzse2GEB
 +XRxcAe6Efy/NbbCs452WPW6g7o3/ffyJMQf0NTRjljI
X-Google-Smtp-Source: APXvYqy9vmdk6VK6KUXRBKaRISnSaHmaGB7auTu9ATWkkhsfEwxIl3xcAPiCKjDcIia9UBqBcJkjIF68M6LhlJ4WKA0=
X-Received: by 2002:aed:238f:: with SMTP id j15mr2401657qtc.240.1576679147648; 
 Wed, 18 Dec 2019 06:25:47 -0800 (PST)
MIME-Version: 1.0
References: <BMXPR01MB39447CA3F4BA58C9B9D1B09988500@BMXPR01MB3944.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BMXPR01MB39447CA3F4BA58C9B9D1B09988500@BMXPR01MB3944.INDPRD01.PROD.OUTLOOK.COM>
Date: Wed, 18 Dec 2019 08:25:11 -0600
Message-ID: <CACSOXP0TZKt-9QfnG3eNuYNRRZ_EPwrzJmDnH6j1x40bxAuZ5Q@mail.gmail.com>
To: Snehasish Kar <snehasish.cse@live.com>
Subject: Re: [USRP-users] Api to call rfnoc split stream
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
From: Ettus Research Support via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ettus Research Support <support@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6200040575514950919=="
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

--===============6200040575514950919==
Content-Type: multipart/alternative; boundary="0000000000008552360599fb3874"

--0000000000008552360599fb3874
Content-Type: text/plain; charset="UTF-8"

Hello Snehasish:

The Split Stream Block uses the generic block controller, so there should
not be anything "extra" that you have to do.

Are you getting any errors or warnings when you build your C++ program?

--Neel Pandeya



On Tue, Dec 17, 2019 at 1:00 PM Snehasish Kar via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello
>
> Please let me know ho do we use the rfnoc split stream from C++ I am not
> able to find the concerned header file.
>
> Regards
> Snehasish
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000008552360599fb3874
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hello Snehasish:</div><div class=3D"gmail_default" style=3D"fon=
t-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=
=3D"font-family:verdana,sans-serif">The Split Stream Block uses the generic=
 block controller, so there should not be anything &quot;extra&quot; that y=
ou have to do.</div><div class=3D"gmail_default" style=3D"font-family:verda=
na,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:=
verdana,sans-serif">Are you getting any errors or warnings when you build y=
our C++ program?</div><div class=3D"gmail_default" style=3D"font-family:ver=
dana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-famil=
y:verdana,sans-serif">--Neel Pandeya</div><div class=3D"gmail_default" styl=
e=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_default"=
 style=3D"font-family:verdana,sans-serif"><br></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Dec 17, 2019 at=
 1:00 PM Snehasish Kar via USRP-users &lt;<a href=3D"mailto:usrp-users@list=
s.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">Hello<br>
<br>
Please let me know ho do we use the rfnoc split stream from C++ I am not ab=
le to find the concerned header file.<br>
<br>
Regards<br>
Snehasish<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000008552360599fb3874--


--===============6200040575514950919==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6200040575514950919==--

