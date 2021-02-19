Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FD731F35D
	for <lists+usrp-users@lfdr.de>; Fri, 19 Feb 2021 01:38:17 +0100 (CET)
Received: from [::1] (port=48634 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCtoD-000636-0s; Thu, 18 Feb 2021 19:38:13 -0500
Received: from mail-lj1-f182.google.com ([209.85.208.182]:34125)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marxwolfs@gmail.com>) id 1lCto9-0005wb-0i
 for usrp-users@lists.ettus.com; Thu, 18 Feb 2021 19:38:09 -0500
Received: by mail-lj1-f182.google.com with SMTP id r23so9904063ljh.1
 for <usrp-users@lists.ettus.com>; Thu, 18 Feb 2021 16:37:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=8tbG52c+vkMKtI1oKi9gzrSvPOamaZMWxtwaE1GnMZU=;
 b=fyDiFPRUjTp8c4JYMA02PrP9dHmm1TObNdW+OqtNjbUjeR0at9A9+QEIs4TPbPPfqQ
 40qgLCP66Bak3IHK5VjRU8zK8waP2R+CJXCO1In3eWaGYWSu50bvrGmfE+RS4IAqr07B
 58OY/3C9MRTmOEEH8kDJNJu/hV+UzY+fpgdqAtoo+76tJyWCwkh7G8iOsOH+OEilS0vT
 dooOgKAvr76t7oKzjNmqT6Nm6pU7HnFZ8zQ1PRTxvlDDxeUOTDt9nfwPYyYQQN86dolF
 RU1xYXf6x9b9xBHh4uJddt6ykajwWqvnm7esmPRymUldQ80i7Tvg/kg5SCi5NCB6j6xn
 Lo+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=8tbG52c+vkMKtI1oKi9gzrSvPOamaZMWxtwaE1GnMZU=;
 b=Jm4M5mGx2Yg9ICtEVXpT6ncHCBk7kqaSBdtfQpQ0sKh3/YT9N3hohDdaWubWy0C+FR
 BkWOGVwewmSBxcQqGrVk23ZeUHqnYvF39xkLd2PGuMCd2QeY/a0Ohu6ckBA+N3aT7333
 LB+dBf4fWy4KaExBSB1JjD7q5XLQL/sgR+iXRv17jQK07NofxA9gsK4jPlcPtq7axaIq
 0+/KJt07YeQDMGDpcGOXdKUjN0tRcNpQvoPQ+9Zcot4EUPoegqlBBpWWw5z6klJVAAhQ
 raBxY9jmxTVEYvrSELfO/4fmQEffXQI7sXf0PLgeix6FNo3Rc/4LHwQS2pgR8/Z7ynpR
 hbKA==
X-Gm-Message-State: AOAM5316cofnCFIjN/X3uCjDe5FOBK1m+IKV6X92h0/567Eo0TJS8d12
 LtapB4Md/pp13e6TrqAIevl32Uv3SLoh8VpvfeUw1I6T3yI=
X-Google-Smtp-Source: ABdhPJyyvvkQeN6e/Q+X7C5EWCvGr/B13trIqiIBe+y3/uV1ORIIU310zqU++PyRNWWnw/ft+yr2+NTbFCMC6Jv5I9M=
X-Received: by 2002:a19:c201:: with SMTP id l1mr3697687lfc.613.1613695047373; 
 Thu, 18 Feb 2021 16:37:27 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 18 Feb 2021 17:37:16 -0700
Message-ID: <CACryqrGQYGQkevGZBi4BRQfmQqDMxopumXRr4qdZHY=1yDDDOw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] x310 two UBX daughterboard receiver
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
From: Xiang Ma via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Xiang Ma <marxwolfs@gmail.com>
Content-Type: multipart/mixed; boundary="===============2285328184458109728=="
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

--===============2285328184458109728==
Content-Type: multipart/alternative; boundary="000000000000131a8b05bba5a81f"

--000000000000131a8b05bba5a81f
Content-Type: text/plain; charset="UTF-8"

Hi,

    I am using a x310 USRP with two UBX daughterboards. Now I can transmit
and receive the signal in RF A daughterboard with command
    self.source.set_antenna("RX2", 0)
    self.sink.set_antenna("TX/RX", 0).

    Now, I want to transmit the signal in RF A, and receive the signal in
both RF A and RF B. It is actually 1 transmitter and 2 receivers. How can I
implement this? I checked the set_subdev_subdev("B", 1), but it doesn't
work.

Thank you,




-- 
*Xiang Ma, *Ph.D. Student
College of Engineering
Utah State University
E-mail:marxwolfs@gmail.com

--000000000000131a8b05bba5a81f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>=C2=A0 =C2=A0 I am using a x310 USR=
P with two UBX daughterboards. Now I can transmit and receive the signal in=
 RF A daughterboard with command</div><div>=C2=A0 =C2=A0=C2=A0self.source.s=
et_antenna(&quot;RX2&quot;, 0)</div><div>=C2=A0 =C2=A0 self.sink.set_antenn=
a(&quot;TX/RX&quot;, 0).</div><div><br></div><div>=C2=A0 =C2=A0 Now, I want=
 to transmit the signal in RF A, and receive the signal in both RF A and RF=
 B. It is actually 1 transmitter and 2 receivers. How can I implement this?=
 I checked the set_subdev_subdev(&quot;B&quot;, 1), but it doesn&#39;t work=
.</div><div><br></div><div>Thank you,</div><div><br></div><div><br></div><d=
iv><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_=
signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><font face=
=3D"times new roman, serif" size=3D"4" style=3D"color:rgb(136,136,136)"><i>=
<b>Xiang Ma,=C2=A0</b></i></font><span style=3D"color:rgb(136,136,136)">Ph.=
D. Student</span><div><div style=3D"color:rgb(136,136,136)"><font color=3D"=
#444444">College of Engineering</font></div><div><font color=3D"#444444">Ut=
ah State University</font></div><div style=3D"color:rgb(136,136,136)"><font=
 color=3D"#444444">E-mail:<a href=3D"mailto:marxwolfs@gmail.com" style=3D"c=
olor:rgb(17,85,204)" target=3D"_blank">marxwolfs@gmail.com</a></font></div>=
</div></div></div></div></div>

--000000000000131a8b05bba5a81f--


--===============2285328184458109728==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2285328184458109728==--

