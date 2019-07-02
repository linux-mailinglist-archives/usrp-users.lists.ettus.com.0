Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFBA5D5EB
	for <lists+usrp-users@lfdr.de>; Tue,  2 Jul 2019 20:11:32 +0200 (CEST)
Received: from [::1] (port=43660 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hiNFU-0003U5-HP; Tue, 02 Jul 2019 14:11:24 -0400
Received: from mail-wr1-f42.google.com ([209.85.221.42]:38316)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <arob109@gmail.com>) id 1hiNFQ-0003O5-F6
 for usrp-users@lists.ettus.com; Tue, 02 Jul 2019 14:11:20 -0400
Received: by mail-wr1-f42.google.com with SMTP id p11so7704833wro.5
 for <usrp-users@lists.ettus.com>; Tue, 02 Jul 2019 11:11:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=qPhe7wIeTR3fE4li5PBjoz5vh4vanP9D+8ys+tPci4s=;
 b=uGwTFrQklIo8wR5wdRI8odUnBUOG3EkOlzLlU9jsbMgSqBwIirq7mTLovKW4SHpe2H
 6FBxfdpOr3ZayvrnR/syv6aqIZltNw1DHGqZMqNhRyR5/od5xnEgatiqMvXl4a+S9HOu
 3QA8ArZtIukrgbyZxS8f03a5PZgeBYyyfVDmletucZlr+gfaxMJrXQLCx5ZdxHTDiDt6
 jngE6n9WK7Tif1x7hUNKHAw3htsRUTj5/ockJCl/4Z4tInBEXIKPyYQejfoD107WPoCY
 C919TndlXum4z0d+REaGqsbaZTRqVTKCd5ATEfjLp++3VaTI9IA11uanzJseqbrXXBXd
 i1pg==
X-Gm-Message-State: APjAAAXKWMfZYideQWELufiXT+AQSWW7X3SvOHmGES/W03vh1jMln8QS
 9dh4ek12CDv7pHiEw3pb6YITEbC2uRQ5EgvK6JRYjw==
X-Google-Smtp-Source: APXvYqwawXnQbcW/0fuTp/iNpn8M/j7BUcG5HPcytKC5nM6snjyrEPPIROjatRSb6cGqI5RgfITOqtCuDpIHKZQZ7Sg=
X-Received: by 2002:adf:fe51:: with SMTP id m17mr222974wrs.25.1562091039105;
 Tue, 02 Jul 2019 11:10:39 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 2 Jul 2019 13:10:27 -0500
Message-ID: <CAPkENw_ZqqrYix4Wci0b6=57vvMgSzcAmQJOMcLBfqwt89k8_A@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Meaning of "S" output
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
From: Alex Roberts via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Alex Roberts <alex.roberts@ieee.org>
Content-Type: multipart/mixed; boundary="===============5590012701138754886=="
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

--===============5590012701138754886==
Content-Type: multipart/alternative; boundary="0000000000007e27f2058cb6a945"

--0000000000007e27f2058cb6a945
Content-Type: text/plain; charset="UTF-8"

Hello,

I have N210 device that outputs a stream of a couple dozen "S" to the
console before it stops processing samples. I say "stops processing
samples" because when I use a GUI sink in gnuradio-companion to look at
complex values being sent to the USRP, it updates once or twice, then goes
static after the stream of "S" is complete. What does "S" mean? I can't
find any documentation on it.

Thanks!

--0000000000007e27f2058cb6a945
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I have N210 device th=
at outputs a stream of a couple dozen &quot;S&quot; to the console before i=
t stops processing samples. I say &quot;stops processing samples&quot; beca=
use when I use a GUI sink in gnuradio-companion to look at complex values b=
eing sent to the USRP, it updates once or twice, then goes static after the=
 stream of &quot;S&quot; is complete. What does &quot;S&quot; mean? I can&#=
39;t find any documentation on it.=C2=A0</div><div><br></div><div>Thanks!</=
div></div>

--0000000000007e27f2058cb6a945--


--===============5590012701138754886==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5590012701138754886==--

