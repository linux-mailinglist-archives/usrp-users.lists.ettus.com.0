Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E25B7196
	for <lists+usrp-users@lfdr.de>; Thu, 19 Sep 2019 04:31:11 +0200 (CEST)
Received: from [::1] (port=46044 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iAmDn-0007qJ-QG; Wed, 18 Sep 2019 22:31:03 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:41992)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1iAmDk-0007fT-E7
 for usrp-users@lists.ettus.com; Wed, 18 Sep 2019 22:31:00 -0400
Received: by mail-ot1-f54.google.com with SMTP id c10so1706085otd.9
 for <usrp-users@lists.ettus.com>; Wed, 18 Sep 2019 19:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=7AAf+nWuZDSUgsx2p/GhHF4jNOQIrgseQxdEJCEcrdI=;
 b=Aljm6COwxDKXGkSxbJoF3b7FcH+2F0LyOUAONA37dFTPqPZk2rNVV7cscE0uuXeNfe
 XI2AuWuu6VKq2euWeGlprmNImlNe+ufr43G4t18kxHbn5KoUFR+6S4F8i58xIciMTHEB
 /StxvxoxcezqaSyjPKOEeGY/FxNkc+G/TlKeWFrWvhBe5HNghwlewNQOIeyarWadmtJw
 DcqoMqSwggZor9LU8tVNSQ3Wtov2yxlA1J1m1/gZ3VHz7VjOxJyhKr2OmJqV9+GMQLUS
 n4Y/RbEc63MlonqJm7AacQJTSho8T3bquCl1JbVVrUBKtZJJeTXrjKat3cIIulClrA8w
 8ATw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=7AAf+nWuZDSUgsx2p/GhHF4jNOQIrgseQxdEJCEcrdI=;
 b=LxBegvmvLm+s0xqGYI3PIOOZ3d71JyhGRlSZlYX6n+hrLUScOWGqAWgYuejnH3vS1l
 M+Mt/sJ3hKUE+UrEfs+futhUk166EfLsk58an8aldxCAy8+GaRXB94St7BsvbU2QEIfR
 Ht9Lklpaffu8gB633VeEY6jj6i806xlfCphlzypLArPZ9tKjSc7BfpePXGGwEqOB/NfE
 Oe4eyJTsjl1NUZ5tkw2jR9Mb2I+DYCS+WAr3Lo+51O+7+RMISR3yOPAAXZ3fQI0rNwGT
 6U2vPOqOPozr+jYqN4vMEA1LXDONrxWYJbpH6JNMB/U7QK9s4j6xjzn555UtYgicRBkf
 uY5Q==
X-Gm-Message-State: APjAAAVcH1dNrxyVJhtM3J8PdiFib7pLHdXtjf9ry81j8a4eF7xA8VJB
 O8UZCt6nE+EA+D99Q3FO+Unob50h6/5axZEIwEhobJO3/tk=
X-Google-Smtp-Source: APXvYqzhEGOOUGzbLRr9YtiqbHV7XNzSsvNedOT/wC7u7H7yjMeZu5jJckrNXelFK0IleNkUYN/oExnSKC9HBITCQGY=
X-Received: by 2002:a9d:3f4b:: with SMTP id m69mr5156178otc.301.1568860219281; 
 Wed, 18 Sep 2019 19:30:19 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 18 Sep 2019 22:30:08 -0400
Message-ID: <CAB__hTSy0XTx9ryC+Z4zAm3RBcOV=3-YBBcQAQjUJpcjmiCJpg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] running an rfnoc testbench without installing gnuradio
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============3531260054504157359=="
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

--===============3531260054504157359==
Content-Type: multipart/alternative; boundary="00000000000012eecd0592debca5"

--00000000000012eecd0592debca5
Content-Type: text/plain; charset="UTF-8"

Hi,
I have been designing custom noc blocks and successfully building images
and running testbenches using a local workstation for which I have sudo
permission.  But, now I would like to do my builds and run my testbenches
on a server which is administered by the university for which I do not have
such permission.

The administrator has installed Vivado 2018.3 and I have successfully run
the uhd_image_builder script to build the default image for the E310.
However, now I am wondering if it is possible to run testbenches without
first installing / building UHD / gnuradio, gr-ettus and perhaps lots of
other pre-reqs.  Is it possible for me to run testbenches without these
things?

Rob

--00000000000012eecd0592debca5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>I have been designing=C2=A0custom noc blocks a=
nd successfully building images and running testbenches using a local works=
tation for which I have sudo permission.=C2=A0 But, now I would like to do =
my builds and run my testbenches on a server which is administered=C2=A0by =
the university for which I do not have such permission.=C2=A0=C2=A0</div><d=
iv><br></div><div>The administrator=C2=A0has installed Vivado 2018.3 and I =
have successfully run the uhd_image_builder script to build the default ima=
ge for the E310.=C2=A0 However, now I am wondering if it is possible to run=
 testbenches without first installing / building UHD / gnuradio, gr-ettus a=
nd perhaps lots of other pre-reqs.=C2=A0 Is it possible for me to run testb=
enches without these things?</div><div><br></div><div>Rob</div></div>

--00000000000012eecd0592debca5--


--===============3531260054504157359==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3531260054504157359==--

