Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EBE111D93E
	for <lists+usrp-users@lfdr.de>; Thu, 12 Dec 2019 23:19:03 +0100 (CET)
Received: from [::1] (port=38002 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ifWnP-0001vM-KO; Thu, 12 Dec 2019 17:18:55 -0500
Received: from mail-ua1-f49.google.com ([209.85.222.49]:34848)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ejkreinar@gmail.com>) id 1ifWnM-0001rY-0g
 for usrp-users@lists.ettus.com; Thu, 12 Dec 2019 17:18:52 -0500
Received: by mail-ua1-f49.google.com with SMTP id y23so89803ual.2
 for <usrp-users@lists.ettus.com>; Thu, 12 Dec 2019 14:18:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=PiwR4fn0COW/CUkdpYoc3+Bt0jBwK4s2wLiZYbIXJb4=;
 b=fwAdkihrUshOTLWBniesnFw4kakD9ADOBHzmmmdWTu2YKl4z4/nCSGahOnr7/vcUR2
 TH/+iTGW7EEZsvv7KUx3YTE+WWo5TP4/6L6opHnTjyCyqd9yU6CxSRW286eAjMZLhgn8
 bLJb5eu9BlxdPrh2+2SuvH7zNCCYmRqZiqZ9E5tsUUw1+wpUgka5qEEmsgRs4VC8+xJc
 pv1nbTGTPzN8PhRw+o4hMrbx8W50jL73sEkL1D7JuzEmuk50by+olZm0OomOe70ryq1R
 YBKjdWZxy1fkSHgsWeIvX0dg1tvBMNR8sDETBMybaYWHxbvsuWCR/QWkqITqNK3d/2iA
 uLYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=PiwR4fn0COW/CUkdpYoc3+Bt0jBwK4s2wLiZYbIXJb4=;
 b=lviz9ZsBOq+jU+av50p9A6sm7iocdaT6bbmJ/axw2uKKQ8l88wTPYxYoJLyiZccbPw
 eW7v4pgVLI4zglCYYD6C1C7L9l+O/9J3jM6ZSDJqkiwYxlO6V26tkXpOSIOwsBx27M3p
 q4SPImJBPWrTnYFRkCD8BNlXvGamRjt/Yt6WNNdn+iP9cpCj7hWjfNUotOhWZbmELW1y
 Tjpv5LtavZ2WoNcXiKI3t/sYaFPMo4i8h+0+tBhXXFe0nwxaoD4N9y9hYMytzsGtqC93
 nSL0BITOpY8wflDPljIGQKfCZOYWJtHgH5ffiDxQSlfocNKkBJVDeaszRDLcUiwILqDL
 Z5Bg==
X-Gm-Message-State: APjAAAWeJpd9ExlCKoFz3Rvge6ZHfVkdIJ2E8CPqnJp1kdExBy9Dqz1Q
 /svtK69OT7am1orDIDusFLHIomcMyeKvQkx4fBz/wL23
X-Google-Smtp-Source: APXvYqzMq30ZeCGhbmI00Fq6E/u+CxnprzxXoCqyCdLdcLUnidFOg0Ot+2c2H88WPpb1PXaXZvWoaqHi+5414v+6H18=
X-Received: by 2002:ab0:21cb:: with SMTP id u11mr10504660uan.16.1576189091122; 
 Thu, 12 Dec 2019 14:18:11 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 12 Dec 2019 17:18:00 -0500
Message-ID: <CADRnH22QWwo5aikEgOWDzq5u=gHcfu2QQap_ydyYZ6y59CYX5w@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] uhd_find_devices discovery protocol
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
From: EJ Kreinar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: EJ Kreinar <ejkreinar@gmail.com>
Content-Type: multipart/mixed; boundary="===============0228668685294701796=="
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

--===============0228668685294701796==
Content-Type: multipart/alternative; boundary="000000000000e010390599891e6b"

--000000000000e010390599891e6b
Content-Type: text/plain; charset="UTF-8"

Hi all,

I'm sure this pops up every now and then, but I'm having trouble finding a
definitive answer.

What protocol is uhd_find_devices using to actually find the Ettus devices?
I seem to recall this is UDP -- are there any specific ports used?

I have low-rate USRPs on a network with switches/routers in the way, and I
need to make sure we're not blocking the uhd_find_devices or other relevant
UHD traffic...

Thanks for the help!
EJ

--000000000000e010390599891e6b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br><br>I&#39;m sure this pops up every now and the=
n, but I&#39;m having trouble finding a definitive answer.<div><br></div><d=
iv>What protocol is uhd_find_devices using to actually find the Ettus devic=
es? I seem to recall this is UDP -- are there any specific ports used?</div=
><div><br></div><div>I have low-rate USRPs on a network with switches/route=
rs in the way, and I need to make sure we&#39;re not blocking the uhd_find_=
devices or other relevant UHD traffic...</div><div><br></div><div>Thanks fo=
r the help!<br>EJ</div></div>

--000000000000e010390599891e6b--


--===============0228668685294701796==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0228668685294701796==--

