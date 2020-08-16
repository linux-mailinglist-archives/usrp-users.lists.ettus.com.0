Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2DC24596F
	for <lists+usrp-users@lfdr.de>; Sun, 16 Aug 2020 22:13:59 +0200 (CEST)
Received: from [::1] (port=46868 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k7P2P-00055F-78; Sun, 16 Aug 2020 16:13:53 -0400
Received: from mr85p00im-ztdg06011201.me.com ([17.58.23.181]:49584)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <ghulands@me.com>) id 1k7P2L-00051l-LQ
 for usrp-users@lists.ettus.com; Sun, 16 Aug 2020 16:13:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
 t=1597608788; bh=tZZMFBoB921dV1SI3U6ZJNM1JjwfHk3ZAlH6CYmj4H8=;
 h=From:Content-Type:Mime-Version:Subject:Message-Id:Date:To;
 b=YvgewPCXAbaakgX3DtLRJvAODoLzzPXklmx5BEcS42UozeE9NB337Dus61laEBlNM
 TT75Q6PPt1SajWn23s0stBDrDUA0kfOgAXFO0rOyAvxNCdsAIuod87goJPfCupzpJw
 eMPUsrhIfHeMdDtgQQKdPdcz4eARXDK8rG8PXiAjg7lv9W+2KFh5+UxkCTSlzEKU08
 AUh/foq0KlTRryDTdyTa0WkeaAYeC59Loj4MtvLRk2DdYRcdJw+8v2wpipXwWyrKeS
 WtJqjs3KXhixcu4AipDoL21vIKtA0E6+urg6hW1PBvt1yJpLt6tM9kZpqSO1oMUcF+
 /b2gCBo0lgKiA==
Received: from gregs-mbp-82.ghulands.homeip.net
 (c-73-116-156-63.hsd1.ca.comcast.net [73.116.156.63])
 by mr85p00im-ztdg06011201.me.com (Postfix) with ESMTPSA id 7F7164003C0
 for <usrp-users@lists.ettus.com>; Sun, 16 Aug 2020 20:13:08 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Message-Id: <84027C06-239F-4DD5-B847-D9F777453988@me.com>
Date: Sun, 16 Aug 2020 13:13:07 -0700
To: usrp-users@lists.ettus.com
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-08-16_09:2020-08-14,
 2020-08-16 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxscore=0
 mlxlogscore=578 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2004280000 definitions=main-2008160168
Subject: [USRP-users] B210 Got a ctrl packet with unknown SID
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
From: Greg Hulands via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Greg Hulands <ghulands@me.com>
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

