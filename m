Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD7A598B3
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jun 2019 12:46:10 +0200 (CEST)
Received: from [::1] (port=55052 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hgoOM-0000Ky-Hn; Fri, 28 Jun 2019 06:46:06 -0400
Received: from mx1.itsystems.it ([62.94.30.103]:41448)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <p.palana@itsystems.it>)
 id 1hgoOI-0000Gy-I8
 for usrp-users@lists.ettus.com; Fri, 28 Jun 2019 06:46:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=itsystems.it; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=M3eTOU1DCiKpZ7+6Gy3fsACB4hKR9HeVm8PrH+3pKxw=; b=F7zHpsy55Mc/Q7/kUkNP9q/edP
 4l+UfHNZJTrenAV9Aaypi6BiTlFaO/+MB/XTvrXugI93vaC8bHEl4ZgCq3jKo+Y0p65IbyVq2Kg5k
 1sJ6DfJRPAOK27UpS//hm8bEuwEcTn8Zjno6REtFacNjrbGhVCApaZn+QwrRQpBJc+Rs=;
Received: from [10.10.0.138]
 by mx1.itsystems.it with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.90_1) (envelope-from <p.palana@itsystems.it>)
 id 1hgoMt-0003DS-P9; Fri, 28 Jun 2019 10:44:36 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
References: <1cc193d7-d0c0-4605-8bf2-e8b6dab5c3ec@itsystems.it>
 <5CFFD96E.8040504@gmail.com>
 <1da87304-f048-3055-61d1-8df695a04e8b@itsystems.it>
 <5D011192.8050704@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=p.palana@itsystems.it; prefer-encrypt=mutual; keydata=
 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
 YdrDHPAoRmQ=
Message-ID: <ea0d1138-250c-d75f-3940-c0dfe839b741@itsystems.it>
Date: Fri, 28 Jun 2019 12:45:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <5D011192.8050704@gmail.com>
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "v-mx.virt.itsystems.it",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  > So, the "process flow" you've chosen, JTAGing the FPGA image
    into > place, is not a usual method for updating the FPGA image on the N310.
    >   The N310 is itself a computer platform, so has other me [...] 
 
 Content analysis details:   (-2.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
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

PiBTbywgdGhlICJwcm9jZXNzIGZsb3ciIHlvdSd2ZSBjaG9zZW4sIEpUQUdpbmcgdGhlIEZQR0Eg
aW1hZ2UgaW50bwo+IHBsYWNlLCBpcyBub3QgYSB1c3VhbCBtZXRob2QgZm9yIHVwZGF0aW5nIHRo
ZSBGUEdBIGltYWdlIG9uIHRoZSBOMzEwLgo+IMKgIFRoZSBOMzEwIGlzIGl0c2VsZiBhIGNvbXB1
dGVyIHBsYXRmb3JtLCBzbyBoYXMgb3RoZXIgbWVjaGFuaXNtcyBmb3IKPiB1cGRhdGluZyB0aGUg
RlBHQSBpbWFnZToKPgo+IGh0dHBzOi8va2IuZXR0dXMuY29tL1VTUlBfTjMwMC9OMzEwL04zMjAv
TjMyMV9HZXR0aW5nX1N0YXJ0ZWRfR3VpZGUjVXBkYXRpbmdfdGhlX0ZQR0FfSW1hZ2UKPgo+Cj4g
SW4gZmFjdCwgSSdkIHNwZW5kIHNvbWUgdGltZSB3aXRoIHRoZSBlbnRpcmUgZ2V0dGluZy1zdGFy
dGVkIGd1aWRlLAo+IHNpbmNlIHRoZSBOMzEwIGlzIHF1aXRlIGRpZmZlcmVudCB0aGFuIHRoZSBY
MzEwLgo+Cj4KSGVsbG8gTWFyY3VzLAoKdGhhbmsgeW91IGZvciB5b3VyIHJlcGx5LgoKWW91IGFy
ZSByaWdodCBpbmRlZWQsIEkgd2FzIG1pc2xlZCBiZWNhdXNlIHRoZSBjb21tZW5kcyBuYW1lLi4u
IGp1c3QgbXkKZmF1bHQuCgpUaGFuayB5b3UKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNy
cC11c2Vyc19saXN0cy5ldHR1cy5jb20K
