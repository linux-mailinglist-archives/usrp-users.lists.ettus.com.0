Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D2312D59F
	for <lists+usrp-users@lfdr.de>; Tue, 31 Dec 2019 02:53:08 +0100 (CET)
Received: from [::1] (port=56666 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1im6iU-0005fl-6A; Mon, 30 Dec 2019 20:53:02 -0500
Received: from mail-pf1-f180.google.com ([209.85.210.180]:45630)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <qiu.guowang007@gmail.com>)
 id 1im6iQ-0005bV-UO
 for usrp-users@lists.ettus.com; Mon, 30 Dec 2019 20:52:59 -0500
Received: by mail-pf1-f180.google.com with SMTP id 2so19069027pfg.12
 for <usrp-users@lists.ettus.com>; Mon, 30 Dec 2019 17:52:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:mime-version:subject:date:from:to:cc;
 bh=V5DfVfIilztlka8/BctuHG51xmmwaARTkEhhA0l/XU4=;
 b=iTnyiK6cfBuQUaih2cfAjhr68zRFgoEGKoPwEL3qCmrA+F8KTyNZbkPF2OFTmhmpAn
 x+TtZzlgSL6k8RukJfogI+MdCHe14HeuVUQOR5x+Dh/A/rIy3BdjSjPllmj5y2QnNvqy
 mYm/zus2fZ2qkfZZlUnTiFehuA0locnN3zAeMMRSZOlXOSrQyS7ssFaIt2e/CrXV4Ern
 1TlwBGjiD6Mj8E2/7f73Gp5w6CBhED4WgIciUFHolKYBzcx/XICshGumt9x4UiiYLS8H
 cNIQ5y8/PCbu/gg0+csHIYMsPn/DUsTFHvoopjEjSQzajvLYC7FlWQV4Pf0v86mgctub
 0jKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version:subject:date:from:to:cc;
 bh=V5DfVfIilztlka8/BctuHG51xmmwaARTkEhhA0l/XU4=;
 b=KWBDrGTHZRwhw9gBWAw5EQQMSO9V9AHhHfSLk2V8KYHW82gp9Qqh+Hf0Fy0VxpUn4R
 M/h+UpCZhjfbO0RJQT2QJCLM8Mv3D+wtuPKWRVeRZIzpZ5w/b+nDN7ODz3nJgJQKhsp3
 yy3LSLcMrEeB9XFC6PVlTYFn/wQb+bUP3MvtqpQsBfm3vY4UbAHbL5BOjULCQTnNP7C/
 PedvmW96kprsW+bI8ueyHsYv+5EpGMhJn3RfL0RYnuUeJJHfd43Xx0clQ6j6JyneLc8E
 Fwlc6cBPw8UWPGxsJZP/b8784kxXbkz3NIjeBMxusdnQ+SlgoZZh9f7FWHl85c9KPStL
 wBTA==
X-Gm-Message-State: APjAAAUjn8KEiahtRv28+WkqIdWXvSwUThzTIMEzAic9ZeSpT5vOchtF
 Ky4v3yECM8q+5++tlSqY2CU=
X-Google-Smtp-Source: APXvYqzmoTcwy+66xjgmxGb5oRrKoQmvu5+aTxWS4MDJtrAGtQLKOYG0PY7VUp10ZZgEQdDtzl+WUw==
X-Received: by 2002:a63:5062:: with SMTP id q34mr62680054pgl.378.1577757137985; 
 Mon, 30 Dec 2019 17:52:17 -0800 (PST)
Received: from localhost (smtpbg516.qq.com. [203.205.250.54])
 by smtp.gmail.com with ESMTPSA id g67sm50931984pfb.66.2019.12.30.17.52.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 30 Dec 2019 17:52:17 -0800 (PST)
