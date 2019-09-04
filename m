Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C122A85BD
	for <lists+usrp-users@lfdr.de>; Wed,  4 Sep 2019 16:42:34 +0200 (CEST)
Received: from [::1] (port=40592 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i5WUR-0001Nq-VQ; Wed, 04 Sep 2019 10:42:31 -0400
Received: from mail-pf1-f169.google.com ([209.85.210.169]:35295)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <qiu.guowang007@gmail.com>)
 id 1i5WUO-0001IF-Gh
 for usrp-users@lists.ettus.com; Wed, 04 Sep 2019 10:42:28 -0400
Received: by mail-pf1-f169.google.com with SMTP id 205so10928435pfw.2
 for <usrp-users@lists.ettus.com>; Wed, 04 Sep 2019 07:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:mime-version:subject:date:from:to:cc;
 bh=Uw1Au8YDU/OQBifgL4LcZbsCDT2SFsZzMn9iAmZs9aY=;
 b=fcre7PJQ+yC6bFqRe3Jvel9dTaWCSPB+XV7H0Fb2lZUdgeHjno9xPk1ZMca2Acplx0
 3naIDFZTUL/br40M4y6oGMQ+4afAf0eUpOc2MQlY8Wvd3S+9vo+MBBWDR2/NGUfhSlIO
 uXuP/nZBKENp55QhpwHd74eb7pTemOiztKdn5XFqpPOvykyVXFNraMzA2MP2a3a+yf4W
 jJu+6haq5H6PP/I4k+YaUoFd9sHoEwCpXpAmUx1/sFS/2TaAFBXuNHS95ki88LkOvRBL
 LvhTNP+SrfbCMM823nKjsmcbqr5gGmRqd7cKwvOjnvqHYCGOnwCtWwuzZ7f79zm5RKAM
 9BFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version:subject:date:from:to:cc;
 bh=Uw1Au8YDU/OQBifgL4LcZbsCDT2SFsZzMn9iAmZs9aY=;
 b=qeny66cBRkP0upuDr8s/dl3TGiNmj/sakxhlBT5DCvdlo3XVMXW1g1CDJtqR2yeXdl
 JxQKRXO/e6KsagYlGMci03t3Rizfo0lomNiR3Bi84Y1rxtTJ0z/Qj8XYbQZCowks6aFF
 F5Y0H/gI6ndUdu5VGFYEzgBO7aHgDmu760th0B0ZO3WRQxqu2wbO8pBsjjIBI1YttKuX
 c0x5LR8rDdjm6mpLBLWVtlxhROJGXPv9ZeEiCaI9TScovHlb2XoBBrZ02fULa136tc5Z
 QCRFxeW9506qgRlHv61Qf5CmvpAG97jleiB4ri4+wE0dD4jfP+OSTfwyutM0hkioIuGv
 tKbA==
X-Gm-Message-State: APjAAAXs1sIAZgPmP3/SJkmlnf7xw/drjF9WIb8Zf6v/N3lYwcJ0Vk3Z
 txWLhUWWQIVPljUrRFrcgE08K8Wu
X-Google-Smtp-Source: APXvYqxvzYGQ95mj+3xLv07l0SWM3BTOEUJ5GFjKxWhNKM8puV581h4O/HZMtKPqPdI6Wlb8s3GPPQ==
X-Received: by 2002:a17:90a:b305:: with SMTP id d5mr5476523pjr.5.1567608107237; 
 Wed, 04 Sep 2019 07:41:47 -0700 (PDT)
Received: from localhost (smtpbg516.qq.com. [203.205.250.54])
 by smtp.gmail.com with ESMTPSA id i9sm18436117pgg.38.2019.09.04.07.41.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Sep 2019 07:41:46 -0700 (PDT)
Message-ID: <5d6fcd2a.1c69fb81.1333f.fb49@mx.google.com>
X-Google-Original-Message-ID: tencent_3B83373DA8C38FC006A0AE79@qq.com
Mime-Version: 1.0
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
Date: Wed, 4 Sep 2019 22:41:46 +0800 (GMT+08:00)
To: =?UTF-8?B?dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20=?=<usrp-users@lists.ettus.com>
Subject: [USRP-users] How to upgrade the version of MPM of N300
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
From: Damon Qiu via USRP-users <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?RGFtb24gUWl1?= <qiu.guowang007@gmail.com>
Cc: =?UTF-8?B?RGFtb24gUWl1?= <qiu.guowang007@gmail.com>
Content-Type: multipart/mixed; boundary="===============2926391693537523007=="
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

--===============2926391693537523007==
Content-Type: multipart/alternative; 
	boundary="----=_Part_0_146760827.1567608106970"

------=_Part_0_146760827.1567608106970
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: base64


------=_Part_0_146760827.1567608106970
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: base64

