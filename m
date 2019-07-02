Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D3E5D346
	for <lists+usrp-users@lfdr.de>; Tue,  2 Jul 2019 17:44:51 +0200 (CEST)
Received: from [::1] (port=45944 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hiKxd-0002eY-Gc; Tue, 02 Jul 2019 11:44:49 -0400
Received: from mail-qt1-f195.google.com ([209.85.160.195]:35038)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hiKxZ-0002W3-Hw
 for usrp-users@lists.ettus.com; Tue, 02 Jul 2019 11:44:45 -0400
Received: by mail-qt1-f195.google.com with SMTP id d23so18974455qto.2
 for <usrp-users@lists.ettus.com>; Tue, 02 Jul 2019 08:44:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=nBc+0QRW5xpVc+fw4Vo/W+59jOHmcbp+MvYE2u16RlI=;
 b=Pg/xn9/xhvwyI8HjLxo+ZxmoNxQ8wnxxLx97OnxrIMgmVCW1QyXzlCn22eAbbyAZ3s
 RCUcLWPtAzyzkpAD96hDoKXip9/Sm6mFGL9cTKf9NHOI/+LHmDj0E4ScswsTHpLbzzU5
 m8FEg/ViBKj5uKw2Bz2HWSq9tgYROMwGng7CC0RRPCdvNLP57OTZl29gxeIxy76iZtjs
 ILDx58f72xMruNmJNeFFcYi1F1Flp6NP3nY+cbpuPB5oUYARELjmfgnO/7Qxp5c4ZSj0
 bP/9iwSkojdn3hrgAIddano7ZS1pVi5vrl3gwmFemlfKVVWCFz7juwSVtHHv6qWfqwK8
 89kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=nBc+0QRW5xpVc+fw4Vo/W+59jOHmcbp+MvYE2u16RlI=;
 b=ppNabS4EzjZKMJx5wcehww6GBEUNLUBC/Si/ZT2cHAHmlMKe12DOst55TvztZplUGx
 ozZwgRCqtQh87IP0zbFIY+ToYwN9ySzNPavjMvxggK4mcP1DA5x6MWyq/n/vm24jWt/i
 J67qB+zEDu4z0YAl9AJkaAuI7kaUI41XaWdknaz7zsx3nEintBY9+SwRnrFLgIrvfcWf
 ih6kL4KbN4yhaPyFa4/+xq4pRvPuS2f5qxOr4bfDULwFbtN6H4x6S6tnJIPuHNVmsv2j
 Rk+oCL8yv9Fn850PU984EniSjTnVzmuk+3ysisj3ZgVWNUltk/GhmnP2ELAIfd8QNMC1
 PfMg==
X-Gm-Message-State: APjAAAVfetb6csY4uyzal5rX0eekJdMA9kjIjbjEudyo8GHdrFj7+TIQ
 7wE1tc+6DsBZJ25+91mpLDlsudD/
X-Google-Smtp-Source: APXvYqwMQcaAt2ZzF5WpM/2Maqk/RY8yMfdrwEgoDIffX7DtVbQm+6pyUDxGHIeciAm9+PXNoloLFQ==
X-Received: by 2002:aed:36c5:: with SMTP id f63mr26274981qtb.239.1562082245015; 
 Tue, 02 Jul 2019 08:44:05 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id b69sm6889707qkg.105.2019.07.02.08.44.04
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 08:44:04 -0700 (PDT)
Message-ID: <5D1B7BC3.3050008@gmail.com>
Date: Tue, 02 Jul 2019 11:44:03 -0400
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
ZGlkIGFueXRoaW5nIHdyb25nLgo+Cj4gQmVzdCByZWdhcmRzLAo+IEpheWRlbgo+CkRvZXMgImxz
bW9kIiBzaG93IHRoZSBkcml2ZXIgbW9kdWxlcyBsb2FkZWQ/CgoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApV
U1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4v
bGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
