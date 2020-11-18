Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BCB2B7D9B
	for <lists+usrp-users@lfdr.de>; Wed, 18 Nov 2020 13:28:00 +0100 (CET)
Received: from [::1] (port=54766 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfMZ3-0007SB-9K; Wed, 18 Nov 2020 07:27:57 -0500
Received: from mail-qk1-f182.google.com ([209.85.222.182]:41586)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jbmsdr@gmail.com>) id 1kfMYz-0007Lj-Mu
 for usrp-users@lists.ettus.com; Wed, 18 Nov 2020 07:27:53 -0500
Received: by mail-qk1-f182.google.com with SMTP id d9so1505457qke.8
 for <usrp-users@lists.ettus.com>; Wed, 18 Nov 2020 04:27:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=U57blgIDnRbg2aCMvSOm5pv7OdS5irV2WHNih8PBNXo=;
 b=I9SINhag4Of4erAKyd3ttaU7zJJyNn2VSP0lwkgO/xyunMT9f9f0dZATTic361sD2R
 PI89v1t5Nf4lIJuxrQLYb2mj7ezqsSUJ10EB3NSymrov7Y5IiTjPDsfXMwwd9CWU8DWV
 wMPmGRFz/Z4b9fpXj6sQbz/i11tVDoubyz2H65DaLYXBUIAl9K7KG2tThc7G7hyedTOt
 zZ49fes2xRSKCKhUiyKsFJlXUPIh4V618q6g/HMF9uclKQVmu44YKIaKI/lgySealoNY
 PQ80G7/uzRU2fkdKhZXcnAqM9vTZyUExquXlUPEaCR7zqaYR+kJD2Etnj/rJ9PTEYiXe
 yTTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=U57blgIDnRbg2aCMvSOm5pv7OdS5irV2WHNih8PBNXo=;
 b=QzOBNnV8HIAVlF6Joe+pZXbl5CKW8tw1I7S7Azia31aFJ7cgZcQE3KlQ8GDDTLLv4O
 wbZDbP0hwGxCf7dFFQhX03tlIdV5uqG0Z/ikN7oQ9ynCy7RqmbbG3+2AWWFgLBjT9OQp
 kVSrZY5ydBa1k10soS2a6d24nyy8WdBkIRRw3CGUQm/ltvy7icM5ubXsOiKO9zEg2cJy
 Fcllp2Mx4guFkY4bOJUL6g4HgDEOjNwZnh6nBlxvGi6Y9TeTtEJ6liRZROKB9dugbxNT
 Vy+RFhXQkXik1DaIj3UvGPuMwhtcFj2sPyU92qI0Ocb0u9eKmJPMcCUQBxxFjV7NyRim
 f99g==
X-Gm-Message-State: AOAM533hrX5ajcJ8dJkWaHXHzlYt13ZLDMkM2DvpW0tp7S9M3eUa72Ex
 sUqMOJGFValK8BnNxJZIs905mZ8y3fw5Rz2yJ3ltSfH9
X-Google-Smtp-Source: ABdhPJxyeVBnhga4woZT8BkGzfAxFIAk/xnC+5SsBMKzn5SXvMLY9mz7vAx5/k/ET8uI/lYLo1ME/fSWqWwF9k0sTPA=
X-Received: by 2002:a37:aa93:: with SMTP id t141mr4364862qke.400.1605702432680; 
 Wed, 18 Nov 2020 04:27:12 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 18 Nov 2020 07:27:01 -0500
Message-ID: <CA+1FM8pa+r2V98HZver=btdMVxoNCmrm0O4FXftszhruHLaT2w@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] Overflows at flowgraph start using gr-uhd
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
From: Josh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Josh <jbmsdr@gmail.com>
Content-Type: multipart/mixed; boundary="===============8762793873447655691=="
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

--===============8762793873447655691==
Content-Type: multipart/alternative; boundary="0000000000001d6f1005b460bb89"

--0000000000001d6f1005b460bb89
Content-Type: text/plain; charset="UTF-8"

I'm seeing a difference in behavior between gr-uhd and plain uhd c++ api:

Setup:
B210, 2 channels, 5MSPS, master_clock_rate 20MSPS, PPS sync
Receive only flowgraph

With gr-uhd, there is always a "OOD" when the flowgraph first starts

But, if I replicate the setup in a simple compiled program using the uhd
API with all the same settings, this never occurs.

So my question is - is the GR scheduler doing something at the beginning of
the flowgraph that delays the work() calls and causes overflows, and are
there settings I use to mitigate this?  My problem is that once these
overflows occur, I can't trust my timing synchronization on the received
samples (or have to do further calculations on the rx_time tags).

Thanks,
Josh

--0000000000001d6f1005b460bb89
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m seeing a difference in behavior between gr-uh=
d and plain uhd c++ api:</div><div><br></div><div>Setup:</div><div>B210, 2 =
channels, 5MSPS, master_clock_rate 20MSPS, PPS sync<br></div><div>Receive o=
nly flowgraph</div><div><br></div><div>With gr-uhd, there is always a &quot=
;OOD&quot; when the flowgraph first starts</div><div><br></div><div>But, if=
 I replicate the setup in a simple compiled program using the uhd API with =
all the same settings, this never occurs.</div><div><br></div><div>So my qu=
estion is - is the GR scheduler doing something at the beginning of the flo=
wgraph that delays the work() calls and causes overflows, and are there set=
tings I use to mitigate this?=C2=A0 My problem is that once these overflows=
 occur, I can&#39;t trust my timing synchronization on the received samples=
 (or have to do further calculations on the rx_time tags).</div><div><br></=
div><div>Thanks,</div><div>Josh<br></div></div>

--0000000000001d6f1005b460bb89--


--===============8762793873447655691==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8762793873447655691==--

