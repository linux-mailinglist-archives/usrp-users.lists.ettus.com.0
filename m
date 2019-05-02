Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB7711CC2
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2019 17:26:15 +0200 (CEST)
Received: from [::1] (port=54638 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hMDbB-0007Gs-C9; Thu, 02 May 2019 11:26:13 -0400
Received: from mail-ed1-f41.google.com ([209.85.208.41]:36722)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <toomz54@gmail.com>) id 1hMDac-00073z-3l
 for usrp-users@lists.ettus.com; Thu, 02 May 2019 11:26:08 -0400
Received: by mail-ed1-f41.google.com with SMTP id a8so2497299edx.3
 for <usrp-users@lists.ettus.com>; Thu, 02 May 2019 08:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=lbHoLXBoksThML70e2uc0I2yAGijP5pdhkHsANJHiB8=;
 b=Ra7RAprlxr7qJxF82Qtgs52JW+WuMUcA35LuAXZx53Nvd1w3cwUg21zX3O63Ev1Wvx
 wIwhKI1bDse2wrfKe20PQ8malr4pnp3+8g18EUPMMwElmtOH9WhQs140y82C+M+l9Won
 OVLUVEacXv5JnoqWVUUPF05BEl8RpC9pkVH1PG1VsDvOFbl95264FSutej0GX2CGs0vu
 q7x7lTtHfk65oNEp5Ki5hEwre6h6XQqkIwG9K00DfOCwH5bk84I74unSHDuBxnuDTPOG
 u3QyeuKPVlxzB5CWr9o8ZlJ0CbCWJtDkdVuLse5ksXDCwRvC7Ry9LGvjmz065bE7SPmd
 uopg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=lbHoLXBoksThML70e2uc0I2yAGijP5pdhkHsANJHiB8=;
 b=BKhaqFJmeNFmuUnmGjmG8QfJI7nAY235KCa9oq46royOcLz8sK71GYpe4vzHkE7TL2
 LDY9CFESF0PIhgroTMrYaIsBU9mdE8Fz6hN9rWwtldrzJwMs0ZYWZ+0ly1171Uzku8AU
 M4qaO1OcFlaUC9q1Vq9EI5plrpdCXw+w+6eJBsgn3tAQ+a2FFwaRp8t8qlUvqrXxQqx7
 GlTJ+YxE4RkinCvsi3jq07Qn2ZlOAJsHkGldyrANk+LPXo1OcIZKCCS3ako12KLbyUud
 2wrZ+meXqh1yFNsamsdl971aB+5rWqpa2euAwagZ/HH291I4qwHCQwTOgwf4ZeuK52Zs
 SOhw==
X-Gm-Message-State: APjAAAWZtbPkTRssmyOdRKXpOFvtpUnciZ9IVSZVYSStA9suwTCbZsoo
 TBGFo0g3FQIjWKt+x9BxNkY4AgzKHryhtpE0KCZsT0e0
X-Google-Smtp-Source: APXvYqyjpQkePLTzzQTIYEf/ofjO89fc5WpbL5UXhfk5iN2rc8LIaBIKHe0wbYqlEOcrLZsaDXPL7vcyxqqnflXweEk=
X-Received: by 2002:a50:b56a:: with SMTP id z39mr2971659edd.91.1556810696703; 
 Thu, 02 May 2019 08:24:56 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 2 May 2019 10:24:45 -0500
Message-ID: <CAFPG5GyK30dmcyKSiaWEkVoL35Oh8M=L9e8D94ejhch1fsQ1Rg@mail.gmail.com>
To: usrp-users@lists.ettus.com
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] OpenBTS with x310
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
From: Andrew Toomey via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andrew Toomey <toomz54@gmail.com>
Content-Type: multipart/mixed; boundary="===============9217113099897971784=="
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

--===============9217113099897971784==
Content-Type: multipart/alternative; boundary="0000000000008f43520587e93cdf"

--0000000000008f43520587e93cdf
Content-Type: text/plain; charset="UTF-8"

USRP Forum,

I am trying to get OpenBTS working with an x310 with UBX160 daughter cards
inside. My test phone can see my network but when I try to connect the
phone fails connection. I also have a B210 that is running on the same
machine that does allow the phone to successfully connect to my fake
network. I have noticed that the sample rate of the x310 cannot go as low
as the sample rate of the GSM protocol so I think this may be a source of
my problems. The sample rate of the B210 can reach the 270.833 KHz rate of
GSM.

My question is has anyone successfully created an OpenBTS network with an
x310 and UBX160 daughter cards. I have seen sources say that the x310 can
work with OpenBTS but have seen conflicting sources on which daughter cards
are compatible.

http://openbts.org/w/index.php?title=Ettus_Research_USRP  this source says
the UBX is not supported

https://kb.ettus.com/OpenBTS This sources says the UBS is supported

Any info on this subject would be greatly appreciated.

Thanks!
Andrew Toomey

--0000000000008f43520587e93cdf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>USRP Forum,</div><div><br></div><div>I am trying to g=
et OpenBTS=20
working with an x310 with UBX160 daughter cards inside. My test phone=20
can see my network but when I try to connect the phone fails connection.
 I also have a B210 that is running on the same machine that does allow=20
the phone to successfully connect to my fake network. I have noticed=20
that the sample rate of the x310 cannot go as low as the sample rate of=20
the GSM protocol so I think this may be a source of my problems. The sample=
 rate of the B210 can reach the 270.833 KHz rate of GSM.<br><br>My
 question is has anyone successfully created an OpenBTS=20
network with an x310 and UBX160 daughter cards. I have seen sources say=20
that the x310 can work with OpenBTS but have seen conflicting sources on
 which daughter cards are compatible.</div><div><br></div><div><a href=3D"h=
ttp://openbts.org/w/index.php?title=3DEttus_Research_USRP" target=3D"_blank=
">http://openbts.org/w/index.php?title=3DEttus_Research_USRP</a>=C2=A0 this=
 source says the UBX is not supported</div><div><br></div><div><a href=3D"h=
ttps://kb.ettus.com/OpenBTS" target=3D"_blank">https://kb.ettus.com/OpenBTS=
</a> This sources says the UBS is supported</div><div><br></div><div>Any in=
fo on this subject would be greatly appreciated.</div><div><br></div><div>T=
hanks!</div><div>Andrew Toomey</div></div>

--0000000000008f43520587e93cdf--


--===============9217113099897971784==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9217113099897971784==--

