Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AE58141DD9
	for <lists+usrp-users@lfdr.de>; Wed, 12 Jun 2019 09:35:47 +0200 (CEST)
Received: from [::1] (port=54904 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1haxnH-0000JI-5Q; Wed, 12 Jun 2019 03:35:39 -0400
Received: from mx1.itsystems.it ([62.94.30.103]:46174)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <p.palana@itsystems.it>)
 id 1haxnD-0000E7-Cr
 for usrp-users@lists.ettus.com; Wed, 12 Jun 2019 03:35:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=itsystems.it; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1XIUSr9HiDS65shI0nitr0DvKv7szzwBGjr0bueQCds=; b=NUEOFXPQ66GLQxEAJxmpuEjjaV
 Ta1J5qs3qXpabj7wGUvosPkREz9x1jcTiVPw//0HV5rlFfa6tnb75EZ7TlCYrHuU+6YUfNOr9xaEu
 IBWREVx2WdcMvUDfzrYgmxrNHhNSdZZ2OnV8iO/s8yUv8/mPriRmWiy9h71PnEFjRIwc=;
Received: from [10.10.0.138]
 by mx1.itsystems.it with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.90_1) (envelope-from <p.palana@itsystems.it>)
 id 1haxlt-0003MX-MC; Wed, 12 Jun 2019 07:34:15 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
References: <1cc193d7-d0c0-4605-8bf2-e8b6dab5c3ec@itsystems.it>
 <5CFFD96E.8040504@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=p.palana@itsystems.it; prefer-encrypt=mutual; keydata=
 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
 YdrDHPAoRmQ=
Message-ID: <1da87304-f048-3055-61d1-8df695a04e8b@itsystems.it>
Date: Wed, 12 Jun 2019 09:34:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <5CFFD96E.8040504@gmail.com>
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "v-mx.virt.itsystems.it", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Marcus,
 thank you for your reply.You are perfectly right.
 The configuration is as follow. 1) I've my devel machine 2) on the same LAN
 (through gigabit switch) there is the machine where the n310 is connected.
 Content analysis details:   (-2.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0005]
Subject: Re: [USRP-users] problem configuring n310 using jtag
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
From: Paolo Palana via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Paolo Palana <p.palana@itsystems.it>
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

