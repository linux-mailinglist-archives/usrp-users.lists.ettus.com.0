Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F207C1B6C5B
	for <lists+usrp-users@lfdr.de>; Fri, 24 Apr 2020 05:59:52 +0200 (CEST)
Received: from [::1] (port=50742 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jRpVH-0001Oj-Vk; Thu, 23 Apr 2020 23:59:51 -0400
Received: from mail-qk1-f169.google.com ([209.85.222.169]:41770)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <qiu.guowang007@gmail.com>)
 id 1jRpVD-0001HM-Qr
 for usrp-users@lists.ettus.com; Thu, 23 Apr 2020 23:59:47 -0400
Received: by mail-qk1-f169.google.com with SMTP id n143so8943621qkn.8
 for <usrp-users@lists.ettus.com>; Thu, 23 Apr 2020 20:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=/ZW/hnzGkVSHtkt0QKCNWRIPHKy/GqP4yX7NnDfXIJU=;
 b=rqVM5ynb9Il9YHySVQ/a5kZoWJPQc1zBeaelvUVs6FJI3ahleNEqGBg7OYkVLSCNdK
 HtZGs2YEtinRZuu6fPhto40iFcRwdTpuOgX+Pb9UuqJosGuHjSCFDwop5W0dvhywcmEh
 eGMnp1QX+YOeTBVbBvZmPHFK1vDqjhtcJGnBezcrNBj1la77DIlhFAmjFhSLAujQ2LaD
 YveOuwC0PxLgQEoa6/fZCqTnPCTk18dYFnjoF/iQTT0XNueS5LYZz9EfUwVwUNxkTiVY
 eIruPvYDqOzop6xErPCY3BPPkIuwq+9+Rsw2TNnnqIu6mR42VK4QYTbDyy+K0GR63UfO
 bpwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=/ZW/hnzGkVSHtkt0QKCNWRIPHKy/GqP4yX7NnDfXIJU=;
 b=av6F6FpjF05SSKaQQxHYPHR2OW0xTQwRGic39Dj7IUR3cuEmu/9OQC7c8jBpFvQRgP
 4QrnsgTOm1mpifCDkiyfCG7jCnROhmCG1sCqYIWh8h7H3wUEvsoCZGNH9Mi2z7tV9FOV
 O9+8C5EAJebCXcBqMqtEh+evP6L0bnPXsB973wgru0tgktyg8OC9EA/qZOk8zfKUp55W
 xfX9xbTP2IJHFoqRClRn2zbcGrHwmne7NaPqasuqVoU1GS40g3TNSTji5L9JD0tVvMcu
 4vrPUnvhQPSxbn+FxYZOYK0teMwB3XlOauq1kIydU4fa7y1Fz+D6ZJW4oumXZ7c0ZDnz
 BBRQ==
X-Gm-Message-State: AGi0PuYTykPp7JKTVkKSQXJBWI5luGuMQnUeMWFFWBDPshjzHXZcQuNL
 bItDGMpBT81EhBCxJgRXss6xgd1tCGgE5RQrjJMEIOmTqpg=
X-Google-Smtp-Source: APiQypIQTDlb4+69452eiIQYUKr5JilDPbrDVzq3jsVHVo5MaSo088ShzLlZnMUXsSWrjxiQvLyNnhzYHYBqrOwBEm4=
X-Received: by 2002:a37:2e42:: with SMTP id u63mr6408368qkh.181.1587700747196; 
 Thu, 23 Apr 2020 20:59:07 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 24 Apr 2020 11:58:56 +0800
Message-ID: <CACjmV_nS5aDKkv-cXWf+=ULdBAf7owptRXoRPAt=D2Tu+82hOA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] E310 with WIFI Dongle
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
Content-Type: multipart/mixed; boundary="===============0959677197309628785=="
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

--===============0959677197309628785==
Content-Type: multipart/alternative; boundary="0000000000000bdbb305a4016361"

--0000000000000bdbb305a4016361
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

--0000000000000bdbb305a4016361
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

--0000000000000bdbb305a4016361--


--===============0959677197309628785==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0959677197309628785==--

