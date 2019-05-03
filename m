Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9846213482
	for <lists+usrp-users@lfdr.de>; Fri,  3 May 2019 22:50:56 +0200 (CEST)
Received: from [::1] (port=47974 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hMf7r-0002VM-5P; Fri, 03 May 2019 16:49:47 -0400
Received: from m50-112.126.com ([123.125.50.112]:54697)
 by mm2.emwd.com with esmtp (Exim 4.91)
 (envelope-from <ying2011@126.com>) id 1hMf7J-0002LF-0e
 for usrp-users@lists.ettus.com; Fri, 03 May 2019 16:49:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=From:Mime-Version:Subject:Message-Id:Date; bh=hGWBk
 JRUfJ/nuxr2h0j40eI+n4UbBqSEnmWmr3UIGCE=; b=igVMzeQVDVddZN1Z5J8W6
 t6ro5FqSS4sN75Jj8Rpb6YtQ+VDCeArk0vp/FGBysCc6IQqrkwaOfxIDBOQth/MN
 7H+694Xsc7R4YfJHt9Z8F2yBXmV2VKWbEKkgOFBFysGHD4ZIqSnfPXX47wFM4QxV
 MxEwMX+EJ9sfTZeLjtdx8U=
Received: from [10.112.249.132] (unknown [114.255.41.180])
 by smtp6 (Coremail) with SMTP id j9KowABXOXUcqcxckOQGDQ--.38S2;
 Sat, 04 May 2019 04:48:30 +0800 (CST)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.8\))
Message-Id: <54DEBAC2-7025-45CC-BCEB-7336CF6E3EA2@126.com>
Date: Sat, 4 May 2019 04:48:28 +0800
To: usrp-users@lists.ettus.com
X-Mailer: Apple Mail (2.3445.104.8)
X-CM-TRANSID: j9KowABXOXUcqcxckOQGDQ--.38S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxJr47Gw13Gw48Jry3WF1fCrg_yoW8ZrWrpF
 WFg39xArn5XrZ3CrnYyw4UWFyrAF93Aw4rGF1ft3yjkw45GrZ0gFyUKFWS9an0k3yav34q
 vFWUZry8Ga1DAFJanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07Uk3kNUUUUU=
X-Originating-IP: [114.255.41.180]
X-CM-SenderInfo: p1lqwjqqrrqiyswou0bp/1tbiEx6pN1pD5iQ+ZgAAsQ
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] Python API about the recv() function
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
From: =?utf-8?b?5bqU5bGx5bedIHZpYSBVU1JQLXVzZXJz?= <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?B?5bqU5bGx5bed?= <ying2011@126.com>
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

