Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 144B412D205
	for <lists+usrp-users@lfdr.de>; Mon, 30 Dec 2019 17:31:36 +0100 (CET)
Received: from [::1] (port=35550 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ilxx8-0004ZW-R8; Mon, 30 Dec 2019 11:31:34 -0500
Received: from mail-pf1-f182.google.com ([209.85.210.182]:36095)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <qiu.guowang007@gmail.com>)
 id 1ilxx5-0004WC-7u
 for usrp-users@lists.ettus.com; Mon, 30 Dec 2019 11:31:31 -0500
Received: by mail-pf1-f182.google.com with SMTP id x184so18494175pfb.3
 for <usrp-users@lists.ettus.com>; Mon, 30 Dec 2019 08:31:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:mime-version:subject:date:from:to:cc;
 bh=7vhDs7lfBq943zv1c/UpVv+RmgaO0NJZrjTXgRGsQZg=;
 b=FAwxJT4bNP5zpRTB2WbpF03PcfaNGel/6BvcwVNS4uGpVFw9Swl/yNKxNgXDNzIi7m
 aao38L11Rv0K2LDQAzNCPldnaAhupL3xgy1YcXVduFVq44elDNLsqY5XIfbSeBE4g3hT
 z6s0xGh0JyBnmfoWiyXf1KqOSWJp9MAM4Xg28f5Cu6QY7/gfYHc5vX5neqJGDWuHdgPv
 +CJthPLCJ2Xl/QaaSIfcikmpx+VhuyiaZtI3y5AB0ZtOLaXKDjSojmG7hgXqgUd+k5e1
 cz7OH1EWAQSSjKbtjJY0CegL/Ax32W/PydGiFWfl4mff7x1EhcdeA6KL53UlAgRyrwqb
 bgww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version:subject:date:from:to:cc;
 bh=7vhDs7lfBq943zv1c/UpVv+RmgaO0NJZrjTXgRGsQZg=;
 b=D1AYMTuJeqYL/UsXJe1aMflGIjjvqaqPdN7AI0ekqtMdHSIEVZ3efdqlb19Y6rpIGz
 idEWp2jutXAnfgUNyQP+6nll5GhX85LIipB0TGS/7pO3B4uPuyUlWy8CRfi52cO+L+3l
 r+QxhpaK+fjQYMREZ4DARpKwX2sZ3HLsjMtY6kaLQ9qkN1ZT5Po+psfEwahUzdsE+auB
 kK0XxIxpWpMv8JCPvCjqU8qQ0ujPKcmqTmOZHeKY+ydYtjMKOc8AfFfM5NpUn9oQvgFD
 ZY1yDrfiB47QM81t1xz1qFnsqp3kl3MKkM9fRT+sMZS3szQdj+QnsHr/l4JFm7XnObkG
 UAeQ==
X-Gm-Message-State: APjAAAXsUX4ZLZ41B+Tc5i+MtNZ24b0Jkb4eJB7yajZoUWptzUHSEAZa
 ZYkxVDSMc+ceEcacgMBlgw8RLwlO
X-Google-Smtp-Source: APXvYqwdvXnx/eWF+HXv8ehtVaAtOe3ihU4vGlDhQSoa+qC9AxIAgOtUAIkJvtqLfSjgvcxad0IzEg==
X-Received: by 2002:a63:1a1f:: with SMTP id a31mr72177381pga.21.1577723449902; 
 Mon, 30 Dec 2019 08:30:49 -0800 (PST)
Received: from localhost (smtpbg511.qq.com. [203.205.250.109])
 by smtp.gmail.com with ESMTPSA id r1sm48330103pgp.15.2019.12.30.08.30.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 30 Dec 2019 08:30:49 -0800 (PST)
Message-ID: <5e0a2639.1c69fb81.acc63.eda3@mx.google.com>
X-Google-Original-Message-ID: tencent_8AB8EF78EC49D291AD2E2DD6@qq.com
Mime-Version: 1.0
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
Date: Tue, 31 Dec 2019 00:30:47 +0800 (GMT+08:00)
To: =?UTF-8?B?dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20=?=<usrp-users@lists.ettus.com>
Subject: [USRP-users] DPDK 18.11
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
From: Damon Qiu via USRP-users <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?RGFtb24gUWl1?= <qiu.guowang007@gmail.com>
Cc: =?UTF-8?B?RGFtb24gUWl1?= <qiu.guowang007@gmail.com>
Content-Type: multipart/mixed; boundary="===============2910042005606596326=="
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

--===============2910042005606596326==
Content-Type: multipart/alternative; 
	boundary="----=_Part_0_58315629.1577723447866"

------=_Part_0_58315629.1577723447866
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: base64


------=_Part_0_58315629.1577723447866
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: base64

PGRpdj48YnI+PGRpdj5IaSBhbGwsPC9kaXY+PGRpdj5JcyB0aGVyZSBhbnlvbmUga25vd3Mgd2hp
Y2ggdWhkIGJyYW5jaCBzdXBwb3J0cyBEUERLIDE4LjExPyBNeSBuZXR3b3JrIGNhcmQgbmVlZHMg
dG8gdXNlIHRoaXMgRFBESyB2ZXJzaW9uLjwvZGl2PjxkaXY+SSBoYXZlIHRyaWVkIG1hc3Rlci1u
ZXh0IGJyYW5jaCwgYnV0IGEgd2FybmluZyBhcHBlYXJzOiAiRGV0ZWN0ZWQgdXNlX2RwZGsgYXJn
dW1lbnQsIGJ1dCBEUERLIHN1cHBvcnQgbm90IGJ1aWx0IGluLiI8L2Rpdj48ZGl2PkJlc3QgcmVn
YXJkcyw8L2Rpdj48ZGl2PkRhbW9uPC9kaXY+PGJyPjxicj48YnI+PGJyPjwvZGl2PjxkaXY+PC9k
aXY+
------=_Part_0_58315629.1577723447866--


--===============2910042005606596326==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2910042005606596326==--

