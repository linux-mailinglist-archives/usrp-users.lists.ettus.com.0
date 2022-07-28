Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D96D858469E
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jul 2022 21:42:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EC5FF38404F
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jul 2022 15:42:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659037367; bh=uklwVMDkwUBxOr+JyUnsw8EiAfkdekuYhvenzZOEHbI=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=rJftlPeXoTj24NrrlFJPn5JlxoLgeBLGBvZs2fC+MKncbUQTTU8nXT5RkmbSmWpCb
	 Hfqo/mfxqMaBhzQRQ5++vfee6MIDxFiQ5bbL4iKwtX3JYfj4xJNhIWqX9NzLLoLGY2
	 Hye/ya/QCPIpFsC5Zj4LaGMUevy5Dh6JCAqFXQuAk3Xj43/03HEj23VoyR26l+TAes
	 3KylIrBsx28NWrXCSNJVTTEL9S/xlPyyH+RHC1GRg/+K/kNews/qQEtbsIi1iJIquZ
	 5Lr0CEQiyZ8ZDBlb5pqpbuIdsmXCQzVdEcT9sxH18rWvONji7rs2l/MYrBrDGvzjTW
	 5+p640cLjCByg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A60A4383FA6
	for <usrp-users@lists.ettus.com>; Thu, 28 Jul 2022 15:40:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659037252; bh=8XVYR7p5tN57+n3srQF45tJ31oh+Suo+VCxV+mN+jY4=;
	h=Date:To:From:Subject:From;
	b=sfXtk91SzwFHST3o6U572gef/vkqeydeFsxjUrBy6CTYge5duBeUSPobBELEtOorL
	 xW0G9gWudp29qY0G8oUmmff5XnlvWwRQymyLFbwPZCxULvIpGZSMltN8BfEFVzH5dY
	 eL2pohmT4uSot9N+phMzKzd0DljzxDpwGn8sAZJE8Y9N+wiXxbWUh/OzPR3whTTGOC
	 exSfE0bAz7xLTqXvpy9GfQCU1oM2/pTHk/jdM2/boZWGpXBE3YwhF2uMPJwyu4yTub
	 6bl4jqpylDWkDRLXTJ4hyjfnk8suzS7HSbkMRFwh2vX4BFMXdsJ9n+a8/4HdtMyE+m
	 8D98shU97T6Xg==
Date: Thu, 28 Jul 2022 19:40:52 +0000
To: usrp-users@lists.ettus.com
From: yanzhanggc@gmail.com
Message-ID: <WNuX1RAxDMoc9fWPv8LiDBJv5z5W2Y4T6qJKxpcDZ0U@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: ACUKZY2A3TEOMNZFJYNNOI3WGJHXJA2N
X-Message-ID-Hash: ACUKZY2A3TEOMNZFJYNNOI3WGJHXJA2N
X-MailFrom: yanzhanggc@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E312 low level access to control AD9361
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ACUKZY2A3TEOMNZFJYNNOI3WGJHXJA2N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7697421295195492762=="

This is a multi-part message in MIME format.

--===============7697421295195492762==
Content-Type: multipart/alternative;
 boundary="b1_WNuX1RAxDMoc9fWPv8LiDBJv5z5W2Y4T6qJKxpcDZ0U"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_WNuX1RAxDMoc9fWPv8LiDBJv5z5W2Y4T6qJKxpcDZ0U
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi, all,

=C2=A0

I have a E312 device and I just find that the tuning speed of E312 is ver=
y slow (\~150ms) for each tuning. Thus I would like to modify the underly=
ing tuning source code in the uhd software architecture.

=C2=A0

Here is what I found:

=C2=A0

I first create a multi_usrp object:

uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make(device_a=
rgs);

=C2=A0

=C2=A0

then I tune the usrp by running a loop:

=C2=A0

int count =3D 200;\
for(int a =3D 0; a < count; a++) {\
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uhd::tune_request_t tune_reque=
st(600e6 + a\*10e6);\
\
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 usrp->set_rx_freq(tune_request=
, 0);\
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 usrp->set_tx_freq(tune_request=
, 0);\
}

=C2=A0

Basically, the loop tunes the frequency from 600MHz to 2.6 GHz with a ste=
p size of 10 MHz. The 200 tunings take 52 seconds, which is pretty slow.

=C2=A0

Thus, I traced the call stack from=C2=A0usrp->set_rx_freq(tune_request, 0=
). Here is what I found:

1. usrp->set_rx_freq(tune_request, 0);=C2=A0 calls the method set_tx_freq=
uency() in uhd/host/lib/usrp/dboard/e3xx/e3xx_radio_control_impl.cpp

2. then=C2=A0the method set_tx_frequency() in uhd/host/lib/usrp/dboard/e3=
xx/e3xx_radio_control_impl.cpp calls the tune() method in=C2=A0uhd/host/l=
ib/usrp/dboard/e3xx/e3xx_ad9361_iface.cpp

3. then=C2=A0the tune() method in=C2=A0uhd/host/lib/usrp/dboard/e3xx/e3xx=
_ad9361_iface.cpp=C2=A0calls the method set_tx_frequency() in uhd/host/li=
b/rfnoc/radio_control_impl.cpp. =C2=A0

