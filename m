Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BC6C1252
	for <lists+usrp-users@lfdr.de>; Sun, 29 Sep 2019 00:18:16 +0200 (CEST)
Received: from [::1] (port=34582 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iEL2c-0000Kr-5J; Sat, 28 Sep 2019 18:18:14 -0400
Received: from mail-lf1-f42.google.com ([209.85.167.42]:34205)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <wandrewp@gmail.com>) id 1iEL2Y-0000FQ-Pk
 for usrp-users@lists.ettus.com; Sat, 28 Sep 2019 18:18:10 -0400
Received: by mail-lf1-f42.google.com with SMTP id r22so4391126lfm.1
 for <usrp-users@lists.ettus.com>; Sat, 28 Sep 2019 15:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=rT6xWM5p122+Nay1dzWi46durcboa8zYoK459YGYhjU=;
 b=bh8JrkguuCMZfZFUgUZcJ7qFrSPbbfx155aB27Mz0+Ax6eo4EyEhp8OLTFpdrfXa7U
 FN2rTt9M/LPBYbDqn75mFifvwgamocl5BveZDL9tsxRjyK+w797WPvC3nHJVjDyBp78A
 Ia7KxFoIZmvhLQ6YQsHvNWXNBBaNv9IC+p3COJ1AcVtWsttzpvhGJYdYErOq0zapEGWK
 KYWC6+RlXmZQ8lWJNh3Y7iOXq9sS9GFSfJVgB5zT24zcBvvpSlP06yvoicsFFSyNXeT4
 NyuFGFWYanTWcXdnpXEPi/a5SdEV5KHsVGxMQtIHOmXXi5qgaD/6Yor3ycu+69u8zRbu
 J+wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=rT6xWM5p122+Nay1dzWi46durcboa8zYoK459YGYhjU=;
 b=RV8CqP/C+ejo12mpr93UWBqRO/rBAnXJwDhOMiKQ/nJbJsxrRq8c3IV/wxpdlzzirk
 Mt4bfEyiH84m8WFifhLgOFaqx89vbjaJZSYzab3gNVtJdHV1NYyD2EtC7juLL+E94zW4
 KPNWySECoc0O4boUmL42mATZmhY1IeIS9+zP8ST1JuO3v+X/eKQG5jPyiQt1O3UA7A+B
 K/fvXeC+PTCs20BfolqToY2ai7O3pzfLl7Q4wZq9s4aKafb1MNMJDTIMWWJMxtJQqmGy
 JT2pYrGSWUeVbPZ+U7CP/oztvyJOizpBKTmsm/4GeRX2e42Zrh6Hp8VUKJn5da9Ck249
 Agjg==
X-Gm-Message-State: APjAAAUPj/OvgOohkGbK7+gp5BURAEkT5Q9cwq10uZly57WA6GzwXTgX
 r22kGG8Te4RULfzaeWVvBLySQnw0+eazdPMtEu2lHf+P
X-Google-Smtp-Source: APXvYqwEIOSHOBOeQJeHZldpmrfD1QL0nNhF7cDLnwFLqEBjRJfeMHUkRmUC4K2uCy48OUsIKt+kSUbjv2kUSBkMpRM=
X-Received: by 2002:ac2:5586:: with SMTP id v6mr6855624lfg.180.1569709049222; 
 Sat, 28 Sep 2019 15:17:29 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 28 Sep 2019 18:17:15 -0400
Message-ID: <CAB50+dR1Lvz5rC8Mj5SeuSCUeaBRnAnOUebvRhjtcsBk-Q7fKA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Gnuradio USRP Sink -
 Finished/noutput_items/complete/anything
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
From: Andrew Payne via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andrew Payne <wandrewp@gmail.com>
Content-Type: multipart/mixed; boundary="===============7921447908726278438=="
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

--===============7921447908726278438==
Content-Type: multipart/alternative; boundary="000000000000479c820593a45e36"

--000000000000479c820593a45e36
Content-Type: text/plain; charset="UTF-8"

Hello,

I am writing a program in Python to interface with a simple file source to
USRP sink flowgraph.

I have a short IQ file that I simply want to play once without repeating,
and I want the calling Python code to "know" when it's completed after
commanding the GR class instance to start via a call to tb.start(), if tb
is the class instance variable.  I came across the C++ GR API here:
https://www.gnuradio.org/doc/doxygen/classgr_1_1block.html#a89242cb1ac9d2bf5e75f923745baa576

^ That shows there's a gr.finished() boolean return that tells you when the
flowgraph is done, but evidently .finished is not an attribute of tb.  The
only methods that worked for me are tb.start/tb.run, tb.wait, tb.stop.

I'd also be happy with polling the GR class instance for the noutput_items
from the work function of the USRP_sink block. I know the file size so I
can have a while loop with the noutput_items value as a condition, but how
do I do that in Python?  I think I am getting close with these 2 results
from Google but still not getting it:
1)
https://stackoverflow.com/questions/50938245/gnuradio-number-of-output-items/50943105
2)
https://stackoverflow.com/questions/32305813/gnuradio-how-to-change-the-noutput-items-dynamically-when-writing-oot-block

Thanks,
Andrew

--000000000000479c820593a45e36
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I am writing a program in Python=
 to interface with a simple file source to USRP sink flowgraph.</div><div><=
br></div><div>I have a short IQ file that I simply want to play once withou=
t repeating, and I want the calling Python code to &quot;know&quot; when it=
&#39;s completed after commanding the GR class instance to start via a call=
 to tb.start(), if tb is the class instance variable.=C2=A0 I came across t=
he C++ GR API here:=C2=A0<a href=3D"https://www.gnuradio.org/doc/doxygen/cl=
assgr_1_1block.html#a89242cb1ac9d2bf5e75f923745baa576">https://www.gnuradio=
.org/doc/doxygen/classgr_1_1block.html#a89242cb1ac9d2bf5e75f923745baa576</a=
></div><div><br></div><div>^ That shows there&#39;s a gr.finished() boolean=
 return that tells you when the flowgraph is done, but evidently .finished =
is not an attribute of tb.=C2=A0 The only methods that worked for me are tb=
.start/tb.run, tb.wait, tb.stop.</div><div><br>I&#39;d also be happy with p=
olling the GR class instance for the noutput_items from the work function o=
f the USRP_sink block. I know the file size so I can have a while loop with=
 the noutput_items value as a condition, but how do I do that in Python?=C2=
=A0 I think I am getting close with these 2 results from Google but still n=
ot getting it:</div><div>1)=C2=A0<a href=3D"https://stackoverflow.com/quest=
ions/50938245/gnuradio-number-of-output-items/50943105">https://stackoverfl=
ow.com/questions/50938245/gnuradio-number-of-output-items/50943105</a></div=
><div>2)=C2=A0<a href=3D"https://stackoverflow.com/questions/32305813/gnura=
dio-how-to-change-the-noutput-items-dynamically-when-writing-oot-block">htt=
ps://stackoverflow.com/questions/32305813/gnuradio-how-to-change-the-noutpu=
t-items-dynamically-when-writing-oot-block</a></div><div><br></div><div>Tha=
nks,</div><div>Andrew</div></div>

--000000000000479c820593a45e36--


--===============7921447908726278438==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7921447908726278438==--

