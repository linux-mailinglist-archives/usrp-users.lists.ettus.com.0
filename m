Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBAEDF4F2
	for <lists+usrp-users@lfdr.de>; Mon, 21 Oct 2019 20:19:29 +0200 (CEST)
Received: from [::1] (port=38986 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iMcHA-0001hu-QV; Mon, 21 Oct 2019 14:19:28 -0400
Received: from mail-qk1-f182.google.com ([209.85.222.182]:43320)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iMcH6-0001ZD-BM
 for USRP-users@lists.ettus.com; Mon, 21 Oct 2019 14:19:24 -0400
Received: by mail-qk1-f182.google.com with SMTP id a194so9485297qkg.10
 for <USRP-users@lists.ettus.com>; Mon, 21 Oct 2019 11:19:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=nHdRLhkByugOxzW4W0uF4kX1YtKcv2xjfcLwmAhsNJo=;
 b=uugby+lVOgmRf44bbkrWZh4CtDDEm0nx/4AaDjIIkZ/ic5ENus7y9GATeEYSZU2uzQ
 qReqLrdw7cxeZFPUKAjkhMGMoA2/HpKG2c/zAmOeZsBmyOlnla4TybT9js/CIgCuhpPI
 QN9LWmtvPIczPXfwOWWSosaiyrHNisn5c3aZHYRiLiyKM5l3jxD9/lqPTcbxlDbtz39A
 qvpzmpAYi1D2toFD9ywrwXkj4PXvmGSeb10l5p7n16Jju33uSYvhUV0qbmpI7vgH8ZZb
 EsP2tL90QBQ/KRImUEVebTQN8dhidBBPLbw0KmKTZOY58+ZCywgP9ZyJx08zyjIFKc8b
 9+jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=nHdRLhkByugOxzW4W0uF4kX1YtKcv2xjfcLwmAhsNJo=;
 b=WlPck4+bN4G4D7LkleJb9xBi0NHLM1GZ4b3fiagI5sYku6bXUnBXKNkKvUn9K7DMN2
 aXrFaYvul0yvnRhmZi44DuiH+0qWlPpztqTsJ9b67BdRjapqDJedmwbG+77CREKmlaGu
 R1SPRyfMQKo0zU+kLLjmZn/yuIoMApVibCxygBWQsItXcf0Pn/ALHO5y6xf7zJRiKXv6
 OJAmAirWInHvxaUUYOkzUNJcKV7wuZMcJbtVHvy2UN4WcWPhlOziFnpiuhmaAzwVg4Rn
 ipEsCcUatBC6emcUWUNa315mcWn0eo4vdbPeXq9End8woARJxNJq3d94PPoRGjfWT2nh
 4x1Q==
X-Gm-Message-State: APjAAAX9Sr/lZvdfYRCQ0R1W3Dd4BoNNxDs4V1yLrbveeMKXOrH5hmpc
 GLtPQvmZxjRHzVns5EwWseXl5pJcadY=
X-Google-Smtp-Source: APXvYqypFdPW5FfJK51G2ZF0664qIQQUYuvB/bqAvBOAFApxB+1BrecmSvDaQSVvuubuvykR89C5kQ==
X-Received: by 2002:a37:8806:: with SMTP id k6mr23402318qkd.106.1571681923577; 
 Mon, 21 Oct 2019 11:18:43 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-15-137.dsl.bell.ca.
 [174.95.15.137])
 by smtp.googlemail.com with ESMTPSA id x203sm9384974qkb.11.2019.10.21.11.18.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Oct 2019 11:18:43 -0700 (PDT)
Message-ID: <5DADF682.7080202@gmail.com>
Date: Mon, 21 Oct 2019 14:18:42 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: =?UTF-8?B?UGFibG8gTWFydMOtbmV6IGRlIExlaXZhIETDrWF6?=
 <pablo.mdiaz@alumnos.upm.es>
References: <d92a0a15-a78c-a63d-8ed1-54f475f1be61@alumnos.upm.es>
 <75DDE278-D19C-4F01-91B6-84FFF9D97CE9@gmail.com>
 <e3f65254-948f-054c-5702-c453e4700b4f@alumnos.upm.es>
 <5DACCFE8.6020102@gmail.com>
 <4f85e58a-81e2-97a4-e7d5-9f6f2cd826d4@alumnos.upm.es>
In-Reply-To: <4f85e58a-81e2-97a4-e7d5-9f6f2cd826d4@alumnos.upm.es>
Subject: Re: [USRP-users] Setting tune freq error
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
Cc: USRP-users@lists.ettus.com
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

T24gMTAvMjEvMjAxOSAwMjoxNyBQTSwgUGFibG8gTWFydMOtbmV6IGRlIExlaXZhIETDrWF6IHdy
b3RlOgo+IE5vLCB0aGUgcHJvYmxlbSByZW1haW5zIGV2ZW4gd2l0aCBzbGVlcHMgYmVmb3JlIHNl
dHRpbmcgZXZlcnkgY2hhbm5lbC4KPgo+IE9uZSB0aGluZyBpIGhhdmUgY29tZSBvdXQgaXMgdGhh
dCB0aGUgZmlyc3QgdHVubmluZywgd2hlbiB0aGUgcmFkaW8gCj4gaGF2ZSBhIGRlZmF1bHQgdmFs
dWUgb2YgMUdoeiwgYWx3YXlzIGNoYW5nZSB0aGUgZnJlcXVlbmN5IHdpdGhvdXQgCj4gZXJyb3Ig
cmVnYXJkbGVzcyBvZiB0aGUgdGFyZ2V0IGZyZXF1ZW5jeS4KSGF2ZSB5b3UgY2hhcmFjdGVyaXpl
ZCBob3cgZmFyIGF3YXkgdGhlIGZyZXF1ZW5jeSBzdGVwIG5lZWRzIHRvIGJlIApiZWZvcmUgdGhp
cyBpc3N1ZSBzaG93cyB1cD8KCgo+Cj4gRWwgMjAvMTAvMjAxOSBhIGxhcyAyMzoyMSwgTWFyY3Vz
IEQuIExlZWNoIGVzY3JpYmnDszoKPj4gT24gMTAvMjAvMjAxOSAwNDozNCBQTSwgUGFibG8gTWFy
dMOtbmV6IGRlIExlaXZhIETDrWF6IHdyb3RlOgo+Pj4gV2UgdGhpbmsgd2UgYXJlIHVzaW5nIGJv
dGggY2FyZHMuIFRoaXMgaXMgbXkgdWhkX3VzcnBfcHJvYmU6Cj4+Pgo+Pj4KPj4gSWYgeW91IGNo
YW5nZSB5b3VyIGNvZGUgdG8gaW5zZXJ0IGEgc21hbGwgc2xlZXAgKGxldCdzIHNheSAwLjAxc2Vj
KSAKPj4gd2hpbGUgdHVuaW5nIGFsbCBjaGFubmVscywgZG9lcyB0aGUgaXNzdWUKPj4gICBnbyBh
d2F5Pwo+Pgo+Pgo+PgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
Cmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3Rz
LmV0dHVzLmNvbQo=
