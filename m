Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C2C32B5FB
	for <lists+usrp-users@lfdr.de>; Wed,  3 Mar 2021 09:42:40 +0100 (CET)
Received: from [::1] (port=51500 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lHN5U-0001hA-7j; Wed, 03 Mar 2021 03:42:32 -0500
Received: from mail-yb1-f181.google.com ([209.85.219.181]:44888)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <kelvin.lok266@gmail.com>)
 id 1lHN5Q-0001di-3n
 for usrp-users@lists.ettus.com; Wed, 03 Mar 2021 03:42:28 -0500
Received: by mail-yb1-f181.google.com with SMTP id f4so23678983ybk.11
 for <usrp-users@lists.ettus.com>; Wed, 03 Mar 2021 00:42:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=y14+RnxyYUKxbBB3pdRpPGyk8Pci5MyYpnLGrchhk00=;
 b=oJv3GJYypNdglRayre+aI0Lr+9ke7TWB/O5Rz2GTro1h+YNsIKo9PIPfv1rpYi4AfB
 JuS+27DBrVg521QqFcaQW284DNp7W8JHMeGTtoHFSoy5p3nzAu9+SlzC3kMCQhQhNkIO
 RR8BEFAeoaaspgwBl3Lz5qbO8FRVd0YmbEhB7RZxaQ9vPpjkPWoHxRVZxgrzjfScR5Ws
 6OfOXPP6JtANk7b5hO1nOSsJoc6ctG4RIyRcpa6coi44NNtRrD9YtRYZ6cxsXkrY5pAm
 9NUnE6WMWJUVHuDwgyXketOTcznzX+l++lAeMsYhPsjsUf8vtS8suJ6pzYB5XYEkkJYY
 svrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=y14+RnxyYUKxbBB3pdRpPGyk8Pci5MyYpnLGrchhk00=;
 b=Q8dTX6/GKEXBpRJX7VITmu3IWXaCpePiu0LXuGcn2J5c1pjUyppOveQAj5J8j2vZ5+
 ojeMr6i8yKolXRcK/WRq91SPBuxAiK3uuWAqt11yHNCpimMGg9DUkOYrDDpl4DJcMLoE
 8vea7KYlyrk0j3Gz3MFoicqTn58rUBVBnHIHCst8uBss/kIGCq/3seK6cgWoC5tBYwrI
 MSGkK5tmjlnJ1va1s6SXhPtO+diZ/rPbGaFeKKmxG/ukFZw2jNjhJ2USjo0VZYSNTbQP
 j8Tt5k56quW9qPz58giVx55nNoewleRC7BNSl9hdlCpXEDjGsVpsXOHs2O3QqwGQ0Sk7
 NKjQ==
X-Gm-Message-State: AOAM533b2YUIDt19LzgHSsEosezmuFIh/hU0SM93wz8j3JAZ0OYT227F
 rh99qKt06ocD5DM1y4Rt73KCoJ+OPR/o86Nv/rxo9gIMLjM=
X-Google-Smtp-Source: ABdhPJxVQnQHIUOExbAgtf1M1p+m7kXqUa7Fp5uSNV4HN8x9+tA28yf2FxYt2+dwGikj136fYvL0gC6Ae2dWYFsDsBE=
X-Received: by 2002:a25:3491:: with SMTP id b139mr37285280yba.18.1614760907197; 
 Wed, 03 Mar 2021 00:41:47 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 3 Mar 2021 16:41:36 +0800
Message-ID: <CACSyVY3cKqHzRRrP459Jd-S2=kGZ05HWmYYH8AnFmdhkbDEseA@mail.gmail.com>
To: "usrp-users (usrp-users@lists.ettus.com)" <usrp-users@lists.ettus.com>
Subject: [USRP-users] B205mini continously transmitting a carrier tone even
 though UHD crashed
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
From: Kelvin Lok via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Kelvin Lok <kelvin.lok266@gmail.com>
Content-Type: multipart/mixed; boundary="===============8887671723664918253=="
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

--===============8887671723664918253==
Content-Type: multipart/alternative; boundary="000000000000454e9905bc9dd2fd"

--000000000000454e9905bc9dd2fd
Content-Type: text/plain; charset="UTF-8"

Hi everyone, I am facing an unexpected problem where my B205mini USRP is
continuously transmitting a tone (that I set initialised as the tx freq),
even when my parent program has crashed. My parent program is a C++ program
that calls uhd, but when the main program catches an exception and
terminates, the B205mini is still transmitting a tone. I observed this
behaviour by monitoring the TX output with a spectrum analyser.

Does anyone have any ideas what could be the problem? Do I need to call a
UHD usrp destructor? I noticed that the example UHD programs don't need to
release or delete the uhd object. Hence I am stumped.

--000000000000454e9905bc9dd2fd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone, I am facing an unexpected problem where my B2=
05mini USRP is continuously transmitting a tone (that I set initialised as =
the tx freq), even when my parent program has crashed. My parent program is=
 a C++ program that calls uhd, but when the main program catches an excepti=
on and terminates, the B205mini is still transmitting a tone. I observed th=
is behaviour by monitoring the TX output with a spectrum analyser.<div><br>=
</div><div>Does anyone have any ideas what could be the problem? Do I need =
to call a UHD usrp destructor? I noticed that the example UHD programs don&=
#39;t need to release or delete the uhd object. Hence I am stumped.</div><d=
iv><br></div><div><br></div></div>

--000000000000454e9905bc9dd2fd--


--===============8887671723664918253==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8887671723664918253==--

