Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 94DE32D8B52
	for <lists+usrp-users@lfdr.de>; Sun, 13 Dec 2020 05:58:09 +0100 (CET)
Received: from [::1] (port=41074 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1koJSS-00062u-5O; Sat, 12 Dec 2020 23:58:08 -0500
Received: from mail-qk1-f178.google.com ([209.85.222.178]:40181)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1koJSN-0005wj-SM
 for USRP-users@lists.ettus.com; Sat, 12 Dec 2020 23:58:03 -0500
Received: by mail-qk1-f178.google.com with SMTP id z11so12692311qkj.7
 for <USRP-users@lists.ettus.com>; Sat, 12 Dec 2020 20:57:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=0LiUYkfLlNERHNboZ0Xf5quhCIOWRnlwO3am3fkiB7w=;
 b=NoRqOPoHsRAgYBcZ96b5PvYxbYpz4AyWzWlRMmO7/v9OS8I6DPXj5AAQSm1RhJ0a9F
 k25BRknY9IEw5lF4LSMGYakpFSUjDeSTx0AcvlZl2JWH57YFnCtPDP29OrmNlTwa/Qxx
 BR1GHvmEzrb+QCHyFKOEwfoRjc3fzuZtNKNLAkOwoqQZXIMzjDL71HF8fvbdI2bvEtKq
 EB7sN6tn60ZRNdC1ZQyFTJgYy+uJedYfteanXVIeaVqBVN8566EwjSnEEzrFMt+J0uKd
 bG10vXFWKsVSTY6sxZTXRmtCippOKfOfH5fFi+c27meK55bKMkzxx+QfnJLlcCNriEl+
 oq7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=0LiUYkfLlNERHNboZ0Xf5quhCIOWRnlwO3am3fkiB7w=;
 b=RgQDMrb7enqFIxCO2cjl0jYSZuxQNBTklZqRi0m0WtKXFwnKhRqraZIpCQR0Dl28ao
 OttUgv9kT6d723VqogZOEP+j8Glj+3FyNUSdXIPC25X4AXQgsxUCPCB2M7N/zOZEcD7S
 5J07O6RegwFJ2BZKadTmL6zT2PblJ0NrX4cfZAvU7EdD4HwBPaM20RtU/A4vBFdHZ8ds
 vxYJOWaRBFW/7HK956m5JnYKeaCWPZT034Epx6tNyW8Y40brtYMiaI82uGvy6x/iGAuU
 KoU/txeXVkabcNsDT+e6K46PK8hCy9ev7hS1I5ux0jTd3I3UhWa5Ym3UcWbYoc85tvBa
 puqQ==
X-Gm-Message-State: AOAM532VBm6Zh4iu1L/rAywSUQe88TyrNjYlVOQGs8cA7zHA4coayjAF
 y1Xf4WaEU3TWpvn8otaJrts=
X-Google-Smtp-Source: ABdhPJzXErLl0zXY8yvpHKsgbVspjz+cZrmxVcSnpR6zAX5KviEbj7l8JZil5nZbg8HwkHeNaDAlUQ==
X-Received: by 2002:a05:620a:2290:: with SMTP id
 o16mr24930157qkh.101.1607835443101; 
 Sat, 12 Dec 2020 20:57:23 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id r6sm12677955qkk.127.2020.12.12.20.57.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 12 Dec 2020 20:57:22 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Sat, 12 Dec 2020 23:57:21 -0500
Message-Id: <387722E8-3EDA-460F-94A1-B19E3A3FE81B@gmail.com>
References: <CACcka+0y7vAALA+q9=giw0+WR0uTtwityQhS3Cn=+CPYfQg0Xw@mail.gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <CACcka+0y7vAALA+q9=giw0+WR0uTtwityQhS3Cn=+CPYfQg0Xw@mail.gmail.com>
To: Basse Ang <b4ss3k@gmail.com>
X-Mailer: iPhone Mail (18B92)
Subject: Re: [USRP-users] Problem with x310 io error
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
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

V2hhdCB0eXBlIG9mIEV0aGVybmV0IGNvbm5leHRpb24gYXJlIHlvdSB1c2luZz8KCldoYXQgdHlw
ZSBvZiBQQz8gRG9lcyB5b3VyIEV0aGVybmV0IGNhcmQgaGF2ZSBhbiA4MjU3OUxNIGNvbnRyb2xs
ZXIgY2hpcD8KCkFyZSB5b3UgcnVubmluZyB1bmRlciBhIFZNIG9yIG9uIHRoZSBwaHlzaWNhbCBo
YXJkd2FyZT8KCgoKClNlbnQgZnJvbSBteSBpUGhvbmUKCj4gT24gRGVjIDEyLCAyMDIwLCBhdCAx
MToxOSBQTSwgQmFzc2UgQW5nIHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbT4gd3JvdGU6Cj4gCj4g77u/SGkKPiAKPiBKdXN0IGhhdmUgYW4gaXNzdWUsIG15IHgzMTAg
YWx3YXlzIGdldCB0aGlzIGVycm9yOgo+IAo+IFtJTkZPXSBbVUhEXSBsaW51eDsgR05VIEMrKyB2
ZXJzaW9uIDkuMy4wOyBCb29zdF8xMDcxMDA7IFVIRF8zLjE1LjAuMC1yZWxlYXNlCj4gW0lORk9d
IFtYMzAwXSBYMzAwIGluaXRpYWxpemF0aW9uIHNlcXVlbmNlLi4uCj4gW0lORk9dIFtYMzAwXSBN
YXhpbXVtIGZyYW1lIHNpemU6IDgwMDAgYnl0ZXMuCj4gW0lORk9dIFtYMzAwXSBSYWRpbyAxeCBj
bG9jazogMjAwIE1Iego+IFtJTkZPXSBbR1BTXSBGb3VuZCBhbiBpbnRlcm5hbCBHUFNETzogTENf
WE8sIEZpcm13YXJlIFJldiAwLjkyOWIKPiBbRVJST1JdIFtVSERdIEV4Y2VwdGlvbiBjYXVnaHQg
aW4gc2FmZS1jYWxsLgo+ICAgaW4gY3RybF9pZmFjZV9pbXBsPF9lbmRpYW5uZXNzPjo6fmN0cmxf
aWZhY2VfaW1wbCgpIFt3aXRoIHVoZDo6ZW5kaWFubmVzc190IF9lbmRpYW5uZXNzID0gdWhkOjpF
TkRJQU5ORVNTX0JJR10KPiAgIGF0IC9idWlsZC91aGQtd2pBa0dkL3VoZC0zLjE1LjAuMC0xL2hv
c3QvbGliL3Jmbm9jL2N0cmxfaWZhY2UuY3BwOjUwCj4gdGhpcy0+c2VuZF9jbWRfcGt0KDAsIDAs
IHRydWUpOyAtPiBFbnZpcm9ubWVudEVycm9yOiBJT0Vycm9yOiBCbG9jayBjdHJsIChDRV8wMF9Q
b3J0XzMwKSBubyByZXNwb25zZSBwYWNrZXQgLSBBc3NlcnRpb25FcnJvcjogYm9vbChidWZmKQo+
ICAgaW4gdWludDY0X3QgY3RybF9pZmFjZV9pbXBsPF9lbmRpYW5uZXNzPjo6d2FpdF9mb3JfYWNr
KGJvb2wsIGRvdWJsZSkgW3dpdGggdWhkOjplbmRpYW5uZXNzX3QgX2VuZGlhbm5lc3MgPSB1aGQ6
OkVORElBTk5FU1NfQklHOyB1aW50NjRfdCA9IGxvbmcgdW5zaWduZWQgaW50XQo+ICAgYXQgL2J1
aWxkL3VoZC13akFrR2QvdWhkLTMuMTUuMC4wLTEvaG9zdC9saWIvcmZub2MvY3RybF9pZmFjZS5j
cHA6MTUxCj4gCj4gRXJyb3I6IEVudmlyb25tZW50RXJyb3I6IElPRXJyb3I6IEJsb2NrIGN0cmwg
KENFXzAwX1BvcnRfMzApIG5vIHJlc3BvbnNlIHBhY2tldCAtIEFzc2VydGlvbkVycm9yOiBib29s
KGJ1ZmYpCj4gICBpbiB1aW50NjRfdCBjdHJsX2lmYWNlX2ltcGw8X2VuZGlhbm5lc3M+Ojp3YWl0
X2Zvcl9hY2soYm9vbCwgZG91YmxlKSBbd2l0aCB1aGQ6OmVuZGlhbm5lc3NfdCBfZW5kaWFubmVz
cyA9IHVoZDo6RU5ESUFOTkVTU19CSUc7IHVpbnQ2NF90ID0gbG9uZyB1bnNpZ25lZCBpbnRdCj4g
ICBhdCAvYnVpbGQvdWhkLXdqQWtHZC91aGQtMy4xNS4wLjAtMS9ob3N0L2xpYi9yZm5vYy9jdHJs
X2lmYWNlLmNwcDoxNTEKPiAKPiAKPiBBbnlvbmUgaGFzIGV4cGVyaWVuY2VkIGl0IHRvbz8gQ291
bGQgeW91IGhlbHAgbWUgcGxlYXNlLiB0aGFuayB5b3UuCj4gCj4gUmVnYXJkcwo+IEJhc3MKPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0Cj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRwOi8vbGlz
dHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5l
dHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
