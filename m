Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F421B814B8
	for <lists+usrp-users@lfdr.de>; Mon,  5 Aug 2019 11:07:02 +0200 (CEST)
Received: from [::1] (port=43396 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1huYxI-0002Gs-O1; Mon, 05 Aug 2019 05:07:00 -0400
Received: from mail-ot1-f71.google.com ([209.85.210.71]:50732)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <mikio@dolphinsystem.jp>)
 id 1huYxF-0002BO-2Y
 for usrp-users@lists.ettus.com; Mon, 05 Aug 2019 05:06:57 -0400
Received: by mail-ot1-f71.google.com with SMTP id a21so45830082otk.17
 for <usrp-users@lists.ettus.com>; Mon, 05 Aug 2019 02:06:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dolphinsystem-jp.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=BhoU2idBsPSLTTeu53onk3eunDdKoTvZfqcjIxbnw8E=;
 b=nlCuFVg884IhOZf9Wlo5OHygrThj1kfJac/2++VmKY7nAIkjUD+msMChIup7SYqM7s
 2UNaHYFCbE4ay0uKMqSF++M+b1x6nykHObqqS6t78Lum1VGUqh3O+aljP0PRuXWb2iF9
 c3l0cfTppaZTFP8yQGkvanbEOO5TzmgLZnvgzY2vSXXN+LUmwcAM5nYuYgvy7wcM93fV
 MBZ6dEK3LBzvvCg4L/gAMcm3ZOV8N+q/apBFdcogj6IQn6/PpSPYTUBj+l1Uz86pYqHI
 qQQYjpcNW9M5g2ZM3A2X9qrcr3VM/YfoKBRQrHm9ZM27496PbivSzS9s6kcclQ0fqWqD
 V+Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=BhoU2idBsPSLTTeu53onk3eunDdKoTvZfqcjIxbnw8E=;
 b=YPkNsgDu3dQyhwzg5XGl50YSyTsNKQhjOLR3PNAvrlP3SCpnFxYIouaoryjEoH9lgQ
 S/cXbmelh0xclJSQS9NVj1Bs5/jz02vnRNUiQQNgcoHPT4c4eMcdhEQfw4xG11OLMLQ4
 K7WIhtCWZT4hHAzrKSWSWFbWEqobUdzYWD9EUGDl89DjRzKulWzY3baldad9juQfvoFV
 EsKN+K/6NYIU+2qpK2vkzgRFpryEFXtG0x/VOh9YLfhN5J3QZW4kPp+6Seg+iwsQIhqh
 yx7v3amkGhD4V3wrqGDZrQQIUmXHTqASO/iNvIsH8G6HPPDrQHZkUeMZoT5FuMlAZVu3
 u0PQ==
X-Gm-Message-State: APjAAAX6yZgt11+wxRrrL/Hy8quXyMlSHFRDAJ1cp0NRKi2YyTI0O/3y
 V7vX1DQN+VW6hoebf4cFCIN7l4O+eLsZgR1VZZsaSvR0gkA=
X-Google-Smtp-Source: APXvYqwqhKpieL2mr0eIvqQVJsQJTipxza294bXt8HlAjViDVU4c8iPGcZtFgBp13KNlhb2Qrvo6KuuefMJXWaVgFps=
X-Received: by 2002:a9d:c22:: with SMTP id 31mr46043804otr.48.1564995975592;
 Mon, 05 Aug 2019 02:06:15 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 5 Aug 2019 18:05:40 +0900
Message-ID: <CABfZwcfUtdirTnveh3KHC9wsW=cVT+u15f_GHNuj5zrsi=4i6Q@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] Short PCI Express link cable for X310
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
From: =?utf-8?b?56aP5bO25bm56ZuEIHZpYSBVU1JQLXVzZXJz?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?56aP5bO25bm56ZuE?= <mikio@dolphinsystem.jp>
Content-Type: multipart/mixed; boundary="===============4151473340625401646=="
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

--===============4151473340625401646==
Content-Type: multipart/alternative; boundary="000000000000335214058f5b0528"

--000000000000335214058f5b0528
Content-Type: text/plain; charset="UTF-8"

Hi

PCI express cable for X310 with PCI-Express Connectivity Kit is 3.0m long.
often it's too long.
Is there short cable or compatible cable?

Regards,

--000000000000335214058f5b0528
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">Hi<div><br></div><div>PCI express cable for X310 with PCI-Express Connectivity Kit is 3.0m long. often it&#39;s too long.<br>Is there short cable or compatible cable?<br></div><div><br></div><div>Regards,</div></div>

--000000000000335214058f5b0528--


--===============4151473340625401646==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4151473340625401646==--

