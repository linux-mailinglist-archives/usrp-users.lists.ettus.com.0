Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7B2D4708
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2019 19:57:37 +0200 (CEST)
Received: from [::1] (port=60618 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iIzAV-0004l6-Lx; Fri, 11 Oct 2019 13:57:35 -0400
Received: from mail-qk1-f181.google.com ([209.85.222.181]:40739)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <frestuc@gmail.com>) id 1iIzAR-0004dJ-S6
 for usrp-users@lists.ettus.com; Fri, 11 Oct 2019 13:57:31 -0400
Received: by mail-qk1-f181.google.com with SMTP id y144so9664133qkb.7
 for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2019 10:57:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:content-transfer-encoding:mime-version:subject:message-id:date
 :to; bh=zSTxONMPD7iv2NJ3fle4RGPj3lEZpVspFfCc2BGiyvA=;
 b=NFTwMp5JdXTdzecyzqyYwnX8w2bLIsT5nEXfzMJo71/q2etVV3GMmOuet4LUQsDPvA
 +gltc0D0LdV1iByeX/63+Wxxa696+wD+tYFye5FB5aZs24iZXvuknrd+Pge1KRP7UyU7
 31d3c5c8t+OW1thDNv7Wud6dZec6TnexAHfyr17aHcLTInLn0EdoIkLHjnHQJxJtl9fr
 nQRiVvNZxWSjgTCX08Q1H9SM/SRCId2MEez9OD2RWBSpUJqK7ZALCZFRpwLtyJGsWYkU
 P+cfoUV+Icd60e23jx/P0HZ1qcOxIuKsJK3kaR/kqk+CDlNRTG3sr6m6JjOhMtJdHEKg
 DH7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:content-transfer-encoding:mime-version
 :subject:message-id:date:to;
 bh=zSTxONMPD7iv2NJ3fle4RGPj3lEZpVspFfCc2BGiyvA=;
 b=oDM8Rd83kEALSS66Iun/d1e9ROLPD5CAxBOrKZNJwCGVR+Ua0G5yfTl6hXWrI9aePb
 a2CCd1os8Ie1XTMjvfOqUrrBu/rydApDp8nfHQqbiIMxVin8jnx942G/juPoL8LkUfhP
 spxR+mQJBY2sWipdAeLRTON81OKZQHugms2T1EPHFinTtp2SKUy24K7Zi4NTtHay2Ejc
 73JNCHBP7HvwL3Yk4Ltn1QezWWyQaq8X0GiZxXd7gOs+qtTHkCU2FyEREPOy6QtNRFhy
 gM5HsCR4E9RSpfbEvLbwHvwNSVJsFvrZlrV9fsfU6mgbetbSxx0EESyS/Xl6soRnbVqs
 mYkg==
X-Gm-Message-State: APjAAAWJsvowhtPPSIJ0kHVBvEnYjhMq4KDoapUaUpaISKE93qGF0Fof
 v9k4XvToTHmw4LXqWanNdvImy+o4iIs=
X-Google-Smtp-Source: APXvYqzBqFIvRaEvA0ZAuus0P8KDS0TSf/TDkUhAxqhDAsDLYPr3DbqNgPAn1qCLzAtcplwY9B07QA==
X-Received: by 2002:ae9:f108:: with SMTP id k8mr15532064qkg.78.1570816610845; 
 Fri, 11 Oct 2019 10:56:50 -0700 (PDT)
Received: from [10.238.146.153] ([155.52.187.3])
 by smtp.gmail.com with ESMTPSA id h2sm4972547qtd.14.2019.10.11.10.56.49
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 11 Oct 2019 10:56:50 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <6EAAB96A-D0DD-4531-B3CB-2E5912511ED2@gmail.com>
Date: Fri, 11 Oct 2019 13:56:48 -0400
To: ishai alouche via USRP-users <usrp-users@lists.ettus.com>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: [USRP-users] Some questions regarding DDC implementation
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
From: Francesco Restuccia via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Francesco Restuccia <frestuc@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
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

RGVhciBhbGwsCkkgaGF2ZSBzb21lIHF1ZXN0aW9ucyByZWdhcmRpbmcgdGhlIEREQyBpbXBsZW1l
bnRhdGlvbiAoZGRjX2NoYWluLnYsIHVzcnAyKToKCjEpIFdoeSBkbyB3ZSBuZWVkIHR3byBoYWxm
LWJhbmQgZmlsdGVycyAob25lIGxhcmdlIGFuZCBvbmUgc21hbGwpIGFmdGVyIHRoZSBDSUM/IFdo
YXQgaXMgdGhlaXIgcHVycG9zZT8gQ2Fu4oCZdCB3ZSB1c2UganVzdCBvbmUgaGFsZi1iYW5kPyAK
MikgV2hhdCBpcyB0aGUgcHVycG9zZSBvZiB0aGUgc2NhbGUgZmFjdG9yIG11bHRpcGxpY2F0aW9u
IGFmdGVyIGhiMj8gV2hhdCBkb2VzIGl0IGNvbXBlbnNhdGUgZm9yPyBIb3cgZG8gd2UgZGVjaWRl
IGl0cyB2YWx1ZT8KClRoYW5rcywKRnJhbmNlc2NvCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91
c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
