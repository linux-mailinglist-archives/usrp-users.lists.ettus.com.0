Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0831149AB
	for <lists+usrp-users@lfdr.de>; Fri,  6 Dec 2019 00:07:42 +0100 (CET)
Received: from [::1] (port=58592 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1id0Dh-0005Qf-O1; Thu, 05 Dec 2019 18:07:37 -0500
Received: from mail-vs1-f52.google.com ([209.85.217.52]:34483)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <keithkotyk@gmail.com>)
 id 1id0De-0005N1-6E
 for usrp-users@lists.ettus.com; Thu, 05 Dec 2019 18:07:34 -0500
Received: by mail-vs1-f52.google.com with SMTP id g15so3736212vsf.1
 for <usrp-users@lists.ettus.com>; Thu, 05 Dec 2019 15:07:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=goUOFnyYWSIlC+fowJafoKjCi3B4eBHq1iRie3nczNw=;
 b=YRhPdLsrtmRbUlzIqY+UPRicJ52XEp2gfKjVy88Ae0gqOVzbZZxeCasytGPlNpnUE7
 HH7HI5Xi+pZWSQIEO/pTUDxgI7SBFUOs6sxGjePj3uY2V84kKuzlBCPR0Iyc6zQCpUb+
 n1dw8tN8Ws32NGxN3WAeqN8hw2UmJrVeW3wvYe0aHximZBp1smJsVE5mVKDMV3itF1Dr
 njXEXjNoSJmenCGgBEu4BFRKiiKycPHo+1npEz/AVMrlupFgwjAhX/9Q6Aj1jTDk36AE
 F6JhitSIi/CMjK+BpdlXUzdKSc9yxNh5Atb34s4bYJ6jv3mElK+gVKKKqY5BIjnyLynr
 Rcuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=goUOFnyYWSIlC+fowJafoKjCi3B4eBHq1iRie3nczNw=;
 b=CbDFZaJKg1vHpzHnBH1V4LckgEJ5x6Q3BW/i7KnakPzIGdHcf89WF7DU6jJwSUQBCC
 uZRIvsOh8ZZ2IGYrqog9deiuRUFi5ug9xt8ZHsN5S6NpgqmN9TUoR/5BSMXyuJWRd/lJ
 Nb1O8ihvjLxssNMI9COfLdALzIwA9e130Rz5Mu9vL6gsTfMoyTj34RA8OTVVluXaf425
 zPIqtsL4uA8Ojk8dPkY/tQlGuupOUyihvIq2fj53mc7AcjDmd87vMcr2/doPFCK+XG5o
 7G5DTn1XDT+SqiFffkdaMi8aAL9X/RDt+Ti2FkuhjvP+fa9Xyo5PxzMVOp92Ul5V3b8g
 1TAA==
X-Gm-Message-State: APjAAAVtpB2XX3NFboroz9lsDFnEgk5FxyZVIxoUbRsLtqhZ2q395ZFM
 4S0Yz/N0+8WeHf9/HBvgyY1fT/NixIVsFKyAizBBoe+X
X-Google-Smtp-Source: APXvYqxk1ew/RQj3VES6d0DFN2XR2TybIZpzHTd5KN34v8PRt0fm5lA7Nk7xNCwKKXFILrqXoPkN1NZsjgqwd5hzKaM=
X-Received: by 2002:a67:ea50:: with SMTP id r16mr7828689vso.227.1575587213266; 
 Thu, 05 Dec 2019 15:06:53 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 5 Dec 2019 23:06:27 +0000
Message-ID: <CAFGMRUBC+j_FsScHG1+7_p9GJwbe2Weh+KwghvokM58foJ-wWg@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] DPDK
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
From: Keith k via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Keith k <keithkotyk@gmail.com>
Content-Type: multipart/mixed; boundary="===============1501475408531549317=="
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

--===============1501475408531549317==
Content-Type: multipart/alternative; boundary="00000000000028d6b00598fcfc3a"

--00000000000028d6b00598fcfc3a
Content-Type: text/plain; charset="UTF-8"

Just wondering if there are plans to add DPDK support for the N2xx devices?

-- 
-Keith Kotyk

--00000000000028d6b00598fcfc3a
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">Just wondering if there are plans to add DPDK support for the N2xx devices?<br clear="all"><div><br>-- <br><div dir="ltr" class="gmail_signature" data-smartmail="gmail_signature"><div dir="ltr">-Keith Kotyk</div></div></div></div>

--00000000000028d6b00598fcfc3a--


--===============1501475408531549317==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1501475408531549317==--

