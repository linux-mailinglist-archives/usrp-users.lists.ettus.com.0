Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7661B7D57
	for <lists+usrp-users@lfdr.de>; Fri, 24 Apr 2020 19:55:59 +0200 (CEST)
Received: from [::1] (port=60612 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jS2YN-0006WC-KM; Fri, 24 Apr 2020 13:55:55 -0400
Received: from mail-qv1-f45.google.com ([209.85.219.45]:44994)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jS2YJ-0006RM-G9
 for USRP-users@lists.ettus.com; Fri, 24 Apr 2020 13:55:51 -0400
Received: by mail-qv1-f45.google.com with SMTP id q31so5084803qvf.11
 for <USRP-users@lists.ettus.com>; Fri, 24 Apr 2020 10:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=NP7W8XIjTwHS+ec81v3nnJ804mklOmlTPVWxAaz2+kc=;
 b=NoediR7Mi8C9z9slAo7pEw4k65Km5HKLeRdlS0gjTmvehiA90ZPcFPn7LNJh4Wm7lT
 Xd7H7VKf6d2QkSB3XjTUQ012ZLBPrUT3DXvBmWxYqSw0d/d83B3+HbUVYsBgQGPcXBkc
 PIMXTuuGR+6hXmBJEXfRJpDbpCsFe2R4mc2gi/aDvfOuZi+H/I+xspVqGrqRyb/48K3L
 eLI+C0T9FSuHK2JNBy5ALAiBGLlRalRl9nOpxAOlMzWvgrPK39r9H/kwOnE0khxkQL72
 LzCz6ZM9Cx6grnorA3XsGSxOxHozK+KeeypZ3ieNyae5qTIPzoOsN2qYOYyTJiED9NxX
 BTbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=NP7W8XIjTwHS+ec81v3nnJ804mklOmlTPVWxAaz2+kc=;
 b=mmwfHEyULTnGTxSEO3vbqmZom89RZFNOQMpN6pXbZToICWMsh7yJTh7GS5/h4Ze/Xt
 uRmMf3fYJYOI7JErmD1OwmN2O6jVTTICJdUKXVxBUznyJrj5Ljwi3cH5AtiLAXnM5jHO
 bCR2yhh9Ey3T97TnVPaqYGJ/eyLwZJt5bd2dJHQEAjpVCUxNGAGx9x5zSAV0UvIMFV03
 GcPbyNQxHdZHVDGFkOq4FBd1iR/D0R0NwvFMNU39fzIqnZ0CUaalqAV84fxikgKLJRex
 eCWVfQVu2zeJm0hDak0Jvfh+9ndl1f6GSyfs4dAdOBQvpB9ZirUdCMp62mH5h+Vv4W+5
 Xo5g==
X-Gm-Message-State: AGi0PuZYPuNEOLgfkgxtnkjyX41RGdo+vd3Nz/iRThYcmOaXtO6WhJS0
 8UsMm577Hf3A53zV8cUrUF0=
X-Google-Smtp-Source: APiQypJ3TRcURSxVxJNEnu6vDCbJIyL7jODyKz5GoEwi1Am7/HTdn6D7zdtwVmsQQYgWahJvucR02Q==
X-Received: by 2002:a0c:b604:: with SMTP id f4mr10334890qve.40.1587750910959; 
 Fri, 24 Apr 2020 10:55:10 -0700 (PDT)
Received: from [192.168.2.29]
 (smflon1825w-lp130-01-69-158-143-211.dsl.bell.ca. [69.158.143.211])
 by smtp.gmail.com with ESMTPSA id 103sm4319730qte.82.2020.04.24.10.55.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Apr 2020 10:55:10 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Fri, 24 Apr 2020 13:55:09 -0400
Message-Id: <7EF3F406-1653-4921-A5F9-389149BDFAA7@gmail.com>
References: <CACjmV_nS5aDKkv-cXWf+=ULdBAf7owptRXoRPAt=D2Tu+82hOA@mail.gmail.com>
In-Reply-To: <CACjmV_nS5aDKkv-cXWf+=ULdBAf7owptRXoRPAt=D2Tu+82hOA@mail.gmail.com>
To: guowang qiu <qiu.guowang007@gmail.com>
X-Mailer: iPhone Mail (17E255)
Subject: Re: [USRP-users] E310 with WIFI Dongle
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============8318352737561291303=="
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


--===============8318352737561291303==
Content-Type: multipart/alternative; boundary=Apple-Mail-0EFFFCA7-1CFC-4ADB-B669-1EB424F8BE3E
Content-Transfer-Encoding: 7bit


--Apple-Mail-0EFFFCA7-1CFC-4ADB-B669-1EB424F8BE3E
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

This system image has been tested with WiFi dongles

https://files.ettus.com/e3xx_images/e3xx-release-4/

Specifically this device
https://www.amazon.com/Edimax-EW-7811Un-150Mbps-Raspberry-Supports/dp/B003MT=
TJOY/

Sent from my iPhone

> On Apr 23, 2020, at 11:59 PM, guowang qiu via USRP-users <usrp-users@lists=
.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hi all,
>=20
> I am trying to connect my E310 (sg1) to the internet with a WIFI Dongle (r=
tl8192cu). Is there anyone knows how to connect the device to the network?
>=20
> I am using the sd image of http://files.ettus.com/e3xx_images/alpha/fido-t=
est/
>=20
> I followed the instructions below:
>=20
> Using this entry in /etc/network/interfaces
>=20
> # Wireless interfaces
> iface wlan0 inet dhcp
>         wireless_mode managed
>         wireless_essid any
>         wpa-driver nl80211
>         wpa-conf /etc/wpa_supplicant.conf
>=20
> and the correct info for the access point in /etc/wpa_supplicant.conf
>=20
> The dongle could find the WIFI AP. But it just doesn't connect, not IP add=
ress is assigned.
>=20
> Best regards,
>=20
> Damon
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-0EFFFCA7-1CFC-4ADB-B669-1EB424F8BE3E
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">This system image has been tested with WiFi=
 dongles<div><br></div><div><a href=3D"https://files.ettus.com/e3xx_images/e=
3xx-release-4/">https://files.ettus.com/e3xx_images/e3xx-release-4/</a><div>=
<br></div><div>Specifically this device</div><div><a href=3D"https://www.ama=
zon.com/Edimax-EW-7811Un-150Mbps-Raspberry-Supports/dp/B003MTTJOY/">https://=
www.amazon.com/Edimax-EW-7811Un-150Mbps-Raspberry-Supports/dp/B003MTTJOY/</a=
></div><div><div><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"l=
tr"><br><blockquote type=3D"cite">On Apr 23, 2020, at 11:59 PM, guowang qiu v=
ia USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br></blockquote>=
</div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><=
p>Hi all,</p>
<p>I am trying to connect my E310 (sg1) to the internet with a WIFI=20
Dongle (rtl8192cu). Is there anyone knows how to connect the device to=20
the network?</p>
<p>I am using the sd image of <a href=3D"http://files.ettus.com/e3xx_images/=
alpha/fido-test/">http://files.ettus.com/e3xx_images/alpha/fido-test/</a></p=
>
<p>I followed the instructions below:<br>
  <br>
Using this entry in /etc/network/interfaces<br>
  <br>
# Wireless interfaces<br>
iface wlan0 inet dhcp<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wireless_mode managed<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wireless_essid any<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wpa-driver nl80211<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wpa-conf /etc/wpa_supplicant.conf=
<br>
  <br>
and the correct info for the access point in /etc/wpa_supplicant.conf</p>
<p>The dongle could find the WIFI AP. But it just doesn't connect, not IP ad=
dress is assigned.<br>
</p>
<p>Best regards,</p>
<p>Damon</p></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></div></div></body></html>=

--Apple-Mail-0EFFFCA7-1CFC-4ADB-B669-1EB424F8BE3E--


--===============8318352737561291303==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8318352737561291303==--

