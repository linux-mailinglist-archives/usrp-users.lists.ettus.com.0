Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E969B2C94E7
	for <lists+usrp-users@lfdr.de>; Tue,  1 Dec 2020 02:57:17 +0100 (CET)
Received: from [::1] (port=42568 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kjuun-00045S-IG; Mon, 30 Nov 2020 20:57:13 -0500
Received: from mail-yb1-f198.google.com ([209.85.219.198]:49058)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mikio@dolphinsystem.jp>)
 id 1kjuuj-00041i-6p
 for usrp-users@lists.ettus.com; Mon, 30 Nov 2020 20:57:09 -0500
Received: by mail-yb1-f198.google.com with SMTP id u37so519731ybi.15
 for <usrp-users@lists.ettus.com>; Mon, 30 Nov 2020 17:56:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dolphinsystem-jp.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=3CNebSe9QyDfYqxF39qvYMbrCn2pLdeq9yO09xuH2Zg=;
 b=ragvrZ/fGp3rS5yxeX9RFKRzRNfPQZ0CjjOUjCFCl7/Hxwd2qdbNFuDdtvIJIKhTS/
 7ZpCd95z6e+qvv3jESiE0vGXg2q8I9uRRk8Hg2W0wMdlYTYgUBCa6AwrueLyPHJiAUJ6
 UawAIexmms0xIhkKSjloYeXQsz+aEtBElWeqzTR6xgiuiXP8YoMYOUwXd3F0IHtsVRL6
 6ING5/HDWQ1nESGlcogOqBWHJFsaR6N5xb9qU+0MR0ZfhNBlzTA0Q1TWny7f86ly5MV2
 S7k0tlVgml0BSbbbnNglHqpvUbJEBaCGE+of08F+rKFeuYZ2QNXaqCKhYauQEzQ8JrNb
 +vvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=3CNebSe9QyDfYqxF39qvYMbrCn2pLdeq9yO09xuH2Zg=;
 b=Vs4KMhDhL+KXXvaL6TxBY8jIh5xdo1G4stG8Owtg+kDGHl3Am1NqrCVWtWPfu22DUW
 At8bREiOVjEski8WwGxc6kIDyd3ZB3T12Qx4+cluhySXzmDF+AWjSXbUMU8mU5Iqe8Kc
 KojAZKQTHxHnIPg/fwxz82rJmB8hP4TQwFXzyg/OZLmvjNfR5qDUtUIJUll+i58uEcIS
 u99tW9iOnERgjPl2jeLet0UXwxN92ZFcv2+PAQJmD7GbMCq2U2FV988ZBlBRDg8CSZ4e
 GxssyAL4m0A5h9uaKldifSEbYS+BMF6zHb+Z6+i3FPhshIaFMqvnTZIcB56DUPvT9hJV
 3vKA==
X-Gm-Message-State: AOAM531Rk0GZ22FgOz/rYpiPlzSP/Bl3ccFBBqaRWAqYEQQqRsLzI6Bv
 S7pPELX9MYTvZdfICHpe1dFemGrSXfZ7dSRedi2P746QzLgBCQ==
X-Google-Smtp-Source: ABdhPJyfQGRVjLZRnyh/Rdj8Qlk0PsbN6dJg2BtgbPDk31sC1OrOlL8epGAYJQ+0yXgP0P5lwKNpRW7AzSAPMEP1EIY=
X-Received: by 2002:a25:cbd6:: with SMTP id b205mr550503ybg.141.1606787787973; 
 Mon, 30 Nov 2020 17:56:27 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 1 Dec 2020 10:55:52 +0900
Message-ID: <CABfZwcdtAKu7rtAu=6yLB4WJY1Amt2svXjF7zygULdLEhKZmCA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] Can I detect a wiretype of USB device?
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
From: Mikio Fukushima via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mikio Fukushima <mikio@dolphinsystem.jp>
Content-Type: multipart/mixed; boundary="===============6963830912309039840=="
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

--===============6963830912309039840==
Content-Type: multipart/alternative; boundary="00000000000054fac305b55d6f5a"

--00000000000054fac305b55d6f5a
Content-Type: text/plain; charset="UTF-8"

Hi,

I use a B200 and B200mini.
Often they are connected under USB 2.0 ports, it will cause some problems.
Can I detect a wire type of USB device by UHD API?

Mikio

--00000000000054fac305b55d6f5a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<div><br>I use a B200 and B200mini.<br>Often they=
 are connected under USB 2.0 ports, it will cause some problems.<br>Can I d=
etect a wire type of USB device by UHD API?<br></div><div><br></div><div>Mi=
kio</div></div>

--00000000000054fac305b55d6f5a--


--===============6963830912309039840==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6963830912309039840==--

