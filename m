Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCEA1625BC
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2020 12:47:16 +0100 (CET)
Received: from [::1] (port=38166 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j41LH-0003iZ-OR; Tue, 18 Feb 2020 06:47:07 -0500
Received: from mail-il1-f170.google.com ([209.85.166.170]:38400)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <adray0001@gmail.com>) id 1j41LC-0003d9-W5
 for usrp-users@lists.ettus.com; Tue, 18 Feb 2020 06:47:03 -0500
Received: by mail-il1-f170.google.com with SMTP id f5so17055831ilq.5
 for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2020 03:46:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=IuDgHVzG6uE+fqiCggaDPCU8zQD+NFgEsdkbsi77ABs=;
 b=Nx+aVRH415QW7NrzslLoz3Mr1mGPkG/z8Ejo+muPRYKMZpzsnaXs1EwXN4OHKcKfAG
 cgwwQ0BRrIQcdSPV/KWIlgH6bsEV22Rz192vaKstuF2eUij4gB0dMEgxULXEyj5w4WB8
 Qcrlhr7JwUmDYudmtdfm0NzlC2VMwyZnfPyxzJcvOradmjOcC9OXg/RcIveHrZ3Onor0
 X6a87zKLqOPZEhOZjF/P0lPDAk4Yd8hB0fvB77Of5KL0XnXtyIV2t6+9lqyk0NPGmic3
 u4VTJQQJ0RVoVnUK7W4oG5QCX72EXWL7WT0P6xa8/SMwnbsf/3iK/s4u1IALntPn2Mb9
 /LOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=IuDgHVzG6uE+fqiCggaDPCU8zQD+NFgEsdkbsi77ABs=;
 b=omtQ+lbuYie9kgMMH21YAD0j7W9S4lwo4YXXKj4Kmj9r+XtStNXqJYkbV/iZAaO9+C
 jBkGH65540hDFSNR73HugA3qsPXbhWj71tQGQxvNyFn60LRazdzxNdCA81YO3UF2b+/R
 UL74cYabeYAnV4tFj9h3miUiom1/hUPoIYwJ/eEFL0oASPxEbyS/aR5Vd/qnBziP9jqT
 oTYtBBrfJnkr12GY5amVH6Da6qaC6KiIoJLeFhlAHybIJXSuMZFEK6XKDq6uh8tbk5oh
 hwovgJ3124K7fsUIbKCt0cvYFKYlCaNuwAYQkLKinLabCRMZM9G9OgM7mFR1WnnH+Kzx
 4eFw==
X-Gm-Message-State: APjAAAW7Ma+6E4sbUQ/F5Q8+zgYNwj6G0xz7dd00L5S/BkrYfymqiOiB
 si62hnzcjcf4fRxsC2kI0Ntfm+0dv+PxDyuGTshKlQu2
X-Google-Smtp-Source: APXvYqxihwF1troE7SKlmssNLrDJr0vRbaZwCZQqTnGnlY6QM5DhaF52NnQIDFvpyL1WYkuvbAD/TMsm1UDbtO6IttI=
X-Received: by 2002:a92:b712:: with SMTP id k18mr19630529ili.259.1582026382149; 
 Tue, 18 Feb 2020 03:46:22 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 18 Feb 2020 13:44:40 +0200
Message-ID: <CAPRRyxv+0=ua07b9kHXYU2K6QA8wuuKHKgzjgbWcfXq4xxVtUQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Buffer clearing after error 'D' USRP N210
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
From: Ivan Zahartchuk via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ivan Zahartchuk <adray0001@gmail.com>
Content-Type: multipart/mixed; boundary="===============6270693236282081731=="
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

--===============6270693236282081731==
Content-Type: multipart/alternative; boundary="000000000000888e54059ed83873"

--000000000000888e54059ed83873
Content-Type: text/plain; charset="UTF-8"

Hello. I use the N210 board for scanning with frequency tuning. And
with the 'D' error, I have problems with correctly detecting the
signal frequency. In this regard, the question. How do I flush the
buffer in N210?

--000000000000888e54059ed83873
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail-oSioSc"><div id=3D"gmail-tw-target"><d=
iv id=3D"gmail-kAz1tf" class=3D"gmail-g9WsWb"><div class=3D"gmail-tw-ta-con=
tainer gmail-tw-nfl" id=3D"gmail-tw-target-text-container" tabindex=3D"0"><=
pre class=3D"gmail-tw-data-text gmail-tw-text-large gmail-tw-ta" id=3D"gmai=
l-tw-target-text" style=3D"text-align:left" dir=3D"ltr"><span style=3D"font=
-family:arial,sans-serif"><font size=3D"2"><span lang=3D"en">Hello. I use t=
he N210 board for scanning with frequency tuning. And with the &#39;D&#39; =
error, I have problems with correctly detecting the signal frequency. In th=
is regard, the question. How do I flush the buffer in N210?</span></font></=
span></pre></div></div></div></div></div>

--000000000000888e54059ed83873--


--===============6270693236282081731==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6270693236282081731==--

