Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2678A1A666D
	for <lists+usrp-users@lfdr.de>; Mon, 13 Apr 2020 14:49:00 +0200 (CEST)
Received: from [::1] (port=53720 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jNyWF-0000Me-4p; Mon, 13 Apr 2020 08:48:55 -0400
Received: from mail-wr1-f49.google.com ([209.85.221.49]:35751)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1jNyWB-0000Iz-HH
 for usrp-users@lists.ettus.com; Mon, 13 Apr 2020 08:48:51 -0400
Received: by mail-wr1-f49.google.com with SMTP id x18so5704906wrq.2
 for <usrp-users@lists.ettus.com>; Mon, 13 Apr 2020 05:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=6DHS0tZn3yZG/QBrt6a3tSqJB8EjiWR4HmY7DhE3hqo=;
 b=IJ7P6/H2bYI0eKN+OjTrpGWc2POIwaEamaSplvb4tUrXZW1knnbRekh7tN+vt6Sf0V
 Kn0e+yKwBVu+Di2kyEcR9s4sU1o2crBzVr5vrwkCg6GI0P+WVXli1SeZ4ECBwee5M9K8
 3/DWPJEMNTIW/Y0O6629Xn2gSYRtOa/9Ul6RKDzgYhOWP5fVoNkdTZMFyszOCYDSfSlV
 rujNT9RO0ix9Dj3tBAqTLLW1Lakpc8XWquagrU1RwQ41k5kxilpeDbJVElZpw5YXo6YX
 /Yijl9B+kPoRRxGfW8uJRkDpPvyWG3FZggYNIZZgJWHfCWRfa0OZe9w7LqkYaDCGGEsz
 dIJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6DHS0tZn3yZG/QBrt6a3tSqJB8EjiWR4HmY7DhE3hqo=;
 b=bOxpic5d+5AcUrHHYkMZ3JjWG7fwobgf/0gAbqNAc5KV9UWy3lV4t512+RsVzBSGrR
 23h0b5l7bJSj884EuUurHphPjrFlOqO6nQ8eTrXAOsu4ESnxYyRlMgL2SEil60kwDUtZ
 WKZviQ4grBCbCwb6H/CPRxu3qWTNvBe44vZycGO4B2HSTo9JR8YlT6rhzjMh/ChgiEfX
 JkNtG+u9SJUY0Vqhui1AhnLbhinLvd3pliYbU9oILULp9wR/GM8KiiV/dhzM/ox7LuT1
 o9QPlXTRfYd7oMN+4DHGF/BiSgLlrnGRiI2MWRgJ7XCm+lNUGEb/ER+OpkwYxdzisCYY
 fF6Q==
X-Gm-Message-State: AGi0PubbLVpc1+7od9WKnjk5pcmeeT2kW9AOdn4X6pD+uJ0bOSDxJfX1
 FQdow6QJrbIUF24PUd2GS9uyOupAqdp9Cw==
X-Google-Smtp-Source: APiQypLFT0QNN82uy/NCjAbuSOPXJolTXkT+GWu5a7iB9dfc786t7DcGhK2hfrmDUoKoOEbRQPOsAw==
X-Received: by 2002:adf:b1c6:: with SMTP id r6mr18029712wra.49.1586782090030; 
 Mon, 13 Apr 2020 05:48:10 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-196.hsi.kabel-badenwuerttemberg.de. [46.223.163.196])
 by smtp.gmail.com with ESMTPSA id y7sm15327363wmb.43.2020.04.13.05.48.09
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Apr 2020 05:48:09 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <5e8e46e6.1c69fb81.5b237.1285SMTPIN_ADDED_MISSING@mx.google.com>
 <CADBWrHhf5==32f2jTq8_2TNMOE1W8aucdiuSWOiRgEYGj_avMg@mail.gmail.com>
Message-ID: <1670730f-772e-0818-8e3a-825fee7dc9d5@ettus.com>
Date: Mon, 13 Apr 2020 14:48:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CADBWrHhf5==32f2jTq8_2TNMOE1W8aucdiuSWOiRgEYGj_avMg@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] UBX 10-500 MHz Question
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

