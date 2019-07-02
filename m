Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6491A5D349
	for <lists+usrp-users@lfdr.de>; Tue,  2 Jul 2019 17:46:22 +0200 (CEST)
Received: from [::1] (port=47330 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hiKz7-0002x8-Fh; Tue, 02 Jul 2019 11:46:21 -0400
Received: from mail-qt1-f196.google.com ([209.85.160.196]:44658)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hiKz3-0002oK-JJ
 for usrp-users@lists.ettus.com; Tue, 02 Jul 2019 11:46:17 -0400
Received: by mail-qt1-f196.google.com with SMTP id x47so18939015qtk.11
 for <usrp-users@lists.ettus.com>; Tue, 02 Jul 2019 08:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=KeH4pTIiu7pn9S3g9GNiITRf+eHqsYHQYefPAcs5Z58=;
 b=nBxKWPzP2cUmYzBOpCJfy3Owjxsagd7Kl2oycib+9WuTwPFDmC4BGqlRmb2dPCxjpz
 Z0XrkKXh+ORiiFVCgS86fJlYSikJJGtM5uNHTfDfS54e+muM9FXuY7Ay7R0pMlds+zQF
 GKxas8y//j4wlVBH86ZmPwv4eJvFTkNmJTFmPJAJTF0En1XQnHc20ccs4CiOA4RuSI/Y
 Tk4y22SoxuJiFBNhmfeZhAIQMyyg8RQo4G+r77JlsHXqi7RQedm6pwnc5JAoI6k+QuHx
 bqTgABgPQSWwb+ndOBS3Ex6stu3k0KY8YG/FENonzp6T9GtRnuuve/K5Vn6k1FM70Kqp
 mR1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=KeH4pTIiu7pn9S3g9GNiITRf+eHqsYHQYefPAcs5Z58=;
 b=CWzJNzvoEQMpKUY/LNb2hhVUd8q3KEBRx1NUvSZoqgjjOdg6/5jGgc6dFvmKrKEVxn
 11s5m1PLk6HGqolZfovvl9N3vVp4DhDXfSE6FJn4f0CFAoAV9DQ0as5VbRvn7YVkMHmf
 itQAAz2CpLnIFZaU+z8Hj9V2j+MwjQ7xegFSKBy+AOUYkI+cPcceD0pw481sU6UvpKMN
 LuK3IJVkNgr9lX+xmcOlMnXkLSIAmcy1+PeS4F1ss4Fix8rMOp6oMz3IxjHAgWgdIGzn
 SE9qHQRn+F9h39p2V6/xXI9kRDMaK6dMjJczcXZ44FTt2NhrBZJuOFsNn1ueS8IAIKpg
 yabQ==
X-Gm-Message-State: APjAAAWAPddPg4VGShvqgoBtYk7rUzC3F5iPbgvN7DPlZKhRQG4Ruurx
 bKYGaAufESE+k8geaVNst7WWLsYw
X-Google-Smtp-Source: APXvYqwX6zGBrESwFpA6XtGrgp+VeXeJOsY0p3GoXpOdUmldUhCoKhaC8bxKbEDlsAknnZ6Ocqq95g==
X-Received: by 2002:a0c:9214:: with SMTP id a20mr27358267qva.195.1562082336993; 
 Tue, 02 Jul 2019 08:45:36 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id y6sm6004237qki.67.2019.07.02.08.45.36
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 08:45:36 -0700 (PDT)
Message-ID: <5D1B7C20.9050600@gmail.com>
Date: Tue, 02 Jul 2019 11:45:36 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CABgcKP8Dt0XwgvmE_S7En36-Cs_SjZRo176YdMd2TO59SqkN2Q@mail.gmail.com>
In-Reply-To: <CABgcKP8Dt0XwgvmE_S7En36-Cs_SjZRo176YdMd2TO59SqkN2Q@mail.gmail.com>
Subject: Re: [USRP-users] x310 PCIe on Ubuntu desktop
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
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

T24gMDcvMDIvMjAxOSAxMTozMiBBTSwg5YWz6ZKn5LiwIHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+
IEhpLAo+Cj4gSSdtIHdvbmRlcmluZyBpZiBhbnlvbmUgaGFzIHN1Y2Nlc3NmdWwgZXhwZXJpZW5j
ZSB3aXRoIFBDSWUgCj4gY29ubmVjdGl2aXR5IHdpdGggeDMxMCBVU1JQIG9uIGEgVWJ1bnR1IGRl
c2t0b3AgdmlhIHRoZSBOSSBQQ0llLTgzNzEgY2FyZC4KPiBJIHdhcyBub3QgYWJsZSB0byBmaW5k
IHgzMTAgd2l0aCB1aGRfZmluZF9kZXZpY2VzLCBhbmQgdGhlICJsc3BjaSAtayAKPiAtZCAxMDkz
OmM0YzQiIHJlc3VsdCBkb2VzIG5vdCBoYXZlIGtlcm5lbCBkcml2ZXIgb3Iga2VybmVsIG1vZHVs
ZSAKPiBpbmZvcm1hdGlvbi4KPiBJIG5vdGljZWQgdGhlIGV0dHVzIHdlYnNpdGUgc2F5cyBuaXVz
cnByaW8gb25seSBzdXBwb3J0cyBsaW51eCBrZXJuZWwgCj4gZHJpdmVyIDQuMiwgYW5kIEkgdHJp
ZWQgVWJ1bnR1IDE0LjA0LjIgYnV0IGl0IGRpZCBub3Qgd29yayBhcyBVYnVudHUgCj4gMTYgYW5k
IDE4Lgo+Cj4gSG93ZXZlciwgSSBkaWQgZ290IGl0IHRvIHdvcmsgb24gYSBVYnVudHUgMTYgbGFw
dG9wIHdpdGggdGhlIE5JIAo+IEV4cHJlc3NDYXJkLTgzNjAgSG9zdCBDYXJkLgo+Cj4gSSByZWFs
bHkgYXBwcmVjaWF0ZSB5b3VyIGhlbHAgYW5kIGNvbmNlcm4uIEJUVywgaXRzIG15IGZpcnN0IHRp
bWUgcG9zdCAKPiB0byB0aGlzIG1haWxpbmcgbGlzdCwgcGxlYXNlIGxldCBtZSBrbm93IGlmIEkg
ZGlkIGFueXRoaW5nIHdyb25nLgo+Cj4gQmVzdCByZWdhcmRzLAo+IEpheWRlbgo+CkFsc28sIGRp
ZCB5b3UgdXNlIHRoZSBpbnN0YWxsZXIgc2hvd24gaGVyZToKCmh0dHBzOi8vZmlsZXMuZXR0dXMu
Y29tL21hbnVhbC9wYWdlX25pX3Jpb19rZXJuZWwuaHRtbCNsaW51eF9yaW8KCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9t
YWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
