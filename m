Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9332C276268
	for <lists+usrp-users@lfdr.de>; Wed, 23 Sep 2020 22:46:36 +0200 (CEST)
Received: from [::1] (port=40780 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kLBeq-0007sd-Do; Wed, 23 Sep 2020 16:46:32 -0400
Received: from mail-ed1-f41.google.com ([209.85.208.41]:43340)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1kLBem-0007nV-NW
 for usrp-users@lists.ettus.com; Wed, 23 Sep 2020 16:46:28 -0400
Received: by mail-ed1-f41.google.com with SMTP id n13so1118651edo.10
 for <usrp-users@lists.ettus.com>; Wed, 23 Sep 2020 13:46:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=HzBbwpw5aRVxSLPqZdFNSPa22WrvdGZpWD6qKd9nTro=;
 b=zqZFcowkA18YU5GtMZ9lht63/uiiZ5hrk2x/PfgQzT6QfCu79EYeh6J5RG/O3zcTYG
 sWB+zPN5EW3slyHMc9w4G8a+n+U+ZNtXshym1q1JB2CCb59b1HWpCVvY9zuzZZnvfuCy
 gog9CLZSzewFhEmpChxI4w5v8SdUobXfucdT3KaflisKpiFK23dioYe7T66E56a4/X3O
 lpRp4VdQX4YnRVLazzmtuRzJj7vRum0ALA7QxjKaFX1dSOThZViARN/TeNWr/JzzZcJF
 JUaQSoYbRcBZAuk2ydjx2JDpByLPUhHQKWOZuTvu3yITMIsmGrie3ac8zuDnqjo2KSr3
 mjjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HzBbwpw5aRVxSLPqZdFNSPa22WrvdGZpWD6qKd9nTro=;
 b=WFOBtAuAVaFKUVDMm73kMGdP3KGaZ+GwGzpSmRjMWCL9bsL4rk1BrmExg9vVlMmWol
 Rg4Tl/4xTetQYKWKu65GqvGNYdLMvmjY8U2afVJ8deumACRBUAoRfJnf5DnOfrKcOmOg
 12fpfOK9tHFNZeLdMzgckg8OrVBEhrbv2A0bRguUBcL5Z47nmOIEXECKG9YIy0G2SzZg
 3qBh3Meyi6avFeuc0BCr0PStWQFlTwhd0VAh3gbPVYlzM5tfbU5Xz4aC+jjc386OuOKk
 eO3AqMDLwMdvThzgB24lSdkgy+NsbcFhZHGtY9tf8Gkt6USqUlrDwALyF4IYlMYwRrDx
 AGYg==
X-Gm-Message-State: AOAM5335M19Rpsgr6mfxBilLE+9AKtGU0SFjtwg5ECHhJbWZgqVe2Iam
 9o8UGx0UXG3Ohi9xXBW+cx1gBpeFfb4qB6y5
X-Google-Smtp-Source: ABdhPJzAPX2lYKh+cr8hpsD00DT7vJHa1qjtfesbFOuIOJ9o4RSgmSBvmr4ELEaDokGpWDGcNFqSDw==
X-Received: by 2002:aa7:d3da:: with SMTP id o26mr1132902edr.169.1600893947384; 
 Wed, 23 Sep 2020 13:45:47 -0700 (PDT)
Received: from ?IPv6:2a02:8071:2c80:c4f0::e6a? ([2a02:8071:2c80:c4f0::e6a])
 by smtp.gmail.com with ESMTPSA id p11sm706823edu.93.2020.09.23.13.45.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Sep 2020 13:45:46 -0700 (PDT)
To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
References: <CAKwrT9RfsWhU+70sBsC-dFCAxnB7FT=yNX885z4j3UbhRoHMSA@mail.gmail.com>
 <1e2c2623-d3e7-dbc8-7d1b-89c7c3af7ecb@ettus.com>
 <CAB__hTRnkSQLv58d2p=VKjQqqxx8Za8v-t-JHncK6RQCQYjaNA@mail.gmail.com>
Message-ID: <90228063-f609-8d87-cdae-268e7a359857@ettus.com>
Date: Wed, 23 Sep 2020 22:45:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAB__hTRnkSQLv58d2p=VKjQqqxx8Za8v-t-JHncK6RQCQYjaNA@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] RFNoC output format and channel output queries
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
From: Martin Braun via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Braun <martin.braun@ettus.com>
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

