Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 273DE1B6C54
	for <lists+usrp-users@lfdr.de>; Fri, 24 Apr 2020 05:58:28 +0200 (CEST)
Received: from [::1] (port=48856 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jRpTu-00018u-Lc; Thu, 23 Apr 2020 23:58:26 -0400
Received: from mail-qt1-f174.google.com ([209.85.160.174]:35721)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <qiu.guowang007@gmail.com>)
 id 1jRpTq-000118-Qb
 for usrp-users@lists.ettus.com; Thu, 23 Apr 2020 23:58:22 -0400
Received: by mail-qt1-f174.google.com with SMTP id s30so6923128qth.2
 for <usrp-users@lists.ettus.com>; Thu, 23 Apr 2020 20:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=U8+cK615rQcAzJZdV1J+uJvdmhihYZ7SiXK8nMTu64g=;
 b=AKovKviKjynukJ9McnieUQtqi8bsT+vrJnlCJ1bTqyftdhsVADNjvNI0vkHXaDioje
 CREqJ/7TsfDMZsVyph1CQ/fcc/6HIL64Q05VPyuLudHsCI2yCQhQjFL4S2bs8h0jhnL6
 SqHvLMbhKcmM1+6XkOTw2xtwyfF3MLtNJJsL7ojImWNggQf7/RDPzgiR1SAOEg0SHEzg
 MAFdfocbzNXQTjmXTuQH7z/HrO7400L8+ooIhQBLxgJ1MO5UuNu1NlQUkL4j7qRLsNo/
 X90q5ugoOENSh8O5LvhZtZJHZ13d+mc18zrw5JbShu4zc5sj4k2M8zpYaeuqH/bXBUWO
 n3TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=U8+cK615rQcAzJZdV1J+uJvdmhihYZ7SiXK8nMTu64g=;
 b=Nd1L3dj1MLqElBvXZV7eW6biIIYgxxfOLCibs6QU3jtGxJfbILj4AXHVW/GKJruo4s
 G6lpCcgN/cV3QRUJhVDyUMIUhTg+tO4fVld5I2nj8wKzz85dvfH2gYcFGRKdte9PJToq
 xteNM3Rj0mWShiaPty3CpzpE3amgQhZZsHfR07cJbMsPrYJ1Hx5iAk3PfCT9ODypoObW
 S9ezw7/XiDgLeX2uNX6fQB6uWbgg3F8v4UB7JmcvJHmUFTxUoZw95nycbXrQP+NN4Tks
 x2cI72b4xLwWUkWCaArd/FxL7+Y7fbDWVRL7Ssq+PeA5ZZ5NK8h6ScAg5TYRX+21Pgbv
 0nDQ==
X-Gm-Message-State: AGi0PuZ6izP9KJsxU3mcinfDUSEWAUD9a0t1aS7H1igmeixqAhzgoy4f
 q2PyOHl9eNWtTHVFmILNs5xdFws4ubo/2N1zzi4HapX/pGI=
X-Google-Smtp-Source: APiQypKvOYN1EwmavF9205TNSKy0H82keAiB1I6EutN9LjDrVezB/+zN1hhurLNb1Q0Auj0mSY5tJcsN/qWayqLIXus=
X-Received: by 2002:ac8:7cba:: with SMTP id z26mr7628177qtv.143.1587700662147; 
 Thu, 23 Apr 2020 20:57:42 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 24 Apr 2020 11:57:31 +0800
Message-ID: <CACjmV_mhVigYNh2owzPU5htd49Uh7UY+__cLyj7fbVKrWm-QKg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] (no subject)
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: guowang qiu via USRP-users <usrp-users@lists.ettus.com>
Reply-To: guowang qiu <qiu.guowang007@gmail.com>
Cc: Damon Qiu <qiu.guowang007@gmail.com>
Content-Type: multipart/mixed; boundary="===============8902930357649740537=="
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

--===============8902930357649740537==
Content-Type: multipart/alternative; boundary="000000000000fa1f1205a4015dc1"

--000000000000fa1f1205a4015dc1
Content-Type: text/plain; charset="UTF-8"

Hi all,

I am trying to connect my E310 (sg1) to the internet with a WIFI Dongle
(rtl8192cu). Is there anyone knows how to connect the device to the network?

I am using the sd image of
http://files.ettus.com/e3xx_images/alpha/fido-test/

I followed the instructions below:

Using this entry in /etc/network/interfaces

# Wireless interfaces
iface wlan0 inet dhcp
        wireless_mode managed
        wireless_essid any
        wpa-driver nl80211
        wpa-conf /etc/wpa_supplicant.conf

and the correct info for the access point in /etc/wpa_supplicant.conf

The dongle could find the WIFI AP. But it just doesn't connect, not IP
address is assigned.

Best regards,

Damon

--000000000000fa1f1205a4015dc1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p>Hi all,</p>
<p>I am trying to connect my E310 (sg1) to the internet with a WIFI=20
Dongle (rtl8192cu). Is there anyone knows how to connect the device to=20
the network?</p>
<p>I am using the sd image of <a href=3D"http://files.ettus.com/e3xx_images=
/alpha/fido-test/">http://files.ettus.com/e3xx_images/alpha/fido-test/</a><=
/p>
<p>I followed the instructions below:<br>
  <br>
Using this entry in /etc/network/interfaces<br>
  <br>
# Wireless interfaces<br>
iface wlan0 inet dhcp<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wireless_mode managed<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wireless_essid any<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wpa-driver nl80211<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wpa-conf /etc/wpa_supplicant.con=
f<br>
  <br>
and the correct info for the access point in /etc/wpa_supplicant.conf</p>
<p>The dongle could find the WIFI AP. But it just doesn&#39;t connect, not =
IP address is assigned.<br>
</p>
<p>Best regards,</p>
<p>Damon</p></div>

--000000000000fa1f1205a4015dc1--


--===============8902930357649740537==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8902930357649740537==--

