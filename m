Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4477331BA7C
	for <lists+usrp-users@lfdr.de>; Mon, 15 Feb 2021 14:40:59 +0100 (CET)
Received: from [::1] (port=39504 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lBe7T-0007so-Ba; Mon, 15 Feb 2021 08:40:55 -0500
Received: from mail-ed1-f52.google.com ([209.85.208.52]:47028)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aaron.rossetto@ettus.com>)
 id 1lBe7P-0007mh-I6
 for usrp-users@lists.ettus.com; Mon, 15 Feb 2021 08:40:51 -0500
Received: by mail-ed1-f52.google.com with SMTP id y18so7983197edw.13
 for <usrp-users@lists.ettus.com>; Mon, 15 Feb 2021 05:40:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=c2IqJy/34NIZgkt2JnEFRdPv8NGFy1ZjYhJmjGZULBs=;
 b=oY9ktD0L+iodVQHWY0fwc9nmBOOCMGEawPvZiKYlZ3VEQ4UEbhOzHUhmMlIDMoN7sg
 ZmTdpwI/QCfhAJIOZjWHj6u65/PYGM7F8l+KJAamTkD6qvbsCr+Edt3h3cglVW8zA/Ya
 8ojGVNwkLXbClHKEz0erHOg+lF/4Yf9GV9UE590dWvVCJ30YukO6yG2i5nAxOtKvTb8B
 fDHJxoPbuF2z/x5LYwapmiNLFmWqiNKXg9aRVt5GOg4SNkKpnDWMxb+PJ5RkJDfjCuKn
 +N+HBGlbzFzRx2tSHacJjAMr7bExTLyoAUYsieG++nJiCb+I2zZwSYptOnw9Q4Obsh/f
 isKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=c2IqJy/34NIZgkt2JnEFRdPv8NGFy1ZjYhJmjGZULBs=;
 b=i3+8LcVhtAHmuoWmOkFZx8QUh/wzvQMJxGTbm0Bu/WogOBB5AHiCdbfD+80KZO51nK
 1YcTLq5eDOK6FqG3W1uTO9GD3a1jaWFL2/FwWgMkm/S7RgWF8+qZbmG/KV8CKeksCrID
 PQAtFCFju3TaYNfB565EJf4d8w/UwcqhTdyuia+9xuwQNkREDWA7qZubV9MgydEZFc9t
 uRci5Xybpt2xYEHhFtD78iK9QnMq9WqCbfUWIEXFU3OnPn0O74pr2IHJyzPZxFf7fTfF
 kY3bwrHMj1uIAIIbjQkVoNfX5WE6r4rM84wTUKVaUTVG3XfV5Pjfh3joDBfrErGzO9Vj
 pSlw==
X-Gm-Message-State: AOAM532Dz7XH8PPDhV0teZ6M8i055h1Rsy15Oi24uaa/nnR1HYf7FVX0
 mF1N3xf/f4VRvZryMJKFkS2zTNFcPv0X2wxQvIq5NYzDqaSFZw==
X-Google-Smtp-Source: ABdhPJwj7i8W6RuJLNDDL52EUPE75f5jS+H64M7IeNbq24AqVdxQG+rhAFWPVgWsFbOpQ1Hy+i9TTY/NqKQESC5fIcA=
X-Received: by 2002:a05:6402:2210:: with SMTP id
 cq16mr15559756edb.148.1613396410426; 
 Mon, 15 Feb 2021 05:40:10 -0800 (PST)
MIME-Version: 1.0
References: <LNXP123MB37245E820A2A005C90462024CA8B9@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
In-Reply-To: <LNXP123MB37245E820A2A005C90462024CA8B9@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
Date: Mon, 15 Feb 2021 07:39:59 -0600
Message-ID: <CAAg5+MxTUuHFAi+7A1w6NgsgWUCtUqwCykSA8_vV95_pyffYUw@mail.gmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC OTT Block on E320
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
From: Aaron Rossetto via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aaron Rossetto <aaron.rossetto@ettus.com>
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

T24gRnJpLCBGZWIgMTIsIDIwMjEgYXQgNTo1MyBBTSBNYXJrIEQgdmlhIFVTUlAtdXNlcnMKPHVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToKCj4gU28gZmFyIEnigJl2ZSBnb3QgdGhl
IEZQR0EgYnVpbHQgYW5kIHVwbG9hZGVkIHRvIHRoZSBGUEdBLiBVaGRfdXNycF9wcm9iZSBzaG93
cyB0aGF0IHRoZSBSRk5vQyByb3V0aW5nIGFzIGV4cGVjdGVkLCBidXQgdGhlIG5hbWUgb2YgT1RU
IGJsb2NrIGhhcyBiZWVuIHJlcGxhY2VkIHdpdGggQmxvY2sjMC4gVGhlIE9PVCBwcm9qZWN0IGFw
cGVhcnMgYXMgYSBmb2xkZXIgaW4gR05VIHJhZGlvIHdpdGggdGhlIG5ldyBibG9jayBhdmFpbGFi
bGUgdG8gYmUgZHJhZ2dlZCBpbnRvIHRoZSBwcm9qZWN0LgoKVGhlIG91dHB1dCBvZiAnMC9CbG9j
ayN7bnVtYmVyfScgZnJvbSB1aGRfdXNycF9wcm9iZSBmb3Igb3V0LW9mLXRyZWUKYmxvY2tzIGlu
IFVIRCA0LjAgaXMgYSBrbm93biBsaW1pdGF0aW9uIGFuZCBleHBlY3RlZC4gV2hlbiBVSEQKZGlz
Y292ZXJzIHRoZSB0b3BvbG9neSBvZiB0aGUgUkZOb0MgZ3JhcGgsIGl0IGNhbiBzZWUgdGhhdCBh
IGJsb2NrIGlzCnRoZXJlLCBidXQgYmVjYXVzZSBpdCBpc24ndCByZWdpc3RlcmVkIHdpdGggVUhE
LCBpdCBpcyBkaXNwbGF5IHdpdGgKdGhlIHVuaW1hZ2luYXRpdmUgbmFtZSBvZiAnQmxvY2snLiBO
b3JtYWxseSwgdGhlIGJsb2NrIGNvbnRyb2xsZXIKY2xhc3MgY29udGFpbnMgdGhlIGNvZGUgdG8g
cmVnaXN0ZXIgdGhlIGJsb2NrIHdpdGggVUhEOyBvbmx5IGluLXRyZWUKYmxvY2tzIHRoYXQgYXJl
IGJ1aWx0IGFzIGEgcGFydCBvZiBVSEQgaGF2ZSB0aGVpciBuYW1lcyBkaXNwbGF5ZWQgaW4KdWhk
X3VzcnBfcHJvYmUuCgpCZXN0IHJlZ2FyZHMsCkFhcm9uCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGlu
Zm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