=C2=A0

The conclusion I have reached so far is the underlying tuning method is i=
n=C2=A0=C2=A0uhd/host/lib/rfnoc/radio_control_impl.cpp:

=C2=A0

double radio_control_impl::set_tx_frequency(const double freq, const size=
_t chan)\
{\
=C2=A0=C2=A0=C2=A0 std::lock_guard<std::mutex> l(_cache_mutex);\
=C2=A0=C2=A0=C2=A0 return _tx_freq\[chan\] =3D freq;\
}

=C2=A0

Then I just got stuck here, what is the _tx_freq\[chan\] ? I just can not=
 find more.

=C2=A0

=C2=A0

What I want to do is to modify the underlying ad9361 driver, so that when=
 tuning a frequency, I can bypass the calibration in the ad9361 to speed =
up the tuning speed.

=C2=A0

Can anyone point me to 1.where I can find the source code for tuning for =
the E312 with uhd 4.0 or 2. how to use mpm to get low-level access to ad9=
361 so that I can write my own tuning method for ad9361 ?

=C2=A0

Thanks,

Yan

--b1_WNuX1RAxDMoc9fWPv8LiDBJv5z5W2Y4T6qJKxpcDZ0U
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi, all,</p><p>&nbsp;</p><p>I have a E312 device and I just find that th=
e tuning speed of E312 is very slow (~150ms) for each tuning. Thus I would =
like to modify the underlying tuning source code in the uhd software archit=
ecture.</p><p>&nbsp;</p><p>Here is what I found:</p><p>&nbsp;</p><p>I first=
 create a multi_usrp object:</p><p>uhd::usrp::multi_usrp::sptr usrp =3D uhd=
::usrp::multi_usrp::make(device_args);</p><p>&nbsp;</p><p>&nbsp;</p><p>then=
 I tune the usrp by running a loop:</p><p>&nbsp;</p><p>int count =3D 200;<b=
r>for(int a =3D 0; a &lt; count; a++) {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; uhd::tune_request_t tune_request(600e6 + a*10e6);<br><br>&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp-&gt;set_rx_freq(tune_request, 0);<=
br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp-&gt;set_tx_freq(tune_req=
uest, 0);<br>}</p><p>&nbsp;</p><p>Basically, the loop tunes the frequency f=
rom 600MHz to 2.6 GHz with a step size of 10 MHz. The 200 tunings take 52 s=
econds, which is pretty slow.</p><p>&nbsp;</p><p>Thus, I traced the call st=
ack from&nbsp;usrp-&gt;set_rx_freq(tune_request, 0). Here is what I found:<=
/p><ol><li><p>usrp-&gt;set_rx_freq(tune_request, 0);&nbsp; calls the method=
 set_tx_frequency() in uhd/host/lib/usrp/dboard/e3xx/e3xx_radio_control_imp=
l.cpp</p></li><li><p>then&nbsp;the method set_tx_frequency() in uhd/host/li=
b/usrp/dboard/e3xx/e3xx_radio_control_impl.cpp calls the tune() method in&n=
bsp;uhd/host/lib/usrp/dboard/e3xx/e3xx_ad9361_iface.cpp</p></li><li><p>then=
&nbsp;the tune() method in&nbsp;uhd/host/lib/usrp/dboard/e3xx/e3xx_ad9361_i=
face.cpp&nbsp;calls the method set_tx_frequency() in uhd/host/lib/rfnoc/rad=
io_control_impl.cpp. &nbsp;</p></li></ol><p>&nbsp;</p><p>The conclusion I h=
ave reached so far is the underlying tuning method is in&nbsp;&nbsp;uhd/hos=
t/lib/rfnoc/radio_control_impl.cpp:</p><p>&nbsp;</p><p>double radio_control=
_impl::set_tx_frequency(const double freq, const size_t chan)<br>{<br>&nbsp=
;&nbsp;&nbsp; std::lock_guard&lt;std::mutex&gt; l(_cache_mutex);<br>&nbsp;&=
nbsp;&nbsp; return _tx_freq[chan] =3D freq;<br>}</p><p>&nbsp;</p><p>Then I =
just got stuck here, what is the _tx_freq[chan] ? I just can not find more.=
</p><p>&nbsp;</p><p>&nbsp;</p><p>What I want to do is to modify the underly=
ing ad9361 driver, so that when tuning a frequency, I can bypass the calibr=
ation in the ad9361 to speed up the tuning speed.</p><p>&nbsp;</p><p>Can an=
yone point me to 1.where I can find the source code for tuning for the E312=
 with uhd 4.0 or 2. how to use mpm to get low-level access to ad9361 so tha=
t I can write my own tuning method for ad9361 ?</p><p>&nbsp;</p><p>Thanks,<=
/p><p>Yan</p>

--b1_WNuX1RAxDMoc9fWPv8LiDBJv5z5W2Y4T6qJKxpcDZ0U--

--===============7697421295195492762==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7697421295195492762==--
