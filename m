Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD11CE745
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2019 17:20:41 +0200 (CEST)
Received: from [::1] (port=40098 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iHUoQ-0001fK-RY; Mon, 07 Oct 2019 11:20:38 -0400
Received: from mail-qk1-f178.google.com ([209.85.222.178]:38337)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <frestuc@gmail.com>) id 1iHUoL-0001Wu-W5
 for usrp-users@lists.ettus.com; Mon, 07 Oct 2019 11:20:34 -0400
Received: by mail-qk1-f178.google.com with SMTP id u186so12943849qkc.5
 for <usrp-users@lists.ettus.com>; Mon, 07 Oct 2019 08:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=NTnEAT89E7SFRA+EM2GieQf+AO3Mbtijnfwae7AnAI4=;
 b=DJKiTyB5Iu405rxGqUmL6zdUdWEaMASALDtvYRl008vtcabMg2nSjQtH0o+LTp5G2O
 lbvpWVGBucZitIozlqY9N7J940XNPncUaESt/wF4EHoz+rmIKAA9Hj6yOB3GiyRe35v5
 jjz1bowMGNoiJfXc71R07kB2QRX3io+5psr9ZNDcPEThrni38y2NBuhyzf5lFDxTWcZY
 Ygq1wdcB7cGs29opnyutS5Hf8eVLdf/S5gTJbO/ibdOuNzwmuLqr0tVXLmCkameVIorf
 gk3i8UB50YanOAttXVlrwgyiL1bl0GK9Niu+8StUUlqC/t8Qrt3BkEmy8mRdZAg6Zh4g
 yfow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-transfer-encoding:content-language;
 bh=NTnEAT89E7SFRA+EM2GieQf+AO3Mbtijnfwae7AnAI4=;
 b=rXF/PE5mhTBZKyGDS5br6UcwA8+/+e/2bHeC7M11J+G4ZCjxaeiCOyFEg4Ip6jrSoG
 lm7B5NwONnXuhYLyFYBLVFErWZIpI3TbQJYXVa9bOmrLFAyf4xDgh4G+IW+ljVFy7NIq
 h1A101J/JCJi9RLBsJyru4/QxvZ11LpsKje7riwdZwzV0MLvt1MnPgdxx/6ehrGlY8A1
 iNsVEmVxc3Li2QDmzHqoH557g186R9eHmbjEiBi36GZNLCWSq7J8q1qp72iwcs4uZlHM
 xnv9N69arIKS1v/iIZWOw0OmZpE/1EbTxSoFCe4kC0It9VmOv4YpY3n2Al37W2T1gkc+
 2qrA==
X-Gm-Message-State: APjAAAX+RYMvE39bLdQo6kppUpijcdB6C2v+Eyt+NDI/W8kuZ40DCRrf
 5LI599wMm/EyRr0tn/uSNSeCjzQjFRU=
X-Google-Smtp-Source: APXvYqzHoNGvFbN1A1OSabW/s25Xrcg3+6GKqXYMaSdkhQqqXLpKzPo2h+lOtPeIipmuBFzG0qGBtg==
X-Received: by 2002:a37:4d83:: with SMTP id
 a125mr23464930qkb.111.1570461592751; 
 Mon, 07 Oct 2019 08:19:52 -0700 (PDT)
Received: from [10.75.8.38] ([129.10.163.26])
 by smtp.gmail.com with ESMTPSA id m186sm8826505qkb.88.2019.10.07.08.19.51
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 07 Oct 2019 08:19:51 -0700 (PDT)
To: usrp-users@lists.ettus.com
Message-ID: <dee4f507-7c7c-024c-a57b-a1417d02f98b@gmail.com>
Date: Mon, 7 Oct 2019 11:19:51 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
Subject: [USRP-users] Problems with N210 FPGA bitfile -- image not valid?
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
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

SGkgYWxsLAoKSSd2ZSBidWlsdCBhbiBOMjEwIGltYWdlIHVzaW5nIHRoZSBzb3VyY2UgY29kZSBw
cm92aWRlZCBieSBFdHR1cy0tCgpXaGVuIEkgdHJ5IHRvIGJ1cm4gdGhlIEZQR0EgaW1hZ2Ugb250
byB0aGUgTjIxMCwgdGhvdWdoLCBJIHJlY2VpdmUgdGhlIApmb2xsb3dpbmcgZXJyb3I6CgpmcmFu
a0BmcmFuay1pTWFjOn4kIHVoZF9pbWFnZV9sb2FkZXIgCi0tYXJncz0idHlwZT11c3JwMixhZGRy
PTE5Mi4xNjguMTAuMiIgLS1uby1mdyAKLS1mcGdhLXBhdGg9L2hvbWUvZnJhbmsvdTJwbHVzLmJp
dApbSU5GT10gW1VIRF0gbGludXg7IEdOVSBDKysgdmVyc2lvbiA4LjMuMDsgQm9vc3RfMTA2NzAw
OyAKVUhEXzMuMTUuMC5naXQtNzQtZzllYTcxMGIxClVuaXQ6IFVTUlAgTjIxMCByNCAoRjJFMjhG
LCAxOTIuMTY4LjEwLjIpCkVycm9yOiBSdW50aW1lRXJyb3I6IFRoZSBmaWxlIGF0IHBhdGggIi9o
b21lL2ZyYW5rL3UycGx1cy5iaXQiIGlzIG5vdCBhIAp2YWxpZCBGUEdBIGltYWdlLgpmcmFua0Bm
cmFuay1pTWFjOn4kCgpUaGlzIGlzIHRoZSBzaXplIG9mIHRoZSBpbWFnZToKCmZyYW5rQGZyYW5r
LWlNYWM6fiQgbHMgLWxhIC9ob21lL2ZyYW5rL3UycGx1cy5iaXQKLXJ3LXItLXItLSAxIGZyYW5r
IGZyYW5rIDEzMDMzMTggT2N0wqAgNyAxMTowNyAvaG9tZS9mcmFuay91MnBsdXMuYml0CmZyYW5r
QGZyYW5rLWlNYWM6fiQKCkFnYWluLCBubyBtb2RpZmljYXRpb25zIHRvIHRoZSBWZXJpbG9nIGRl
c2lnbnMgLS0gZXZlcnl0aGluZywgaW5jbHVkaW5nIAptYWtlZmlsZSwgaXMgb3V0IG9mIHRoZSBi
b3guCgpBbnkgc3VnZ2VzdGlvbj8KClRoYW5rcywKCkZyYW5jZXNjbwoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1h
bi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
