Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 41953AC27C
	for <lists+usrp-users@lfdr.de>; Sat,  7 Sep 2019 00:24:35 +0200 (CEST)
Received: from [::1] (port=55392 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6Mee-0002d5-B2; Fri, 06 Sep 2019 18:24:32 -0400
Received: from mail-pl1-f177.google.com ([209.85.214.177]:35257)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1i6Mea-0002YZ-Hy
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 18:24:28 -0400
Received: by mail-pl1-f177.google.com with SMTP id gn20so3831781plb.2
 for <usrp-users@lists.ettus.com>; Fri, 06 Sep 2019 15:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:organization
 :user-agent:mime-version:content-transfer-encoding;
 bh=VqEzbEOHw0PHNtzffXkpb6d+jceec1Nw65Cumrb8mGQ=;
 b=pdbtCPgEEqm4nNKaCG47wBRoBlIUGCRNpfC+O6a6/Wa/ItA3ZNXkZIhTNymWsFbv0x
 rmp2/VYQwjdMOKLT4cysz4rpU5Rud1U8KcuJ0BoGqD5ZyXDXvO0otSLBKIZf3KyzCZAm
 ilday7gNbGMF4HLjocomLrPVDo1/ph10jf35sRzAqfuyqQgM8n57lXzdo+GKYTb2Ou2M
 TL4H7WHCI5WDPQK/Sk4izaUhxauRjFXvoe/Yca3v/hMD34tCGEdZcW17ni0u48D6FubW
 anwXPqA9qJIaLXrbSv7oXBMMV+0dA7cfHXP6afWcgdlavFC36hZnPMKdtUhh13Pu4wr1
 QknQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=VqEzbEOHw0PHNtzffXkpb6d+jceec1Nw65Cumrb8mGQ=;
 b=WY/h7q/B0/MLSYjgA4pym2f4jD6ZvnFKNQaCZQrn4w/G2aXeI8Y6nR8FYudF5vUIoW
 4tRN8sc5Bml5Vre8yILlRS0hODDGmTluHvvugFIMOqxwA0LR+YxeX7C0UhJrcOiZWZ4k
 HGMrMusV9eS/O5Fb2AmN1LaQgW2zuGHfVKKSBjDzgVRwCu1sRslY+bVQCBJWZoX1mYgC
 slgSwg7XjOa1RNRGH4JLxh4PHkdHf1o4KvPF7rp3RN4FBQUNT3YUeGK2XGy7wrCmn9P6
 mbqbfLamukcY/pYGJF5kc2KJMRbMgJQRwbrhIdwZmzhfB+hhcHyynlNuzQ+QJVt+48xt
 JRqw==
X-Gm-Message-State: APjAAAV6BV+rvd91gN9WZggAbbKJ0wSsMa62obAaPhS2Z7phFDrvJ6Pq
 rCD4Jf8kV8+4ccvwOvABmfA0kPhN
X-Google-Smtp-Source: APXvYqyThlSFGdq3R389E85lpI8CQYcU3Z3WcXA3QLYMmNzaoFg2QQWCt6mWGvgybMSjLTF02w5kQg==
X-Received: by 2002:a17:902:202:: with SMTP id 2mr11224757plc.96.1567808627393; 
 Fri, 06 Sep 2019 15:23:47 -0700 (PDT)
Received: from racer.hostalia.de ([207.114.172.158])
 by smtp.gmail.com with ESMTPSA id j18sm8028085pfh.70.2019.09.06.15.23.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Sep 2019 15:23:46 -0700 (PDT)
Message-ID: <46108c0b98749cd2de8a820ca88777003dcf33b6.camel@ettus.com>
To: "Lundberg, Daniel" <daniel.lundberg@gtri.gatech.edu>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Fri, 06 Sep 2019 15:23:45 -0700
In-Reply-To: <7a40a32856c14d31807bfea8150bc996@gtri.gatech.edu>
References: <7a40a32856c14d31807bfea8150bc996@gtri.gatech.edu>
Organization: Ettus Research
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: Re: [USRP-users] Processor requirements for full-rate streaming on
 N320
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: Marcus =?ISO-8859-1?Q?M=FCller?= <marcus.mueller@ettus.com>
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

SGkgRGFuaWVsLAoKaTMgZG9lc24ndCBzb3VuZCBsaWtlIHRoZSBwcm9jZXNzb3IgZmFtaWx5IG9m
IGNob2ljZSBoZXJlOyBhIGZldyBtb3JlCmNvcmVzIGNhbid0IGh1cnQuIEJhc2ljYWxseSwgYXNz
dW1lIG9uZSBDUFUgY29yZSBwZXIgc3RyZWFtIGZvciB0aGUKd2lyZS0gdG8gQ1BVLWZvcm1hdCBj
b252ZXJzaW9uLCBwbHVzIGEgYml0IG9mIGRlbWFuZCBmb3Igc29tZW9uZQpoYW5kbGluZyBPUy9u
ZXR3b3JrIGNhcmQgaW50ZXJydXB0cy4KV2hhdCdyZSB5b3UgZG9pbmcgd2l0aCB0aGUgc2FtcGxl
cyBhZnRlcndhcmRzPwoKQmVzdCByZWdhcmRzLApNYXJjdXMKCk9uIEZyaSwgMjAxOS0wOS0wNiBh
dCAyMTo1MyArMDAwMCwgTHVuZGJlcmcsIERhbmllbCB2aWEgVVNSUC11c2Vycwp3cm90ZToKPiBE
b2VzIGFueW9uZSBoYXZlIGEga25vd24gZ29vZCBoYXJkd2FyZSBjb25maWd1cmF0aW9uIHRvIHN1
cHBvcnQgZnVsbAo+IChvciBhdCBsZWFzdCBjbG9zZSB0byBmdWxsKSAyMDAgTVMvcyBzdHJlYW1p
bmcgZnJvbSB0aGUgTjMyMD8gCj4gUHJlZmVyYWJseSB3aXRoIDEgVHggYW5kIDIgUnggY2hhbm5l
bHMuCj4gQXMgYSBkYXRhIHBvaW50LCBhIHJlY2VudCBpMyAoNCBjb3Jlcykgc2VlbXMgdG8gYmUg
Y2hva2luZyBhYm92ZSA2Mi41Cj4gTVMvcy4gIFRoaXMgaXMgb3ZlciBkdWFsIFNGUCsgcG9ydHMu
ICBBdCBoaWdoZXIgc2FtcGxpbmcgcmF0ZXMsIGl0IGlzCj4gcHJvZHVjaW5nIFXigJlzLCB3aGlj
aCBJIGludGVycHJldCB0byBtZWFuIHRoYXQgdGhlIGNwdSBjYW7igJl0IHNob3ZlbAo+IHNhbXBs
ZXMgaW50byB0aGUgcmFkaW8gZmFzdCBlbm91Z2gsIG5vdCB0aGF0IHRoZXJlIGlzIGEgbmV0d29y
ayBqYW0uCj4gIAo+IFRoYW5rIHlvdSwKPiBETAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0
aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5m
by91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
