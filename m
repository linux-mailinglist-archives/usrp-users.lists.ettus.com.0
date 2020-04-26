Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8161B92AB
	for <lists+usrp-users@lfdr.de>; Sun, 26 Apr 2020 20:13:25 +0200 (CEST)
Received: from [::1] (port=41284 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jSlmL-0001UV-3n; Sun, 26 Apr 2020 14:13:21 -0400
Received: from mail-qk1-f169.google.com ([209.85.222.169]:39803)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <qiu.guowang007@gmail.com>)
 id 1jSlmH-0001Pe-1J
 for USRP-users@lists.ettus.com; Sun, 26 Apr 2020 14:13:17 -0400
Received: by mail-qk1-f169.google.com with SMTP id o135so3436526qke.6
 for <USRP-users@lists.ettus.com>; Sun, 26 Apr 2020 11:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wF8EgKFozy34gKCX19SK/hzYXdv2wpvVqLEhNk8d3U4=;
 b=n47sAHArzLkLvW2YOC7uazmeptt9BycNz528tdwuszGLFbTgT/IhLHgIXh/2o4NLc4
 9fA75hq7llzUBOuwIGHBULCdQOIWTKKx6zXizSkq3LKAq5ayt4YLZFxKZpQtqClzrn/y
 82zYY+pprdDec1XX4DDF7wgLtXB3bp5O5y0QDpe03b/S9OfY6T9siwdDULDnlg8Dk8Bc
 wODFPt65dAGR9gdnwF1MIHgrQRXFQ4TOrQT2I4Dg9h+be2Bd013NQOGHD2wgsS1GPjd/
 l1W9CyyunLCqJE+rHTr+kGVJ9GGgErJictw6NM0RZZIokZL4dm8U0P/W8dSEWcCfZ9c2
 N3JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wF8EgKFozy34gKCX19SK/hzYXdv2wpvVqLEhNk8d3U4=;
 b=ozcoeZJo4z/W9ZupK4pEgZ/Yh947ch3Ez4niR9wEWHLhYpr7pe59TZXc3RMbOglSPQ
 sX2wBBNXyZaN1SuOo5AXQ2eN31ZoDbNAjdoD1reQlQKD2yslP72enDTCbNqGtL41YYBG
 qlIrcHS4yX2AHliEXKDCnzzqnW5NNrdGEYRIk2Uy4fCC/UHplZhNvboOSJ27KjyQZDzd
 HLHWLWLyfuAm6vumdtAjqUpX2nA67v032Xp+imNMiZpcvpN2EP4AJ+gEtRNEOZk7fBPr
 C8lwOuBSMuiXwgdnI4UFws476GmvJ/m79f+moj4Ktre+xcqP1Mj3HEvXZE24O5QVqhjy
 LQEQ==
X-Gm-Message-State: AGi0PubzkcJ8OEhZZwV8w8fOANJFcWef2Ga0Pa+03maSGLeEbg53GHsq
 KCLv8Nz4XQrPm+LPC94RXkIbpF3HzhXkRJm3r9trzZBl
X-Google-Smtp-Source: APiQypLIj1y2rMzARKlgZ8RPcjBTnJeRF+Sd6yM8hma1tsz58cT2pyf8HCOr0s8C38KVHKYCN57UWokZ8kfR9+sbu9w=
X-Received: by 2002:a05:620a:15e8:: with SMTP id
 p8mr18663945qkm.331.1587924756473; 
 Sun, 26 Apr 2020 11:12:36 -0700 (PDT)
MIME-Version: 1.0
References: <CACjmV_nS5aDKkv-cXWf+=ULdBAf7owptRXoRPAt=D2Tu+82hOA@mail.gmail.com>
 <7EF3F406-1653-4921-A5F9-389149BDFAA7@gmail.com>
