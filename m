Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F080D2856AB
	for <lists+usrp-users@lfdr.de>; Wed,  7 Oct 2020 04:30:10 +0200 (CEST)
Received: from [::1] (port=59334 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kPzDN-0005zs-UZ; Tue, 06 Oct 2020 22:30:01 -0400
Received: from mail-qv1-f44.google.com ([209.85.219.44]:36095)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <huacheng.zeng@gmail.com>)
 id 1kPzDK-0005ug-Gm
 for usrp-users@lists.ettus.com; Tue, 06 Oct 2020 22:29:58 -0400
Received: by mail-qv1-f44.google.com with SMTP id ev17so299377qvb.3
 for <usrp-users@lists.ettus.com>; Tue, 06 Oct 2020 19:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=aKywRPcr03ZhYCDa8h83uXZCt8VHf3tkTII/K6oFTPw=;
 b=BnG27CjD3hVVEZO+stsiWDJ1u9MdDKu4uGYBhNowotdujXY9zN/LdyTFj3fCapoCwn
 kV8SfHoE8dzMRMnpaBGn1ki4mQcmr7Z9bzQ1yLdnaQSKcuzaZKRjDpjagXWRoxkoKDPC
 jIVcb9c0ds8zCT9YM79W/L34YXywiyYQPDnQLP0uhF8s//AoKjzJNtyBFRlys7atGc4Y
 bnDkAC8KWvajd1FXB7IdqMUgW4x0/8LCajzzM46Wqk3BkPGY8u6P9XZWSak+Xw6S6OWT
 zxW5fn/3B5zpRnn9rTNUrHZ8sXXvFnMKVEarFgagT3PgKhQuhkRMZOCfz95oshy8I3yR
 SvHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=aKywRPcr03ZhYCDa8h83uXZCt8VHf3tkTII/K6oFTPw=;
 b=XjXsGvyOHOSgn5xizH/KR8y3LmF0k3h04PaICxx6ywp7Y9wyJwJXWN7HvY8YRKhtSn
 RAQDp3VXJiE1oq3ijtGAfF3j9DjmwWrWE1faU8h/Mgs0cYceJ8bQZtcbOD5wcDdQm6Qq
 Uy57VDCcUJFeCdEgsbAW9I47aNU7l6O/+kHJohxJ9BDyZYb1wIJpos9upI6dfosLxMcL
 c8XzHoAVcEPwzdmDa22cX4sQ1VsFP1g2ZbzhwJKbrXyKLFHEikKCR9ifpxtkwU1swfiz
 gtFfXbFAn7TqfXz5NCVQipB4S+Ge2E3bVJahKmEZDrqnQUvxol5Yg5ym4TqEZ9SDCSCk
 jLEg==
X-Gm-Message-State: AOAM531coZrQDLNFCOwaeKNp3peDuS6pONywHubOnaQKrciXOgjSVV5Z
 07D18H4X4/6yHW77C8/uk7Xe23sXDESR6W+3Gn3fSm2/c7HdlQ==
X-Google-Smtp-Source: ABdhPJylyKaO19q6q4FVKfo8QcDtoTT1ZGtW6uDXH4DeUQkMlyPeHyBQ54pPuBJeY4lZQod4Rntj6yZCRARw04CqRNA=
X-Received: by 2002:a05:6214:8c5:: with SMTP id
 da5mr1093034qvb.46.1602037757555; 
 Tue, 06 Oct 2020 19:29:17 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 6 Oct 2020 22:29:06 -0400
Message-ID: <CAL0m=NZHR7zZCGuYhO07r+KZEr6ZYQYvp41q+kYJo7fh1YLxpQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Question about N310 Internal synchronization
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
From: "Zeng, Huacheng via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
Content-Type: multipart/mixed; boundary="===============0519983148137309009=="
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

--===============0519983148137309009==
Content-Type: multipart/alternative; boundary="00000000000074b9a005b10b7b88"

--00000000000074b9a005b10b7b88
Content-Type: text/plain; charset="UTF-8"

Hello:

I am using N310 for 4x4 MIMO transmission. Are N310's 4 TX/RX channels
internally synchronized for MIMO applications? Does it need an external
device (e.g., OctoClock-G CDA-2990) to synchronize those 4 channels for
MIMO applications?

I am also exploring channel reciprocity using N310. I have successful
experience with SBX in the implementation of channel calibration. But it
seems WBX does not fit for this purpose because of some phase ambiguity
issue (if I remember correctly). Would the daughterboards in N310 have the
phase ambiguity issue?

Many thanks in advance!

Hua

--00000000000074b9a005b10b7b88
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello:<div><br></div><div>I am using N310 for 4x4 MIMO tra=
nsmission. Are N310&#39;s 4 TX/RX channels internally synchronized for MIMO=
 applications? Does it need an external device (e.g.,=C2=A0OctoClock-G CDA-=
2990) to synchronize those 4 channels for MIMO applications?</div><div><br>=
</div><div>I am also exploring channel reciprocity using N310. I have succe=
ssful experience=C2=A0with SBX in the implementation of channel calibration=
. But it seems WBX does not fit for this purpose because of some phase ambi=
guity issue (if I remember correctly). Would the daughterboards in N310 hav=
e the phase ambiguity issue?</div><div><br></div><div>Many=C2=A0thanks in a=
dvance!</div><div><br></div><div>Hua</div><div><br></div><div><br></div><di=
v><br></div></div>

--00000000000074b9a005b10b7b88--


--===============0519983148137309009==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0519983148137309009==--

