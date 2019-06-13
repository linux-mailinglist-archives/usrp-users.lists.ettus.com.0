Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4246E44C35
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jun 2019 21:34:52 +0200 (CEST)
Received: from [::1] (port=49278 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hbVUi-0005KC-Iv; Thu, 13 Jun 2019 15:34:44 -0400
Received: from mail-ot1-f43.google.com ([209.85.210.43]:37696)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <cogwsn@gmail.com>) id 1hbVUe-0005Fu-Ng
 for usrp-users@lists.ettus.com; Thu, 13 Jun 2019 15:34:40 -0400
Received: by mail-ot1-f43.google.com with SMTP id s20so324923otp.4
 for <usrp-users@lists.ettus.com>; Thu, 13 Jun 2019 12:34:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=ocSITdjRKOpdo7Z4DGAeCzt7irRWBRu96fA60aHTwIU=;
 b=Ch4jBXcbaH8UjlXIexI06xw99tW0nAoODcshCS3+GwG+Ja9BR0IUBXIw8RyFsi9FeQ
 gy/pDHKUiHjrVJ/ehMY71ReXF8RmDISVrsH7uMQJ0nEbRL138c10ZiGWe1D7MX0eDiXb
 Rstosfor4puPAfhDkRLLc/bI3UvY3LOWUlH03Ew/9zoyhHY/y/d9qOtinSY8R+Ve0+HD
 oMq59xqYTuN4TNzEXt7tqJMrmsB7X4NsUlao83Prx/J/pnCwH7h1mnT4+UmE54jNyfmR
 N5pJBa1wnkK2awFDmQ8excR0sZY+2+/fzig9O/ohslSr9A6t61DzMreRZuNAJVNef2rq
 QCbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=ocSITdjRKOpdo7Z4DGAeCzt7irRWBRu96fA60aHTwIU=;
 b=QxQNNWvNlYsU36eeEXaDRZ6SeCSkSx4w32vvI2G0yCfI9L5U2Z8LpXNoAtZgGDfWP5
 FRQ+ysRnCtEdSQy4JH3QRfPK3R3UcXauNf5aqpBVGYK+SQ8ldGy0JKCMFZQpzocKuEFM
 9VT7pyUHDZ67Qc1Vsd3hMkYbzIr9TbQhbVHfk98Ignm114gD9nG8bsnL24xPBpuYcF9t
 esBUwMBPtf6T5Iw3fxJOrDj0kM8kCag134Ac7hMwfZaiv1wJf+NH3H0W8A/A3sLzXQay
 kGBjo/g7/tV5kTVf8tJdF1Z05uc6Q5wB4pwVUDjttlDGaO3NnhWje0cNJ1bGwtbhOnlT
 5UZQ==
X-Gm-Message-State: APjAAAXZanoXEjWE60+lMozuEGnTg6t/Ta7NIBHp+RGdlw8/GKv9Ps1o
 PRNg+JDKFwPiB8fOCFk9zFPiJnMikVocfJ4OJFvPwfRo
X-Google-Smtp-Source: APXvYqx4Y7r9f8KFMx2XGnET1pZvaUM2iWE5vV0OqLc1kpJKr/vzZaF8/Jcf0YQgkyIJiB9F0Kp0AFAnmHjY4B7crCo=
X-Received: by 2002:a9d:2c41:: with SMTP id f59mr19109566otb.268.1560454440043; 
 Thu, 13 Jun 2019 12:34:00 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 13 Jun 2019 21:33:49 +0200
Message-ID: <CAOExtcS3ZNPKD+HFTT8utGZmTTKPpd1sUVhLrrQJO1Pxq_C80g@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Reg: USRP N200 reset problem
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
From: Sumit Kumar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sumit Kumar <cogwsn@gmail.com>
Content-Type: multipart/mixed; boundary="===============0246550873211056729=="
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

--===============0246550873211056729==
Content-Type: multipart/alternative; boundary="0000000000009648c8058b399c13"

--0000000000009648c8058b399c13
Content-Type: text/plain; charset="UTF-8"

Hi,

I got Ettus N200 from my colleague. I din't know the ip address so I did a
reset. After the reset, the ip of N200 became 192.168.10.2 and I was able
to ping and do all regular stuff with it. But whenever I do a power cycle
of the N200, it is undetectable at 192.168.10.2. Then again I have to reset
it.

I am not sure what has gone wrong.

Regards
Sumit

--0000000000009648c8058b399c13
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br clear=3D"all"><div>Hi,=C2=A0</div><div><br></div><div>=
I got Ettus N200 from my colleague. I din&#39;t know the ip address so I di=
d a reset. After the reset, the ip of N200 became 192.168.10.2 and I was ab=
le to ping and do all regular stuff with it. But whenever I do a power cycl=
e of the N200, it is undetectable at 192.168.10.2. Then again I have to res=
et it.=C2=A0</div><div><br></div><div>I am not sure what has gone wrong.=C2=
=A0</div><div><br></div><div>Regards</div><div>Sumit=C2=A0</div></div>

--0000000000009648c8058b399c13--


--===============0246550873211056729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0246550873211056729==--

