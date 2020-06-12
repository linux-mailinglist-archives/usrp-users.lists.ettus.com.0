Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 938521F7E58
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jun 2020 23:15:58 +0200 (CEST)
Received: from [::1] (port=45762 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjr1n-0005mH-5b; Fri, 12 Jun 2020 17:15:55 -0400
Received: from mail-vs1-f47.google.com ([209.85.217.47]:46353)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <vesperpro93@gmail.com>)
 id 1jjr1i-0005PR-PP
 for usrp-users@lists.ettus.com; Fri, 12 Jun 2020 17:15:50 -0400
Received: by mail-vs1-f47.google.com with SMTP id k13so6086721vsm.13
 for <usrp-users@lists.ettus.com>; Fri, 12 Jun 2020 14:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=SitRFxt0YDODu9yuR0ig7YTzHnk86xeufUycKWpSuyA=;
 b=kZw5Xbr7sWMekDo2H4y1LwT2wwSm9L4uVcreQLYc4xAd3IKc8A0mBgnmNtDMTIz5HF
 A611+O4WreRl7EAwLwpBqRL96/cSEf0gPhzvbcPV8xJdbmhoT1r+MTs2+QKs8CZvul8a
 /jtTiOEOShRU+Gkwx/XiSGEMSsAOUSYp2XukNOcBwqi028FjAcCrsowUdjLw9xwPQYy2
 iUCoKS2zXKSQgBUMWBRE+Q8Bz+NP8Dp39S6Ye6wypsRZorMWs4WB2LOS+j400kne3CHZ
 HJozH9oRzHxH0wPHGTwEbLsYTghaJTTzx/OaGspgmRHgfuDFEzAZRJgQghBiiTuKGh7p
 8XFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=SitRFxt0YDODu9yuR0ig7YTzHnk86xeufUycKWpSuyA=;
 b=gou4w+jf+cR3HtXehVDZm3DVTRoki/v/Ge56wsvdEiFFUFl+6/capHyRsLVuMCtn7H
 kN/mjdK1Fr0n4EDoWVroxvibr6ZjbUb4qeT+upQozmui93mwopOGg4oAFXJ/vaYmH/ws
 Q4ibyaXh6YmgKSz4BXlxUSYzUufBu2aH6Ur41VuZHFlT7UcLth2zVWmr3HjgzZKiW7bv
 RTMmhp4qnk5RerElTgmJbJcI96ufMQV/BVu4ro8liauiGNwagezW4uY6f490cFI2zysH
 bcB6ykRJPLH7WXua+C2zTPVTuRkw8uEoUHat+SECJWjYp/NZvkDrRx9EeAU6SY//P7sf
 nVSg==
X-Gm-Message-State: AOAM5338u0K5wqt7hNUU+IpBGYi14uKRewvLAfy5hwp34vXfO88tOdvq
 k2kVTaFl/2BKMb+Edh91TxNUT6+5+zVNfFn2oCOyWmpp
X-Google-Smtp-Source: ABdhPJxITiBR/CF8HsrtG44QYMr+Atcklv2qmnuPKcPfwcrUkrVKX0/fL6ogxljVqhzkDCG8mMxt8bxmzL6rO9+YirY=
X-Received: by 2002:a67:69d1:: with SMTP id
 e200mr12529462vsc.118.1591996509771; 
 Fri, 12 Jun 2020 14:15:09 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 12 Jun 2020 17:14:58 -0400
Message-ID: <CAKyaCM64SK=LYavuWjdfM_XuPDb+LbuDu7R2=cuCGYqj03p6ew@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] [USRP-B200] Transmitting and Receiving with two boards
 B200 using MATLAB
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
From: Thuc TheGifted via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Thuc TheGifted <vesperpro93@gmail.com>
Content-Type: multipart/mixed; boundary="===============3017029685015205199=="
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

--===============3017029685015205199==
Content-Type: multipart/alternative; boundary="00000000000072db7c05a7e99270"

--00000000000072db7c05a7e99270
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

I am new to this USRP B200 board. I currently have two boards and I want to
connect the Tx port of one board to the Rx port of another using a SMA
cable to visualize the communication.

So I start with something available online here
https://www.mathworks.com/help/supportpkg/usrpradio/examples/qpsk-transmitter-with-usrp-r-hardware.html

and
https://www.mathworks.com/help/supportpkg/usrpradio/examples/qpsk-receiver-with-usrp-r-hardware.html


Basically, my hardware connection is
Computer_1 + B200_1(Tx port) + 30 dB attenuator + SMA cable + 30 dB
attenuator + B200_2(Rx port) + Computer_2

And I run the transmitter code on the computer_1 and run the receiver code
on the computer_2. The transmitter light and the receiver light both turns
on, so I think they are doing something.

However the result I get on my receiver end on computer_2 is not good. They
just look like noise.

I think because I use a different kind of board, so I need to modify the
gain parameters in the code. But I have no idea about how to make it
correctly.

I hope someone with more experience with this board can show me how to do
it right.
Could you please help me on this.
Thank you.

-Ves

--00000000000072db7c05a7e99270
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone,<div><br></div><div>I am new to this USRP B200=
 board. I currently have two boards and I want to connect the Tx port of on=
e board to the Rx port of another using a SMA cable to visualize the commun=
ication.</div><div><br></div><div>So I start with something available=C2=A0=
online here</div><div><a href=3D"https://www.mathworks.com/help/supportpkg/=
usrpradio/examples/qpsk-transmitter-with-usrp-r-hardware.html">https://www.=
mathworks.com/help/supportpkg/usrpradio/examples/qpsk-transmitter-with-usrp=
-r-hardware.html</a>=C2=A0</div><div>and=C2=A0<br></div><div><a href=3D"htt=
ps://www.mathworks.com/help/supportpkg/usrpradio/examples/qpsk-receiver-wit=
h-usrp-r-hardware.html">https://www.mathworks.com/help/supportpkg/usrpradio=
/examples/qpsk-receiver-with-usrp-r-hardware.html</a>=C2=A0=C2=A0<br></div>=
<div><br></div><div>Basically, my hardware connection is</div><div>Computer=
_1=C2=A0+ B200_1(Tx port) + 30 dB attenuator=C2=A0+ SMA cable=C2=A0+ 30 dB =
attenuator=C2=A0+ B200_2(Rx port)=C2=A0+ Computer_2</div><div><br></div><di=
v>And I run the transmitter code on the computer_1 and run the receiver cod=
e on the computer_2. The transmitter light and the receiver light both turn=
s on, so I think they are doing something.</div><div><br></div><div>However=
 the result I get on my receiver end on computer_2 is not good. They just l=
ook like noise.</div><div><br></div><div>I think because I use a different =
kind of board, so I need to modify the gain parameters in the code. But I h=
ave no idea about how to make it correctly.</div><div><br></div><div>I hope=
 someone with more experience with this board can show me how to do it righ=
t.</div><div>Could you please help me on this.</div><div>Thank you.</div><d=
iv><br></div><div>-Ves</div></div>

--00000000000072db7c05a7e99270--


--===============3017029685015205199==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3017029685015205199==--

