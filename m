Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E22263FDF
	for <lists+usrp-users@lfdr.de>; Thu, 10 Sep 2020 10:31:13 +0200 (CEST)
Received: from [::1] (port=41118 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGHyv-0007Qe-0B; Thu, 10 Sep 2020 04:31:01 -0400
Received: from mail-ej1-f45.google.com ([209.85.218.45]:33453)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1kGHyr-000792-Dp
 for usrp-users@lists.ettus.com; Thu, 10 Sep 2020 04:30:57 -0400
Received: by mail-ej1-f45.google.com with SMTP id j11so7525317ejk.0
 for <usrp-users@lists.ettus.com>; Thu, 10 Sep 2020 01:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:cc:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=W+82NgQZ+YOGT27QVlBnfJMRalr267Qe1UKG3zvyvfY=;
 b=ppY+6zvP09atFi4JmABo68fKTQvVCOxF3Z2YAidHJ9dcDrKBiGsbLFvb7mNh+ESIdl
 b3Hr7QIfdbYP1x+nfbXwujyrIkWHML3lERmSx4yt7op4EIVxPTLjAHKQwZ2aub41Zj98
 HXdYUItalJBIkNN8hyipjThlPuClo4ix2MH4ZwFOYBf2GpLtTBFgNoo8+9I6uFudNS6b
 Csj4yHtKf0bNYcDBKI5MDVpcDTla9OmmHGQ9/TBEU+Iz9JpoOf+EerReWiHIOfH4c0kx
 n/xwy8786iKCRSLM2KAaKsGIgMcAWIpwPh2KGwYzcYXRhTDDMtLR6gvDjPuO/NcWv53y
 UPRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=W+82NgQZ+YOGT27QVlBnfJMRalr267Qe1UKG3zvyvfY=;
 b=tIZcgigrS6UehDPbQNG9WoqqASPqXgGnBKyaYhyrSlI7rPU5tCwFliTzH6tx554+HJ
 FEN7VW0+K043qC5t/gKAk3iOpja8ztQPze3l0GXM99y+BN7F4jzDQNWuCosklLhDyqwj
 LxDPnRuIa/t86OQkrdArgm4Yin5SZ+pUerHCYdfRWUCqOCvdKwleXWbz5RmmMKBglily
 0av6d+dMvUom452myoRjkBAtBmHgVTL9ryHDk6UXlM3Xj1cSAnVJrwIEsqMk7lfJ4wBI
 DgIfMhIs2BiSjQskGeJfaAlpo8Y/eC34/SvLimcJVxFHGhrIKYVinEOuora/oFl0qoAa
 tzEw==
X-Gm-Message-State: AOAM530vzht49bSiPscmcG6gpvAgmZcQrKucIC7k3uARDeYVxcdNVg1T
 8hUYrKEyiVTphm3eCTxZUjBT/P7qiRwKYezc+eE=
X-Google-Smtp-Source: ABdhPJzVRog8ophLF9VEjl9oR1gKZ1OhPOI1HjzMtpRMliHh86Z/lqOSM9v3DlhP9jtpKEJ3e47eDQ==
X-Received: by 2002:a17:907:444f:: with SMTP id
 on23mr7426082ejb.392.1599726616108; 
 Thu, 10 Sep 2020 01:30:16 -0700 (PDT)
Received: from ?IPv6:2a02:8071:2c80:c4f0::e6a? ([2a02:8071:2c80:c4f0::e6a])
 by smtp.gmail.com with ESMTPSA id k1sm5901991eji.20.2020.09.10.01.30.15
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Sep 2020 01:30:15 -0700 (PDT)
Cc: usrp-users <usrp-users@lists.ettus.com>
References: <mailman.44.1599580802.32464.usrp-users_lists.ettus.com@lists.ettus.com>
 <CACDReSzm2jTnnq7YLENKr==RCZy2_epGo0Tce6yrxDtFy49sNQ@mail.gmail.com>
 <9f6e3cf9-46ae-1fd8-bcb3-62cfbf0d2e8d@ettus.com>
 <CAB__hTT3KM-QmBMaD+j2RAf7PbHiVWpZnL=uhdZn0NKSfouDkw@mail.gmail.com>
Message-ID: <64f859c5-8b8a-1212-c92b-73c826dfeec9@ettus.com>
Date: Thu, 10 Sep 2020 10:30:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAB__hTT3KM-QmBMaD+j2RAf7PbHiVWpZnL=uhdZn0NKSfouDkw@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Rx sample rate for USRP E310
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
From: Martin Braun via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Braun <martin.braun@ettus.com>
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

T24gOS85LzIwIDM6NDkgUE0sIFJvYiBLb3NzbGVyIHdyb3RlOgo+IERvZXMgdGhlIGF4aV9yYW1f
ZmlmbyByZm5vYyBibG9jayB3b3JrIGZvciB0aGUgRTMxMCAocGVyaGFwcyBpbiB1aGQKPiA0LjAp
P8KgIElmIHNvLCBjb3VsZG4ndCB5b3UgaW1wbGVtZW50IGFuIHJmbm9jIGdyYXBoIHN1Y2ggYXMK
PiBSYWRpby0+YXhpX3JhbV9maWZvLT5ob3N0IGFuZCB0aGVuIHlvdSBzaG91bGQgYmUgYWJsZSB0
byBjYXB0dXJlCj4gMjUwTVNhbXBsZXMgKDFHQikgYXQgYSB0aW1lIHdoaWNoIGNvdWxkIGJlIHN0
cmVhbWVkIGF0IGEgc2xvd2VyIHJhdGUgdG8KPiBob3N0PwoKVW5mb3J0dW5hdGVseSwgbm8sIHRo
ZSBQTC1EUkFNIGlzIG5vdCBleHBvc2VkIHRvIHRoZSBibG9ja3Mgb24gdGhlIEUzMTAKYXMgd2l0
aCB0aGUgb3RoZXIgZGV2aWNlcy4gSXQncyBzb21ldGhpbmcgdGhhdCBjb3VsZCBiZSBhZGRlZCBp
biB0aGUKZnV0dXJlOyB0aGUgZGVjaXNpb24gdG8gbm90IGV4cG9zZSB0aGUgUEwtRFJBTSBpbiB0
aGUgc2FtZSB3YXkgYXMgdGhlCm90aGVyIGRldmljZXMgcHJlZGF0ZXMgUkZOb0MgYW5kIGFsbCB0
aGF0LgoKLS1NCj4gUm9iCj4gCj4gT24gV2VkLCBTZXAgOSwgMjAyMCBhdCAzOjI4IEFNIE1hcnRp
biBCcmF1biB2aWEgVVNSUC11c2Vycwo+IDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSA8bWFp
bHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPj4gd3JvdGU6Cj4gCj4gICAgIE9uIDkvOS8y
MCA1OjQ2IEFNLCBPZmVyIFNhZmVybWFuIHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+ICAgICA+IFRo
YW5rIHlvdSBNYXJjdXMgYW5kIE1hcnRpbi4KPiAgICAgPiBNYXliZSBJIHdpbGwgdHJ5IHRvIGV4
cGxhaW4gd2hhdCBJIGFtIHRyeWluZyB0byBkbyBhbmQgeW91IGNhbiBjb3JyZWN0Cj4gICAgID4g
d2hhdCBJIGFtIGRvaW5nIHdyb25nLgo+ICAgICA+IEkgZG9uJ3Qgd2FudCB0byBzdHJlYW0gdGhl
IHNhbXBsZXMuIEkgdW5kZXJzdGFuZCB0aGUgbGltaXRhdGlvbnMKPiAgICAgb2YgdGhlCj4gICAg
ID4gQVJNIHByb2Nlc3Nvci4KPiAgICAgPiBXaGF0IEkgd291bGQgbGlrZSB0byBkbyBpcyB0byBy
ZWNvcmQgKGNhcHR1cmUpIHNhbXBsZXMgdG8gRERSCj4gICAgIG1lbW9yeSBpbgo+ICAgICA+IHJl
YWwgdGltZS4gT25seSBvbmUgYmxvY2sgb2Ygc2FtcGxlcy4KPiAgICAgPiBUaGVuLCB3cml0ZSB0
aGF0IGJsb2NrLCBvZmZsaW5lLCB0byB0aGUgU0QgY2FyZCBhcyBzbG93IGFzCj4gICAgIG5lY2Vz
c2FyeS4gU28KPiAgICAgPiBkZWZpbml0ZWx5IG5vIHN0cmVhbWluZyB0byBTRCBjYXJkLgo+ICAg
ICA+IFRoaXMgc2hvdWxkIGJlIHBvc3NpYmxlIGFuZCBub3QgcmVsYXRlZCBhdCBhbGwgdG8gdGhl
IHNwZWVkIG9mIHRoZSBBUk0KPiAgICAgPiBwcm9jZXNzb3IuIEl0IHNob3VsZCBiZSBoYW5kbGVk
IGJ5IGEgRE1BIG9mIHRoZSBGUEdBIGRpcmVjdGx5IHRvIEREUgo+ICAgICA+IG1lbW9yeSBhbmQg
dGhlIEZQR0Egc2hvdWxkIGJlIGZhc3QgZW5vdWdoIHRvIGhhbmRsZSB0aGUgdGFzay4KPiAKPiAg
ICAgT2ZlciwKPiAKPiAgICAgVUhEIHdvbid0IGluaXRpYXRlIGRpcmVjdCBETUEgaWYgeW91IGRv
IHRoYXQuIEV2ZXJ5IHBhY2tldCBvZiBkYXRhCj4gICAgIGNvbWluZyBmcm9tIHRoZSBGUEdBIG5l
ZWRzIHRvIGdvIHRvIHRoZSBDUFUgZmlyc3QuCj4gCj4gICAgIElmIHlvdSB3YW50IHlvdXIgc2Ft
cGxlcyB0byBETUEgZGlyZWN0bHkgdG8gbWVtb3J5LCB5b3UgbmVlZCB0byBkbwo+ICAgICBzb21l
dGhpbmcgbGlrZSB0aGlzOiBodHRwczovL3d3dy55b3V0dWJlLmNvbS93YXRjaD92PVk4UVEwc2g1
SWhJCj4gCj4gICAgIHJ4X3NhbXBsZXNfdG9fZmlsZSBpcyBhIGdlbmVyaWMgdG9vbCB0aGF0IHdv
cmtzIGVxdWFsbHkgd2l0aCBhbGwgVVNSUHMsCj4gICAgIHJlZ2FyZGxlc3Mgb2YgdGhlaXIgdHJh
bnNwb3J0IHR5cGUuCj4gCj4gICAgIC0tTQo+IAo+ICAgICBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+ICAgICBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+
ICAgICBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSA8bWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tPgo+ICAgICBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8v
dXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8v
dXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
