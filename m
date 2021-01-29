Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 47401308A33
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jan 2021 17:28:03 +0100 (CET)
Received: from [::1] (port=48386 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l5Wcn-0000ds-9p; Fri, 29 Jan 2021 11:27:57 -0500
Received: from mail-lf1-f51.google.com ([209.85.167.51]:39578)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <anastas@umich.edu>) id 1l5Wcj-0000TI-R0
 for usrp-users@lists.ettus.com; Fri, 29 Jan 2021 11:27:53 -0500
Received: by mail-lf1-f51.google.com with SMTP id h7so13307946lfc.6
 for <usrp-users@lists.ettus.com>; Fri, 29 Jan 2021 08:27:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=umich.edu; s=google-2016-06-03;
 h=mime-version:from:date:message-id:subject:to;
 bh=lP8Vbj/UV4dJRCVmNzrlq9RgfsBlTEr6oBTdf3AXK0Y=;
 b=nSLwMwJEtoAemfOEBN3ryAPji3mA1akBP64dGY+NlRz3mfhfT5k6MRRlAme4FvonJ9
 EcGR7RT5yhK76vSJpGso/DEXBZ+aNvbkPi+IdZpKfO2hZJtrLHgQ1wPagMCxUHokWkvS
 tfamNkY6obZPqyhdnSCoJbu65o7Z9VXu0RBgRv6/wzdZQYQ5WCKXfPikhlROAmxTEWhD
 kBXHZmunBlPp68K+XkTWN6olp8thY18V1kFNGQtdTVBpmQ8xiM2cneoxSJD0cNnMz5IA
 PkHmAePTR/cU9hzlN0FbOZVyXxQS69SwoEo+rcb6MUoL74HQ3/euNPounG+02cV9wv2o
 O5LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=lP8Vbj/UV4dJRCVmNzrlq9RgfsBlTEr6oBTdf3AXK0Y=;
 b=DOSAvomITN/P9FJjaTmjX0wH9FsfKg/G16sJQOYRLavW0pzmsRS6/5Q389jJdhy8uY
 nohb95C4jxk4B/TbV/s/ZbDk+u3FCR2wHpTwfQSrCbMTL0U3sprlqtRJu6TO2I5KP34A
 gAFeR7bO6vBbJfTtiViePiodmQtEm1u1LbYyFgCeHIUEqSNziL7Ccma53DfRA+SJqs34
 K0nn/PIDYP6YnOocS7O0trv/SE58wu9W0wMrsy2ShgbkrpNZChiC/LtFmjFstamhosQY
 iCuvZN3EC4QHfZEQBUi39X7wOHDMFsgKELX+VSnXXfOId2KsHKik+SB0IjkgyPbdt6d0
 jQIQ==
X-Gm-Message-State: AOAM530j149BehwrWz9m3o78AFjg5tOq8evrh9TYQ0jRAa+5KX5SEnQG
 0bIED+7c0SiPAXNSQZ/YD8We0ztxB9cdDQlkmg9zjny5Vzk=
X-Google-Smtp-Source: ABdhPJyMcCf60by/QAH3C3BL1EZikuR0+JQ8TOpubButrp7tkBOY75s6nFzMeZlb6Ay/lhcAZI6GjxcEWXAmnzx9hWc=
X-Received: by 2002:ac2:545c:: with SMTP id d28mr2538835lfn.446.1611937631311; 
 Fri, 29 Jan 2021 08:27:11 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 29 Jan 2021 11:26:55 -0500
Message-ID: <CAErymBhJT8CAYUbR_3+=jr1VrfKohhgyX3OWb51=4sNwaNgs=w@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] check if GPSDO is locked
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
From: Achilleas Anastasopoulos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Achilleas Anastasopoulos <anastas@umich.edu>
Content-Type: multipart/mixed; boundary="===============6590631316359636928=="
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

--===============6590631316359636928==
Content-Type: multipart/alternative; boundary="000000000000ea2cfd05ba0c7909"

--000000000000ea2cfd05ba0c7909
Content-Type: text/plain; charset="UTF-8"

HI all,

I am looking at an old N210 with a GPSDO and a GPS antenna connected.

Is there a uhd script or snippet of code (python) that I can use to probe
the USRP and check if it has acquired lock from the GSP?

Any help would be appreciated.
thanks
Achilleas

--000000000000ea2cfd05ba0c7909
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">HI all,<div><br></div><div>I am looking at an old N210 wit=
h a GPSDO and a GPS antenna connected.</div><div><br></div><div>Is there a =
uhd script or snippet of code (python) that I can use to probe the USRP and=
 check if it has acquired lock from the GSP?</div><div><br></div><div>Any h=
elp would be appreciated.</div><div>thanks</div><div>Achilleas</div></div>

--000000000000ea2cfd05ba0c7909--


--===============6590631316359636928==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6590631316359636928==--