PGRpdj5IaSBhbGwsPC9kaXY+PGRpdj5BZnRlciB3ZSB1cGRhdGVkIHRoZSBzZCBpbWFnZSBvZiBO
MzAwIGZyb20gdjMuMTMgdG8gdjMuMTQuMS4wLCBpdCBmYWlsZWQgdG8gaW5pdGlhbGl6ZSBkZXZp
Y2UuPC9kaXY+PGRpdj5ydW5uaW5nIHVoZF91c3JwX3Byb2JlLCB3ZSBnZXQgdGhlIGZvbGxvd2lu
ZyBlcnJvciBpbmZvcm1hdGlvbjo8L2Rpdj48ZGl2PltJTkZPXSBbVUhEXSBsaW51eDsgR05VIEMr
KyB2ZXJzaW9uIDcuMy4wOyBCb29zdF8xMDY2MDA7PC9kaXY+PGRpdj5VSERfMy4xNC4xLjAtMC1n
YmZiOWMxYzc8L2Rpdj48ZGl2PltJTkZPXSBbTVBNRF0gSW5pdGlhbGl6aW5nIDEgZGV2aWNlKHMp
IGluIHBhcmFsbGVsIHdpdGggYXJnczo8L2Rpdj48ZGl2Pm1nbXRfYWRkcj0xMjcuMC4wLjEsdHlw
ZT1uL2EscHJvZHVjdD1uL2Esc2VyaWFsPW4vYSxjbGFpbWVkPUZhbHNlPC9kaXY+PGRpdj5bSU5G
T10gW01QTS5tYWluXSBMYXVuY2hpbmcgVVNSUC9NUE0sIHZlcnNpb246IDMuMTQuMS4wLWdiZmI5
YzFjNzwvZGl2PjxkaXY+W0lORk9dIFtNUE0ubWFpbl0gU3Bhd25pbmcgUlBDIHByb2Nlc3MuLi48
L2Rpdj48ZGl2PltFUlJPUl0gW01QTS5QZXJpcGhNYW5hZ2VyXSBGYWlsZWQgdG8gaW5pdGlhbGl6
ZSBkZXZpY2U6IFNvZnR3YXJlIGlzIG1heGltYWxseTwvZGl2PjxkaXY+Y29tcGF0aWJsZSB3aXRo
IHJldmlzaW9uIGA1JywgYnV0IHRoZSBoYXJkd2FyZSBoYXMgcmV2aXNpb24gYDcnIGFuZCBpczwv
ZGl2PjxkaXY+bWluaW1hbGx5IGNvbXBhdGlibGUgd2l0aCBoYXJkd2FyZSByZXZpc2lvbiBgNicu
IFBsZWFzZSB1cGdyYWRlIHlvdXIgdmVyc2lvbjwvZGl2PjxkaXY+b2ZNUE0gaW4gb3JkZXIgdG8g
dXNlIHRoaXMgZGV2aWNlLjwvZGl2PjxkaXY+W0VSUk9SXSBbTVBNLlBlcmlwaE1hbmFnZXJdIEZh
aWxlZCB0byBpbml0aWFsaXplIG1vdGhlcmJvYXJkOiAncHJvZHVjdCc8L2Rpdj48ZGl2PltFUlJP
Ul0gW01QTS5QZXJpcGhNYW5hZ2VyXSBDYW5ub3QgcnVuIGluaXQoKSwgZGV2aWNlIHdhcyBuZXZl
ciBmdWxseTwvZGl2PjxkaXY+aW5pdGlhbGl6ZWQhPC9kaXY+PGRpdj5bSU5GT10gW01QTS5SUENT
ZXJ2ZXJdIFJQQyBzZXJ2ZXIgcmVhZHkhPC9kaXY+PGRpdj5bSU5GT10gW01QTS5SUENTZXJ2ZXJd
IFNwYXduaW5nIHdhdGNoZG9nIHRhc2suLi48L2Rpdj48ZGl2PjxkaXY+RXJyb3I6IFJ1bnRpbWVF
cnJvcjogRGV2aWNlIGlzIGluIGJhZCBzdGF0ZTogJ3Byb2R1Y3QnPC9kaXY+PGRpdj5JcyB0aGVy
ZSBhbnlvbmUmbmJzcDsga25vdyBob3cgdG8gdXBncmFkZSB0aGUgdmVyc2lvbiBvZiBNUE0gb2Yg
TjMwMD88L2Rpdj48ZGl2PkJlc3QgcmVnYXJkcyw8L2Rpdj48ZGl2PkRhbW9uPC9kaXY+PC9kaXY+
PGRpdj48IS0tZW1wdHlzaWduLS0+PC9kaXY+
------=_Part_0_146760827.1567608106970--


--===============2926391693537523007==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2926391693537523007==--

