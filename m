Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 330A0B449E9
	for <lists+usrp-users@lfdr.de>; Fri,  5 Sep 2025 00:47:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 02EB938688D
	for <lists+usrp-users@lfdr.de>; Thu,  4 Sep 2025 18:47:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1757026054; bh=nNDS/L7vnuWc6IEUvtLFw9zq9PmiuBc1AZpXhgzjmXc=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=axRxB/xfw0wcUPeZplXGCnL34PtpDV4IsnpjSVH7kKWvIVG4/vrTHZYLXfvrAr1+W
	 xlIdMVHFPj63jYATjpe+lQtmOG6krATMSo3pW315REyz0O7VfO1W9vEfQhYnz1qTSB
	 6NWgY39W6i7A10Y7winlqdy8BkDBmoKWekd8VqV4Yv8ZYBdZtUIfaHt4Fm3Ctq9AoT
	 0bkX+kYDSAgCP33M9VgVN5eYt+Y+Vlif0HjCFc1isam5npryTge4PL9OorK2Vyp7pC
	 hoFgrAMJyCQAyaJklPUS8ZQswNfdI7wX04vPHfbabJ5PJOJBmwOZalbpgtDNbkfiGC
	 OVIKO3CRthp+w==
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	by mm2.emwd.com (Postfix) with ESMTPS id BD16F386660
	for <usrp-users@lists.ettus.com>; Thu,  4 Sep 2025 18:47:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=yale.edu header.i=@yale.edu header.b="rv0lEoN2";
	dkim-atps=neutral
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-324e6daaa39so1483770a91.0
        for <usrp-users@lists.ettus.com>; Thu, 04 Sep 2025 15:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=yale.edu; s=googleprd; t=1757026035; x=1757630835; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=k7yKUk3u9YQNNzicptpxUm2G3iyNslh75Ztv2Mze09A=;
        b=rv0lEoN2dGxOtXY+efMr9Y0uP/6v94m4nicfFdYEK3d2Dk5WUU+VDed+Wenzf4nHqx
         GxuwohwY5Ikvy13TWF7ODt8Nb+xebG6z8EiE6FeDP+C/66uq8MQJb5EhITfUjwATkNie
         mqcCLmJfwXl+8n9XLC4lM79qcnyLhTfVR6iPY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757026035; x=1757630835;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k7yKUk3u9YQNNzicptpxUm2G3iyNslh75Ztv2Mze09A=;
        b=DO5QYH6TI7lWyVK1QfOTv0XRbFRRDNg4dQnzZUW9Kc5g2tglLYO4k65cSbndR+F96D
         sunHgQvDKGN+XUmBPrDgBpnPERZXz/oKrQqbtSF+yaxk0C4Slxe/58D6WoUIBzFOajgk
         tTZT3L2KGWBBNC1fLCe/nG84XJ7Ald0n46Lh2pISyGJLfwG6IfE3QcQ/xmYjWfEJ6rjC
         WIeN68E0pjoF76lBPGyPyC5kvGWotB17H0v8IdU2we1eVmZJUwHtrWpbHehNIaYi4WrT
         7UZKhJC2A/s9KQli2zmJhHmMoQUKe0o68kFubE4pcTHYG0L6YRrUFSoQXtIX7P8p7b/x
         K0bw==
X-Gm-Message-State: AOJu0YzyysHraSeUT0As6jv5vkCKoOt0S71n5MSriQdbqppEphSNnL6l
	RyaVDzpj67FcI6wlth1qzCuTyoFBrirM7AjEnLsvza4YSXDNX60LIt5SJSiyGlTJTE9FnuYN3TN
	GT2F3Jz5TgFA2tZgP9sNjr5TEtQVIjsQ01SDtoQUiv7CbJD2sVP56Z/E=
X-Gm-Gg: ASbGncuwQfkGpDudC/WfWpZl4+qlEHhSwDrox5gVop351M8ylEzaHIn1H/uBDX77oiX
	wWO8sBdtiljvVzUj6PbCFcC2L/cQApeGdTCxa0hSIC0sSMmVevIFWGTuO7V1523ei2cPuwWnf1h
	58VgW2TNCZ/YDcj+//rb54ZGr7jLU9nEeFvY4JEkW6lpbBqXYWoaKg6WdI6TArZgQoFXo+kSLao
	lkEnUf1uLoys4aAUtGktlTBhQzN00hoSWZ3L4oElw==
X-Google-Smtp-Source: AGHT+IGD2NkvVD7+D7a/b0qecSAC2omAhJmwQvrbuzmmTViY05Oq7L3ySaoi84S7T5YemANZBdfm6mPofYt1yRUp8yY=
X-Received: by 2002:a17:90b:3f4b:b0:32b:cafc:e342 with SMTP id
 98e67ed59e1d1-32bcafcea8emr53766a91.32.1757026034976; Thu, 04 Sep 2025
 15:47:14 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 4 Sep 2025 18:47:03 -0400
X-Gm-Features: Ac12FXw749SqZf8kdzNcuMduh6qtslptLNrZVf75onUDGz8a1lr7lCwQOb9PoIY
Message-ID: <CADW0nH+xRwkP_kZpOaNv15Sk2xFpzoCoML7=+mpiQU_MjQL5fQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 3DOXCWDHAHS63C5SCHQVCHES6LOG2NCZ
X-Message-ID-Hash: 3DOXCWDHAHS63C5SCHQVCHES6LOG2NCZ
X-MailFrom: navid.akbari@yale.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] usrp b210 triggering
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3DOXCWDHAHS63C5SCHQVCHES6LOG2NCZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Navid Akbari via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Navid Akbari <navid.akbari@yale.edu>
Content-Type: multipart/mixed; boundary="===============7029198681024754615=="

--===============7029198681024754615==
Content-Type: multipart/alternative; boundary="000000000000ad1cd7063e018021"

--000000000000ad1cd7063e018021
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm new to USRP, so I'm not sure if this question is valid or not. I'm
using a USRP B210 and I want to synchronize it with some other measurement
equipment (to keep the timing of the data). I know that there is a PPS
port, but I don=E2=80=99t want to send my trigger signal in the PPS protoco=
l. Is
there a way to use the digital pins on the board to trigger the device?

Thank you.

--000000000000ad1cd7063e018021
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p>Hello,=C2=A0</p><p>I&#39;m new to USRP, so I&#39;m not =
sure if this question is valid or not. I&#39;m using a USRP B210 and I want=
 to synchronize it with some other measurement equipment (to keep the timin=
g of the data). I know that there is a PPS port, but I don=E2=80=99t want t=
o send my trigger signal in the PPS protocol. Is there a way to use the dig=
ital pins on the board to trigger the device?</p>
<p>Thank you.</p></div>

--000000000000ad1cd7063e018021--

--===============7029198681024754615==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7029198681024754615==--
