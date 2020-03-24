Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA53C19121E
	for <lists+usrp-users@lfdr.de>; Tue, 24 Mar 2020 14:57:06 +0100 (CET)
Received: from [::1] (port=58380 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jGk3F-0006bk-Nf; Tue, 24 Mar 2020 09:57:05 -0400
Received: from mail-wr1-f44.google.com ([209.85.221.44]:43766)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1jGk3C-0006Uk-0x
 for usrp-users@lists.ettus.com; Tue, 24 Mar 2020 09:57:02 -0400
Received: by mail-wr1-f44.google.com with SMTP id b2so21516668wrj.10
 for <usrp-users@lists.ettus.com>; Tue, 24 Mar 2020 06:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=HclZJ5CL0cJVyqHAFK80O8vVDCRLefc/sJryJIg5HnY=;
 b=ywIg8+0pTddRpLSO/CmjSHq/edDaEA8blJW7qVWPRz2XYqKi/8AGuCPu8vL/prWUkX
 VuS0j4SnyDfmoDYy8vIbGV+FPNcu5JPjch6qD2L9GYxNdx3l/HYMFbcgwjNH7TzWCLwY
 3+Cnmb3eZtgNgnm3QuKEgh5BfNfXRzb6uv/EDKUwwiC0LSTTQzLslEZgeU3Ivri81pXX
 otibWPWBydAxGYA6kyCDkaoZD3rM0OiNi6PJHtA8Ywk9Kv32qRuy81jTknP7SrLduQH5
 tYvPFNPGPzF2OqNi1TdKLAgsJA67woE7ENNuKbT8ejqed6VSdw3AGoq7gsleQo/zSmEL
 87aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HclZJ5CL0cJVyqHAFK80O8vVDCRLefc/sJryJIg5HnY=;
 b=kt5j2SGaSbZiWCnfmHhYCm78KMX0ngsnT8xxpLMN/kbTDoTEpJgtgtOek5wLYqqLR2
 scGIYE/3t35cWDNr0lX2lEVIBJmmvQEnrDE8HNRfiWDkhoJT4jx3cPzRRRA+UKDJcgiF
 L2HR4wBp2TEzr7hsWuhhsBi2TpbgEqNCQrpJ61LNiijD4tiOeUftsFbRu8NHd1XX/tiY
 Hgntn9xwdqKa2kGDHkxcZ1aI6q+4tfu5gFNZdNmeM8Xo4vN3Lx1b68ackBpjn+8OFF/0
 712HlC7kjWK/M7mJb7y/QtxGvpFL/3cjzGuZAiWDkwzl8N9l/XTFNsIPTsiclbt5KIu4
 3RXA==
X-Gm-Message-State: ANhLgQ0V2uK2ykZbV97nQsSGmrWjkKmLdh1pufnNFRTqD0OD1dJ25Thb
 9WkUIQxvqVj9LlogM3JQwyKWiAN/DmuH4g==
X-Google-Smtp-Source: ADFU+vtILWz48NoVcBZ1SsGtGr35jLzwy8GFHNhRUPejW8I2UfQGDpGps8dwjPrRQhFshyzC1t1FAQ==
X-Received: by 2002:adf:b307:: with SMTP id j7mr38443466wrd.128.1585058180548; 
 Tue, 24 Mar 2020 06:56:20 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-146.hsi.kabel-badenwuerttemberg.de. [46.223.163.146])
 by smtp.gmail.com with ESMTPSA id b11sm17511907wrq.26.2020.03.24.06.56.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Mar 2020 06:56:19 -0700 (PDT)
To: Ian Buckley <ianb@ionconcepts.com>
References: <104f4e36-8a58-3f3b-0b9b-5d33f21b1c55@gmail.com>
 <a997d14f-080d-a30c-6400-2cd1766842cb@ettus.com>
 <834000BB-7082-4963-BC19-BF23E223F248@ionconcepts.com>
Message-ID: <3e62dbea-fc89-c5b6-6b5c-ae25d7181bec@ettus.com>
Date: Tue, 24 Mar 2020 14:56:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <834000BB-7082-4963-BC19-BF23E223F248@ionconcepts.com>
Content-Language: en-US
Subject: Re: [USRP-users] X310 broadcasting ICMP - information request
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
Cc: usrp-users@lists.ettus.com
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