SGksCknigJltIHBsYXlpbmcgYXJvdW5kIHdpdGggYSBKZXRzb24gTmFubyBkZXYga2l0IGFuZCB0
cnlpbmcgdG8gc3RyZWFtIGgyNjUgZW5jb2RlZCB2aWRlbyBvdmVyIGR2Yi10MiB1c2luZyB0aGUg
YjIxMC4gSSBhbSB1c2luZyB0aGUgZXhhbXBsZSBmcm9tIHRoZSBkdHYgZm9sZGVyIG9mIGdyLiBJ
IG1vZGlmaWVkIHRoZSBzb3VyY2UgZmlsZSB0byByZWFkIGZyb20gYSBmaWxlIG1hZGUgd2l0aCBt
a2ZpZm8uCgpbSU5GT10gW1VIRF0gbGludXg7IEdOVSBDKysgdmVyc2lvbiA3LjUuMDsgQm9vc3Rf
MTA2NTAxOyBVSERfMy4xNS4wLjAtNTQtZ2JjNTg1YjQzCltJTkZPXSBbQjIwMF0gRGV0ZWN0ZWQg
RGV2aWNlOiBCMjEwCltJTkZPXSBbQjIwMF0gT3BlcmF0aW5nIG92ZXIgVVNCIDMuCltJTkZPXSBb
QjIwMF0gSW5pdGlhbGl6ZSBDT0RFQyBjb250cm9sLi4uCltJTkZPXSBbQjIwMF0gSW5pdGlhbGl6
ZSBSYWRpbyBjb250cm9sLi4uCltJTkZPXSBbQjIwMF0gUGVyZm9ybWluZyByZWdpc3RlciBsb29w
YmFjayB0ZXN0Li4uIApbSU5GT10gW0IyMDBdIFJlZ2lzdGVyIGxvb3BiYWNrIHRlc3QgcGFzc2Vk
CltJTkZPXSBbQjIwMF0gUGVyZm9ybWluZyByZWdpc3RlciBsb29wYmFjayB0ZXN0Li4uIApbSU5G
T10gW0IyMDBdIFJlZ2lzdGVyIGxvb3BiYWNrIHRlc3QgcGFzc2VkCltJTkZPXSBbQjIwMF0gQXNr
aW5nIGZvciBjbG9jayByYXRlIDM2LjU3MTQyOSBNSHouLi4gCltJTkZPXSBbQjIwMF0gQWN0dWFs
bHkgZ290IGNsb2NrIHJhdGUgMzYuNTcxNDI4IE1Iei4KCkkgdGhlbiBsYXVuY2ggdGhlIGdzdHJl
YW1lciBwaXBlbGluZSBhbmQgdGhlbiB0aGUgYmVsb3cgaXMgb3V0cHV0IGFuZCBub3RoaW5nIGlz
IHRyYW5zbWl0dGVkLiBJIGdvb2dsZWQgYXJvdW5kIGFuZCBpdCB3YXMgc3VnZ2VzdGVkIHRoYXQg
dGhlIHVzYjMgY29udHJvbGxlciBtaWdodCBiZSBhbiBpc3N1ZSwgYnV0IEkgaGF2ZSBzZWVuIG90
aGVyIHBlb3BsZSBzdWNjZXNzZnVsbHkgdXNpbmcgdGhlIEpldHNvbiBOYW5vIHdpdGggdGhlIGJv
YXJkLgoKRG9lcyBhbnlvbmUgaGF2ZSBhbnkgc3VnZ2VzdGlvbnM/CgpUaGFua3MsCkdyZWcKClNT
U1NTU1NTW0VSUk9SXSBbQjIwMF0gR290IGEgY3RybCBwYWNrZXQgd2l0aCB1bmtub3duIFNJRCAy
MDcwMjk4NzAKU1NTU1NTU1NTU1NTW0VSUk9SXSBbQjIwMF0gR290IGEgY3RybCBwYWNrZXQgd2l0
aCB1bmtub3duIFNJRCAzOTI3NTczNTkKU1NTU1tFUlJPUl0gW0IyMDBdIEdvdCBhIGN0cmwgcGFj
a2V0IHdpdGggdW5rbm93biBTSUQgNTcwOTA5MzQKW0VSUk9SXSBbQjIwMF0gR290IGEgY3RybCBw
YWNrZXQgd2l0aCB1bmtub3duIFNJRCAxOTA3ODI2ODAKU1NTU1NTU1NTU1NbRVJST1JdIFtCMjAw
XSBHb3QgYSBjdHJsIHBhY2tldCB3aXRoIHVua25vd24gU0lEIDQyNjgwOTUxNTAKW0VSUk9SXSBb
QjIwMF0gR290IGEgY3RybCBwYWNrZXQgd2l0aCB1bmtub3duIFNJRCAxMzk5MTM4NTQKW0VSUk9S
XSBbQjIwMF0gR290IGEgY3RybCBwYWNrZXQgd2l0aCB1bmtub3duIFNJRCA0MDY3Mjk1NTI0ClNT
U1NTU1NTU1NbRVJST1JdIFtCMjAwXSBHb3QgYSBjdHJsIHBhY2tldCB3aXRoIHVua25vd24gU0lE
IDQyODQ3NDIwNjUKU1NTU1NTU1NbRVJST1JdIFtCMjAwXSBHb3QgYSBjdHJsIHBhY2tldCB3aXRo
IHVua25vd24gU0lEIDIyMjI2NTIyCltFUlJPUl0gW0IyMDBdIEdvdCBhIGN0cmwgcGFja2V0IHdp
dGggdW5rbm93biBTSUQgOTA0OTkyMzYKU1NbRVJST1JdIFtCMjAwXSBHb3QgYSBjdHJsIHBhY2tl
dCB3aXRoIHVua25vd24gU0lEIDIzMDY5MDk4ClNTW0VSUk9SXSBbQjIwMF0gR290IGEgY3RybCBw
YWNrZXQgd2l0aCB1bmtub3duIFNJRCA0MDY2NDQxNjk1CltFUlJPUl0gW0IyMDBdIEdvdCBhIGN0
cmwgcGFja2V0IHdpdGggdW5rbm93biBTSUQgNDEzMzc0MzI4MgpTW0VSUk9SXSBbQjIwMF0gR290
IGEgY3RybCBwYWNrZXQgd2l0aCB1bmtub3duIFNJRCA0MTUwMzIyOTEzCltFUlJPUl0gW0IyMDBd
IEdvdCBhIGN0cmwgcGFja2V0IHdpdGggdW5rbm93biBTSUQgOTAxMDk4OTAKW0VSUk9SXSBbQjIw
MF0gR290IGEgY3RybCBwYWNrZXQgd2l0aCB1bmtub3duIFNJRCA0NDE5NzMyMTEKW0VSUk9SXSBb
QjIwMF0gR290IGEgY3RybCBwYWNrZXQgd2l0aCB1bmtub3duIFNJRCAyNDE4Mjc0NjYKW0VSUk9S
XSBbQjIwMF0gR290IGEgY3RybCBwYWNrZXQgd2l0aCB1bmtub3duIFNJRCAxMjQxODkxNzkKW0VS
Uk9SXSBbQjIwMF0gR290IGEgY3RybCBwYWNrZXQgd2l0aCB1bmtub3duIFNJRCA3MzIwNDEwNApb
RVJST1JdIFtCMjAwXSBHb3QgYSBjdHJsIHBhY2tldCB3aXRoIHVua25vd24gU0lEIDQ1ODU0NTI5
MQpbRVJST1JdIFtCMjAwXSBHb3QgYSBjdHJsIHBhY2tldCB3aXRoIHVua25vd24gU0lEIDM2NjQ2
NDUwNTkKU1tFUlJPUl0gW0IyMDBdIEdvdCBhIGN0cmwgcGFja2V0IHdpdGggdW5rbm93biBTSUQg
NDIwMDAwMTU5OQpbRVJST1JdIFtCMjAwXSBHb3QgYSBjdHJsIHBhY2tldCB3aXRoIHVua25vd24g
U0lEIDQxODQwODAwNDEKW0VSUk9SXSBbQjIwMF0gR290IGEgY3RybCBwYWNrZXQgd2l0aCB1bmtu
b3duIFNJRCAzNzgxMTY3MTI1ClNTU1NTU1VTU1NTU1NTU1tFUlJPUl0gW0IyMDBdIEdvdCBhIGN0
cmwgcGFja2V0IHdpdGggdW5rbm93biBTSUQgMjI0NjUyNDI5CltFUlJPUl0gW0IyMDBdIEdvdCBh
IGN0cmwgcGFja2V0IHdpdGggdW5rbm93biBTSUQgNTYyMjg0NTgKU1NTU1NTW0VSUk9SXSBbQjIw
MF0gR290IGEgY3RybCBwYWNrZXQgd2l0aCB1bmtub3duIFNJRCAzOTgxNDQ3NjEyClNTU1NTU1NT
U1NTU1NTU1NTU1NTU1NTU1NTU1NTU1NTU1NTU1NTU1NTU1NTU1NTW0VSUk9SXSBbQjIwMF0gR290
IGEgY3RybCBwYWNrZXQgd2l0aCB1bmtub3duIFNJRCAzNDA3OTA1MjUKU1NTW0VSUk9SXSBbQjIw
MF0gR290IGEgY3RybCBwYWNrZXQgd2l0aCB1bmtub3duIFNJRCA5NDU2ODY0OTQKU1NTU1NTU1tF
UlJPUl0gW0IyMDBdIEdvdCBhIGN0cmwgcGFja2V0IHdpdGggdW5rbm93biBTSUQgMjI4MTc0MzkK
U1NTCgpHc3RyZWFtZXIgcGlwZWxpbmU6CmdzdC1sYXVuY2gtMS4wIG52YXJndXNjYW1lcmFzcmMg
ISAndmlkZW8veC1yYXcobWVtb3J5Ok5WTU0pLCB3aWR0aD0xOTIwLCBoZWlnaHQ9MTA4MCxmb3Jt
YXQ9TlYxMiwgZnJhbWVyYXRlPTMwLzEnICEgbnZ2NGwyaDI2NWVuYyBiaXRyYXRlPTgwMDAwMDAg
ISBtcGVndHNtdXggISBmaWxlc2luayBsb2NhdGlvbj1jYW1lcmEudHMKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlz
dApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxt
YW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
