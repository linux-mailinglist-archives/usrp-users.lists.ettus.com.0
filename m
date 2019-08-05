Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E7C817FD
	for <lists+usrp-users@lfdr.de>; Mon,  5 Aug 2019 13:17:07 +0200 (CEST)
Received: from [::1] (port=37918 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1huazB-0001SS-H6; Mon, 05 Aug 2019 07:17:05 -0400
Received: from mail-wm1-f54.google.com ([209.85.128.54]:54095)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1huaz8-0001Nv-5p
 for usrp-users@lists.ettus.com; Mon, 05 Aug 2019 07:17:02 -0400
Received: by mail-wm1-f54.google.com with SMTP id x15so74353783wmj.3
 for <usrp-users@lists.ettus.com>; Mon, 05 Aug 2019 04:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:user-agent
 :mime-version:content-transfer-encoding;
 bh=y24ydB5GSRca2QzaQ/g21nDYgY6dt43MvKEK0+rkiFU=;
 b=m8113+s2ETyXz0fSW8T9UrOlrktkTEmmU7TZ3kF3Q6ifFsW6sbSj+tlhvcU4EYJKDd
 eY+J0QakfQPEBXZ0LwhQqnW11dSDbNebnTvGhQbOmFR2gdSvpGly74VWz/5hw4+x84EZ
 ihu58izrI6ZWfPbiRWvtLdqKMKYN6EHYL8dXShz49zzydcvB62XHiRzHRfi+WXOrXeWC
 0s1588wQEWzrmW6zxj82blPdrVoe20msye5q/j9c++z5LJN22AqAXVpvbngHmi9oBMlQ
 hWU7guffjTM3D9G3qhnQKxlKejFwOSSxWfk5qcCSg2cOwlcY/VTspc+sVdiIPmpzPxRl
 2Wrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=y24ydB5GSRca2QzaQ/g21nDYgY6dt43MvKEK0+rkiFU=;
 b=Lr32XAGwG/mCaGG9pr5t1QcJ9sW72pQhLr/PX4FTiGtmHf6M1BiqDUVPUWXhqCLda9
 OvVIfc0hoZ5xqEaHeepgiwJRlCAdQm7f5Ed3NpjedKdreVnTDxtNkUOvfgfyFCLSyLUT
 JeGJtT+2+f4HMABBv/VNP/rA8NKp86WzC2n805h10Jfp7aFhEZFQN+Fogn6061uo56lE
 aI4RIwd2U4wuLGYUj1M3gusxtaY7BC/cyRRSeL1G92AebhYiyGluWf5phOTSgxOtnpMc
 D5j/KiTIUa6x3TLZXTccPF6MC8BKu1NRfRi3x9/DNAQ0+bMPxhTGQ7QOnVAn+p4E9aJN
 wmCA==
X-Gm-Message-State: APjAAAU6/UWDz/OZ5bnvfZowPfi2e5zrBXh2lq5CS6C+qZX/H1h6m3T1
 WSYEBf1JTH/4BVVrNEDn5HlkmhwdIIuvWA==
X-Google-Smtp-Source: APXvYqwensKieDjcHOXq9NITuW6L2ANblc20Q9avo4EwIpsxlcskNbDv3JNZE6/TUNJjMlPRbYD7eg==
X-Received: by 2002:a05:600c:2117:: with SMTP id
 u23mr18406972wml.117.1565003780988; 
 Mon, 05 Aug 2019 04:16:20 -0700 (PDT)
Received: from workhorse.lan
 (HSI-KBW-46-223-151-10.hsi.kabel-badenwuerttemberg.de. [46.223.151.10])
 by smtp.googlemail.com with ESMTPSA id
 b203sm120534252wmd.41.2019.08.05.04.16.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 04:16:19 -0700 (PDT)
Message-ID: <6bea3f0ba01bb41cc9b656fdf53fcfc068944a1b.camel@ettus.com>
To: =?UTF-8?Q?=E7=A6=8F=E5=B3=B6=E5=B9=B9=E9=9B=84?=
 <mikio@dolphinsystem.jp>,  "USRP-users@lists.ettus.com"
 <usrp-users@lists.ettus.com>
Date: Mon, 05 Aug 2019 13:16:18 +0200
In-Reply-To: <CABfZwcfUtdirTnveh3KHC9wsW=cVT+u15f_GHNuj5zrsi=4i6Q@mail.gmail.com>
References: <CABfZwcfUtdirTnveh3KHC9wsW=cVT+u15f_GHNuj5zrsi=4i6Q@mail.gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Subject: Re: [USRP-users] Short PCI Express link cable for X310
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: Marcus =?ISO-8859-1?Q?M=FCller?= <marcus.mueller@ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
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

RnJvbSB0aGUgUENJZS04MzcxIGNhcmQgZG9jdW1lbnRhdGlvbjoKCj4gPiBXaGF0IGNvbm5lY3Rv
cnMgZG8gdGhlIE5JIE1YSS1FeHByZXNzIHg0IGNvcHBlciBjYWJsZXMgdXNlPwo+IFRoZSBOSSBN
WEktRXhwcmVzcyB4NCBjb3BwZXIgY2FibGVzIHVzZSB4NCBQQ0kgRXhwcmVzcyBjb25uZWN0b3Jz
Lgo+IEZvciBtb3JlIGluZm9ybWF0aW9uIGFib3V0IHRoZXNlIGNvbm5lY3RvcnMsIHZpc2l0IE1v
bGV4IGF0Cj4gd3d3Lm1vbGV4LmNvbSBhbmQgc2VhcmNoIGZvciB4NCBQQ0llIGlQYXNzLgoKCkJl
c3QgcmVnYXJkcywKTWFyY3VzCgpPbiBNb24sIDIwMTktMDgtMDUgYXQgMTg6MDUgKzA5MDAsIOem
j+WztuW5uembhCB2aWEgVVNSUC11c2VycyB3cm90ZToKPiBIaQo+IAo+IFBDSSBleHByZXNzIGNh
YmxlIGZvciBYMzEwIHdpdGggUENJLUV4cHJlc3MgQ29ubmVjdGl2aXR5IEtpdCBpcyAzLjBtCj4g
bG9uZy4gb2Z0ZW4gaXQncyB0b28gbG9uZy4KPiBJcyB0aGVyZSBzaG9ydCBjYWJsZSBvciBjb21w
YXRpYmxlIGNhYmxlPwo+IAo+IFJlZ2FyZHMsCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+IFVTUlAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tCj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZv
L3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