SGVsbG8gLCBJ4oCZbSBhIGJlZ2lubmVyIG9mIHRoZSBVU1JQIGFuZCBVSEQgc29mdHdhcmUuIEni
gJltIHNvcnJ5IGwgbWF5IGRlbGl2ZXIgbXkgcXVlc3Rpb24gdW5jbGVhcmx5IHdpdGggbXkgYnJv
a2VuIEVuZ2xpc2guCgoKV2hhdCBJIHdhbnQ6CkkgbmVlZCB0byByZWNlaXZlIHRoZSByZWFsLXRp
bWUgcmFkaW8gc2lnbmFscyB3aXRoIGEgQjIxMCBVU1JQIGRldmljZSwgYWNjb3JkaW5nIHRvIG15
IHNhbXBsZSByYXRlLEkgbmVlZCBhbiBleHRlcm5hbCBoYXJkIGRpc2sgdG8gYWNoaWV2ZSBhdCBs
ZWFzdCAyNDUuNzZNQi9zIHVzaW5nIGZjMzIgaW4gbXkgaG9zdC4gIEJ1dCB0aGUgVVNCMy4wIGhh
cmQgZHJpdmVyIEkgIGNvbm5lY3RpbmcgdG8gdGhlIGhvc3Qgb25seSBnZXQgMTgwTUIvcyBpbiB3
cml0ZSBtb2RlLiBUaGVyZWZvcmXvvIxJIHdhbnQgY2hhbmdlIHRoZSBDUFVfZm9ybWF0IGZyb20g
ZmMzMiB0byBzYzE2IHRvIGRlY3JlYXNlIHRoZSBsb2FkIGluIHRoZSBVU0IzLjAgdHJhbnNtaXNz
aW9uLgoKCldoYXQgcHJvYmxlbSBJIGNvbmZyb250ZWQ6CknigJltIG5vdCBmYW1pbGlhciB3aXRo
IENQUCBsYW5ndWFnZSwgU28gSSBjaG9vc2UgdG8gZHJpdmUgdGhlIEIyMTAgd2l0aCBweXRob24g
QVBJLldoZW4gSSByZWZlciB0byB0aGUgc291cmNlIGNvZGUgaW4gR2l0aHViL1VIRCAsIEkgZmlu
ZCBhbiBleGFtcGxlIGluIC9VSEQvaG9zdC9weXRob24vdXNycC5weS4gSXQgdGVsbHMgbWUgaG93
IHRvIGluaXRpYWxpemUgYSBSWCBzdHJlYW1lciBhbmQgc3RhcnQgcmVjZWl2aW5nIHNhbXBsZXMu
VGhlc2UgY29kZSBhcmUKIArigKYuCnN0X2FyZ3MgPSBsaWIudXNycC5zdHJlYW1fYXJncygiZmMz
MiIsICJzYzE24oCdKQrigKYuCgpyZWN2X2J1ZmZlciA9IG5wLnplcm9zKChsZW4oY2hhbm5lbHMp
LCBidWZmZXJfc2FtcHMpLCBkdHlwZT1ucC5jb21wbGV4NjQpCuKApi4KCnNhbXBzID0gc3RyZWFt
ZXIucmVjdihyZWN2X2J1ZmZlciwgbWV0YWRhdGEpCi4uLgoKCkkgaGF2ZSBzb21lIGNvbmZ1c2lv
biBhcyBmb2xsb3c6CjHjgIFNdXN0IHRoZSByZWN2X2J1ZmZlciBiZSB0aGUgbnVtcHkgY29tcGxl
eCBhcnJheT8gQXMgZmFyIGFzIEkga25vdywgbnVtcHkgb25seSBoYXMgdGhlIGR0eXBlIGNvbXBs
ZXg2NCBhbmQgY29tcGxleDEyOC4gSWYgSSB1c2UgdGhlIHNjMTYgYXMgdGhlIGNwdSBmb3JtYXQs
IHdoYXQga2luZCAgb2YgbnVtcHkgYXJyYXkgc2hvdWxkICBJIGNyZWF0ZSB0byBhY3QgYXMgdGhl
IOKAmHJlY3ZfYnVmZmVy4oCZPwoKMuOAgUkgdHJ5IHNvbWV0aGluZyB3b3JrYXJvdW5kcywgYnV0
IEnigJltIG5vdCBzdXJlIHRoZSByZWNlaXZlIGRhdGEgYXJlIGNvcnJlY3QuIApGaXJzdDogIHN0
X2FyZ3MgPSBsaWIudXNycC5zdHJlYW1fYXJncyjigJxzYzE2IiwgInNjMTbigJ0pICAgICAgIyBJ
IGNoYW5nZSB0aGUgQ1BVIGZvcm1hdCB0byBzYzE2ClNlY29uZDogICByZWN2X2J1ZmZlciA9IG5w
Lnplcm9zKChsZW4oY2hhbm5lbHMpLCBidWZmZXJfc2FtcHMqMiksIGR0eXBlPW5wLmludDE2KSAg
ICAgIyBJIGNyZWF0ZSB0aGUgYXJyYXkgd2l0aCBkb3VibGUgc2l6ZSBidWZmZXJfc2FtcHMsIGFu
ZCAgYXNzaWduIHRoZSDigJlucC5pbnQxNuKAmSB0byB0aGUgZHR5cGUuCkZpbmFsbHk6ICAgc2Ft
cHMgPSBzdHJlYW1lci5yZWN2KHJlY3ZfYnVmZmVyLCBtZXRhZGF0YSkgICAjIHJlY2VpdmUgdGhl
IGRhdGEgaW4gdGhlIGludDE2IGFycmF5CgpJIGd1ZXNzIHRoZSByZWN2KCkgZnVuY3Rpb24gd2ls
bCByZXR1cm4gSSBhbmQgUSBzYW1wbGVzIGluIHBhaXJzLkkgY2FuIHByaW50IHRoZSBpbnRlZ2Vy
IGZyb20gdGhlIGFycmF5LCBidXQgY2Fubm90IGNvbmZpcm0gdGhlIGNvcnJlY3RuZXNzIG9mIHRo
aXMg4oCYbWV0aG9k4oCZLgoKClBsZWFzZSBnaXZlIG1lIHNvbWUgc3VnZ2VzdGlvbnMgYWJvdXQg
aG93IHRvIHVzZSDigJlzYzE24oCZIGluIHB5dGhvbiwgSSB3aWxsIGFwcHJlY2lhdGUgaXQgaW4g
YWR2YW5jZSEhCgoKCgoKCgoKCgoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVz
ZXJzX2xpc3RzLmV0dHVzLmNvbQo=