In-Reply-To: <7EF3F406-1653-4921-A5F9-389149BDFAA7@gmail.com>
Date: Mon, 27 Apr 2020 02:12:25 +0800
Message-ID: <CACjmV_=DF1CQLo=38SZi6iEwckJ61JPxYxmfh1+yGOXKst1RjQ@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
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
From: guowang qiu via USRP-users <usrp-users@lists.ettus.com>
Reply-To: guowang qiu <qiu.guowang007@gmail.com>
Cc: USRP-users@lists.ettus.com, Damon Qiu <qiu.guowang007@gmail.com>
Content-Type: multipart/mixed; boundary="===============7198305942908205237=="
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

--===============7198305942908205237==
Content-Type: multipart/alternative; boundary="0000000000000a33b905a4358b67"

--0000000000000a33b905a4358b67
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

It works. Thank you for your help.

Best regards,
Damon

On Sat, 25 Apr 2020 at 01:55, Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> This system image has been tested with WiFi dongles
>
> https://files.ettus.com/e3xx_images/e3xx-release-4/
>
> Specifically this device
>
> https://www.amazon.com/Edimax-EW-7811Un-150Mbps-Raspberry-Supports/dp/B00=
3MTTJOY/
>
> Sent from my iPhone
>
> On Apr 23, 2020, at 11:59 PM, guowang qiu via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> =EF=BB=BF
>
> Hi all,
>
> I am trying to connect my E310 (sg1) to the internet with a WIFI Dongle
> (rtl8192cu). Is there anyone knows how to connect the device to the netwo=
rk?
>
> I am using the sd image of
> http://files.ettus.com/e3xx_images/alpha/fido-test/
>
> I followed the instructions below:
>
> Using this entry in /etc/network/interfaces
>
> # Wireless interfaces
> iface wlan0 inet dhcp
>         wireless_mode managed
>         wireless_essid any
>         wpa-driver nl80211
>         wpa-conf /etc/wpa_supplicant.conf
>
> and the correct info for the access point in /etc/wpa_supplicant.conf
>
> The dongle could find the WIFI AP. But it just doesn't connect, not IP
> address is assigned.
>
> Best regards,
>
> Damon
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--0000000000000a33b905a4358b67
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Marcus,<div><br></div><div>It works. Thank you for your=
 help.</div><div><br></div><div>Best regards,</div><div>Damon</div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, =
25 Apr 2020 at 01:55, Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gm=
ail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"auto">This system image has be=
en tested with WiFi dongles<div><br></div><div><a href=3D"https://files.ett=
us.com/e3xx_images/e3xx-release-4/" target=3D"_blank">https://files.ettus.c=
om/e3xx_images/e3xx-release-4/</a><div><br></div><div>Specifically this dev=
ice</div><div><a href=3D"https://www.amazon.com/Edimax-EW-7811Un-150Mbps-Ra=
spberry-Supports/dp/B003MTTJOY/" target=3D"_blank">https://www.amazon.com/E=
dimax-EW-7811Un-150Mbps-Raspberry-Supports/dp/B003MTTJOY/</a></div><div><di=
v><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><block=
quote type=3D"cite">On Apr 23, 2020, at 11:59 PM, guowang qiu via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-=
users@lists.ettus.com</a>&gt; wrote:<br><br></blockquote></div><blockquote =
type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><p>Hi all,</p>
<p>I am trying to connect my E310 (sg1) to the internet with a WIFI=20
Dongle (rtl8192cu). Is there anyone knows how to connect the device to=20
the network?</p>
<p>I am using the sd image of <a href=3D"http://files.ettus.com/e3xx_images=
/alpha/fido-test/" target=3D"_blank">http://files.ettus.com/e3xx_images/alp=
ha/fido-test/</a></p>
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
<span>_______________________________________________</span><br><span>USRP-=
users mailing list</span><br><span><a href=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank">USRP-users@lists.ettus.com</a></span><br><span><a h=
ref=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" =
target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.=
ettus.com</a></span><br></div></blockquote></div></div></div></div></blockq=
uote></div>

--0000000000000a33b905a4358b67--


--===============7198305942908205237==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7198305942908205237==--

