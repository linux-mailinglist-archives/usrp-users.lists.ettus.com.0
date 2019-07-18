Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 554106D6CF
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jul 2019 00:26:34 +0200 (CEST)
Received: from [::1] (port=39008 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hoEr9-0001je-UY; Thu, 18 Jul 2019 18:26:31 -0400
Received: from mail-io1-f44.google.com ([209.85.166.44]:42659)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <tayloreisman2012@gmail.com>)
 id 1hoEr6-0001fl-8y
 for usrp-users@lists.ettus.com; Thu, 18 Jul 2019 18:26:28 -0400
Received: by mail-io1-f44.google.com with SMTP id e20so23997892iob.9
 for <usrp-users@lists.ettus.com>; Thu, 18 Jul 2019 15:26:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=ZVDhAQny+ufHFEoWOK8tFmx6VakGvDCU9Wwa5B3xTig=;
 b=iPDb7wPTeGZj4mVrisawZDulcu64wxZ2YfySbX5G97Y4IdTCyvu1caUDMYJDZTnGcC
 feAPob8AGq6mOsAMIRTHOED0x5wiKhIQRAwVy/2kKvXgl069OsbGXB5rPaXIkD3PCRVQ
 nx/zQdHM3+H1Jm4sZL/EjmL57J66o7LlEag0uBkQlw3spVhSUlzKrHHqyHYE+pTEvLqU
 zbwFqrawJhoFnT8WihjBhlPpgl7i0iVb4V2Hn/6C1y3cglEX0DLuOVucNtt3IDe4NMuo
 r+5cFprXboOrIDiV0KZyjqfSkHoyFcV51/+/w7i6gDJmdB3Zs1gWQUr3uoGsqUiCDVeg
 ZkTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=ZVDhAQny+ufHFEoWOK8tFmx6VakGvDCU9Wwa5B3xTig=;
 b=hNRJjHQnJwjygz7DYTJA+3r2Ac/yrQTjHUgY7iTITfZ9RaXkMFr81bOyJCK4PmL9yG
 dyR0Ec+xRTSXXzM6xDF4mgUznpgE9F/kqis3oCqQy+LY8BXwX+R7hwAlVI9CeYq0dcTW
 tKUc7THyQlmN++sTmJCMWAPFexY/AxgFFFhPQnujEHafSlpTAjnof+mDzP8b6vembTGW
 XiUR1RhazL3+7QlFw8v4L9QAF5KHBon/hXX72wduCs5AGzNRknVHXBNxrxuYR9ItlpHX
 JtAkNi3TBgf6DUi7zw5DahMVdddXzG9pazfzU7iMD8L+3QFLsi2QS3n/TjPqZzIeZn02
 YUUg==
X-Gm-Message-State: APjAAAWXU4hZJk7azrbmodLu5Y59D9r7Ar8p81ZN4qmUPtU1HyiwTkP7
 hoZh4jFqyy3L6MiOlFqdqCnibBe/KQzWiEaAIk9j9YKw
X-Google-Smtp-Source: APXvYqyL3BIB9w3P2Tmn3Qp5JnWRbooRcxPE/XXQWCdwbjWshzlZ5puibHEZNnzrg78RYPajQHSTmPkLj/8zKxsx3/M=
X-Received: by 2002:a05:6602:98:: with SMTP id
 h24mr46338764iob.49.1563488747451; 
 Thu, 18 Jul 2019 15:25:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAFB_ak+rtm3xVuF9GFkZ09qhUYLP1G1mzhAxDxeV7d-wR1LNmw@mail.gmail.com>
 <CAKJyDkKCRujVNv99RW594t7embavu4J=rAgu=vsOgkSHzg9Gyw@mail.gmail.com>
 <CAKJyDkLmZY-yw7QWMzg8oWRNzU4scuqkJC0Z9ErfxRKjKf+UCw@mail.gmail.com>
 <CAFB_ak+Nm5+VBi8F=UwtgerchzRGrXjTZYgWWA3Z45a+Nj=uPA@mail.gmail.com>
In-Reply-To: <CAFB_ak+Nm5+VBi8F=UwtgerchzRGrXjTZYgWWA3Z45a+Nj=uPA@mail.gmail.com>
Date: Thu, 18 Jul 2019 17:25:36 -0500
Message-ID: <CAFB_akKiC_jtf0mMZK7Dk2JaJBi1BPTvfWM=4M=POWOfxmKhdw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Fwd: Ettus X300 -- NO TX/RX, RX2 Avaliability
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
From: Taylor Eisman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Taylor Eisman <tayloreisman2012@gmail.com>
Content-Type: multipart/mixed; boundary="===============7730459485577020215=="
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

--===============7730459485577020215==
Content-Type: multipart/alternative; boundary="00000000000066f77a058dfc17c6"

--00000000000066f77a058dfc17c6
Content-Type: text/plain; charset="UTF-8"

Robin,

We've set it up so that the RX Daughterboard connects to RX2 and the TX
Daughterboard connects to TX/RX. Previously, we've been able to use these
ports, but now it no longer identifies that we even have these ports. I
don't think the issue is the Daughterboard as this worked less than a year
ago.

Thanks,

Taylor

--00000000000066f77a058dfc17c6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><table class=3D"gmail-cf gmail-gJ" cellpa=
dding=3D"0"><tbody><tr class=3D"gmail-acZ"><td class=3D"gmail-gF gmail-gK">=
<table class=3D"gmail-cf gmail-ix" cellpadding=3D"0"><tbody><tr><td class=
=3D"gmail-c2"><div>Robin, <br></div><div><br></div><div>We&#39;ve set it up=
 so that the RX Daughterboard connects to RX2 and=20
the TX Daughterboard connects to TX/RX. Previously, we&#39;ve been able to=
=20
use these ports, but now it no longer identifies that we even have these
 ports. I don&#39;t think the issue is the Daughterboard as this worked les=
s
 than a year ago.<br><br></div><div>Thanks,<br><br></div><div>Taylor</div><=
/td></tr></tbody></table></td><td class=3D"gmail-gH gmail-bAk"><br></td></t=
r></tbody></table></div></div>

--00000000000066f77a058dfc17c6--


--===============7730459485577020215==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7730459485577020215==--

