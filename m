Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 87102460C35
	for <lists+usrp-users@lfdr.de>; Mon, 29 Nov 2021 02:23:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 09D5C3848F7
	for <lists+usrp-users@lfdr.de>; Sun, 28 Nov 2021 20:23:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=163.com header.i=@163.com header.b="l+Jkr558";
	dkim-atps=neutral
Received: from m1330.mail.163.com (m1330.mail.163.com [220.181.13.30])
	by mm2.emwd.com (Postfix) with ESMTP id 629D43846B8;
	Sun, 28 Nov 2021 20:22:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=2QzGq
	kd6W7uq0oZ5u9mXctkJ06VfGrBqNz76m+uIdtY=; b=l+Jkr558Sk5Q7mKKwqcKE
	8yOtPqnc6kdr0ZqvTh8SjEEwt8WFApyUE+kz9/J/aiAYUoX7E3j3cYTKNVr2iEil
	ZfMW+NQxpg7pZD1m1nOvPIxG74ccPagaBPKTwzGoJ03YFbiQyflxK+be4cgUC4ZW
	64kyQRny9XGeFWUPR6Hmns=
Received: from lt4839$163.com ( [119.123.242.72] ) by ajax-webmail-wmsvr30
 (Coremail) ; Mon, 29 Nov 2021 09:22:50 +0800 (CST)
X-Originating-IP: [119.123.242.72]
Date: Mon, 29 Nov 2021 09:22:50 +0800 (CST)
From: HalaMadrid  <lt4839@163.com>
To: usrp-users@lists.ettus.com, usrp-users-request@lists.ettus.com
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.13 build 20210622(1d4788a8)
 Copyright (c) 2002-2021 www.mailtech.cn 163com
In-Reply-To: <163791543546.11274.3597442325475239539@mm2.emwd.com>
References: <163791543546.11274.3597442325475239539@mm2.emwd.com>
X-CM-CTRLDATA: mVh5c2Zvb3Rlcl9odG09MjU4Nzo1Ng==
MIME-Version: 1.0
Message-ID: <955e1cc.c4e.17d694997bf.Coremail.lt4839@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: HsGowABHMOhqK6RhDa5pAQ--.18239W
X-CM-SenderInfo: towumjqz6rljoofrz/1tbiyApa2lp7EvZWhAAAsV
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Message-ID-Hash: FOM7OGHE4VRX4IXBSVXNSAPM66Y55P75
X-Message-ID-Hash: FOM7OGHE4VRX4IXBSVXNSAPM66Y55P75
X-MailFrom: lt4839@163.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP-users Digest, Vol 135, Issue 61
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FOM7OGHE4VRX4IXBSVXNSAPM66Y55P75/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8591002440835768093=="

--===============8591002440835768093==
Content-Type: multipart/alternative;
	boundary="----=_Part_11635_1113403153.1638148970430"

------=_Part_11635_1113403153.1638148970430
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

