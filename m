Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BF5DDE76
	for <lists+usrp-users@lfdr.de>; Sun, 20 Oct 2019 14:40:46 +0200 (CEST)
Received: from [::1] (port=43172 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iMAVi-0002RP-Fc; Sun, 20 Oct 2019 08:40:38 -0400
Received: from neon-v1.ccupm.upm.es ([138.100.198.71]:58988)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <pablo.mdiaz@alumnos.upm.es>)
 id 1iMAVa-0002ME-Ai
 for usrp-users@lists.ettus.com; Sun, 20 Oct 2019 08:40:30 -0400
Received: from [192.168.1.163] (2.154.186.166.dyn.user.ono.com [2.154.186.166])
 (user=pablo.mdiaz@alumnos.upm.es mech=PLAIN bits=0)
 by neon-v1.ccupm.upm.es (8.14.4/8.14.4/neon-v1-002) with ESMTP id
 x9KCdhRN006348
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <usrp-users@lists.ettus.com>; Sun, 20 Oct 2019 14:39:44 +0200
To: usrp-users@lists.ettus.com
Message-ID: <d92a0a15-a78c-a63d-8ed1-54f475f1be61@alumnos.upm.es>
Date: Sun, 20 Oct 2019 14:39:41 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Language: es-ES
X-BitDefender-Scanner: Clean,
 Agent: BitDefender Milter 3.1.6 on neon-v1.ccupm.upm.es, sigver: 7.82648
Subject: [USRP-users] Setting tune freq error
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
From: =?utf-8?q?Pablo_Mart=C3=ADnez_de_Leiva_D=C3=ADaz_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Pablo_Mart=c3=adnez_de_Leiva_D=c3=adaz?=
 <pablo.mdiaz@alumnos.upm.es>
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

SGkgYWxsLAoKV2UgaGF2ZSBhIHgzMTAgU0RSLCB3ZSBhcmUgb2J0YWluaW5nIElRIHNhbXBsZXMg
ZnJvbSA0IGNoYW5uZWxzIGJ1dCB3ZSAKYXJlIGhhdmluZyBwcm9ibGVtcyB3aXRoIHR1bmUgZnJl
cXVlbmN5LgoKV2hlbiB3ZSBhbHJlYWR5IGhhdmUgc2V0IHVwIG9uZSBmcmVxdWVuY3ksIDEwME1o
eiBmb3IgZXhhbXBsZSwgYW5kIHdlIAp0cnkgdG8gdHVuZSBhIGZyZXF1ZW5jeSB2ZXJ5IGRpc3Rh
bnQgZnJvbSB0aGUgY3VycmVudCwgNzAwbWh6IGZvciAKZXhhbXBsZSwgd2UgZ2V0IHRoaXMgZXJy
b3I6CgoKIMKgIHRlcm1pbmF0ZSBjYWxsZWQgYWZ0ZXIgdGhyb3dpbmcgYW4gaW5zdGFuY2Ugb2Yg
J3VoZDo6aW9fZXJyb3InCiDCoCB3aGF0KCk6wqAgRW52aXJvbm1lbnRFcnJvcjogSU9FcnJvcjog
QmxvY2sgY3RybCAoQ0VfMDFfUG9ydF80MCkgbm8gCnJlc3BvbnNlIHBhY2tldCAtIEFzc2VydGlv
bkVycm9yOiBib29sKGJ1ZmYpCiDCoCBpbiB1aW50NjRfdCBjdHJsX2lmYWNlX2ltcGw8X2VuZGlh
bm5lc3M+Ojp3YWl0X2Zvcl9hY2soYm9vbCwgZG91YmxlKSAKW3dpdGggdWhkOjplbmRpYW5uZXNz
X3QgX2VuZGlhbm5lc3MgPSAodWhkOjplbmRpYW5uZXNzX3QpMTsgdWludDY0X3QgPSAKbG9uZyB1
bnNpZ25lZCBpbnRdCiDCoCBhdCAvYnVpbGQvdWhkLXluemJuOS91aGQtMy4xNC4xLjEvaG9zdC9s
aWIvcmZub2MvY3RybF9pZmFjZS5jcHA6MTQyCgpUaGlzIGlzIHRoZSBmdW5jdGlvbiB3ZSB1c2Ug
Zm9yIHR1bmluZzoKCmJvb2wgc2RyX3NldF90dW5lX2ZyZXF1ZW5jeSh1c3JwXzI5NDUqIHJhZGlv
LCBmbG9hdCBmcmVxLCBpbnQgY2hhbm5lbHMpIHsKCiDCoMKgwqAgYm9vbCBzdWNjZXNzID0gdHJ1
ZTsKIMKgwqDCoCBzdGQ6OmNvdXQgPDwgIlNldHRpbmcgdHVuZSBmcmVxdWVuY3k6ICIgPDwgZnJl
cTsKIMKgwqDCoCB1aGQ6OnR1bmVfcmVxdWVzdF90IHR1bmUoZnJlcSk7CiDCoMKgwqAgZm9yIChp
bnQgaSA9IDA7IGkgPCBjaGFubmVsczsgKytpKSB7CiDCoMKgwqDCoMKgwqDCoCByYWRpby0+dXNy
cC0+c2V0X3J4X2ZyZXEodHVuZSwgaSk7CiDCoMKgwqDCoMKgwqDCoCBpZiAoc3RkOjphYnMocmFk
aW8tPnVzcnAtPmdldF9yeF9mcmVxKGkpIC0gZnJlcSkgPiAwLjAwMDEpeyAvLyAKSGVyZSB3ZSBj
aGVjayBpZiB0aGUgY2hhbmdlIGhhdmUgYmVlbiBkb25lIGNvcnJlY3RseQogwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBzdWNjZXNzID0gZmFsc2U7CiDCoMKgwqDCoMKgwqDCoCB9CiDCoMKgwqAgfQog
wqDCoMKgIHJldHVybiBzdWNjZXNzOwp9CgpXZSBoYXZlIHRoZSByZWxlYXNlIHZlcnNpb24gMy4x
NC4xLjEgb2YgVUhELgoKSSBob3BlIHlvdSBjYW4gaGVscCB1cywgdGhhbmtzIGJlZm9yZWhhbmQu
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11
c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3Rz
LmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