T24gOS8yMy8yMCA0OjI3IFBNLCBSb2IgS29zc2xlciB3cm90ZToKPiBPbiBXZWQsIFNlcCAyMywg
MjAyMCBhdCA0OjIxIEFNIE1hcnRpbiBCcmF1biB2aWEgVVNSUC11c2Vycwo+IDx1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6Cj4+PiBGaW5hbGx5IGlzIHRoZXJlIGFueSBkb2N1bWVu
dGF0aW9uIG9uIGhvdyB0byByZWFkIHRoZSDigJxyZWFkYmFja+KAnQo+Pj4gcmVnaXN0ZXJzIG9u
IHRoZSBob3N0IHNpZGUgKEdOVVJhZGlvKSA/Cj4+Cj4+IFdlIGhhdmVuJ3QgYWN0dWFsbHkgZXhw
b3NlZCB0aGF0IGludG8gR05VIFJhZGlvIChhbHRob3VnaCB3ZSBjb3VsZC4uLiB3ZQo+PiBzaG91
bGQgcHV0IHRoYXQgb250byB0aGUgYmFja2xvZykuIFlvdSBjYW4gbWFwIHlvdXIgcmVnaXN0ZXIg
aW50byBhCj4+IHByb3BlcnR5IChzZWUgb3VyIGJsb2NrcyBhcyBleGFtcGxlcyksIGFuZCB0aGVu
IHVzZSBnZXRfcHJvcGVydHkoKSBvbgo+PiB0aGUgR05VIFJhZGlvIGJsb2NrLgo+IAo+IFJlZ2Fy
ZGluZyBtYXBwaW5nIGEgcmVnaXN0ZXIgaW50byBhIHByb3BlcnR5LCBpdCdzIG5vdCBjbGVhciB0
byBtZSBpZgo+IHRoaXMgaXMgcG9zc2libGUgd2l0aCBhIHJlYWQtb25seSByZWdpc3RlciB0aGF0
IGlzIG1vbml0b3Jpbmcgc29tZQo+IHN0YXR1cyBpbiB0aGUgRlBHQSBub2MgYmxvY2suICBUaGVy
ZSBkb2VzIG5vdCBhcHBlYXIgdG8gYmUgYSAiZ2V0Igo+IGNhbGxiYWNrIGZ1bmN0aW9uIGZvciBh
IHByb3BlcnR5IHN1Y2ggdGhhdCBJIGNvdWxkIHRoZW4gY2FsbCAicGVlazMyIgo+IG9uIG15IHJl
Z2lzdGVyIHRvIGdldCB0aGUgY3VycmVudCB2YWx1ZS4gIEkgZGlkbid0IGZpbmQgYW55IGV4YW1w
bGUgb2YKPiBtYXBwaW5nIGEgcmVhZC1vbmx5IHJlZ2lzdGVyLiAgQW55IGFkdmljZT8KClJvYiwg
eW91IG1pZ2h0IHdhbnQgdG8gY2hlY2sgb3V0IGhvc3QvdGVzdHMvcmZub2NfZ3JhcGhfbW9ja19u
b2Rlcy5ocHAsCmFuZCBsb29rIGF0IHRoZSBSU1NJIHByb3BlcnR5LiBJdCdzIHN1cHBvc2VkIHRv
IG1vY2sgYSBwcm9wZXJ0eSB0aGF0Cm9ubHkgcmVwcmVzZW50cyBhIHZhbHVlIHRoYXQgaXMgcmVh
ZCBiYWNrIGZyb20gdGhlIHJhZGlvIChub25lIG9mIG91cgpSRk5vQyByYWRpb3MgYWN0dWFsbHkg
aGF2ZSB0aGF0IHByb3BlcnR5LCBidXQgd2UgcHJvdmlzaW9uZWQgZm9yIGl0IGluCnRoZSBzcGVj
aWZpY2F0aW9uLCBhbmQgdGhpcyBpcyBhbiBleGFtcGxlIG9mIHRoYXQpLgoKSW5zdGVhZCBvZiB1
cGRhdGluZyBhIGNvdW50ZXIgKHdoaWNoIHdlIG9ubHkgZG8gYmVjYXVzZSB0aGlzIGlzIGEgbW9j
awpmb3IgdW5pdCB0ZXN0aW5nKSwgeW91IHdvdWxkIHBlZWsgYSByZWdpc3Rlci4KCi0tTQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1
cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