SGkgQm9iLCBoaSBTYW0sCgp0b3Agb2YgbXkgaGVhZCwgVUJYLTE2MCBkb2Vzbid0IGV2ZW4gaGF2
ZSBhZGp1c3RhYmxlIGJhbmR3aWR0aAooYmFzaWNhbGx5LCBvZiB0aGUgbW9kZXJuIGRldmljZXMs
IG9ubHkgQUQ5eHh4LWJhc2VkIHN5c3RlbXMgaGF2ZSkuIFNvLAp5ZWFoLCB5b3UnbGwgYWx3YXlz
IGdldCBhIHR3by1zaWRlZDg0IE1IeiBhbmFsb2cgYmFuZHdpZHRoICh0aGF0J3MgaG93CnlvdSBn
ZXQgMTYwIE1IeiBpbiBjb21wbGV4IGJhc2ViYW5kKS4gWW91J2xsIG5vdGljZSB3aGVuIG92ZXJz
YW1wbGluZyBhdAoyMDAgTVMvcyB0aGF0IGFuYWxvZyBmaWx0ZXJzIGFyZSBxdWl0ZSBhIGJpdCB3
b3JzZSB0aGFuIHdoYXQncwpyZWxhdGl2ZWx5IGVhc3kgdG8gZG8gaW4gZGlnaXRhbCBmaWx0ZXJp
bmcgaW4gYW4gRlBHQSBhdCB0aGVzZSByYXRlLgoKT24gY2xhc3NpYyBHZW4tMyBEREMgY2hhaW4g
KEkgZG8gdGhpbmsgdGhhdCdzIHRoZSBzYW1lIGZvciB0aGUgbmV3ZXIKUkZOb0MgY2hhaW4pLCB5
ZXMsIHRoZXJlJ3MgdHdvIDItZGVjaW1hdGluZyBoYWxmLWJhbmQgRklScyB3aXRoIHVwd2FyZHMK
b2YgNDAgdGFwcywgYW5kIGEgQ0lDIHRvIGRvIHRoZSByZXN0IG9mIHRoZSBkZWNpbWF0aW9uLiBT
bywgaWYgeW91IHVzZSBhCnNhbXBsaW5nIHJhdGUgdGhhdCBkaXZpZGVzIHRoZSBtYXN0ZXIgY2xv
Y2sgcmF0ZSBieSA0LCB5b3UgZ2V0IHR3byBIQnMsCmlmIGl0IGRvZXNuJ3QgZGl2aWRlIGJ5IDQs
IGJ1dCBieSAyLCB5b3Ugc3RpbGwgZ2V0IG9uZSBvZiB0aGVzZSBuaWNlcgpIQnMsIGFuZCBmb3Ig
b2RkIGZhY3RvcnMsIHlvdSdsbCBmdWxseSBoYXZlIHRvIHJlbHkgb24gdGhlIENJQy4gVGhhdCdz
Cm5vdCBuZWNlc3NhcmlseSB0ZXJyaWJsZSwgYnV0IENJQ3MgZG8gaGF2ZSBzaW5jwrIteSBzaGFw
ZSwgc28gdGhhdCdzIGEKYml0IG9mIHJvbGxvZmYgYXQgdGhlIGVkZ2VzLgoKQ2hlZXJzLApNYXJj
dXMKT24gMTAuMDQuMjAgMDU6NDQsIFNhbSBSZWl0ZXIgdmlhIFVTUlAtdXNlcnMgd3JvdGU6Cj4g
Qm9iLAo+IAo+IFRoZSA4NE1IeiBiYW5kd2lkdGggY29uc3RyYWludCBpcyBiZWNhdXNlIG9mIHRo
ZSBhbmFsb2cgYmFuZHBhc3MgZmlsdGVyCj4gWzFdIG9uIHRoZSBVQlgncyBSWCBzaWduYWwgcGF0
aCBbMl0uIEknZCBndWVzcyB0aGF0IFVIRCB3aWxsIHllbGwgYXQgeW91Cj4gaWYgeW91IGZlZWQg
aW4gYW4gaW52YWxpZCBiYW5kd2lkdGgsIGJ1dCBJJ3ZlIG5ldmVyIHRyaWVkIGl0LiBJZiBJCj4g
cmVtZW1iZXIgY29ycmVjdGx5LCB5b3UgY2FuIHNhbXBsZSBhdCByYXRlcyB0aGF0IGFyZW4ndCBh
biBldmVuIGRpdmlzaW9uCj4gb2YgdGhlIE1DUiwgeW91J2xsIGp1c3QgZW5kIHVwIHVzaW5nIGEg
Q0lDIGZpbHRlciB0aGF0IGNhdXNlcyByb2xsb2ZmIGluCj4geW91ciBzcGVjdHJ1bSBbM10uCj4g
Cj4gLSBTYW0KPiAKPiBbMV3CoGh0dHBzOi8vd3d3Lm1vdXNlci5jb20vZGF0YXNoZWV0LzIvNDEy
LzU1OTE2LTE1MDQ3MTcucGRmCj4gWzJdwqBodHRwczovL2ZpbGVzLmV0dHVzLmNvbS9zY2hlbWF0
aWNzL3VieC9VQlgtMTYwX3JldkUucGRmCj4gWzNdwqBodHRwczovL3dpdGVzdGxhYi5wb2x5LmVk
dS9ibG9nL3doeS1kb2VzLW15LXJlY2VpdmVkLXNwZWN0cnVtLWRyb29wLWF0LXRoZS1lZGdlcy8K
PiAKPiBPbiBXZWQsIEFwciA4LCAyMDIwIGF0IDQ6NDkgUE0gVGlsbHNvbiwgQm9iIChVUykgdmlh
IFVTUlAtdXNlcnMKPiA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gPG1haWx0bzp1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbT4+IHdyb3RlOgo+IAo+ICAgICBzbyB3aXRoIHRoZSBVQlgtMTYw
IG9uIGFuIFgzMTAsIHRoZXJlIGlzIHRoZSBmb2xsb3dpbmcgY2F2ZWF0Ol9fX18KPiAKPiAgICAg
X1/CoF9fCj4gCj4gICAgICogVGhlIFVCWCAxNjAgdHJhbnNtaXR0ZXIgcGF0aCBoYXMgMTYwIE1I
eiBvZiBiYW5kd2lkdGggdGhyb3VnaG91dAo+ICAgICB0aGUgZnVsbCBmcmVxdWVuY3kgcmFuZ2Ug
b2YgdGhlIGRldmljZTsgdGhlIHJlY2VpdmVyIHBhdGggaGFzIDg0IE1Iego+ICAgICBvZiBiYW5k
d2lkdGggZm9yIGNlbnRlciBmcmVxdWVuY2llcyBmcm9tIDEwIE1IeiB0byA1MDAgTUh6Ll9fX18K
PiAKPiAgICAgX1/CoF9fCj4gCj4gICAgIEkgZ3Vlc3MgbXkgcXVlc3Rpb24gaXMgaG93IGRvZXMg
dGhpcyBtYW5pZmVzdCBpdHNlbGY/X19fXwo+IAo+ICAgICBfX8KgX18KPiAKPiAgICAgSWYgSSBh
c2sgZm9yIDEwMCBNSHogb2YgQlcsIGRvIEkgZ2V0IDg0IG9yIGRvZXMgaXQgZmFpbD9fX19fCj4g
Cj4gICAgIF9fwqBfXwo+IAo+ICAgICBIb3cgd291bGQgSSBnZXQgODQgZ2l2ZW4gdGhlIHJlcXVp
cmVtZW50IG9mIHNhbXBsZSByYXRlIGJlIGFuIGV2ZW4KPiAgICAgZGl2aXNvciBvZiAyMDAgTUh6
IGNsb2NrP19fX18KPiAKPiAgICAgX1/CoF9fCj4gCj4gICAgIElmIEkgd2FudGVkIDEwMCBpbiB0
aGF0IHJhbmdlLCB3b3VsZCB0aGVyZSBiZSBhbnkgd2F5IHRvIGdldCBpdCBmcm9tCj4gICAgIGEg
c2luZ2xlIGNoYW5uZWwgaW4gdGhhdCBiYW5kP8KgIE1vc3Qgb3RoZXIgY2FyZHMgZG9u4oCZdCBz
ZWVtIHRvIGhhdmUKPiAgICAgdGhlIEJXIGluIHRoYXQgcmFuZ2UuX19fXwo+IAo+ICAgICBfX8Kg
X18KPiAKPiAgICAgVGhhbmtzLF9fX18KPiAKPiAgICAgX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiAgICAgVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiAg
ICAgVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gPG1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbT4KPiAgICAgaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3Vz
cnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+IFVTUlAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tCj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xp
c3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCj4gCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQ
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlz
dGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
