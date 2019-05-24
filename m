Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E572029A8F
	for <lists+usrp-users@lfdr.de>; Fri, 24 May 2019 17:02:17 +0200 (CEST)
Received: from [::1] (port=45468 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hUBhz-0001TD-Hh; Fri, 24 May 2019 11:02:11 -0400
Received: from mail-yb1-f175.google.com ([209.85.219.175]:33421)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <patchvonbraun@gmail.com>)
 id 1hUBhS-0001O9-G7
 for usrp-users@lists.ettus.com; Fri, 24 May 2019 11:02:08 -0400
Received: by mail-yb1-f175.google.com with SMTP id w127so1861910yba.0
 for <usrp-users@lists.ettus.com>; Fri, 24 May 2019 08:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=/UI4AkB5iX+nNrVbr2golhnhf/9XddWj3iwnzAMDaqc=;
 b=DhVgZ9SyqdmKYQWXVAfi7kG720ljCHsToBw7/0t2eYehE9H6TXIi3gZ6bHSFvsvvHj
 jbOjD10rbLC6Ua0L2QusvEkOwUMsaD9zAASn43Anwz/kkOVPw4tyBPuXUBW9A0JI4ae7
 DYcAW2G1T+Vxj7gcI564SD+Cft39cu9gc8oZUb8n+I4HsCU9eRcDW/twlbqp5ZQ9/65N
 Y3I+utLFNUF92rxoE8+LC2vx37pUvYg0VzB5xf2FkNDUDK8WBo9K4V+7pNUmclZ+i8lW
 R/3TbOVW2XCDmqiEIq70eJlawgxVu9f8vFXzNNkcni4Z+AeRJ4JYJ1Tf/n2rNiovP94g
 Ozqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=/UI4AkB5iX+nNrVbr2golhnhf/9XddWj3iwnzAMDaqc=;
 b=r/ThHxDAYGwSvgkJd177JqXFLDchaWf7Bno0P05MCMnsREXwZNMOZBd0sPf4pUQ+KW
 uXLbphlRLwv0f7saTlmKnRqJ52Jcw04/2l9f4YA3BklvKFFRYnc5BW//faADjHin+lmj
 HRvW4OmZS7G4jbnZUFDtAYlEP8y0PS78EF5+kQEsKFGxkRhX5tONysT+LRT/DY7LfqLD
 uiFM6ZB+RAgnTlla/U8fuiTBsPkszXtsTHY0a8/BU5HrAc5YwKZOJBkD0v3di84Xrnen
 2YLJ4Cn4Fw4nikYVsl21FW063WehT9o3ncK92XqL/yW2oW+H59njugFsOSwwvyJQPQU5
 W8Ew==
X-Gm-Message-State: APjAAAXgZXx6gTi62xSPFe1CePwuqFSDNSWxd2+K4/6xf8FcS0NmQ010
 N+pYVyhvKSK2HU7RgM3V224P1rgG7oI=
X-Google-Smtp-Source: APXvYqyo2uL6B/M/ola9lHrqqVIg7sf/KZv3YuuZfvEaZLsrjB6410Hh4cPxw4ui22CLwltzLcjuXw==
X-Received: by 2002:a25:a28f:: with SMTP id c15mr12877774ybi.408.1558710057510; 
 Fri, 24 May 2019 08:00:57 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id 207sm698791ywo.98.2019.05.24.08.00.56
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 08:00:56 -0700 (PDT)
Message-ID: <5CE80727.9090600@gmail.com>
Date: Fri, 24 May 2019 11:00:55 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <1558705520.107201.10964.51254@mail.rambler.ru>
In-Reply-To: <1558705520.107201.10964.51254@mail.rambler.ru>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] TwinRX min frequency
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
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

T24gMDUvMjQvMjAxOSAwOTo0NSBBTSwg0JDQvdC00YDQtdC5IDEgdmlhIFVTUlAtdXNlcnMgd3Jv
dGU6Cj4gdGhpcyBpcyBteSB0dW5pbmcgY29kZQo+Cj4gdHVuZV9yZXF1ZXN0LnRhcmdldF9mcmVx
ID0gRnJlcXVlbmN5Kk1IelRvSHo7Cj4gdHVuZV9yZXF1ZXN0LnJmX2ZyZXFfcG9saWN5ID0gVUhE
X1RVTkVfUkVRVUVTVF9QT0xJQ1lfQVVUTzsKPiB0dW5lX3JlcXVlc3QuZHNwX2ZyZXFfcG9saWN5
ID0gVUhEX1RVTkVfUkVRVUVTVF9QT0xJQ1lfQVVUTzsKPgo+IGlmIGZyZXF1ZW5jeSBpcyBsZXNz
IDUwIE1IeiBzaWduYWwgaW4gc3BlY3RydW0gaXMgb3V0IChiYW53aWR0aCAxIE1IeikKPgo+CkNv
dWxkIHlvdSBnaXZlIHVzIGEgbGlzdGluZyBvZjoKCnVoZF91c3JwX3Byb2JlIC0tYXJncyBhZGRy
PTx5b3VyIGRldmljZSBpcD4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNf
bGlzdHMuZXR0dXMuY29tCg==