Message-ID: <5e0aa9d1.1c69fb81.831df.5e01@mx.google.com>
Mime-Version: 1.0
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
Date: Tue, 31 Dec 2019 09:52:14 +0800 (GMT+08:00)
To: =?UTF-8?B?RXR0dXMgUmVzZWFyY2ggU3VwcG9ydA==?=<support@ettus.com>
Subject: Re: [USRP-users] DPDK 18.11
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
From: "qiu.guowang007@gmail.com via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?cWl1Lmd1b3dhbmcwMDdAZ21haWwuY29t?=
 <qiu.guowang007@gmail.com>
Cc: =?UTF-8?B?dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20=?=
 <usrp-users@lists.ettus.com>,
 =?UTF-8?B?RGFtb24gUWl1?= <qiu.guowang007@gmail.com>
Content-Type: multipart/mixed; boundary="===============6484370575479669650=="
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

--===============6484370575479669650==
Content-Type: multipart/alternative; 
	boundary="----=_Part_1_204699866.1577757135553"

------=_Part_1_204699866.1577757135553
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: base64


------=_Part_1_204699866.1577757135553
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: base64

PGRpdj5IaSBTYW0sPC9kaXY+PGRpdj5UaGFuayB5b3UgZm9yIHlvdXIgcmVwbHkuPC9kaXY+PGRp
dj5XaGVuIGlzIGl0IGV4cGVjdGVkIHRoYXQgdGhlIDQuMCB2ZXJzaW9uIG9mIFVIRCBzdXBwb3J0
aW5nIGRwZGsgd2lsbCBiZSByZWxlYXNlZD88YnI+PC9kaXY+PGRpdj5CZXN0IHJlZ2FyZHMsPC9k
aXY+PGRpdj5EYW1vbjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+PCEtLWVtcHR5c2lnbi0tPjwv
ZGl2PjxkaXY+PGRpdiBzdHlsZT0iZm9udC1zaXplOjEycHg7cGFkZGluZzoycHggMDsiPi0tLU9y
aWdpbmFsLS0tPC9kaXY+PGRpdiBzdHlsZT0iZm9udC1zaXplOjEycHg7YmFja2dyb3VuZDojZjBm
MGYwO2NvbG9yOiMyMTIxMjE7cGFkZGluZzo4cHghaW1wb3J0YW50O2JvcmRlci1yYWRpdXM6NHB4
O2xpbmUtaGVpZ2h0OjEuNTsiPjxkaXY+PGI+RnJvbTo8L2I+ICJFdHR1cyBSZXNlYXJjaCBTdXBw
b3J0IiZsdDtzdXBwb3J0QGV0dHVzLmNvbSZndDs8L2Rpdj48ZGl2PjxiPkRhdGU6PC9iPiBUdWUs
IERlYyAzMSwgMjAxOSAwNDozMyBBTTwvZGl2PjxkaXY+PGI+VG86PC9iPiAiRGFtb24gUWl1IiZs
dDtxaXUuZ3Vvd2FuZzAwN0BnbWFpbC5jb20mZ3Q7OzwvZGl2PjxkaXY+PGI+Q2M6PC9iPiAidXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iJmx0O3VzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tJmd0
Ozs8L2Rpdj48ZGl2PjxiPlN1YmplY3Q6PC9iPiBSZTogW1VTUlAtdXNlcnNdIERQREsgMTguMTE8
L2Rpdj48L2Rpdj48YnI+PGRpdiBkaXI9Imx0ciI+PGRpdiBjbGFzcz0iZ21haWxfZGVmYXVsdCIg
c3R5bGU9ImZvbnQtZmFtaWx5OnZlcmRhbmEsc2Fucy1zZXJpZiI+RGFtb24sPC9kaXY+PGRpdiBj
bGFzcz0iZ21haWxfZGVmYXVsdCIgc3R5bGU9ImZvbnQtZmFtaWx5OnZlcmRhbmEsc2Fucy1zZXJp
ZiI+PGJyPjwvZGl2PjxkaXYgY2xhc3M9ImdtYWlsX2RlZmF1bHQiIHN0eWxlPSJmb250LWZhbWls
eTp2ZXJkYW5hLHNhbnMtc2VyaWYiPkNvbXBhdGliaWxpdHkgd2l0aCBEUERLIDE4LjExIHNob3Vs
ZCBiZSBpbmNsdWRlZCBpbiBVSEQgNC4wLCBidXQgYXMgb2YgcmlnaHQgbm93IHRoZXJlIGFyZW4n
dCBhbnkgcHVibGljbHkgYXZhaWxhYmxlIGJyYW5jaGVzIGNvbXBhdGlibGUgd2l0aCBEUERLIDE4
LjExLjwvZGl2PjxkaXYgY2xhc3M9ImdtYWlsX2RlZmF1bHQiIHN0eWxlPSJmb250LWZhbWlseTp2
ZXJkYW5hLHNhbnMtc2VyaWYiPjxicj48L2Rpdj48ZGl2IGNsYXNzPSJnbWFpbF9kZWZhdWx0IiBz
dHlsZT0iZm9udC1mYW1pbHk6dmVyZGFuYSxzYW5zLXNlcmlmIj4tU2FtPGJyPjwvZGl2PjwvZGl2
Pjxicj48ZGl2IGNsYXNzPSJnbWFpbF9xdW90ZSI+PGRpdiBkaXI9Imx0ciIgY2xhc3M9ImdtYWls
X2F0dHIiPk9uIE1vbiwgRGVjIDMwLCAyMDE5IGF0IDEwOjMxIEFNIERhbW9uIFFpdSB2aWEgVVNS
UC11c2VycyAmbHQ7PGEgaHJlZj0ibWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIj51
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7IHdyb3RlOjxicj48L2Rpdj48YmxvY2tx
dW90ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0eWxlPSJib3JkZXItbGVmdDogMXB4IHNvbGlkIHJn
YigyMDQsIDIwNCwgMjA0KTsgbWFyZ2luOiAwcHggMHB4IDBweCA3LjE4NTE2cHg7IHBhZGRpbmc6
IDE0cHggMTZweCAxNHB4IDguOTgxNDVweDsgY29sb3I6IHJnYigxNDksIDE0OSwgMTQ5KTsgYmFj
a2dyb3VuZC1jb2xvcjogcmdiKDI0NSwgMjQ2LCAyNTApOyI+PGRpdj48YnI+PGRpdj5IaSBhbGws
PC9kaXY+PGRpdj5JcyB0aGVyZSBhbnlvbmUga25vd3Mgd2hpY2ggdWhkIGJyYW5jaCBzdXBwb3J0
cyBEUERLIDE4LjExPyBNeSBuZXR3b3JrIGNhcmQgbmVlZHMgdG8gdXNlIHRoaXMgRFBESyB2ZXJz
aW9uLjwvZGl2PjxkaXY+SSBoYXZlIHRyaWVkIG1hc3Rlci1uZXh0IGJyYW5jaCwgYnV0IGEgd2Fy
bmluZyBhcHBlYXJzOiAiRGV0ZWN0ZWQgdXNlX2RwZGsgYXJndW1lbnQsIGJ1dCBEUERLIHN1cHBv
cnQgbm90IGJ1aWx0IGluLiI8L2Rpdj48ZGl2PkJlc3QgcmVnYXJkcyw8L2Rpdj48ZGl2PkRhbW9u
PC9kaXY+PGJyPjxicj48YnI+PGJyPjwvZGl2PjxkaXY+PC9kaXY+X19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX188YnI+ClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
PGJyPgo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0i
X2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+CjxhIGhyZWY9Imh0dHA6
Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVz
LmNvbSIgcmVsPSJub3JlZmVycmVyIiB0YXJnZXQ9Il9ibGFuayI+aHR0cDovL2xpc3RzLmV0dHVz
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tPC9hPjxicj4K
PC9ibG9ja3F1b3RlPjwvZGl2Pgo8L2Rpdj4=
------=_Part_1_204699866.1577757135553--


--===============6484370575479669650==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6484370575479669650==--