SGVsbG8gTWFyY3VzLCB0aGFuayB5b3UgZm9yIHlvdXIgcmVwbHkuWW91IGFyZSBwZXJmZWN0bHkg
cmlnaHQuIFRoZQpjb25maWd1cmF0aW9uIGlzIGFzIGZvbGxvdy4KCjEpIEkndmUgbXkgZGV2ZWwg
bWFjaGluZQoKMikgb24gdGhlIHNhbWUgTEFOICh0aHJvdWdoIGdpZ2FiaXQgc3dpdGNoKSB0aGVy
ZSBpcyB0aGUgbWFjaGluZSB3aGVyZQp0aGUgbjMxMCBpcyBjb25uZWN0ZWQuCgozKSBCb3RoIG1h
Y2hpbmVzIGhhdmUgdWJ1bnR1IDE2LjA0IGFtZDY0IGFuZCB2aXZhdmRvIHRvb2xzIDIwMTcuNAoK
NCkgb24gdGhlIG1hY2hpbmUgd2l0aCB0aGUgbjMxMCBpcyBydW5uaW5nIGh3X3NlcnZlciAobGF1
bmNoZWQgYXMgcm9vdAp3aXRoIHRoZSBvcHRpb24gLWQpCgo1KSBJIGNvbm5lY3QsIHdpdGggdGhl
IHZpdmFkbyBoYXJkd2FyZSBtYW5hZ2VyIGZyb20gbXkgZGV2ZWwgbWFjaGluZSB0bwp0aGUgcmVt
b3RlIG1hY2hpbmUgd2l0aCB0aGUgbjMxMC4KCjYpIHRoZSBjb25maWd1cmF0aW9uIGJpdHN0cmVh
bSBpcyB0aGVuICJwcm9ncmFtbWVkIiBmcm9tIG15IGRldmVsIG1hY2hpbmUuCgpOT1RFUzoKCiog
dGhlIGNvbW11bmljYXRpb24gYmV0d2VlbiBteSBtYWNoaW5lIGFuZCByZW1vdGUgbWFjaGluZSBz
ZWVtcyB0byBiZQpvay4gSSBjYW4gcmVhZCBmcm9tIHRoZSB2aXZhZG8gZ3VpIHRoZSB2YWx1ZXMg
b2YgdGhlIGRldmljZSBwcm9wZXJ0aWVzCihlLmcuIHRoZSBkbmEgdmFsdWUpLgoKKiBJIGNhbiBz
c2ggaW50byB0aGUgbjMxMCBhbmQgd29ya3MgZmluZSBhbHNvIHRoZSBzZXJpYWwgY29uc29sZSAo
dGVzdGVkCndpdGggc2NyZWVzIGFzIGRlc2NyaWJlZCBoZXJlCmh0dHBzOi8vZmlsZXMuZXR0dXMu
Y29tL21hbnVhbC9wYWdlX3VzcnBfbjN4eC5odG1sKQoKKiBhbGwgZmlsZSBpbiAvZGV2L3Nlcmlh
L2J5LWlkIGFyZSBwcmVzZW50CgoqIHdpdGggdGhlIHNhbWUgbWFjaGluZXMgaW52b2x2ZWQgSSdt
IHBlcmZlY3RseSBhYmxlIHRvIGNvbmZpZ3VyZSBteSBYMzEwLgoKTE9HUzoKCnN0YXJ0X2d1aQpv
cGVuX2h3CklORk86IFtJUF9GbG93IDE5LTIzNF0gUmVmcmVzaGluZyBJUCByZXBvc2l0b3JpZXMK
SU5GTzogW0lQX0Zsb3cgMTktMTcwNF0gTm8gdXNlciBJUCByZXBvc2l0b3JpZXMgc3BlY2lmaWVk
CmNvbm5lY3RfaHdfc2VydmVyIC11cmwgeHh4Lnh4eC54eHgueHh4OjMxMjEKSU5GTzogW0xhYnRv
b2xzIDI3LTIyODVdIENvbm5lY3RpbmcgdG8gaHdfc2VydmVyIHVybApUQ1A6eHh4Lnh4eC54eHgu
eHh4OjMxMjEKY3VycmVudF9od190YXJnZXQgW2dldF9od190YXJnZXRzICoveGlsaW54X3RjZi9E
aWdpbGVudC94eHh4eHh4eHh4eHh4XQpzZXRfcHJvcGVydHkgUEFSQU0uRlJFUVVFTkNZIDE1MDAw
MDAwIFtnZXRfaHdfdGFyZ2V0cwoqL3hpbGlueF90Y2YvRGlnaWxlbnQveHh4eHh4eHh4eHh4eF0K
b3Blbl9od190YXJnZXQKSU5GTzogW0xhYnRvb2xzdGNsIDQ0LTQ2Nl0gT3BlbmluZyBod190YXJn
ZXQKMTAuMTAuMC4xNjc6MzEyMS94aWxpbnhfdGNmL0RpZ2lsZW50L3h4eHh4eHh4eHh4eHgKY3Vy
cmVudF9od19kZXZpY2UgW2dldF9od19kZXZpY2VzIHhjN3oxMDBfMV0KcmVmcmVzaF9od19kZXZp
Y2UgLXVwZGF0ZV9od19wcm9iZXMgZmFsc2UgW2xpbmRleCBbZ2V0X2h3X2RldmljZXMKeGM3ejEw
MF8xXSAwXQpJTkZPOiBbTGFidG9vbHMgMjctMTQzNF0gRGV2aWNlIHhjN3oxMDAgKEpUQUcgZGV2
aWNlIGluZGV4ID0gMSkgaXMKcHJvZ3JhbW1lZCB3aXRoIGEgZGVzaWduIHRoYXQgaGFzIG5vIHN1
cHBvcnRlZCBkZWJ1ZyBjb3JlKHMpIGluIGl0LgpXQVJOSU5HOiBbTGFidG9vbHMgMjctMzM2MV0g
VGhlIGRlYnVnIGh1YiBjb3JlIHdhcyBub3QgZGV0ZWN0ZWQuClJlc29sdXRpb246CjEuIE1ha2Ug
c3VyZSB0aGUgY2xvY2sgY29ubmVjdGVkIHRvIHRoZSBkZWJ1ZyBodWIgKGRiZ19odWIpIGNvcmUg
aXMgYQpmcmVlIHJ1bm5pbmcgY2xvY2sgYW5kIGlzIGFjdGl2ZS4KMi4gTWFrZSBzdXJlIHRoZSBC
U0NBTl9TV0lUQ0hfVVNFUl9NQVNLIGRldmljZSBwcm9wZXJ0eSBpbiBWaXZhZG8KSGFyZHdhcmUg
TWFuYWdlciByZWZsZWN0cyB0aGUgdXNlciBzY2FuIGNoYWluIHNldHRpbmcgaW4gdGhlIGRlc2ln
biBhbmQKcmVmcmVzaCB0aGUgZGV2aWNlLsKgIFRvIGRldGVybWluZSB0aGUgdXNlciBzY2FuIGNo
YWluIHNldHRpbmcgaW4gdGhlCmRlc2lnbiwgb3BlbiB0aGUgaW1wbGVtZW50ZWQgZGVzaWduIGFu
ZCB1c2UgJ2dldF9wcm9wZXJ0eQpDX1VTRVJfU0NBTl9DSEFJTiBbZ2V0X2RlYnVnX2NvcmVzIGRi
Z19odWJdJy4KRm9yIG1vcmUgZGV0YWlscyBvbiBzZXR0aW5nIHRoZSBzY2FuIGNoYWluIHByb3Bl
cnR5LCBjb25zdWx0IHRoZSBWaXZhZG8KRGVidWcgYW5kIFByb2dyYW1taW5nIFVzZXIgR3VpZGUg
KFVHOTA4KS4Kc2V0X3Byb3BlcnR5IFBST0JFUy5GSUxFIHt9IFtnZXRfaHdfZGV2aWNlcyB4Yzd6
MTAwXzFdCnNldF9wcm9wZXJ0eSBGVUxMX1BST0JFUy5GSUxFIHt9IFtnZXRfaHdfZGV2aWNlcyB4
Yzd6MTAwXzFdCnNldF9wcm9wZXJ0eSBQUk9HUkFNLkZJTEUgey90bXAvdXNycF9uMzEwX2ZwZ2Ff
WEcuYml0fSBbZ2V0X2h3X2RldmljZXMKeGM3ejEwMF8xXQpwcm9ncmFtX2h3X2RldmljZXMgW2dl
dF9od19kZXZpY2VzIHhjN3oxMDBfMV0KRVJST1I6IFtMYWJ0b29scyAyNy0zMTY1XSBFbmQgb2Yg
c3RhcnR1cCBzdGF0dXM6IExPVwpwcm9ncmFtX2h3X2RldmljZXM6IFRpbWUgKHMpOiBjcHUgPSAw
MDowMDoxMCA7IGVsYXBzZWQgPSAwMDowMDoxMiAuCk1lbW9yeSAoTUIpOiBwZWFrID0gNjY1Ni40
NzMgOyBnYWluID0gMC4wMDAgOyBmcmVlIHBoeXNpY2FsID0gMjY3ODYgOwpmcmVlIHZpcnR1YWwg
PSA2MjQ5OApFUlJPUjogW0NvbW1vbiAxNy0zOV0gJ3Byb2dyYW1faHdfZGV2aWNlcycgZmFpbGVk
IGR1ZSB0byBlYXJsaWVyIGVycm9ycy4KCgpJZiBhcmUgbmVjZXNzYXJ5IG1vcmUgaW5mb3JtYXRp
b25zIHBsZWFzZSBsZXQgbWUga25vdy4KCkhhdmUgYSBnb29kIGRheS4KClBhb2xvCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFp
bGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5j
b20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
