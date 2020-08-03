Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D44E23AA95
	for <lists+usrp-users@lfdr.de>; Mon,  3 Aug 2020 18:35:36 +0200 (CEST)
Received: from [::1] (port=47010 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k2dQz-0007uc-3s; Mon, 03 Aug 2020 12:35:33 -0400
Received: from mail-ej1-f47.google.com ([209.85.218.47]:38479)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1k2dQu-0007mi-Or
 for usrp-users@lists.ettus.com; Mon, 03 Aug 2020 12:35:28 -0400
Received: by mail-ej1-f47.google.com with SMTP id d6so25459867ejr.5
 for <usrp-users@lists.ettus.com>; Mon, 03 Aug 2020 09:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=B1RCFL5547fdCO4XVLjS0fdaaPquib/705mTujQ1tYw=;
 b=knRzDTDPVc1oGqtW7vvNsQ6cJeN/D+ahBYuWPvqeGbwXQ5TJ7aSk5C1zgoN43clNlp
 oSpYlEXsg/uFV6vr5b3tCH4gbmYvmMuS52D7vXS9r+FdTCi06bqgevoN2W9WovJATT2m
 1F9UHTPIWCmarDcxV5esGUlp2z9PNXv7DnnZtPqqKgs5S0MPoa+YPyaJe5h+/IeQiw8N
 cmz2kiA86YQMb7A5QAjHhYNmSDoX+9s7VarhsSk4kogWN5w3ZvILRjJsbjXlsBBVilQP
 9f5nDKdYokjt6j1mME5rJw1IQjGSYA/u08uZtXE/0El909vOe7jChHiSrSun8LwCgsgg
 SYWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=B1RCFL5547fdCO4XVLjS0fdaaPquib/705mTujQ1tYw=;
 b=cZKbfH2BZmNPaiu0sGPznAh0i8WyxVcLoffDRB5ppfzX5ocOooE/2dCoTYAqFThjJ4
 2EjtSdtu9Zw73rozygeavk0rvQTWK/dnaDtH4MMpEsKYSt1xQ2wvHprbd1CQYeduyr9a
 X2drSuncCzR99EU1PmhMt03Aw4KoWPnOYQdwjb3dpZC9OyTUPIVsceTIE2KKPLfHcImP
 ezrOroMBuhpYj98b6aS2mjnrxLNSzcwkEhePMnl8TmtspIZPqbggu1zrkLACUzeVZlWG
 zlVJD0kQNUtW9MPqLq/Xg9UPHpcGnI2RBwmgglsa9ELZsgEnavHupsJnTL8dUoTCXtTE
 T7xg==
X-Gm-Message-State: AOAM530ADNh3FjywaCTP5m+f7BeREtS0Vy/IOc+Lg3ZxNCQB1+4fZAZF
 lu9Es1ghP/UpNGw00d+4LN0xAnxKfX2gwA==
X-Google-Smtp-Source: ABdhPJyQqx+nit4HLtiDXOXP+AIWWX44sq2dCCE3+nvxOccBB40RqjzcW4u7LA9Q3o4XzHCi8hVvYw==
X-Received: by 2002:a17:907:11c3:: with SMTP id
 va3mr18091253ejb.497.1596472487521; 
 Mon, 03 Aug 2020 09:34:47 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-149.hsi.kabel-badenwuerttemberg.de. [46.223.163.149])
 by smtp.gmail.com with ESMTPSA id c7sm4248168edf.1.2020.08.03.09.34.46
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 03 Aug 2020 09:34:46 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CAKwrT9SNz7tFqmYrJthCfRUgrHCzqbkKrA+NDPX324NmeSxc-g@mail.gmail.com>
Message-ID: <4aec2693-1fff-dec3-6444-021f62691f53@ettus.com>
Date: Mon, 3 Aug 2020 18:34:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAKwrT9SNz7tFqmYrJthCfRUgrHCzqbkKrA+NDPX324NmeSxc-g@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] CHIPSCOPE ERROR (RFNOC)
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
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

RG9lcyByZW1vdmluZyBhbmQgYWRkaW5nIHRoZSBjaGlwc2NvcGUgYWdhaW4gaGVscCwgYW5kIG1h
a2luZyBzdXJlCnlvdSdyZSByZWFsbHkgdXNpbmcgYWxsIHRoZSBjaGFubmVscyB0aGF0IHlvdXIg
Y2hpcHNjb3BlIGltcGxlbWVudGF0aW9uIGhhcz8KCkJlc3QgcmVnYXJkcywKCk1hcmN1cwoKT24g
MjguMDcuMjAgMDg6MTcsIEpheWFudCBDaGhpbGxhciB2aWEgVVNSUC11c2VycyB3cm90ZToKPiBI
aSBldmVyeW9uZSwKPiBJIGFtIHRyeWluZyB0byBnZW5lcmF0ZSBhIGJpdHN0cmVhbSBmb3IgWDMx
MCBib2FyZCB3aXRoIHRoZSBGRlQgYmxvY2sgYWxvbmcKPiB3aXRoIGZldyBvdGhlciBldHR1cyBw
cm92aWRlZCBibG9ja3MuIEhvd2V2ZXIsIGF0IHRoZSB0aW1lIG9mIGxvZ2ljCj4gb3B0aW1pemF0
aW9uIHN0ZXAgSSBnZXQgdGhpcyBlcnJvcgo+Cj4gRVJST1I6IFtDaGlwc2NvcGUgMTYtMjEzXSBU
aGUgZGVidWcgcG9ydCAndV9pbGFfMC9wcm9iZTEnIGhhcyA5IHVuY29ubmVjdGVkCj4gY2hhbm5l
bHMgKGJpdHMpLiBUaGlzIHdpbGwgY2F1c2UgZXJyb3JzIGR1cmluZyBpbXBsZW1lbnRhdGlvbi4K
Pgo+IEnigJltIG5vdCBhYmxlIHRvIGlkZW50aWZ5IHRoZSBzb3VyY2Ugb2YgdGhpcyBlcnJvci4g
QWxzbywgYmVmb3JlIHRoaXMKPiBiaXRzdHJlYW0gZ2VuZXJhdGlvbiBJIGRpZCBjcmVhdGUgYSBi
aXRzdHJlYW0gd2hlcmUgSSB1c2VkIGNoaXBzY29wZSB1c2luZwo+IHRoZSBtZXRob2RlIGRlZmlu
ZWQgaGVyZToKPgo+IGh0dHBzOi8va2IuZXR0dXMuY29tL0RlYnVnZ2luZ19GUEdBX2ltYWdlcwo+
Cj4gQW5kIHdhcyBhYmxlIHRvIGRvIHRoYXQgd2l0aG91dCBhbnkgZXJyb3JzLiBIb3dldmVyLCBz
aW5jZSB0aGVuIEkgaGF2ZSBiZWVuCj4gZ2V0dGluZyB0aGUgYWJvdmUgbWVudGlvbmVkIGVycm9y
Lgo+Cj4gVGhhbmtzCj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVz
ZXJzX2xpc3RzLmV0dHVzLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNf
bGlzdHMuZXR0dXMuY29tCg==
