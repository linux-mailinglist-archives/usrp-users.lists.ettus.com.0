Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E61DBED82
	for <lists+usrp-users@lfdr.de>; Tue, 30 Apr 2019 02:09:51 +0200 (CEST)
Received: from [::1] (port=57734 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hLGL9-00057g-Ah; Mon, 29 Apr 2019 20:09:43 -0400
Received: from mail-yw1-f48.google.com ([209.85.161.48]:42977)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <m2wagner@eng.ucsd.edu>)
 id 1hLGKb-000514-5o
 for usrp-users@lists.ettus.com; Mon, 29 Apr 2019 20:09:39 -0400
Received: by mail-yw1-f48.google.com with SMTP id y131so4631161ywa.9
 for <usrp-users@lists.ettus.com>; Mon, 29 Apr 2019 17:08:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eng.ucsd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=ST4+y3pR/kDmx7p+wga9NM5pv7WYUFYDDfDjqejIXg8=;
 b=RvFkVtsNNk+6Uo+WK1WzB6lxBdwp5rl9nsQG/D2uQ8cV0mluLluBX9toZQgytnLCNq
 c1xRgsy2T3bypA71NhomFqU0fZpMOmZr1RF534S8jnBp62YnXcVQqUxoCGx2HF9Bi2Dv
 N1/iyp+pVLQItG/65ca31eZrST68vSiXn+v58=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=ST4+y3pR/kDmx7p+wga9NM5pv7WYUFYDDfDjqejIXg8=;
 b=teLsn7brCP9hBIL2ZtwvfYoEQdbUl6T0rDjAV+qJ4esGGaUeSa9mMJy45OswxJz1xH
 l7sKTp8Bs7OZly4Pwhi/9o2+LQY/hDfwZ9TSVys6vOd0EWCXlwfhtyll8YtebNImdUC7
 yMm3xfRKsqwEl+26Sp0hSB/0R+8V9ekIYPtwSqFrCfGn2EgSw1YEGqhHAYCU0jz0Gc4s
 i6tCXYgL6YcMVYew1JcpCimcPbzZ2uBasPhM0bqzdzEamQwnZwjtxafXbVPx+jJlItPQ
 ms3fDaBjvBwuafKJoznHtgJ9ucvNvc7pyHa6TyOVBMz/i33+arz3iw+gDr8y59FSnOHU
 CYPw==
X-Gm-Message-State: APjAAAUD4wQwBmn0yAUfbLWHGG4GuVErP/6OQrANHXD7lwG12DxL50Rp
 v8o1HhDLBL3Ts1+OVhvKg2ZaEsHFDL5JahEBAs/ySDQAtBA=
X-Google-Smtp-Source: APXvYqyinUTX4AznqU9SNNyhb/gH8TIDQ3W7Byn3MVny6Zmvnit91le4HWdap9bIlDbsqibkgoKmKF5N7d/j5uSaZ+M=
X-Received: by 2002:a25:618e:: with SMTP id
 v136mr22210206ybb.370.1556582907922; 
 Mon, 29 Apr 2019 17:08:27 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 29 Apr 2019 17:08:17 -0700
Message-ID: <CALLKLAPDtvLxHkVwea_c0S9oX3xFkOYwfpbhvS9HTxK+LiEkhg@mail.gmail.com>
To: usrp-users@lists.ettus.com
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] How to periodically write files using USRP and GNUradio
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
From: Mark Wagner via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mark Wagner <m2wagner@eng.ucsd.edu>
Content-Type: multipart/mixed; boundary="===============6671303560709263777=="
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

--===============6671303560709263777==
Content-Type: multipart/alternative; boundary="0000000000004a651b0587b43370"

--0000000000004a651b0587b43370
Content-Type: text/plain; charset="UTF-8"

Hey all,

I'd like to know how to write short files of streamed USRP data
periodically using GNUradio. For instance, I'd like the USRP to
automatically record 5 seconds of data every 10 minutes. It does not matter
to me whether the USRP is constantly on and most of the data is being
discarded, or if the USRP wakes up every 10 minutes to record the data
before sleeping. Whichever is easiest to achieve is fine by me. Does anyone
have experience doing this kind of thing?

-Mark



-- 
Mark Wagner
University of California San Diego
Electrical and Computer Engineering

--0000000000004a651b0587b43370
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey all,</div><div><br></div><div>I&#39;d like to kno=
w how to write short files of streamed USRP data periodically using GNUradi=
o. For instance, I&#39;d like the USRP to automatically record 5 seconds of=
 data every 10 minutes. It does not matter to me whether the USRP is consta=
ntly on and most of the data is being discarded, or if the USRP wakes up ev=
ery 10 minutes to record the data before sleeping. Whichever is easiest to =
achieve is fine by me. Does anyone have experience doing this kind of thing=
?</div><div><br></div><div>-Mark</div><div><br></div><div></div><div><br></=
div><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr"><div><div>Mark Wagner<br></di=
v>University of California San Diego<br></div>Electrical and Computer Engin=
eering<br>=C2=A0<br></div></div></div>

--0000000000004a651b0587b43370--


--===============6671303560709263777==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6671303560709263777==--