SGkgSWFuLAoKYWx3YXlzIGdvb2QgdG8gaGVhciBmcm9tIHlvdSwgYnV0LCBwdWgsIHRoaXMgaXMg
YXdha2VuaW5nIG9sZCBtZW1vcmllcywKYW5kIEknbSBub3QgZXZlbiBzdXJlIHRob3NlIGFyZSB0
aGUgZ29vZCBvbmVzLgoKWWVhaCwgSSByZW1lbWJlciwgdGhlIGludGVydmFsIGZvciB0aGUgR3Jh
dHVpdGlvdXMgQVJQIHBhY2tldHMgaXNuJ3QKd2hhdCBpdCdzIHN1cHBvc2VkIHRvIGJlIGFjY29y
ZGluZyB0byBmaXJtd2FyZSBjb21tZW50cy4gVWguIE1heWJlIHdlCmp1c3QgY2xvY2tlZCB0aGUg
Q1BVIGNvcmUgbG93ZXIgdGhhbiB0aGUgYXV0aG9yIG9mIHRoZSBmaXJtd2FyZSB0aG91Z2h0PwpO
bywgSSB0aGluayBJIHJ1bGVkIHRoYXQgb3V0IGJhY2sgaW4gdGhlIGRheSwgYnV0IGEgbG90IG9m
IFJGTm9DaXphdGlvbgpoYXBwZW5lZCBzaW5jZSB0aGVuLCBzbyBpbnRlcnZhbHMgbWlnaHQgYmUg
ZGlmZmVyZW50IG5vdyB0aGFuIHRoZXkgd2VyZQp0aGVuLgoKSG0uIEkgcmVhbGx5IGRvbid0IHRo
aW5rIHRha2luZyBhcGFydCB0aGF0IENQVSBkZXNpZ24gd2lsbCBkbyB1cyBtdWNoCmdvb2QsIGJv
dGggcHJhY3RpY2FsbHkgYW5kIHBzeWNob2xvZ2ljYWxseSwgaWYgd2UgZG9uJ3Qga25vdyB3aGF0
CmV4YWN0bHkgd2UncmUgZml4aW5nLiBEbyB5b3UgaGF2ZSBhbiBpZGVhIG9uIGhvdyB0byBuYXJy
b3cgdGhhdCBkb3duPwpJJ20gbm90IHRvIGtlZW4gb24gcmVidWlsZGluZyBhIGJ1bmNoIG9mIEZQ
R0EgaW1hZ2VzIGZvciB0ZXN0aW5nIHdpdGhvdXQKYSBidWlsZCBzZXJ2ZXIuLi4KCkNoZWVycywK
TWFyY3VzCgpPbiAyNC4wMy4yMCAwNzoyOSwgSWFuIEJ1Y2tsZXkgd3JvdGU6Cj4gT2xkIHRocmVh
ZCBidXQgZm9yIHRoZSBzYWtlIG9mIGEga25vd2xlZGdlIGFyY2hpdmU6IFRoZSBJQ01QIElSIHRy
YWZmaWMgaXMgdGhlIFgzMTAgTGluayBzdGF0ZSByb3V0aW5nIHRhYmxlIHVwZGF0ZXPigKZpdOKA
mXMgdW5pcXVlIHRvIHRoZSBYMzEwLCBub3QgcHJlc2VudCBpbiB0aGUgTjIxMAo+IEFuZCBJIGFs
c28sIG9ubHkgdG9uaWdodCwgb2JzZXJ2ZWQgb3RoZXIgWDMxMCBmaXJtd2FyZSBkcml2ZW4gbmV0
d29yayBzZXJ2aWNlcyBydW5uaW5nIGF0IH4zeCB0aGUgaW50ZXJ2YWwgSSBleHBlY3RlZCBNYXJj
dXPigKZzbyBzb21ldGhpbmcgaXMgb2ZmIGdsb2JhbGx5IGluIHRoZSBmaXJtd2FyZSBvciB0aGUg
dGltZXIgcmVnaXN0ZXIgdGhhdCBkcml2ZXMgaXQuCj4gLUlhbgo+IAo+PiBPbiBKYW4gNiwgMjAx
NywgYXQgNjo1NSBBTSwgTWFyY3VzIE3DvGxsZXIgdmlhIFVTUlAtdXNlcnMgPHVzcnAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tPiB3cm90ZToKPj4KPj4gSGkgVmxhZGljYSwKPj4KPj4gZXJyLCB0aGF0
J3MgYSBzdHJhbmdlIHByb2JsZW07IGFyZSB5b3Ugc3VyZSB5b3Ugd2FudCB0byBjaGFuZ2UgdGhl
Cj4+IGJlaGF2aW91ciBvZiB5b3VyIFNEUiBkZXZpY2VzIHRvIHN1aXQgdGhlIHNlY3VyaXR5IHBy
b2R1Y3QgdGhhdCB5b3UgcGF5Cj4+IGZvciwgaW4gb3JkZXIgdG8gbWFrZSB5b3VyIG5ldHdvcmsg
ZWFzaWVyIHRvIHNlY3VyZT8gRnJhbmtseSwgaWYgdGhhdAo+PiBwcm9kdWN0IG1ha2VzIGFueSBw
cm9ibGVtczogSXQgbG9va3MgbGlrZSBzb21lIHNvZnR3YXJlIHRoYXQgcnVucyBvbiBhCj4+IHBs
YWluIExpbnV4IHN5c3RlbSwgcHJvYmFibHkuIFVzZSBlYnRhYmxlcyB0byBzaW1wbHkgbWFrZSB0
aGF0IHN5c3RlbQo+PiBkZWFmIHRvIHBhY2tldHMgY29taW5nIGZyb20geW91ciBVU1JQJ3MgTUFD
IGFkZHJlc3MuIE9yLCBpZiB5b3VyIGxvY2FsCj4+IHN3aXRjaCBhbGxvd3MgdGhhdCwgc2ltcGx5
IHB1dCB0aGUgVVNSUCBpbiBhIHNlcGFyYXRlIFZMQU4uCj4+Cj4+IEJ5IHRoZSB3YXksIHRoZSBO
MjEwIGFsc28gYW5zd2VycyB3aXRoIGJyb2FkY2FzdCBwYWNrZXRzIHRvIGRpc2NvdmVyeQo+PiBy
ZXF1ZXN0cywgaWYgSSByZW1lbWJlciBjb3JyZWN0bHkuIFNvIGlmIHRoYXQgcHJvYmxlbSByZWFs
bHkgaXMKPj4gWDMxMC1zcGVjaWZpYywgdGhlbiBpdCdzIHByb2JhYmx5IGR1ZSB0byB0aGUgcGVy
aW9kaWMgZ3JhdGl0aW91cyBBUlAKPj4gcGFja2V0cyAoZ2FycCxbMV0pLiBUaGF0IGlzLCB0aGUg
WDMwMCBpbmZvcm1zIHRoZSBkZXZpY2VzIG9uIHRoZSBuZXR3b3JrCj4+IGFib3V0IHRoZSBmYWN0
IHRoYXQgdGhlIElQIGFkZHJlc3MgaXQgaGFzIGlzIGFuc3dlcmVkIGJ5IGl0cyBNQUMKPj4gYWRk
cmVzczsgdGhhdCB3YXksIHRoZXJlJ3MgYW4gQVJQIHRhYmxlIGVudHJ5IGZvciB0aGUgWDMxMC4g
WW91IGNhbgo+PiBhY3R1YWxseSBqdXN0IGJ1aWxkIHRoZSBmaXJtd2FyZSB5b3Vyc2VsZiBhbmQg
Y29tbWVudCBvdXQgdGhlIGdhcnAoKQo+PiBjYWxsLCBpZiB5b3UncmUgaW5jbGluZWQgdG8gZG8g
c28sIHRoZW4KPj4KPj4gVG8gYmUgaG9uZXN0LCBJIHNlZSBhIHN0cmFuZ2UgYmVoYXZpb3VyIHJl
bGF0ZWQgdG8gdGhhdDsgbmFtZWx5LCB0aGUKPj4gZmlybXdhcmUgaW4geDMwMF9tYWluLmMgWzJd
IGNsYWltcyB0aGF0IHRoZSBnYXJwKCkgZnVuY3Rpb24gZ2V0cyBjYWxsZWQKPj4gZXZlcnkgKHJv
dWdobHksIGludGVnZXIgZGl2aXNpb24uLi4pIDEgbWlsbGlzZWNvbmQsIGFuZCB0aGUgZ2FycCgp
Cj4+IGZ1bmN0aW9uIHRoZW4gb25seSBkb2VzIHNvbWV0aGluZyBldmVyeSA2MCwwMDAgY2FsbHMg
4oCTIGkuZS4gb25lIHBhY2tldAo+PiBldmVyeSBtaW51dGUuIEkganVzdCBsaXN0ZW5lZCBmb3Ig
dGhvc2UsIGFuZCB0aGV5IGRvbid0IGhhcHBlbiBhdCA2MHMKPj4gcGVyaW9kcywgYnV0IGF0IDE5
Mi42NXMgcGVyaW9kcy4gV2hpY2ggaXMga2luZCBvZiBzdHJhbmdlLiBJJ2xsIHJhaXNlCj4+IHRo
aXMgd2l0aCB0aGUgb3RoZXJzLgo+Pgo+PiBCZXN0IHJlZ2FyZHMsCj4+Cj4+IE1hcmN1cwo+Pgo+
PiBbMV0gaHR0cHM6Ly93aWtpLndpcmVzaGFyay5vcmcvR3JhdHVpdG91c19BUlAKPj4gWzJdCj4+
IGh0dHBzOi8vZ2l0aHViLmNvbS9FdHR1c1Jlc2VhcmNoL3VoZC9ibG9iL21hc3Rlci9maXJtd2Fy
ZS91c3JwMy94MzAwL3gzMDBfbWFpbi5jI0w0NTIKPj4KPj4gT24gMDYuMDEuMjAxNyAxNTowMywg
VmxhZGljYSBTYXJrIHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+Pj4gSGkgdGhlcmUsCj4+Pgo+Pj4g
SSBoYXZlIGEgZmV3IFgzMTBzLiBTb21lIG9mIHRoZW0gYXJlIGNvbm5lY3RlZCB0byBhIGRlc2t0
b3AgUEMgYnV0IEkKPj4+IHdhbnQgdG8gYWNjZXNzIHNvbWUgb2YgdGhlbSB2aWEgbXkgbGFwdG9w
LiB0aGUgbGFwdG9wIGlzIGNvbm5lY3RlZCB0bwo+Pj4gYSBsb2NhbCBzd2l0Y2ggYW5kIHRoZSBY
MzEwIGlzIGFsc28gY29ubmVjdGVkIHRvIGl0LiBJbiBvcmRlciB0byBoYXZlCj4+PiBpbnRlcm5l
dCBhY2Nlc3MgdGhlIHN3aXRjaCBpcyBjb25uZWN0ZWQgdG8gdGhlIHdhbGwgZXRoZXJuZXQgcGx1
Zy4KPj4+IFRoaXMgcGx1ZyBpcyBtb25pdG9yZWQgYnkgbWFjbW9uIGFuZCBkaXNjb25uZWN0cyB0
aGUgcGx1ZyBmcm9tIExBTiwgaWYKPj4+IHN0cmFuZ2UgbWFjIGFwcGVhcnMuCj4+Pgo+Pj4gVGhl
IHByb2JsZW0gYXBwZWFycyBkdWUgdG8gdGhlIElDTVAgaW5mb3JtYXRpb24gcmVxdWVzdCBmcmFt
ZXMKPj4+IGJyb2FkY2FzdGVkIGJ5IHRoZSBYMzEwLiBTaW5jZSB0aGlzIGlzIGEgYnJvYWRjYXN0
LCBpdCBpcyBhbHNvCj4+PiBmb3J3YXJkZWQgdG8gdGhlIHdhbGwgcGx1ZyBhbmQgdGhlIG1hY21v
biBkaXNjb25uZWN0cyBpdCBmcm9tIHRoZSBMQU4uCj4+Pgo+Pj4KPj4+IFdpdGggdGhlIE4yMTAg
SSBkaWRuJ3QgaGFkIHRob3NlIHByb2JsZW1zLCBwcm9iYWJseSBiZWNhdXNlIHRoZXkgZG8KPj4+
IG5vdCB0cmFuc21pdCBicm9hZGNhc3RzLgo+Pj4KPj4+IFRoZSBwcm9ibGVtIGlzIHRoYXQgaSBo
YXZlIGFscmVhZHkgYSBmZXcgbWFjIGFkZHJlc3NlcyBpbiB0aGUgbWFjbW9uCj4+PiBhbmQgZW50
ZXJpbmcgbW9yZSB3b3VsZCByZXF1aXJlIGFkZGl0aW9uYWwgbGljZW5zZXMuCj4+Pgo+Pj4gSXMg
dGhlcmUgY2hhbmNlIHRvIGRpc2FibGUgdGhlc2UgYnJvYWRjYXN0cz8KPj4+Cj4+PiBCUiwKPj4+
IFZsYWRpCj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4+PiBVU1JQLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQo+Pj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAt
dXNlcnNfbGlzdHMuZXR0dXMuY29tCj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4+IFVTUlAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tCj4+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9s
aXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo+IAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNS
UC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xp
c3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
