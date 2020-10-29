Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E7A29E32D
	for <lists+usrp-users@lfdr.de>; Thu, 29 Oct 2020 04:13:14 +0100 (CET)
Received: from [::1] (port=39880 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kXyND-0000gl-Kg; Wed, 28 Oct 2020 23:13:11 -0400
Received: from resqmta-po-03v.sys.comcast.net ([96.114.154.162]:38614
 helo=resqmta-po-01v.sys.comcast.net)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <w6rz@comcast.net>) id 1kXyNA-0000bS-AD
 for usrp-users@lists.ettus.com; Wed, 28 Oct 2020 23:13:08 -0400
Received: from resomta-po-03v.sys.comcast.net ([96.114.154.227])
 by resqmta-po-03v.sys.comcast.net with ESMTP
 id XxikkEty9upwTXyMVkAIVt; Thu, 29 Oct 2020 03:12:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1603941147;
 bh=RXLbE9ElKqpcBKsuQmYoP9psU9y3bwkfwwIWyOc+eUo=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=mSuU/PPBzATzW6fTHJHzHlLTorPplqhSXzPRv8VJue9GPsEezYrihbWreh2+Rz9lO
 SK0sU3yGk+nuXLrO+Lx+1gPqLnD7R6d7akz7FZS0hxE6yIOoAzxGslKmT0FLeEXngC
 gsHOqD45+gfbbqz5j5xlT5YqiWEQpQQDkIYYMPEFoePtgq/7euvk5GVMDy2nCpUXbR
 jabqyiL5FosO636iOekLOEtgMBbFKEL0so1BjEC8bHQzzy+lDnxgO+8KadSnLGVGIB
 nwmPzB3uonIThdjhKxcp6WWuRHBRF2Tu/15Lmm/vBt6CUzG6SUz0IfgmeP6pDn34Ly
 hoKXM9iAFWgQg==
Received: from [IPv6:2601:647:4200:ea30:98a5:4a2b:70b1:353b]
 ([IPv6:2601:647:4200:ea30:98a5:4a2b:70b1:353b])
 by resomta-po-03v.sys.comcast.net with ESMTPSA
 id XyMSku2jIKc38XyMSksJIY; Thu, 29 Oct 2020 03:12:27 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <08a10fed-97db-5459-8470-7803fff24dfd@dcsmail.net>
 <CACaXmv86HdB9aKY9jGqCwL35cUK=U2bj_-Gox_qnaogYDdBttg@mail.gmail.com>
 <740f10e7-9cd4-fe62-2e0f-9c2720592a65@dcsmail.net>
 <5F9A20C5.7010601@gmail.com>
Message-ID: <7ead4f12-8eaf-0c3e-d57a-eadc183c06c5@comcast.net>
Date: Wed, 28 Oct 2020 20:12:24 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <5F9A20C5.7010601@gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] B200mini questions
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

