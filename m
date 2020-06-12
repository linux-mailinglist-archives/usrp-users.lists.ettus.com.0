Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C440F1F7E5F
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jun 2020 23:23:34 +0200 (CEST)
Received: from [::1] (port=47992 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjr99-0006ea-Jh; Fri, 12 Jun 2020 17:23:31 -0400
Received: from mail-ej1-f45.google.com ([209.85.218.45]:45945)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aarsmith54@gmail.com>)
 id 1jjr96-0006Y2-5L
 for usrp-users@lists.ettus.com; Fri, 12 Jun 2020 17:23:28 -0400
Received: by mail-ej1-f45.google.com with SMTP id o15so11442391ejm.12
 for <usrp-users@lists.ettus.com>; Fri, 12 Jun 2020 14:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=S9mj6aaMgIAlgHvYEA8XzShX7QLpeFiHPfqCSIQ2NLg=;
 b=pthRfAtMWjOG/3DENN954Op73QmUacm7xgAwkVkHJSvNpjErDy7cDHkSd3yG10jLdj
 uKwFO4ZRbXGfKtfaw0iL/h4B8+NcVQ+xapnWtgW8F1fNokJ/ny4kZzFpXCQ64YhFq/pD
 JdeRYs2YOzYx7KJgGPR3ELGxdUbro15wFLfXhc8Aia9Cdrn5oacouedTv9GXMp+mqk4s
 IYuft6aphZbuZ2byDGXZ5buOSGsDOsBGLNZWIEqU12KUOP5ngwdkHIQC6CL00QFCK/KE
 lSBGw/dWbGXUWhZHvgIjKKOWOenznLr1IlTnE2B56R+NQJQp0QSxRbHRlQtq5JNaZcON
 J7iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=S9mj6aaMgIAlgHvYEA8XzShX7QLpeFiHPfqCSIQ2NLg=;
 b=HwVwnpw1/0IxIIIskVwAmIQmcZxxMKNx7Gs5vh3n55RI5rv/mzw/76vc557KnTE0Nn
 BCia6DEUf/hvmxgkWu5JrDJ7DYYwHdIwDjSBQ/MId+2Rirn53nIoayuK+WE2pAvf/AqK
 n0j4sKozyBCWDj+4EsgUYGwpA5wYQPaOPWM/5C0FLvEzjFD22u4zWTg9Iz6i+aeedSsQ
 uF/aTZIYzlzvoMB2Lru2vN8BU19dsLeACHUZuxmWxWf+s4Z0qSB9U5j2LA0cSDhwPDxq
 ym/6USx/CIKh8DL6pcdh/FyI9IjKs7e1mBvYEbZagqt9RUXvUF+Rz5C0WOYpIBWgh1oc
 s4/g==
X-Gm-Message-State: AOAM530ZsCRzTMQsPNGrhD4NvlA/1tu8Dv0U8ZWH2Ii3O8dWvhqoiOTB
 7bc/ED9dPL2bEEucpt/mRT6Rq/oLNu6p+dbqdGummley
X-Google-Smtp-Source: ABdhPJw5WAvvv98s117RA9JLqY/uP7CsIfXsnuXnGZ5dRQKEc55prvZMoUHdYodY54NWSkWLVyCS9UcE/zm7QalJ0FQ=
X-Received: by 2002:a17:906:19c8:: with SMTP id
 h8mr15769619ejd.512.1591996966705; 
 Fri, 12 Jun 2020 14:22:46 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 12 Jun 2020 15:22:35 -0600
Message-ID: <CAH2Hh71qD9o27hGbe3DEtZkgXyWsfcScNX-RB6NbuOCq5DVUGg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Precise Time Synchronization In B200/N210
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
From: Aaron Smith via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aaron Smith <aarsmith54@gmail.com>
Content-Type: multipart/mixed; boundary="===============2324609871772125256=="
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

--===============2324609871772125256==
Content-Type: multipart/alternative; boundary="000000000000af1d9605a7e9ad6a"

--000000000000af1d9605a7e9ad6a
Content-Type: text/plain; charset="UTF-8"

Hello all,

I have two separate, but related, questions.

I am trying to trigger an RF transmission every second, and I am receiving
the transmission with a receiver that has very precise time stamps. I am
driving the receiver with the same 1 PPS source as the B200 and N210. For
my simple test, I want the time of arrival at the receiver to register at 1
PPS + propagation delay of the RF coax cable + the USRP front end delay. In
all cases I am running UHD 3.15.LTS

With the N210 I can achieve this. However when I call

usrp->set_time_next_pps(uhd::time_spec_t(0.0));

and poll the last pps time, I see that it is consistently 20 ns before a
second. That is, the pps shows at:

999999980 ns
1999999980 ns
2999999980 ns

If I call usrp->set_time_next_pps(uhd::time_spec_t(20.0e-9)); then the 1
PPS registers on the second. It's almost like the clock is biased by 20 ns.
I have observed this across 3 different N210s. What could be causing this?

With the B200, every time I destroy and recreate the uhd::usrp::multi_usrp
there is a random change in the time of arrival at the receiver that
appears to be uniformly distributed between 0 and 1/master_clock_rate. Is
this expected? The Ettus website says "All functions that directly interact
with the AD93xx (tuning, gain change, etc) are subject to the scheduling of
the AD93xx. The determinism of these operations are not guaranteed. "

Is this what I am experiencing?

Thank you for the help!

--000000000000af1d9605a7e9ad6a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all,</div><div><br></div><div>I have two separa=
te, but related, questions.</div><div><br></div><div>I am trying to trigger=
 an RF transmission every second, and I am receiving the transmission with =
a receiver that has very precise time stamps. I am driving the receiver wit=
h the same 1 PPS source as the B200 and N210. For my simple test, I want th=
e time of arrival at the receiver to register at 1 PPS + propagation delay =
of the RF coax cable + the USRP front end delay. In all cases I am running =
UHD 3.15.LTS<br></div><div><br></div><div>With the N210 I can achieve this.=
 However when I call=20
<pre>usrp-&gt;set_time_next_pps(uhd::time_spec_t(0.0));</pre>

</div><div>and poll the last pps time, I see that it is consistently 20 ns =
before a second. That is, the pps shows at:</div><div><br></div><div>999999=
980 ns<br></div><div>1999999980 ns<br></div><div>2999999980 ns<br></div><di=
v><br></div><div>If I call=20
usrp-&gt;set_time_next_pps(uhd::time_spec_t(20.0e-9)); then the 1 PPS regis=
ters on the second. It&#39;s almost like the clock is biased by 20 ns. I ha=
ve observed this across 3 different N210s. What could be causing this?</div=
><div><br></div><div>With the B200, every time I destroy and recreate the=
=20
uhd::usrp::multi_usrp there is a random change in the time of arrival at th=
e receiver that appears to be uniformly distributed between 0 and 1/master_=
clock_rate. Is this expected? The Ettus website says
&quot;All functions that directly interact with the AD93xx (tuning, gain=20
change, etc) are subject to the scheduling of the AD93xx. The=20
determinism of these operations are not guaranteed. &quot;<br></div><div><b=
r></div><div>Is this what I am experiencing? <br></div><div><br></div><div>=
Thank you for the help!<br></div><div><br></div></div>

--000000000000af1d9605a7e9ad6a--


--===============2324609871772125256==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2324609871772125256==--

