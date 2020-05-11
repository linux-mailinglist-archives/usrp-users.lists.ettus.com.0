Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBF51CD65A
	for <lists+usrp-users@lfdr.de>; Mon, 11 May 2020 12:20:04 +0200 (CEST)
Received: from [::1] (port=55912 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jY5XV-0004NB-Gt; Mon, 11 May 2020 06:20:01 -0400
Received: from mail-il1-f181.google.com ([209.85.166.181]:36511)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <carlosruiznaranjo@gmail.com>)
 id 1jY5XR-0004HA-N0
 for usrp-users@lists.ettus.com; Mon, 11 May 2020 06:19:57 -0400
Received: by mail-il1-f181.google.com with SMTP id 17so777719ilj.3
 for <usrp-users@lists.ettus.com>; Mon, 11 May 2020 03:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=9de4HjJzIReMqZew3QmVIeizgsBeHpA80wRPLg78RP0=;
 b=hpaoQap782+f8IUE77rXX/u6DMZs2M+Es4rTG8KRYlo/C9Y/nVYG1swwW5L/pSEFLn
 zHlSxPiljmfQoQc/2gi3lD9+7euI+IZGZ3KacfJOxLsuNPDUCu6emElkQ31A4uz+na7m
 ipczMWvtP3LuUq/zpbT1Vmjf1q6FrHoqLNFx4/+Lu4WA+172oB1anvA9it2wdNlqKVQp
 RTUo1Y7YvfQ5KW1E5kQdzTZ8QbNsjPvFDEz9+a5h2AsaY5uYhs23mGwVUEmLETCe/49D
 bFoKL6+XJIt5SrLeDgHnf5m71p2kPBAVu4UOFVy4TAagwMncksCeFO2PUvdu077V+y+o
 0xYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=9de4HjJzIReMqZew3QmVIeizgsBeHpA80wRPLg78RP0=;
 b=r58Dn/T7nS5vAK1fMwnLISLFCvFUemSPu/ANzv00nl+5NVmuyp17GQ24tjDWpmvJqN
 PxSiurWngKFBkzIWbrcs6DPoZ6M14FGvEs6uHwd4B/LZU0CtUK9Gy8gUDDOihOb6eS83
 wfi2u/qSyhTNtHCR3XSmCe2Itb9Xov9VJ52u4oBuuPw0Ef4W6XjJqJUaD/kLkWn3x9lI
 t9G40geK17rFJvv5cKpMkxJu0lJiY0qzxpZc5iwhkfRrRZkJXK+XvufTt0y33ra/Ksu9
 7K53jxrLRhXqZ8fb1svOfvkddyvpOMjImAavcYPSR/aUyIPVT+V+c/OuBfyuX7o8fI2Y
 nohw==
X-Gm-Message-State: AGi0PubYM7jjm2BG+n+Fn6iZfaM1Yjv5i12SoxojXnIDhOfQ4Q7yCDCN
 6nMslLl0NRCWhkHfNGEYYIvpXLoVrIBqjrXv3vo+fCjrc7Y=
X-Google-Smtp-Source: APiQypJ4c/+/wq7dJ1TSSstaYgzcfPBXs9PyXhAUJRnmSVLLgtJgX+zGY3qUqbfHojF5fVRNpBceAUXhsu8QXz/xstc=
X-Received: by 2002:a92:ad09:: with SMTP id w9mr15849262ilh.177.1589192356743; 
 Mon, 11 May 2020 03:19:16 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 11 May 2020 12:19:05 +0200
Message-ID: <CAP2eGPgGrfNJSnX=W5dmKOSnJqA4Ud1-VirMDynjRynTnD_brw@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] USRP X310 sample rate of 184.32 MHz
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
From: Carlos Alberto Ruiz Naranjo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Carlos Alberto Ruiz Naranjo <carlosruiznaranjo@gmail.com>
Content-Type: multipart/mixed; boundary="===============0275646532997898230=="
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

--===============0275646532997898230==
Content-Type: multipart/alternative; boundary="000000000000e74e2b05a55cadd0"

--000000000000e74e2b05a55cadd0
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm using the USRP X310 with CBX-120. I set the radio sample rate to 184.32
MHz but I have the following message:

[WARNING] [X300 RADIO] Requesting invalid sampling rate from device: 184.32
MHz. Actual rate is: 200 MHz.

Isn't it possible to set it to that sample rate?

Thank you.

--000000000000e74e2b05a55cadd0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><br>I&#39;m using the USRP X310 with CBX-120. I =
set the radio sample rate to 184.32 MHz but I have the following message:<b=
r><br>[WARNING] [X300 RADIO] Requesting invalid sampling rate from device: =
184.32 MHz. Actual rate is: 200 MHz.<br><br>Isn&#39;t it possible to set it=
 to that sample rate?<br><br>Thank you.</div>

--000000000000e74e2b05a55cadd0--


--===============0275646532997898230==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0275646532997898230==--

