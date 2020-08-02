Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6465C2355B6
	for <lists+usrp-users@lfdr.de>; Sun,  2 Aug 2020 08:37:08 +0200 (CEST)
Received: from [::1] (port=33034 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k27cH-0006Ok-3L; Sun, 02 Aug 2020 02:37:05 -0400
Received: from resqmta-po-05v.sys.comcast.net ([96.114.154.164]:33297)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <w6rz@comcast.net>) id 1k27cD-0006Hk-SK
 for usrp-users@lists.ettus.com; Sun, 02 Aug 2020 02:37:01 -0400
Received: from resomta-po-19v.sys.comcast.net ([96.114.154.243])
 by resqmta-po-05v.sys.comcast.net with ESMTP
 id 27atkTyrFPoq227bYkSYZj; Sun, 02 Aug 2020 06:36:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1596350180;
 bh=IOTB9yDo8YLe/j4D+8b9yn9l77Gnq9wxlNagw5Pzdl8=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=iTLno4114M4ankdCuVV//epwvz7IhtoL/H+BDWaUqro8d/2vcYj/b5NpB9RG0LeU2
 Y7wLv0IkxhrsCQG7uLBTO0Clkw5f7tl7yzPu2aUs6mITz480IHaoWnrYojI48lsuTX
 gbsS/EupUFYwIbmw8HwasxucrYM2d1IRgrYLnuEDcmnua2yJ9F+pBIrgS21ee1BK8I
 BINZnzK1e0zq/KfvqGKOp1AmRVV3p8Sko0Lv6M86YGVN/pLjXFy1zAILxNiodD4nvD
 BsdJ1vrBzi43lOlZz+NrieqOVcLzCih03f0mRFFthZg9GjTyxMVYXl+eykiloWv+2X
 MdsdklPn9abew==
Received: from [IPv6:2601:647:4200:ea30:4d2d:6082:bf4a:94e5]
 ([IPv6:2601:647:4200:ea30:4d2d:6082:bf4a:94e5])
 by resomta-po-19v.sys.comcast.net with ESMTPSA
 id 27bXkiybKtoQ727bYk39eN; Sun, 02 Aug 2020 06:36:20 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <001b01d65f79$eae66ea0$c0b34be0$@com> <5F171581.7080201@gmail.com>
 <003b01d65f7b$852d6850$8f8838f0$@com> <5F17172A.9040600@gmail.com>
 <004301d65f7c$7138a750$53a9f5f0$@com> <5F1719EB.6000400@gmail.com>
 <cf7f523f-4017-1467-4782-f06b9f0bc786@ettus.com>
 <000001d66892$9775c500$c6614f00$@com>
Message-ID: <1cbe261c-2edb-885d-37a1-8589f71e9e3e@comcast.net>
Date: Sat, 1 Aug 2020 23:36:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <000001d66892$9775c500$c6614f00$@com>
Content-Language: en-US
Subject: Re: [USRP-users] [USRP B210] Very High Noise power at receiver
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
From: Ron Economos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ron Economos <w6rz@comcast.net>
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

SW4gZnVsbCBkdXBsZXggYXBwbGljYXRpb25zLCBpdCdzIHZlcnkgbGlrZWx5IHRoYXQgeW91J3Jl
IGludGVyZmVyaW5nIAp3aXRoIHlvdXJzZWxmLiBTb21lIHNvcnQgb2YgZmlsdGVyIG1heSBiZSBy
ZXF1aXJlZCBvbiB0aGUgcmVjZWl2ZXIgdG8gCmF0dGVudWF0ZSB0aGUgdHJhbnNtaXR0ZXIgc2ln
bmFsLgoKV2hhdCBraW5kIG9mIGZpbHRlciBkZXBlbmRzIG9uIHRoZSBzaXplIG9mIHRoZSBkdXBs
ZXggZ2FwICh0aGUgZnJlcXVlbmN5IApzcGFuIGJldHdlZW4gdHJhbnNtaXQgYW5kIHJlY2VpdmUp
LiBJZiB0aGUgZ2FwIGlzIGxhcmdlLCB0aGVuIHlvdSBjYW4gCmp1c3QgdXNlIGEgaGlnaCBvciBs
b3cgcGFzcyBmaWx0ZXIuIEZvciBleGFtcGxlOgoKaHR0cHM6Ly93d3cubWluaWNpcmN1aXRzLmNv
bS9XZWJTdG9yZS9kYXNoYm9hcmQuaHRtbD9tb2RlbD1WSEYtMTUwMCUyQgoKUm9uCgpPbiA4LzEv
MjAgMjM6MDMsIFByYXNhZCB2aWEgVVNSUC11c2VycyB3cm90ZToKPiBTb2Z0IHJlbWluZGVyIS4K
Pgo+IFRoYW5rcyEKPgo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogUHJhc2Fk
IFttYWlsdG86a3ByYXNAdHJpbGNvbW0uY29tXQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVseSAyOSwg
MjAyMCA4OjQ4IFBNCj4gVG86ICdQcmFzYWQnOyAnTWFyY3VzIE3DvGxsZXInOyAndXNycC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20nCj4gU3ViamVjdDogUkU6IFtVU1JQLXVzZXJzXSAxIFRzIGRlbGF5
IGluIFVTUlAgQjIxMAo+Cj4gSGkgTXVsbGVyL0FsbCwKPgo+IEp1c3QgYSBxdWljayBxdWVzdGlv
bi4KPiBEdXJpbmcgb3VyIDVHLU5SIGludGVncmF0aW9uIHdpdGggVVNSUCBCMjEwLCB3ZSBvYnNl
cnZlIHZlcnkgaGlnaCBub2lzZQo+IHBvd2VyIGF0IHJlY2VpdmVyLgo+IElzIGl0IGV4cGVjdGVk
IGJlaGF2aW9yID8KPiBQQkNIIHJzcnA6IC0xMy43NzU1NTQgZEJtLCBTTlI6IC0xMi45NDI1OTEg
ZEIsIE5PSVNFX1BPV0VSOiAtMC44MzI5NjMgZEJtLAo+IHJzc2k6IDEuNjQzNjYyZEJtLgo+Cj4g
QXBwbGllZCBnYWluIGluIFVTUlA6Cj4gVHggR2FpbjogNDUKPiBSeCBHYWluOiA0NQo+IFRyYW5z
bWl0IHBvd2VyOi0gMGRCbS4KPgo+IFJlZ2FyZHMsCj4gUHJhc2FkLgo+Cj4KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0Cj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRwOi8vbGlzdHMuZXR0dXMu
Y29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20v
bWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
