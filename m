Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4EA16A372
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2020 11:02:55 +0100 (CET)
Received: from [::1] (port=37354 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j6AZc-0001n5-Ig; Mon, 24 Feb 2020 05:02:48 -0500
Received: from mail-io1-f50.google.com ([209.85.166.50]:41025)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <adray0001@gmail.com>) id 1j6AZZ-0001fc-26
 for usrp-users@lists.ettus.com; Mon, 24 Feb 2020 05:02:45 -0500
Received: by mail-io1-f50.google.com with SMTP id m25so9612198ioo.8
 for <usrp-users@lists.ettus.com>; Mon, 24 Feb 2020 02:02:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=bE1qkW6k2pX0GIrAi2f0gVAGriPFrmLA1KqvQiGyNic=;
 b=DUmhO9WxC3q9vuufLHfoNkidIIdDhqDCg8l1MRAPr+fLM3+uBbdeA7/aMtARV+Et8F
 KxExeBF6V6jjKBD1Wggy2FzdHyDpMg6bFkIcvNfDmqyFarDuWvkWzRhwZ+7Sc2g7q6by
 7RzvpsLMTt5n3GlaAtgH/X/4T0aGx/h4+3/hRBoEI1mJSpaY+TsvsZGYhv3ZYqwfJm5Q
 kNnp5xWL6zJRkfM+fMkaJmH+qGE9tOgTcsoFNtAUfJI76xYzVrqeYXs2eXrtVs9hclyh
 g8UCXRUO+TKLO2YmnAwxMoAgZSxdm7cdcWid3FXzgYBepuRKC6Iunj+zPOGfHMqQG3kg
 x+Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=bE1qkW6k2pX0GIrAi2f0gVAGriPFrmLA1KqvQiGyNic=;
 b=FiWkEdbrrJsc9KWZWlHyaa918Ur1MwOMmlXYzMeuKiY0A0ZzFgTTCkVYUNhUKMIgU3
 fvSLyE8BA5r/ucKvxUlwp4vhY5Yj4Yk5SW28kJ8jjNNU+NtkrBxcu0EAmBwr7/ilwskI
 +SUIBFWGmK1cC5yQ6UHcRW9CbDMG+hyNxL+tCLmYAYqC2R0hk6zPPL2ZkQqXLxchM/9k
 ir1tuMPb8atIfw/Z8+sD6rojfDlmSN4Hhfo5hOLxdfVOktEQwAUi21s+3dW3fE60dIr1
 9asWcCwP4vfWvFCslaKMpsOyFLtk4LCepLzXm81Oeq1jDBO3msrk5LSjl3ju9GlcM9YK
 ULRg==
X-Gm-Message-State: APjAAAUsF6FgUv4tg84iM/64x+vujbjaPtWn7Rvk1b+OGYkRZ0IBPYhD
 kRpg3e6QBKQXWHE7l0zsQsLnyfk9WWCICb2uOYm3d0wM
X-Google-Smtp-Source: APXvYqyBH8SdgE8Br6KPzzNQX6qplN9PFfET2AaqFxinZW/DhtiIHZlFtnDb2vVkBF6JcPrhmp45hpqeop7/UGFq5HY=
X-Received: by 2002:a02:6555:: with SMTP id u82mr18142881jab.67.1582538524077; 
 Mon, 24 Feb 2020 02:02:04 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 24 Feb 2020 12:00:27 +0200
Message-ID: <CAPRRyxuRAKSsG9h6QsFnkT8SFi9Q=MrCLLE2CNNxNn=A0ccF4Q@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============5724614851416887295=="
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

--===============5724614851416887295==
Content-Type: multipart/alternative; boundary="00000000000092323d059f4f762a"

--00000000000092323d059f4f762a
Content-Type: text/plain; charset="UTF-8"

Hello. I use the N210 board for scanning with frequency tuning. And
with the 'D' error, I have problems with correctly detecting the
signal frequency. In this regard, the question. How do I flush the
buffer in N210?

--00000000000092323d059f4f762a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div><div id=3D"gmail-m_-2646109680901174=
36gmail-tw-target"><div id=3D"gmail-m_-264610968090117436gmail-kAz1tf"><div=
 id=3D"gmail-m_-264610968090117436gmail-tw-target-text-container"><pre id=
=3D"gmail-m_-264610968090117436gmail-tw-target-text" style=3D"text-align:le=
ft" dir=3D"ltr"><span style=3D"font-family:arial,sans-serif"><font size=3D"=
2"><span lang=3D"en">Hello. I use the N210 board for scanning with frequenc=
y tuning. And with the &#39;D&#39; error, I have problems with correctly de=
tecting the signal frequency. In this regard, the question. How do I flush =
the buffer in N210?</span></font></span></pre></div></div></div></div></div=
></div>

--00000000000092323d059f4f762a--


--===============5724614851416887295==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5724614851416887295==--