RGVhciBtYW5hZ2VyOgoKSSB3YW50IHRvIHVuc3Vic2NyaWJsZSB0aGUgRS1tYWlsIGxpc3QuIENv
dWxkIHlvdSBwbGVhc2UgaGVscCBtZT8gVGhhbmtzIQoKCgoKCgoKCgoKLS0KCkJlc3QgcmVnYXJk
cyAKCgoKCgpBdCAyMDIxLTExLTI2IDE2OjMwOjM1LCB1c3JwLXVzZXJzLXJlcXVlc3RAbGlzdHMu
ZXR0dXMuY29tIHdyb3RlOgo+U2VuZCBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCBzdWJtaXNzaW9u
cyB0bwo+CXVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4KPlRvIHN1YnNjcmliZSBvciB1bnN1
YnNjcmliZSB2aWEgZW1haWwsIHNlbmQgYSBtZXNzYWdlIHdpdGggc3ViamVjdCBvcgo+Ym9keSAn
aGVscCcgdG8KPgl1c3JwLXVzZXJzLXJlcXVlc3RAbGlzdHMuZXR0dXMuY29tCj4KPllvdSBjYW4g
cmVhY2ggdGhlIHBlcnNvbiBtYW5hZ2luZyB0aGUgbGlzdCBhdAo+CXVzcnAtdXNlcnMtb3duZXJA
bGlzdHMuZXR0dXMuY29tCj4KPldoZW4gcmVwbHlpbmcsIHBsZWFzZSBlZGl0IHlvdXIgU3ViamVj
dCBsaW5lIHNvIGl0IGlzIG1vcmUgc3BlY2lmaWMKPnRoYW4gIlJlOiBDb250ZW50cyBvZiBVU1JQ
LXVzZXJzIGRpZ2VzdC4uLiIKPgo+VG9kYXkncyBUb3BpY3M6Cj4KPiAgIDEuIFJlOiBVSEQgNC4x
IG1lbW9yeSBsZWFrPyAoanNrQG5rb20ubm8pCj4KPgo+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+Cj5NZXNzYWdl
OiAxCj5EYXRlOiBUaHUsIDI1IE5vdiAyMDIxIDIwOjM4OjMxICswMDAwCj5Gcm9tOiBqc2tAbmtv
bS5ubwo+U3ViamVjdDogW1VTUlAtdXNlcnNdIFJlOiBVSEQgNC4xIG1lbW9yeSBsZWFrPwo+VG86
IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj5NZXNzYWdlLUlEOgo+CTxWZjlUb1RLZFBhS3pp
emd4Z3ZRb0ZFbWRZMlJjZlgwYXdLNU9FZ0tmUHBRQGxpc3RzLmV0dHVzLmNvbT4KPkNvbnRlbnQt
VHlwZTogbXVsdGlwYXJ0L2FsdGVybmF0aXZlOwo+CWJvdW5kYXJ5PSJiMV9WZjlUb1RLZFBhS3pp
emd4Z3ZRb0ZFbWRZMlJjZlgwYXdLNU9FZ0tmUHBRIgo+Cj5UaGFua3MgZm9yIHRoZSByZXBseS4g
T3BlbmVkIGFuIGlzc3VlIG9uIGdpdGh1YiBub3cuIAo+Cj5Kb3JuCj4KPj4gSWYgaXQncyBub3Qg
dG9vIG11Y2ggdHJvdWJsZSwgY2FuIHlvdSBvcGVuIGFuIGlzc3VlIG9uCj4+IGh0dHBzOi8vZ2l0
aHViLmNvbS9FdHR1c1Jlc2VhcmNoL3VoZC9pc3N1ZXMgYW5kIHBhc3RlIHRoaXMgY29kZSB0aGVy
ZT8gSWYKPj4geW91IGRvbid0IGhhdmUgZ2l0aHViIGFjY2VzcywgSSBjYW4gYWxzbyBkbyBpdCwg
YnV0IGlmIHlvdSBkbyBpdCB0aGVuIHlvdQo+PiBnZXQgYXV0by11cGRhdGVkIHdoZW4gd2UgcHVi
bGlzaCB1cGRhdGVzLgo+LS0tLS0tLS0tLS0tLS0gbmV4dCBwYXJ0IC0tLS0tLS0tLS0tLS0tCj5B
IG1lc3NhZ2UgcGFydCBpbmNvbXBhdGlibGUgd2l0aCBwbGFpbiB0ZXh0IGRpZ2VzdHMgaGFzIGJl
ZW4gcmVtb3ZlZCAuLi4KPk5hbWU6IG5vdCBhdmFpbGFibGUKPlR5cGU6IHRleHQvaHRtbAo+U2l6
ZTogMzcxIGJ5dGVzCj5EZXNjOiBub3QgYXZhaWxhYmxlCj4KPi0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQo+Cj5TdWJqZWN0OiBEaWdlc3QgRm9vdGVyCj4KPl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj5VU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAt
LSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo+Cj4KPi0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQo+Cj5FbmQgb2YgVVNSUC11c2VycyBEaWdlc3QsIFZvbCAxMzUsIElz
c3VlIDYxCj4qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCg==
------=_Part_11635_1113403153.1638148970430
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxwcmU+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiBBcmlhbDsi
PkRlYXIgbWFuYWdlcjo8L3NwYW4+PC9wcmU+PGRpdiBzdHlsZT0ibWFyZ2luOiAwOyI+PGJyPjwv
ZGl2PjxkaXYgc3R5bGU9Im1hcmdpbjogMDsiPkkgd2FudCB0byB1bnN1YnNjcmlibGUgdGhlIEUt
bWFpbCBsaXN0LiBDb3VsZCB5b3UgcGxlYXNlIGhlbHAgbWU/IFRoYW5rcyE8L2Rpdj48cCBzdHls
ZT0ibWFyZ2luOiAwOyI+PGJyPjwvcD48cCBzdHlsZT0ibWFyZ2luOiAwOyI+PGJyPjwvcD48cCBz
dHlsZT0ibWFyZ2luOiAwOyI+PGJyPjwvcD48ZGl2IHN0eWxlPSJwb3NpdGlvbjpyZWxhdGl2ZTt6
b29tOjEiPjxwIHN0eWxlPSJtYXJnaW46IDAiPi0tPC9wPjxkaXY+QmVzdCByZWdhcmRzJm5ic3A7
PC9kaXY+PGRpdiBzdHlsZT0iY2xlYXI6Ym90aCI+PC9kaXY+PC9kaXY+PGRpdiBpZD0iZGl2TmV0
ZWFzZU1haWxDYXJkIj48L2Rpdj48cCBzdHlsZT0ibWFyZ2luOiAwOyI+PGJyPjwvcD48cHJlPjxi
cj5BdCAyMDIxLTExLTI2IDE2OjMwOjM1LCB1c3JwLXVzZXJzLXJlcXVlc3RAbGlzdHMuZXR0dXMu
Y29tIHdyb3RlOgomZ3Q7U2VuZCBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCBzdWJtaXNzaW9ucyB0
bwomZ3Q7CXVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCiZndDsKJmd0O1RvIHN1YnNjcmliZSBv
ciB1bnN1YnNjcmliZSB2aWEgZW1haWwsIHNlbmQgYSBtZXNzYWdlIHdpdGggc3ViamVjdCBvcgom
Z3Q7Ym9keSAnaGVscCcgdG8KJmd0Owl1c3JwLXVzZXJzLXJlcXVlc3RAbGlzdHMuZXR0dXMuY29t
CiZndDsKJmd0O1lvdSBjYW4gcmVhY2ggdGhlIHBlcnNvbiBtYW5hZ2luZyB0aGUgbGlzdCBhdAom
Z3Q7CXVzcnAtdXNlcnMtb3duZXJAbGlzdHMuZXR0dXMuY29tCiZndDsKJmd0O1doZW4gcmVwbHlp
bmcsIHBsZWFzZSBlZGl0IHlvdXIgU3ViamVjdCBsaW5lIHNvIGl0IGlzIG1vcmUgc3BlY2lmaWMK
Jmd0O3RoYW4gIlJlOiBDb250ZW50cyBvZiBVU1JQLXVzZXJzIGRpZ2VzdC4uLiIKJmd0OwomZ3Q7
VG9kYXkncyBUb3BpY3M6CiZndDsKJmd0OyAgIDEuIFJlOiBVSEQgNC4xIG1lbW9yeSBsZWFrPyAo
anNrQG5rb20ubm8pCiZndDsKJmd0OwomZ3Q7LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQomZ3Q7CiZndDtNZXNzYWdl
OiAxCiZndDtEYXRlOiBUaHUsIDI1IE5vdiAyMDIxIDIwOjM4OjMxICswMDAwCiZndDtGcm9tOiBq
c2tAbmtvbS5ubwomZ3Q7U3ViamVjdDogW1VTUlAtdXNlcnNdIFJlOiBVSEQgNC4xIG1lbW9yeSBs
ZWFrPwomZ3Q7VG86IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCiZndDtNZXNzYWdlLUlEOgom
Z3Q7CSZsdDtWZjlUb1RLZFBhS3ppemd4Z3ZRb0ZFbWRZMlJjZlgwYXdLNU9FZ0tmUHBRQGxpc3Rz
LmV0dHVzLmNvbSZndDsKJmd0O0NvbnRlbnQtVHlwZTogbXVsdGlwYXJ0L2FsdGVybmF0aXZlOwom
Z3Q7CWJvdW5kYXJ5PSJiMV9WZjlUb1RLZFBhS3ppemd4Z3ZRb0ZFbWRZMlJjZlgwYXdLNU9FZ0tm
UHBRIgomZ3Q7CiZndDtUaGFua3MgZm9yIHRoZSByZXBseS4gT3BlbmVkIGFuIGlzc3VlIG9uIGdp
dGh1YiBub3cuIAomZ3Q7CiZndDtKb3JuCiZndDsKJmd0OyZndDsgSWYgaXQncyBub3QgdG9vIG11
Y2ggdHJvdWJsZSwgY2FuIHlvdSBvcGVuIGFuIGlzc3VlIG9uCiZndDsmZ3Q7IGh0dHBzOi8vZ2l0
aHViLmNvbS9FdHR1c1Jlc2VhcmNoL3VoZC9pc3N1ZXMgYW5kIHBhc3RlIHRoaXMgY29kZSB0aGVy
ZT8gSWYKJmd0OyZndDsgeW91IGRvbid0IGhhdmUgZ2l0aHViIGFjY2VzcywgSSBjYW4gYWxzbyBk
byBpdCwgYnV0IGlmIHlvdSBkbyBpdCB0aGVuIHlvdQomZ3Q7Jmd0OyBnZXQgYXV0by11cGRhdGVk
IHdoZW4gd2UgcHVibGlzaCB1cGRhdGVzLgomZ3Q7LS0tLS0tLS0tLS0tLS0gbmV4dCBwYXJ0IC0t
LS0tLS0tLS0tLS0tCiZndDtBIG1lc3NhZ2UgcGFydCBpbmNvbXBhdGlibGUgd2l0aCBwbGFpbiB0
ZXh0IGRpZ2VzdHMgaGFzIGJlZW4gcmVtb3ZlZCAuLi4KJmd0O05hbWU6IG5vdCBhdmFpbGFibGUK
Jmd0O1R5cGU6IHRleHQvaHRtbAomZ3Q7U2l6ZTogMzcxIGJ5dGVzCiZndDtEZXNjOiBub3QgYXZh
aWxhYmxlCiZndDsKJmd0Oy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQomZ3Q7CiZndDtT
dWJqZWN0OiBEaWdlc3QgRm9vdGVyCiZndDsKJmd0O19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCiZndDtVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQomZ3Q7VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQomZ3Q7CiZndDsKJmd0Oy0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQomZ3Q7CiZndDtFbmQgb2YgVVNSUC11c2VycyBEaWdlc3Qs
IFZvbCAxMzUsIElzc3VlIDYxCiZndDsqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqCjwvcHJlPjwvZGl2Pjxicj48YnI+PHNwYW4gdGl0bGU9Im5ldGVhc2Vmb290ZXIi
PjxwPiZuYnNwOzwvcD48L3NwYW4+
------=_Part_11635_1113403153.1638148970430--

--===============8591002440835768093==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8591002440835768093==--
