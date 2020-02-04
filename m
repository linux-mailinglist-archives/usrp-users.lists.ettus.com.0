Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E56151E8C
	for <lists+usrp-users@lfdr.de>; Tue,  4 Feb 2020 17:53:03 +0100 (CET)
Received: from [::1] (port=48912 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iz1Rb-0004TJ-Ez; Tue, 04 Feb 2020 11:52:59 -0500
Received: from mail-qv1-f43.google.com ([209.85.219.43]:39841)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iz1RY-0004Hr-9B
 for USRP-users@lists.ettus.com; Tue, 04 Feb 2020 11:52:56 -0500
Received: by mail-qv1-f43.google.com with SMTP id y8so8870076qvk.6;
 Tue, 04 Feb 2020 08:52:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=2+lzUgZd5S8sRDRga9SQp/JVO2PcqQS98qjfkcHpF9g=;
 b=QNovJjpc699g7Cae0c0Y3qOCyiEnYhkYn0qHXLHU3WJ1PdJ8uaIWFQkeawyRG2QqIx
 s1ftm/PKkXmq/sECaAdNQ9WNK9PoFfxzVD3/iywQ29xXhPsRwKURQPzVLAqC8t5IxNMb
 fmVKgUE7ntLTV3QTpa0lzDcc7q0c3WFfq//9T64X4eWRAwFQu3avJmdZjrJE8tVC+Gt4
 W5E0FtmNQoQUDQaiG4hBFYtnKMxMm5bUcQawM2cWLc677+Em00HrpUDJahOolKPjkxYY
 1dQrBKO548kAYYeMkihN9zsIJ0lG3Six0UdUxOnMohStNduW0SID8AKbF/efxDI6IvJO
 EMZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=2+lzUgZd5S8sRDRga9SQp/JVO2PcqQS98qjfkcHpF9g=;
 b=ZYjKKiLumyaOKp4sATc+X1CPQ6ZEI6Dl/JY95bB1ln2cJLE9X7UJteGkVLwXF/teJI
 iY9+VtCa1o4SPkDKqJyFmzSKDfz4ZFKqKPpMzCX4F4/DpOQ8GawZ3MBGDTkl+BrXvJQR
 5bJjZbZ120qybdN4fiseERoG5e1Zli8dy3WOKfpSogTdnfNkUaemM2c2Z5uoSXyUPeeg
 Qcy5YAgtJBIfP20mhJkiTMDQxwwOTkrBUX3KPrGD4MJL4wSYUEiHfTmfqY9+39NQDt0+
 Hglvc2GeELJwXN7qTGx+tnJSZj+bUbpXm1fv5QwhAA0K9+KVouvwU320IVFsri0+elQJ
 dF0g==
X-Gm-Message-State: APjAAAXK3rkT0otDJ9aGI2QRoXBhW2aT8SyRTZxTdEYAid4tJiPzYEGL
 wmqUH1K2xNHTLDfSTqlEB4nT0t5R
X-Google-Smtp-Source: APXvYqxwZm+Z4NgjwY9e13fqgbNk+bwkAXPPssOXzV65RRt+GX2L1paZTjOq1sOUSUhM0xIdnlbOyQ==
X-Received: by 2002:a0c:fc12:: with SMTP id z18mr28564775qvo.17.1580835115541; 
 Tue, 04 Feb 2020 08:51:55 -0800 (PST)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.gmail.com with ESMTPSA id c45sm12506486qtd.43.2020.02.04.08.51.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 04 Feb 2020 08:51:55 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Tue, 4 Feb 2020 11:51:54 -0500
Message-Id: <FAC3B923-C06C-4AB9-9692-08A822AECFFE@gmail.com>
References: <CAHeoCXyQ87sVWGUzTCHzAX_uju01+wpdac4Y_xB0cwxbEUWYrw@mail.gmail.com>
In-Reply-To: <CAHeoCXyQ87sVWGUzTCHzAX_uju01+wpdac4Y_xB0cwxbEUWYrw@mail.gmail.com>
To: Vanko Smyrnov <vanko.smyrnov@gmail.com>
X-Mailer: iPhone Mail (17C54)
Subject: Re: [USRP-users] N200 error uhd_image_loader on RuntimeError:
 Received invalid reply 32 from device
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com, mailman@lists.ettus.com
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

VHJ5IHR5cGU9TjIwMAoKQWxzbyBkbyB5b3UgcmVhbGx5IHdhbnQgdG8gb3ZlcndyaXRlIHRoZSBz
YWZlLW1vZGUgaW1hZ2U/CgpTZW50IGZyb20gbXkgaVBob25lCgo+IE9uIEZlYiA0LCAyMDIwLCBh
dCA5OjM3IEFNLCBWYW5rbyBTbXlybm92IHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbT4gd3JvdGU6Cj4gCj4g77u/Cj4gSGVsbG8gZ3V5cywgCj4gCj4gaSBzdHVjayBh
dCB0aGUgbW9tZW50IHRvIHJlc29sdiB0aGlzIHByb2JsZW0uIAo+IAo+IEZpcnN0LCB1c2luZyB1
aGRfZmluZF9kZXZpY2VzIDogCj4gT1VUUFVUIDogCj4gdWhkX2ZpbmRfZGV2aWNlcyAKPiBsaW51
eDsgR05VIEMrKyB2ZXJzaW9uIDcuMy4wOyBCb29zdF8xMDY1MDE7IFVIRF8wMDMuMDEwLjAwMy4w
MDAtMC11bmtub3duCj4gCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KPiAtLSBVSEQgRGV2aWNlIDAKPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+IERldmljZSBBZGRyZXNzOgo+ICAgICB0eXBlOiB1
c3JwMgo+ICAgICBhZGRyOiAxOTIuMTY4LjEwLjIKPiAgICAgbmFtZTogCj4gICAgIHNlcmlhbDog
Cj4gCj4gU2Vjb25kLCB1aGRfdXNycF9wcm9iZSA6Cj4gT1VUUFVUIDogCj4gbGludXg7IEdOVSBD
KysgdmVyc2lvbiA3LjMuMDsgQm9vc3RfMTA2NTAxOyBVSERfMDAzLjAxMC4wMDMuMDAwLTAtdW5r
bm93bgo+IAo+IC0tIE9wZW5pbmcgYSBVU1JQMi9OLVNlcmllcyBkZXZpY2UuLi4KPiBFcnJvcjog
UnVudGltZUVycm9yOiAKPiBQbGVhc2UgdXBkYXRlIHRoZSBmaXJtd2FyZSBhbmQgRlBHQSBpbWFn
ZXMgZm9yIHlvdXIgZGV2aWNlLgo+IFNlZSB0aGUgYXBwbGljYXRpb24gbm90ZXMgZm9yIFVTUlAy
L04tU2VyaWVzIGZvciBpbnN0cnVjdGlvbnMuCj4gRXhwZWN0ZWQgcHJvdG9jb2wgY29tcGF0aWJp
bGl0eSBudW1iZXIgWzEwIHRvIDEyXSwgYnV0IGdvdCA5Ogo+IFRoZSBmaXJtd2FyZSBidWlsZCBp
cyBub3QgY29tcGF0aWJsZSB3aXRoIHRoZSBob3N0IGNvZGUgYnVpbGQuCj4gUGxlYXNlIHJ1bjoK
PiAKPiAgIi91c3IvbGliL3g4Nl82NC1saW51eC1nbnUvdWhkL3V0aWxzL3VoZF9pbWFnZXNfZG93
bmxvYWRlci5weSIKPiAgIi91c3IvYmluL3VoZF9pbWFnZV9sb2FkZXIiIFwKPiAgICAgLS1hcmdz
PSJ0eXBlPXVzcnAyLGFkZHI9MTkyLjE2OC4xMC4yIgo+IAo+IFRoaXJkLCB1aGRfaW1hZ2VfbG9h
ZGVyIC0tYXJncz0idHlwZT11c3JwMixhZGRyPTE5Mi4xNjguMTAuMixvdmVyd3JpdGUtc2FmZSIg
LS1mdy1wYXRoPXVzcnBfbjIwMF9mdy5iaW4gLS1mcGdhLXBhdGg9dXNycF9uMjAwX3I0X2ZwZ2Eu
YmluCj4gT1VUUFVUIDogCj4gbGludXg7IEdOVSBDKysgdmVyc2lvbiA3LjMuMDsgQm9vc3RfMTA2
NTAxOyBVSERfMDAzLjAxMC4wMDMuMDAwLTAtdW5rbm93bgo+IAo+IEVycm9yOiBSdW50aW1lRXJy
b3I6IFJlY2VpdmVkIGludmFsaWQgcmVwbHkgMzIgZnJvbSBkZXZpY2UuCj4gCj4gLi4uLi4uLi4u
Li4uLi4uLi4uLi4uCj4gaSBoYXZlIHRyaWVkIG1hbnkgbWV0aG9kIGFuZCBzdGlsbCBjYW5ub3Qg
ZmluZCBzb2x1dGlvbiwgYW55Ym9keSBoYXZlIHRoZSBzYW1lIHByb2JsZW0gd2l0aCBtZSAKPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0Cj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRwOi8vbGlz
dHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5l
dHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
