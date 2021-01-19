Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CEDA82FBDE6
	for <lists+usrp-users@lfdr.de>; Tue, 19 Jan 2021 18:44:37 +0100 (CET)
Received: from [::1] (port=57860 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l1v3T-0005aG-N7; Tue, 19 Jan 2021 12:44:35 -0500
Received: from mail-qv1-f47.google.com ([209.85.219.47]:34153)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1l1v3P-0005S5-Gr
 for usrp-users@lists.ettus.com; Tue, 19 Jan 2021 12:44:31 -0500
Received: by mail-qv1-f47.google.com with SMTP id dj6so367636qvb.1
 for <usrp-users@lists.ettus.com>; Tue, 19 Jan 2021 09:44:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=DQNYm9TPI04sF48g0Pubq0cKmM7a3AfYAiZNt38ZLQA=;
 b=b0gg93m56eGi/e6uKhiYJJ0GOUuVlmab2ajZUazA/Do85x92l8b/81BxP28NzmmWDy
 Mgy+pK6bJlu7iQUN7NO7nBDHkNf//mU6KW0ufOK5BFMjI27+SmIH7Ypquc8W1z25b5Ds
 0nthEfpi1IOaGUa5i+BCAUP1P3OTU9awBQ8dj8HzUasVnPKnJpA0cXa+j178J1ZGPqu6
 FUUaH7Z0KbUn+zR/+8FbdclSbZ836lh1x/wXpYloa6pdbmzg0WoPOCLdDBObV5+hx6hZ
 Ao52ClnR1Y/wfuqqiW/M5JanRrqJOoiLnjG6dm3yw6q1HzI7xRsjp1ZzJcg0G/EZ28qA
 KYSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=DQNYm9TPI04sF48g0Pubq0cKmM7a3AfYAiZNt38ZLQA=;
 b=pqIH+I3SVh9z/NwJcjs3LXbNpFT7DL1nJfj/VPi7EIoS6pa/bXYFfyHvGNYMh6g3eJ
 x7sCw1ZixUYrO0LIgf/UzSvb63Qvdx2RfK0ClqvDaErIIRi87sL9fohaGHP6XLeG1sI5
 Ep+dg9JDNwL9SdkrniNV3bOMYUZM/pXJr1ZcaaienKaT90qZ1xdaQAaIB1g/NU5Idvn7
 HfTeLpsypzsIUKNj9w3XEa/HGNTx3Swr2YaG9b5e1vJxUPjcVzM9tssvh82Cb8UPlhsV
 UbiOFxlQ0TxV0EcfbiV4g+q7XZ1jbUK6TYhNWlW5IFxHUSkiZoVnLQ5LaYzE1NoE5ktP
 W41w==
X-Gm-Message-State: AOAM532UCSjnQ4vlpTDSXbag2wEZRhrtzUUefMeUnYCL6x5dcb9vgO0b
 +EE0H2robzrbutnfyulZ/n4=
X-Google-Smtp-Source: ABdhPJyitqcBh//cPFcozUtiaWUI82EgKmETWlk+4/hqQEiotYoo/PHVf9r8onWXz9nd5BciZKyTtw==
X-Received: by 2002:ad4:4a72:: with SMTP id cn18mr5598282qvb.50.1611078230844; 
 Tue, 19 Jan 2021 09:43:50 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id z15sm13152357qkz.103.2021.01.19.09.43.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 Jan 2021 09:43:50 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Tue, 19 Jan 2021 12:43:49 -0500
Message-Id: <C589B519-BC87-4D66-9254-A1CF9F77DC9B@gmail.com>
References: <CAGsYvih5a3A7LR0NCV53tmyZSEeodajjGEgngVSFUfA8=9WPqw@mail.gmail.com>
Cc: "usrp-users (usrp-users@lists.ettus.com)" <usrp-users@lists.ettus.com>
In-Reply-To: <CAGsYvih5a3A7LR0NCV53tmyZSEeodajjGEgngVSFUfA8=9WPqw@mail.gmail.com>
To: Manav Kohli <mpk2138@columbia.edu>
X-Mailer: iPhone Mail (18C66)
Subject: Re: [USRP-users] Guaranteeing synchronous startup of X310 and N210
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
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

VGhhdOKAmXMgbm90IGxpa2VseSB0byB3b3JrLiBHaXZlbiB0aGUgZGlmZmVyZW50IGludGVybmFs
IGFyY2hpdGVjdHVyZXMgb2YgdGhlIHR3byBkZXZpY2VzIGFuZCBkaWZmZXJlbnQgY2xpY2tpbmcg
c2NoZW1lcy4gCgpGb3Igb25lIHRoZSBEREMgYXJjaGl0ZWN0dXJlIGlzIGRpZmZlcmVudCBsZWFk
aW5nIHRvIGRpZmZlcmVudCBlZmZlY3RpdmUgZ3JvdXAgZGVsYXlzLiAKCgoKU2VudCBmcm9tIG15
IGlQaG9uZQoKPiBPbiBKYW4gMTksIDIwMjEsIGF0IDEyOjMzIFBNLCBNYW5hdiBLb2hsaSB2aWEg
VVNSUC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOgo+IAo+IO+7vwo+
IERlYXIgVVNSUCBtYWlsaW5nIGxpc3QsCj4gCj4gSG9wZSBldmVyeW9uZSBpcyB3ZWxsLiBJIGhh
dmUgYSBHTlUgcmFkaW8gZmxvd2dyYXBoIHdpdGggYSBVU1JQIE4yMTAgYW5kIFVTUlAgWDMxMCBz
eW5jaHJvbml6ZWQgd2l0aCB0aGUgT2N0b2Nsb2NrLiBXaGVuIHN0YXJ0aW5nIHRoZSBmbG93Z3Jh
cGgsIEkgY2FuIHNlZSBhIHJhbmRvbSBzYW1wbGUgb2Zmc2V0IGJldHdlZW4gdGhlIE4yMTAgYW5k
IFgzMTAuIEFzIHRoZSB0d28gcmFkaW9zIGFyZSBzeW5jaHJvbml6ZWQsIHRoZSBzYW1wbGUgb2Zm
c2V0IGRvZXMgbm90IGNoYW5nZSBmb3IgdGhlIGR1cmF0aW9uIG9mIHJ1bm5pbmcgdGhlIGZsb3dn
cmFwaCwgYnV0IGl0IGlzIHJhbmRvbSBldmVyeSB0aW1lIHRoZSBmbG93Z3JhcGggaXMgc3RhcnRl
ZC4gVGhpcyBpcyBub3QgYW1lbmFibGUgdG8gdGhlIHRpbWUgc2xvdHRlZCBzeXN0ZW0gSSBhbSB0
cnlpbmcgdG8gd29yayBvbi4KPiAKPiBJIGFtIGF3YXJlIHRoYXQgdGhlIFgzMTAgYW5kIE4yMTAg
bWF5IG5vdCBiZSBzaW11bHRhbmVvdXNseSB1c2VkIGluIGEgVVNSUCBTaW5rIG9yIFVTUlAgU291
cmNlIGJsb2NrIChvciBpbiBVSEQsIGluIGEgbXVsdGlfdXNycCBvYmplY3QpLiBXaXRoIHRoaXMg
aW4gbWluZCwgaXMgaXQgZXZlbiBwb3NzaWJsZSB0byBndWFyYW50ZWUgdGhhdCB0aGUgWDMxMCBh
bmQgTjIxMCBoYXZlIHRoZSBzYW1lIHN0YXJ0dXAgdGltZSwgbmFtZWx5IHRoYXQgdGhleSBiZWdp
biB0cmFuc21pdHRpbmcgYW5kIHJlY2VpdmluZyBhdCBleGFjdGx5IHRoZSBzYW1lIHRpbWU/Cj4g
Cj4gVGhhbmsgeW91IHZlcnkgbXVjaCEKPiBNYW5hdgo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQ
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9s
aXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
