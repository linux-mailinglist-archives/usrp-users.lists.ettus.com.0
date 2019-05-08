Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A9D18182
	for <lists+usrp-users@lfdr.de>; Wed,  8 May 2019 23:11:15 +0200 (CEST)
Received: from [::1] (port=53954 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOTqM-0001ut-L4; Wed, 08 May 2019 17:11:14 -0400
Received: from mail-qk1-f171.google.com ([209.85.222.171]:36733)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <patchvonbraun@gmail.com>)
 id 1hOTpo-0001kP-I5
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 17:11:10 -0400
Received: by mail-qk1-f171.google.com with SMTP id c14so198482qke.3
 for <usrp-users@lists.ettus.com>; Wed, 08 May 2019 14:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=AkDd0cZjBv8xs3KSVyxEvEmo8baMhKdF502KscCr870=;
 b=Ngs2kKrDEktTqbvLYYawPjlIKM+2RMiTLvSAoikyNRDijEzcuJbJEBJm31PDjmdPUy
 drPU1njkJR7NyxN636P1/8SCCGAP3X/JSXhz6AzXbwMlvqX3NqHAUQtqpuT8QXXnPXBI
 bDlk39FwZsjx/NZgTXPnSAed4hEj/NrOSxXSeN3/Yx2Yi6JiRYGhQcMXhisd13tzeAgF
 QiVsSTF7ndrj1iIUQa9OTk1VNFzup9b/IcYgIyua+8KUx5MtW8nlJtgMRa10OOq/qaN6
 tneGjKX60tanjKw6lTtdZTmk6vbgtZIE9FGyHXEMNhR1Kkn2dd3Y6vLTDUOLwdtDVtMw
 Ze4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=AkDd0cZjBv8xs3KSVyxEvEmo8baMhKdF502KscCr870=;
 b=OZ+XGahS8XfzCb3uBUZTB2v6NSEQtWjViFP5UUoU+sndTRDgIAwej/+WLjDmqXJghW
 pSWsWfPH0vf8M72kZPBkeKO+qJm1TpdMCpQRogrtyUOdY4ay5FhRYelfXz6Abh7Au9jv
 srNXPAjFHRWOKg6EN1HlAsfH8iBs7kAwFskDbnOGZ2D6giCbyynMjZAucTOjK7oULhHg
 UKC+gnG1pWkw0SvYOvtGkTojUKXKNwg7gOOQEegTg6HSCOOso1ycJlS3brPzkjxaJX70
 6ZkQ3rvLGv6PbrHAbSP3JSCjFAeHnIZmLFX7aMjyjvzxSkFYD/LVBUR9spiLmnXY5EYA
 VOYw==
X-Gm-Message-State: APjAAAV2Zjed6YtGro285ASdyhsPqDqzzIf4b/DkoDbC+v7mZcRswGGy
 Lczm2KWJtona+UhCPJrdukTtZGXw5fw=
X-Google-Smtp-Source: APXvYqyqb+FLQRwC8g/QlqP+A64WGYlPzpP5vOIIQh4KB0XwTVuNo0zSr8nhj1aQrLxqoZxEUVIYtA==
X-Received: by 2002:a05:620a:13fc:: with SMTP id
 h28mr80150qkl.164.1557349799766; 
 Wed, 08 May 2019 14:09:59 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id k65sm32444qkc.79.2019.05.08.14.09.51
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 14:09:51 -0700 (PDT)
Message-ID: <5CD3459E.7050607@gmail.com>
Date: Wed, 08 May 2019 17:09:50 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <B00A224D-E7A3-4053-9E56-BC44A01A9522@jpl.nasa.gov>
In-Reply-To: <B00A224D-E7A3-4053-9E56-BC44A01A9522@jpl.nasa.gov>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] USRP N320 and N321 questions
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

T24gMDUvMDgvMjAxOSAwNDo1NSBQTSwgTWludXRvbG8sIExvcmVuem8gKDM4OUkpIHZpYSBVU1JQ
LXVzZXJzIHdyb3RlOgo+IEhpLAo+IEkgaGF2ZSBzb21lIHF1ZXN0aW9uIGFib3V0IHlvdXIgbmV3
IHByb2R1Y3RzLgo+Cj4gMSkgV2hhdCBpcyB0aGUgc3VnZ2VzdGVkIGhhcmR3YXJlIGZvciBjb21t
dW5pY2F0aW5nIHdpdGggdGhlIFFTRlArIHBvcnQ/IEFzIEkgdW5kZXJzdGFuZCB0aGlzIGEgbm9y
bWFsIDQwIEdiaXQgUENJZSBjYXJkIHdvbuKAmXQgd29yay4KPgo+IDIpIERvZXMgdGhlIGVtYmVk
ZGVkIGxpbnV4IHN5c3RlbSBnaXZlcyBhbnkgZXJyb3Igd2hpbGUgaGFuZGxpbmcgdHdvIGNoYW5u
ZWxzIGF0IDIwME1zcHMgZnVsbCBkdXBsZXggd2l0aG91dCBhbnkgc2lnbmFsIHByb2Nlc3Npbmcg
KGkuZS4gYmVuY2htYXJrIHJhdGUpPwpJJ20gZ29pbmcgdG8gZ28gYWhlYWQgYW5kIGd1ZXNzIHRo
YXQgYW4gODAwTUh6IENQVSB3b3VsZCBiZSB1bmFibGUgdG8gCmNvbnN1bWUgNDAwTXNwcyBpbiBh
bnkgcG9zc2libGUgd2F5LCBzaW5jZSB0aGF0IHdvdWxkIGltcGx5IGFuCiAgIGF2ZXJhZ2Ugb2Yg
b25seSAyIENQVSBjbG9ja3Mvc2FtcGxlLiBFdmVuIGp1c3QgYnJpbmdpbmcgdGhvc2Ugc2FtcGxl
cyAKaW50byB0aGUgQ1BVIHJlYWxtIGFuZCBpbnRvIHVzZXItc3BhY2Ugd291bGQgYmUgc29tZSBr
aW5kIG9mCiAgIG1pbm9yIG1pcmFjbGUsIGV2ZW4gd2l0aCBtdWx0aXBsZSBpbnN0cnVjdGlvbiBp
c3N1ZXMvY2xvY2suCgoKCgo+Cj4gTG9yZW56bwo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0
aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5m
by91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