SWYgeW91IGNoYW5nZSB0aGUgVUhEIHByaW50b3V0IGZyb20gTUh6IHRvIEh6LCBpdCBsb29rcyBs
aWtlIHRoZSBzdGVwIApzaXplIGlzIGFyb3VuZCAwLjQgSHogYXQgMjMgTUh6IChhbmQgTUNSIGRv
ZXNuJ3QgaGF2ZSB0byBiZSBhbiBpbnRlZ2VyKS4gClVzaW5nIGEgRFZCLVQyIHNhbXBsZSByYXRl
IG9mICg4MDAwMDAwLjAgKiA1KSAvIDcgYW5kIGFkZGluZyAwLjAxIEh6IGZvciAKZWFjaCBydW4g
KHdpdGggNFggTUNSKQoKW0lORk9dIFtCMjAwXSBBc2tpbmcgZm9yIGNsb2NrIHJhdGUgMjI4NTcx
NDIuOTc3MTQzIEh6Li4uICgoODAwMDAwMC4wICogCjUpIC8gNyArIDAuMDMpCltJTkZPXSBbQjIw
MF0gQWN0dWFsbHkgZ290IGNsb2NrIHJhdGUgMjI4NTcxNDMuMDI4MTEwIEh6LgoKW0lORk9dIFtC
MjAwXSBBc2tpbmcgZm9yIGNsb2NrIHJhdGUgMjI4NTcxNDMuMDE3MTQzIEh6Li4uICgoODAwMDAw
MC4wICogCjUpIC8gNyArIDAuMDQpCltJTkZPXSBbQjIwMF0gQWN0dWFsbHkgZ290IGNsb2NrIHJh
dGUgMjI4NTcxNDMuMDI4MTEwIEh6LgoKW0lORk9dIFtCMjAwXSBBc2tpbmcgZm9yIGNsb2NrIHJh
dGUgMjI4NTcxNDMuMDU3MTQzIEh6Li4uICgoODAwMDAwMC4wICogCjUpIC8gNyArIDAuMDUpCltJ
TkZPXSBbQjIwMF0gQWN0dWFsbHkgZ290IGNsb2NrIHJhdGUgMjI4NTcxNDMuMDI4MTEwIEh6LgoK
W0lORk9dIFtCMjAwXSBBc2tpbmcgZm9yIGNsb2NrIHJhdGUgMjI4NTcxNDMuMDk3MTQzIEh6Li4u
ICgoODAwMDAwMC4wICogCjUpIC8gNyArIDAuMDYpCltJTkZPXSBbQjIwMF0gQWN0dWFsbHkgZ290
IGNsb2NrIHJhdGUgMjI4NTcxNDMuMDI4MTEwIEh6LgoKW0lORk9dIFtCMjAwXSBBc2tpbmcgZm9y
IGNsb2NrIHJhdGUgMjI4NTcxNDMuMTM3MTQzIEh6Li4uICgoODAwMDAwMC4wICogCjUpIC8gNyAr
IDAuMDcpCltJTkZPXSBbQjIwMF0gQWN0dWFsbHkgZ290IGNsb2NrIHJhdGUgMjI4NTcxNDMuMDI4
MTEwIEh6LgoKW0lORk9dIFtCMjAwXSBBc2tpbmcgZm9yIGNsb2NrIHJhdGUgMjI4NTcxNDMuMTc3
MTQzIEh6Li4uICgoODAwMDAwMC4wICogCjUpIC8gNyArIDAuMDgpCltJTkZPXSBbQjIwMF0gQWN0
dWFsbHkgZ290IGNsb2NrIHJhdGUgMjI4NTcxNDMuMDI4MTEwIEh6LgoKW0lORk9dIFtCMjAwXSBB
c2tpbmcgZm9yIGNsb2NrIHJhdGUgMjI4NTcxNDMuMjE3MTQzIEh6Li4uICgoODAwMDAwMC4wICog
CjUpIC8gNykgKyAwLjA5CltJTkZPXSBbQjIwMF0gQWN0dWFsbHkgZ290IGNsb2NrIHJhdGUgMjI4
NTcxNDMuMDI4MTEwIEh6LgoKW0lORk9dIFtCMjAwXSBBc2tpbmcgZm9yIGNsb2NrIHJhdGUgMjI4
NTcxNDMuMjU3MTQzIEh6Li4uICgoODAwMDAwMC4wICogCjUpIC8gNykgKyAwLjEwCltJTkZPXSBb
QjIwMF0gQWN0dWFsbHkgZ290IGNsb2NrIHJhdGUgMjI4NTcxNDMuNDI3MDMyIEh6LgoKVGhlIGNs
YWltIG9mICJhbnkgc2FtcGxlIHJhdGUiIGlzIG5vdCB0aGF0IGZhciBvZmYuCgpSb24KCk9uIDEw
LzI4LzIwIDE4OjU0LCBNYXJjdXMgRC4gTGVlY2ggdmlhIFVTUlAtdXNlcnMgd3JvdGU6Cj4gT24g
MTAvMjgvMjAyMCAwOTowNyBQTSwgQmFycnkgRHVnZ2FuIHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+
PiBIaSBOZWVsLAo+Pgo+PiBUaGFua3MgZm9yIHRoZSBxdWljayByZXNwb25zZSEgQXMgYSBjbGFy
aWZpY2F0aW9uOgo+Pgo+PiAtIGZvciBoYWxmLWR1cGxleCBvcGVyYXRpb24sIGlzIHRoZSByZWNl
aXZlciBtdXRlZCAoYW5kIHByb3RlY3RlZCkgCj4+IGR1cmluZyB0cmFuc21pdD8KPj4KPj4gLSBJ
IGNvdWxkIG5vdCBmaW5kIHRoZSBzYW1wbGUgcmF0ZXMgb24geW91ciB3ZWJzaXRlLgo+Pgo+IGh0
dHBzOi8vZmlsZXMuZXR0dXMuY29tL21hbnVhbC9wYWdlX3VzcnBfYjIwMC5odG1sI2IyMDBfbWNy
Cj4KPiBJdCBzYXlzICJBTlkgdmFsdWUgYmV0d2VlbiA1TUh6IGFuZCA2MS40NE1IeiIsIGJ1dCBp
biByZWFsaXR5LCBpdCBoYXMgCj4gdG8gYmUgaW50ZWdlciwgYW5kIHRoZXJlIGFyZSByYXRlcyB0
aGF0IGRvbid0IHdvcmsgYmVjYXVzZSBvZiB0aGUKPiDCoCBQTEwgYXJjaGl0ZWN0dXJlLS1JIGp1
c3QgY2FuJ3QgcmVtZW1iZXIgd2hhdCB0aG9zZSByZXN0cmljdGlvbnMgYXJlLgo+Cj4gQnV0IGV2
ZW4gaWYgdGhlIHN0ZXAgc2l6ZSBpcyAxMGtIeiwgd2l0aCBpbnRlZ2VyIGRlY2ltYXRpb24gCj4g
aW1wbGVtZW50ZWQgaW4gdGhlIEZQR0EsIHRoYXQncyByZWFsbHkgYSBsb3Qgb2YgZGlmZmVyZW50
IHN1cHBvcnRlZCAKPiBzYW1wbGUgcmF0ZXMuCj4KPiBOb3JtYWxseSBVSEQgd2lsbCBwaWNrIGEg
bWFzdGVyIGNsb2NrIHJhdGUgZm9yIHlvdSwgZ2l2ZW4gdGhlIGRlc2lyZWQgCj4gc2FtcGxlIHJh
dGUuwqAgSXQgd2lsbCB0cnkgdG8gcGljayB0aGUgaGlnaGVzdCBtdWx0aXBsZSBvZiB5b3VyCj4g
wqAgZGVzaXJlZCBzYW1wbGUgcmF0ZSB0aGF0IGlzIGFsc28gYSBhIG11bHRpcGxlIG9mIHR3by4g
U29tZXRpbWVzLCAKPiB5b3UnZCByYXRoZXIgaXQgbm90IHRyeSB0byBiZSAiY2xldmVyIiwgc28g
eW91IHNwZWNpZnkgdGhlIG1hc3RlciBjbG9jawo+IMKgIHJhdGUgYXMgYSBkZXZpY2UgYXJndW1l
bnQgYW5kIHNldCBzYW1wbGUgcmF0ZXMgYWNjb3JkaW5nbHkuCj4KPgo+Cj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdAo+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4gaHR0cDovL2xpc3RzLmV0dHVzLmNv
bS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21h
aWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
